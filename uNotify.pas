unit uNotify;

interface

uses
  Windows, SysUtils, Classes;

type
  TNotifyType = (ntFileSystemFolder, ntRegistryKey);

  TNotifyThread = class(TThread)
  private
    FNotifyHandle: THandle;
    FEvent: THandle;
    FOnChange: TNotifyEvent;
    FFinished: Boolean;
    FLastError: DWORD;
    FCurrentKey: HKEY;

    FNotifyType: TNotifyType;
    FObjectName: String;
    FWatchSubtree: Boolean;
    FFlags: DWORD;
    FData: Pointer;
    procedure CallOnChange;
    procedure StopWaiting;
  protected
    procedure DoChange; virtual;
    procedure DoTerminate; override;
    procedure Execute; override;
  public
    constructor Create(const NotifyType: TNotifyType; const ObjectName: String; const WatchSubtree: Boolean; const Flags: DWORD);
    destructor Destroy; override;
    procedure Terminate;
    property Terminated;

    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property Finished: Boolean read FFinished;

    property NotifyType: TNotifyType read FNotifyType;
    property LastError: DWORD read FLastError;
    property ObjectName: String read FObjectName;
    property Data: Pointer read FData write FData;
  end;

  TNotifyList = class(TList)
  private
    function GetNotifyThread(Index: Integer): TNotifyThread;
    procedure SetNotifyThread(Index: Integer; Value: TNotifyThread);
  public
    destructor Destroy; override;
    procedure Clear; override;
    function Add(Item: TNotifyThread): Integer;
    procedure Delete(Index: Integer);
    procedure Suspend;
    procedure Resume;
    procedure WaitFor;
    property NotifyThreads[Index: Integer]: TNotifyThread read GetNotifyThread write SetNotifyThread;
  end;

var
  NotifyList: TNotifyList = nil;

implementation

uses
  uRegistry;

constructor TNotifyThread.Create(const NotifyType: TNotifyType; const ObjectName: String; const WatchSubtree: Boolean; const Flags: DWORD);
{
     FILE_NOTIFY_CHANGE_FILE_NAME or FILE_NOTIFY_CHANGE_DIR_NAME or FILE_NOTIFY_CHANGE_SIZE or FILE_NOTIFY_CHANGE_LAST_WRITE or FILE_NOTIFY_CHANGE_CREATION
     REG_NOTIFY_CHANGE_NAME	or REG_NOTIFY_CHANGE_ATTRIBUTES or REG_NOTIFY_CHANGE_LAST_SET	or REG_NOTIFY_CHANGE_SECURITY
}
 var RKD: TRegistryKeyData;
begin
  FNotifyHandle := INVALID_HANDLE_VALUE;
  FLastError := ERROR_SUCCESS;
  FOnChange := nil;
  FFinished := False;
  FCurrentKey := 0;

  FNotifyType := NotifyType;
  FObjectName := ObjectName;
  FWatchSubtree := WatchSubtree;
  FFlags := Flags;

  FEvent := CreateEvent(nil, True, False, nil);
  if FEvent <> 0 then case FNotifyType of
    ntFileSystemFolder: FNotifyHandle := FindFirstChangeNotification(PChar(FObjectName), FWatchSubtree, FFlags);
    ntRegistryKey: begin
      RKD := GetRegistryKeyData(FObjectName);
      if RegOpenKeyEx(RKD.RootKey, PChar(RKD.SubKey), 0, KEY_NOTIFY, FCurrentKey) = ERROR_SUCCESS then FNotifyHandle := RegNotifyChangeKeyValue(FCurrentKey, True, FFlags, FEvent, True);
    end;
  end;
  if FNotifyHandle = INVALID_HANDLE_VALUE then FLastError := GetLastError;

  inherited Create(True);
end;

destructor TNotifyThread.Destroy;
begin
  FOnChange := nil;
  Terminate;
  if Assigned(FData) then TObject(FData).Free;
  
  inherited Destroy;
end;

procedure TNotifyThread.Terminate;
begin
  inherited Terminate;
  StopWaiting;
end;

procedure TNotifyThread.CallOnChange;
begin
  if Assigned(FOnChange) then FOnChange(Self);
end;

procedure TNotifyThread.DoChange;
begin
  if Assigned(FOnChange) then Synchronize(CallOnChange);
end;

procedure TNotifyThread.DoTerminate;
begin
  if FNotifyHandle <> INVALID_HANDLE_VALUE then case FNotifyType of
    ntFileSystemFolder: FindCloseChangeNotification(FNotifyHandle);
    ntRegistryKey: if FCurrentKey <> 0 then RegCloseKey(FCurrentKey);
  end;
  FNotifyHandle := INVALID_HANDLE_VALUE;
  if FEvent <> 0 then begin
    CloseHandle(FEvent);
    FEvent := 0;
  end;
  inherited DoTerminate;
end;

procedure TNotifyThread.Execute;

{ var Handles: array [0..1] of THandle;
begin
  while not Terminated and (FNotifyHandle <> INVALID_HANDLE_VALUE) do try
    case FNotifyType of
      ntFileSystemFolder: begin
        Handles[0] := FNotifyHandle;
        Handles[1] := FEvent;
        case WaitForMultipleObjects(2, PWOHandleArray(@Handles), False, INFINITE) of
          WAIT_OBJECT_0: if not Terminated then begin
            DoChange;
            if not FindNextChangeNotification(FNotifyHandle) then FLastError := GetLastError;
          end;
          WAIT_OBJECT_0 + 1: ;
          WAIT_FAILED: FLastError := GetLastError;
        end;
      end;
      ntRegistryKey: case WaitForSingleObject(FEvent, INFINITE) of
        WAIT_OBJECT_0: if not Terminated then begin
          DoChange;
          FNotifyHandle := RegNotifyChangeKeyValue(FCurrentKey, True, FFlags, FEvent, True);
        end;
        WAIT_FAILED: FLastError := GetLastError;
      end;
    end;
  finally
    FFinished := True;
  end;}

var
  WaitHandles: array [0 .. 1] of THandle;
begin
  FTermEvent := CreateEvent(nil, True, False, nil);
  FillChar(FOverlapped, SizeOf(TOverlapped), 0);
  FOverlapped.hEvent := CreateEvent(nil, True, False, nil);
  HandleChange := CreateFile(PWideChar(FScannedDir), GENERIC_READ,
    FILE_SHARE_READ or FILE_SHARE_DELETE or FILE_SHARE_WRITE,
    nil,
    OPEN_EXISTING,
    FILE_FLAG_BACKUP_SEMANTICS or
    FILE_FLAG_OVERLAPPED, 0);
  Win32Check(HandleChange <> INVALID_HANDLE_VALUE);
  WaitHandles[0] := FTermEvent;
  WaitHandles[1] := FOverlapped.hEvent;
  try
    while True do begin
      ReadDirectoryChangesW(HandleChange, @Buf, Sizeof(Buf), FScanSubDirs,
        FILE_NOTIFY_CHANGE_FILE_NAME or
        FILE_NOTIFY_CHANGE_DIR_NAME or
        FILE_NOTIFY_CHANGE_SIZE or
        FILE_NOTIFY_CHANGE_LAST_WRITE or
        FILE_NOTIFY_CHANGE_CREATION,
        nil, @FOverlapped, nil);
      if WaitForMultipleObjects(2, @WaitHandles, False, INFINITE) = WAIT_OBJECT_0 then Break;
      FindChanges;
    end;
  finally
    CloseHandle(HandleChange);
    CloseHandle(FTermEvent);
    CloseHandle(FOverlapped.hEvent);
    FTermEvent := 0;
  end;

end;

procedure TNotifyThread.StopWaiting;
begin
  if FEvent <> 0 then SetEvent(FEvent);
end;

{ TNotifyList }

destructor TNotifyList.Destroy;
begin
  Clear;
  inherited Destroy;
end;

function TNotifyList.Add(Item: TNotifyThread): Integer;
begin
  Result := inherited Add(Pointer(Item));
end;

procedure TNotifyList.Clear;
 var I: Integer;
begin
  for I := 0 to Count - 1 do NotifyThreads[I].Free;
  inherited Clear;
end;

procedure TNotifyList.Delete(Index: Integer);
begin
  NotifyThreads[Index].Free;
  inherited Delete(Index);
end;

function TNotifyList.GetNotifyThread(Index: Integer): TNotifyThread;
begin
  Result := TNotifyThread(Items[Index]);
end;

procedure TNotifyList.SetNotifyThread(Index: Integer; Value: TNotifyThread);
begin
  NotifyThreads[Index].Free;
  Items[Index] := Pointer(Value);
end;

procedure TNotifyList.Resume;
 var I: Integer;
begin
  for I := 0 to Count - 1 do NotifyThreads[I].Resume;
end;

procedure TNotifyList.Suspend;
 var I: Integer;
begin
  for I := 0 to Count - 1 do NotifyThreads[I].Suspend;
end;

procedure TNotifyList.WaitFor;
 var I: Integer;
begin
  for I := 0 to Count - 1 do NotifyThreads[I].WaitFor;
end;

initialization

  NotifyList := TNotifyList.Create;

finalization

  if Assigned(NotifyList) then NotifyList.Free;

end.


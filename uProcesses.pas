unit uProcesses;

interface

uses
  Windows, SysUtils, Classes;

type
  TProcess = class
  private
    FId: DWORD;
    FFileName: String;
    FCMDLine: String;
  public
    constructor Create(PID: DWORD);
    function Terminate: Boolean;
    property FileName: String read FFileName;
    property Id: DWORD read FId;
    property CMDLine: String read FCMDLine;
  end;

  TProcessList = class(TList)
  private
    FLocked: Boolean;
  protected
    function GetProcess(Index: Integer): TProcess;
    procedure SetProcess(Index: Integer; Value: TProcess);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear; override;
    procedure Delete(Index: Integer);
    property Processes[Index: Integer]: TProcess read GetProcess write SetProcess; default;
    function IndexFromPID(PID: DWORD): Integer;
    function GetIdFromName(FName: String): DWORD;
    function GetIdFromFullName(FName: String): DWORD;
    function GetProcessNameCount(FName: String): DWORD;
    function ProcessExists(FName: String): Boolean;
    procedure Lock;
    procedure Unlock;
    property Locked: Boolean read FLocked;
  end;

var
  ProcessList: TProcessList;

function ProcessRefresh(const Modules: Boolean; const SetPrivileges: Boolean): Boolean;

implementation

uses
  PSapi, uCommonTools, uWindows, system.win.ComObj;

const
  KERNEL32_DLL = 'kernel32.dll';
  PROCESS_QUERY_LIMITED_INFORMATION = $1000;

type
  TQueryFullProcessImageName = function(Process: THandle; Flags: DWORD; Buffer: PChar; Size: PDWORD): DWORD; stdcall;
  TGetProcessImageFileName = function(Process: THandle; Buffer: PChar; Size: DWORD): DWORD; stdcall;

procedure DBG(sData: String);
begin
{$IFDEF DEBUG}
  OutputDebugString(PChar('PMO: ' + sData));
{$ENDIF}
end;

function FillProcessList: Boolean;

  function BuildListPS: Boolean;
   var
     PIDs: array [0..1023] of DWORD;
     dwNeeded: DWORD;
     I: Integer;
  begin
    Result := EnumProcesses(@PIDs, SizeOf(PIDs), dwNeeded);
    if Result then for I := 0 to (dwNeeded div SizeOf(DWORD)) - 1 do if PIDs[I] <> 0 then ProcessList.Add(TProcess.Create(PIDs[I]));
  end;

begin
  ProcessList.Clear;
  Result := BuildListPS;
end;

function ProcessRefresh(const Modules: Boolean; const SetPrivileges: Boolean): Boolean;
 var
   PrivPrevState: Boolean;
begin
  Result := ProcessList.Locked;
  if not Result then begin
    ProcessList.Lock;
    try
      if SetPrivileges then icsSetPrivilege(SE_DEBUG_NAME, True, PrivPrevState);
      Result := FillProcessList;
    finally
      if SetPrivileges then icsSetPrivilege(SE_DEBUG_NAME, PrivPrevState, PrivPrevState);
      ProcessList.Unlock;
    end;
  end;
end;

// ------------

function GetProcessImageFileName(Process: THandle; Buffer: PChar; Size: DWORD): DWORD;
 var fProc: TGetProcessImageFileName;
begin
  @fProc := LinkAPI(KERNEL32_DLL, 'GetProcessImageFileName' + {$IFDEF UNICODE} 'W' {$ELSE} 'A' {$ENDIF});
  if Assigned(fProc) then Result := fProc(Process, Buffer, Size) else Result := 0;
end;

function QueryFullProcessImageName(Process: THandle; Flags: DWORD; Buffer: PChar; Size: PDWORD): DWORD;
 var fProc: TQueryFullProcessImageName;
begin
  @fProc := LinkAPI(KERNEL32_DLL, 'QueryFullProcessImageName' + {$IFDEF UNICODE} 'W' {$ELSE} 'A' {$ENDIF});
  if Assigned(fProc) then Result := fProc(Process, Flags, Buffer, Size) else Result := 0;
end;

function _GetModuleNameByHandle(Handle: THandle): String;
 const
   PROCESS_NAME_WIN32 = 0;
   PROCESS_NAME_NATIVE = 1;
 var
   bufProc: array[0..MAX_PATH - 1] of Char;
   dLen: DWORD;
begin
  if GetModuleFileNameEx(Handle, 0, bufProc, MAX_PATH) > 0 then Result := String(bufProc);
  if Result = '' then begin
    dLen := MAX_PATH - 1;
    if QueryFullProcessImageName(Handle, PROCESS_NAME_WIN32, bufProc, @dLen) > 0 then Result := String(bufProc) else if GetProcessImageFileName(Handle, bufProc, dLen) > 0 then Result := String(bufProc);
  end;
end;

function _GetModuleNameByProcessID(iPID: Cardinal): String;
 var hProc: THandle;
begin
  Result := '';
  if iPID <> 0 then begin
    hProc := OpenProcess(PROCESS_QUERY_INFORMATION or PROCESS_VM_READ, False, iPID);
    if hProc > 0 then begin
      Result := _GetModuleNameByHandle(hProc);
      CloseHandle(hProc);
    end;
  end;
end;

{ TProcess }

constructor TProcess.Create(PID: DWORD);
begin
  inherited Create;
  FId := PID;
  FFileName := _GetModuleNameByProcessID(FId);
  FCMDLine := '';
end;

function TProcess.Terminate: Boolean;
begin
  Result := icsProcessTerminate(FId);
end;

{ TProcessList }

procedure TProcessList.Clear;
 var I: Integer;
begin
  for I := 0 to Count - 1 do Processes[I].Free;
  inherited Clear;
end;

constructor TProcessList.Create;
begin
  inherited Create;
  FLocked := False;
end;

procedure TProcessList.Delete(Index: Integer);
begin
  Processes[Index].Free;
  inherited Delete(Index);
end;

destructor TProcessList.Destroy;
begin
  Clear;
  inherited;
end;

function TProcessList.IndexFromPID(PID: DWORD): Integer;
 var I: Integer;
begin
  Result := -1;
  for I := 0 to Count - 1 do if Processes[I].Id = PID then begin
    Result := I;
    Break;
  end;
end;

procedure TProcessList.Lock;
begin
  FLocked := True;
end;

function TProcessList.GetProcess(Index: Integer): TProcess;
begin
  Result := TProcess(Items[Index]);
end;

procedure TProcessList.SetProcess(Index: Integer; Value: TProcess);
begin
  Processes[Index].Free;
  Items[Index] := Pointer(Value);
end;

procedure TProcessList.Unlock;
begin
  FLocked := False;
end;

function TProcessList.GetIdFromFullName(FName: String): DWORD;
 var I: Integer;
begin
  Result := 0;
  for I := 0 to Count - 1 do if UpperCase(Processes[I].FileName) = UpperCase(FName) then begin
    Result := Processes[I].Id;
    Break;
  end;
end;

function TProcessList.GetIdFromName(FName: String): DWORD;
 var I: Integer;
begin
  Result := 0;
  for I := 0 to Count - 1 do if UpperCase(ExtractFileName(Processes[I].FileName)) = UpperCase(FName) then begin
    Result := Processes[I].Id;
    Break;
  end;
end;

function TProcessList.GetProcessNameCount(FName: String): DWORD;
 var I: Integer;
begin
  Result := 0;
  for I := 0 to Count - 1 do if UpperCase(ExtractFileName(Processes[I].FileName)) = UpperCase(FName) then Inc(Result);
end;

function TProcessList.ProcessExists(FName: String): Boolean;
 var I: Integer;
begin
  Result := False;
  for I := 0 to Count - 1 do if UpperCase(Processes[I].FileName) = UpperCase(FName) then begin
    Result := True;
    Break;
  end;
end;

initialization

  ProcessList := TProcessList.Create;

finalization

  if Assigned(ProcessList) then ProcessList.Free;

end.

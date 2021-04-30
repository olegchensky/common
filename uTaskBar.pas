unit uTaskBar;

interface

uses
  Windows, Messages;

type
  TBalloonType = (xbtNone, xbtError, xbtInfo, xbtWarning);

//http://msdn.microsoft.com/library/default.asp?url=/library/en-us/shellcc/platform/shell/reference/structures/notifyicondata.asp

  TNotifyIconDataXP = record
    cbSize: DWORD;
    Wnd: HWND;
    uID: UINT;
    uFlags: UINT;
    uCallbackMessage: UINT;
    hIcon: HICON;
    szTip: array [0..127] of Char;
    dwState: DWORD;
    dwStateMask: DWORD;
    szInfo: array[0..255] of Char;
    uTimeOutVersion: DWORD;
    szInfoTitle: array[0..63] of Char;
    dwInfoFlags: DWORD;
    guidItem: TGUID;
  end;

const
  NOTIFYICON_VERSION            = 3;
  NIM_ADD                       = $00000000;
  NIM_MODIFY                    = $00000001;
  NIM_DELETE                    = $00000002;
  NIM_SETFOCUS                  = $00000003;
  NIM_SETVERSION                = $00000004;

  NIF_MESSAGE                   = $00000001;
  NIF_ICON                      = $00000002;
  NIF_TIP                       = $00000004;
  NIF_STATE                     = $00000008;
  NIF_INFO                      = $00000010;
  NIF_GUID                      = $00000020;

  NIS_HIDDEN                    = $00000001;
  NIS_SHAREDICON                = $00000002;

  NIIF_NONE                     = $00000000;
  NIIF_INFO                     = $00000001;
  NIIF_WARNING                  = $00000002;
  NIIF_ERROR                    = $00000003;
  NIIF_ICON_MASK                = $0000000F;
  NIIF_NOSOUND                  = $00000010;

  NIN_SELECT                    = WM_USER + 0;
  NINF_KEY                      = 1;
  NIN_KEYSELECT                 = NIN_SELECT or NINF_KEY;
  NIN_BALLOONSHOW               = WM_USER + 2;
  NIN_BALLOONHIDE               = WM_USER + 3;
  NIN_BALLOONTIMEOUT            = WM_USER + 4;
  NIN_BALLOONUSERCLICK          = WM_USER + 5;

  NIN_MIN_TIMEOUT               = 10000;
  NIN_MAX_TIMEOUT               = 30000;


var
  SystemTrayNIDA: array of TNotifyIconDataXP;

function TaskBarAddIcon(hWindow: HWND; ID: DWORD; Icon: HICON; CallbackMessage: DWORD; Hint: String): Boolean;
function TaskBarModifyThisIcon(Idx: Integer; Icon: HICON; CallbackMessage: DWORD; Hint: String): Boolean;
function TaskBarModifyIcon(ID: DWORD; Icon: HICON; CallbackMessage: DWORD; Hint: String): Boolean;
function TaskBarDeleteIcon(ID: DWORD): Boolean;
function TaskBarBalloonHint(ID: DWORD; Title, Value: String; BalloonType: TBalloonType; TimeOut: DWORD = NIN_MAX_TIMEOUT): Boolean;
procedure TaskBarRemoveTrayIcons;
function TaskBarSetFocus(ID: DWORD): Boolean;

implementation

uses
  ShellAPI, uWindows, uCommonTools;

const
  SISTEM_TRAY_ICON_BASEFLAGS = NIF_MESSAGE or NIF_ICON or NIF_TIP or NIF_STATE;

function TaskBarAddIcon(hWindow: HWND; ID: DWORD; Icon: HICON; CallbackMessage: DWORD; Hint: String): Boolean;
begin                           
  SetLength(SystemTrayNIDA, Length(SystemTrayNIDA) + 1);
  FillChar(SystemTrayNIDA[High(SystemTrayNIDA)], SizeOf(TNotifyIconDataXP), 0);
  with SystemTrayNIDA[High(SystemTrayNIDA)] do begin
    cbSize := SizeOf(TNotifyIconDataXP);
    Wnd := hWindow;
    uID := ID;
    uFlags := SISTEM_TRAY_ICON_BASEFLAGS;
    uCallbackMessage := CallbackMessage;
    hIcon := Icon;
    lstrcpyn(szTip, PChar(Hint), Length(szTip));
    uTimeOutVersion := NOTIFYICON_VERSION;
  end;
  Result := Shell_NotifyIcon(NIM_ADD, @SystemTrayNIDA[High(SystemTrayNIDA)]) and Shell_NotifyIcon(NIM_SETVERSION, @SystemTrayNIDA[High(SystemTrayNIDA)]);
end;

function TaskBarModifyThisIcon(Idx: Integer; Icon: HICON; CallbackMessage: DWORD; Hint: String): Boolean;
begin
  if (Idx >= 0) and (Idx <= High(SystemTrayNIDA)) then begin
    with SystemTrayNIDA[Idx] do begin
      hIcon := Icon;
      uFlags := uFlags and not NIF_INFO;
      uCallbackMessage := CallbackMessage;
      lstrcpyn(szTip, PChar(Hint), Length(szTip));
      lstrcpy(szInfoTitle, nil);
      lstrcpy(szInfo, nil);
    end;
    Result := Shell_NotifyIcon(NIM_MODIFY, @SystemTrayNIDA[Idx]);
  end else Result := False;
end;

function TaskBarModifyIcon(ID: DWORD; Icon: HICON; CallbackMessage: DWORD; Hint: String): Boolean;
 var I: Integer;
begin
  Result := False;
  for I := 0 to High(SystemTrayNIDA) do if SystemTrayNIDA[I].uID = ID then begin
    Result := TaskBarModifyThisIcon(I, Icon, CallbackMessage, Hint);
    Break;
  end;
end;

function TaskBarDeleteThisIcon(Idx: Integer): Boolean;
begin
  if (Idx >= 0) and (Idx <= High(SystemTrayNIDA)) then begin
    Result := Shell_NotifyIcon(NIM_DELETE, @SystemTrayNIDA[Idx]);
    if Result then begin
      if Idx = High(SystemTrayNIDA) then SetLength(SystemTrayNIDA, Length(SystemTrayNIDA) - 1) else begin
        System.Move(SystemTrayNIDA[Idx + 1], SystemTrayNIDA[Idx], (Length(SystemTrayNIDA) - Idx - 1) * SizeOf(TNotifyIconDataXP) + 1);
        SetLength(SystemTrayNIDA, Length(SystemTrayNIDA) - 1) ;
      end;
    end;
  end else Result := False;
end;

function TaskBarDeleteIcon(ID: DWORD): Boolean;
 var I: Integer;
begin
  Result := False;
  for I := 0 to High(SystemTrayNIDA) do if SystemTrayNIDA[I].uID = ID then begin
    Result := TaskBarDeleteThisIcon(I);
    Break;
  end;
end;

function TaskBarBalloonHint(ID: DWORD; Title, Value: String; BalloonType: TBalloonType; TimeOut: DWORD = NIN_MAX_TIMEOUT): Boolean;
 var I: Integer;
begin
  Result := False;
  for I := 0 to High(SystemTrayNIDA) do if SystemTrayNIDA[I].uID = ID then begin
    with SystemTrayNIDA[I] do begin
      uFlags := uFlags or NIF_INFO;
      lstrcpyn(szInfoTitle, PChar(Title), Length(szInfoTitle));
      lstrcpyn(szInfo, PChar(Value), Length(szInfo));
      uTimeOutVersion := TimeOut;
      case BalloonType of
        xbtError: dwInfoFlags := NIIF_ERROR;
        xbtInfo: dwInfoFlags := NIIF_INFO;
        xbtWarning: dwInfoFlags := NIIF_WARNING;
        else dwInfoFlags := NIIF_NONE;
      end;
    end;
    Result := Shell_NotifyIcon(NIM_MODIFY, @SystemTrayNIDA[I]);
  end;
end;

procedure TaskBarRemoveTrayIcons;
 var I: Integer;
begin
  for I := High(SystemTrayNIDA) downto 0 do TaskBarDeleteThisIcon(I);
end;

function TaskBarSetThisFocus(Idx: Integer): Boolean;
begin
  if (Idx >= 0) and (Idx <= High(SystemTrayNIDA)) then Result := Shell_NotifyIcon(NIM_SETFOCUS, @SystemTrayNIDA[Idx]) else Result := False;
end;

function TaskBarSetFocus(ID: DWORD): Boolean;
 var I: Integer;
begin
  Result := False;
  for I := 0 to High(SystemTrayNIDA) do if SystemTrayNIDA[I].uID = ID then begin
    Result := TaskBarSetThisFocus(I);
    Break;
  end;
end;

initialization

finalization

  TaskBarRemoveTrayIcons;

end.

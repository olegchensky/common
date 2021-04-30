unit uWindows;

{$WARNINGS OFF}

interface

uses
  Windows;

const
  SE_CREATE_TOKEN_NAME        = 'SeCreateTokenPrivilege';
  SE_ASSIGNPRIMARYTOKEN_NAME  = 'SeAssignPrimaryTokenPrivilege';
  SE_LOCK_MEMORY_NAME         = 'SeLockMemoryPrivilege';
  SE_INCREASE_QUOTA_NAME      = 'SeIncreaseQuotaPrivilege';
  SE_UNSOLICITED_INPUT_NAME   = 'SeUnsolicitedInputPrivilege';
  SE_MACHINE_ACCOUNT_NAME     = 'SeMachineAccountPrivilege';
  SE_TCB_NAME                 = 'SeTcbPrivilege';
  SE_SECURITY_NAME            = 'SeSecurityPrivilege';
  SE_TAKE_OWNERSHIP_NAME      = 'SeTakeOwnershipPrivilege';
  SE_LOAD_DRIVER_NAME         = 'SeLoadDriverPrivilege';
  SE_SYSTEM_PROFILE_NAME      = 'SeSystemProfilePrivilege';
  SE_SYSTEMTIME_NAME          = 'SeSystemtimePrivilege';
  SE_PROF_SINGLE_PROCESS_NAME = 'SeProfileSingleProcessPrivilege';
  SE_INC_BASE_PRIORITY_NAME   = 'SeIncreaseBasePriorityPrivilege';
  SE_CREATE_PAGEFILE_NAME     = 'SeCreatePagefilePrivilege';
  SE_CREATE_PERMANENT_NAME    = 'SeCreatePermanentPrivilege';
  SE_BACKUP_NAME              = 'SeBackupPrivilege';
  SE_RESTORE_NAME             = 'SeRestorePrivilege';
  SE_SHUTDOWN_NAME            = 'SeShutdownPrivilege';
  SE_DEBUG_NAME               = 'SeDebugPrivilege';
  SE_AUDIT_NAME               = 'SeAuditPrivilege';
  SE_SYSTEM_ENVIRONMENT_NAME  = 'SeSystemEnvironmentPrivilege';
  SE_CHANGE_NOTIFY_NAME       = 'SeChangeNotifyPrivilege';
  SE_REMOTE_SHUTDOWN_NAME     = 'SeRemoteShutdownPrivilege';
  SE_UNDOCK_NAME              = 'SeUndockPrivilege';
  SE_SYNC_AGENT_NAME          = 'SeSyncAgentPrivilege';
  SE_ENABLE_DELEGATION_NAME   = 'SeEnableDelegationPrivilege';


  VK_BROWSER_BACK             = $A6;
  VK_BROWSER_FORWARD          = $A7;
  VK_BROWSER_REFRESH          = $A8;
  VK_BROWSER_STOP             = $A9;
  VK_BROWSER_SEARCH           = $AA;
  VK_BROWSER_FAVORITES        = $AB;
  VK_BROWSER_HOME             = $AC;
  VK_VOLUME_MUTE              = $AD;
  VK_VOLUME_DOWN              = $AE;
  VK_VOLUME_UP                = $AF;
  VK_MEDIA_NEXT_TRACK         = $B0;
  VK_MEDIA_PREV_TRACK         = $B1;
  VK_MEDIA_STOP               = $B2;
  VK_MEDIA_PLAY_PAUSE         = $B3;
  VK_LAUNCH_MAIL              = $B4;
  VK_LAUNCH_MEDIA_SELECT      = $B5;
  VK_LAUNCH_APP1              = $B6;
  VK_LAUNCH_APP2              = $B7;


//var
//  IsWindowsVista: Boolean = False;

function GetShellWindow: HWND; stdcall;

const
  SHERB_NOCONFIRMATION = $00000001;
  SHERB_NOPROGRESSUI   = $00000002;
  SHERB_NOSOUND        = $00000004;

const
  SHFMT_ID_DEFAULT      = $FFFF;

  SHFMT_OPT_FULL        = $0001;
  SHFMT_OPT_SYSONLY     = $0002;

  SHFMT_ERROR           = $FFFFFFFF;    // Error on last format, drive may be formatable
  SHFMT_CANCEL          = $FFFFFFFE;    // Last format wascanceled
  SHFMT_NOFORMAT        = $FFFFFFFD;    // Drive is not formatable

function LinkAPI(const Module, FunctionName: String): Pointer;

function SHFormatDrive(Wnd: HWND; Volume, fmtId, Options: Integer): DWord; stdcall;

//function PickIconDlg(OwnerWnd: HWND; lpstrFile: PChar; var nMaxFile: Integer; var lpdwIconIndex: Integer): LongBool; stdcall;

function IsUserAnAdmin: Boolean; stdcall;

function IsPwrHibernateAllowed: Boolean; stdcall;
function IsPwrShutdownAllowed: Boolean; stdcall;
function IsPwrSuspendAllowed: Boolean; stdcall;
function SetSuspendState(bHibernate, bForceCritical, bDisableWakeEvent: Boolean): Boolean; stdcall;

implementation

uses
  ShellAPI;

function LinkAPI(const Module, FunctionName: String): Pointer;
 var hLib: HMODULE;
begin
  hLib := GetModuleHandle(PChar(Module));
  if hLib = 0 then hLib := LoadLibrary(PChar(Module));
  if hLib <> 0 then Result := GetProcAddress(hLib, PChar(FunctionName)) else Result := nil;
end;


function GetShellWindow; external user32 name 'GetShellWindow';

function SHFormatDrive; external shell32 name 'SHFormatDrive';

//function PickIconDlg(OwnerWnd: HWND; lpstrFile: PChar; var nMaxFile: Integer; var lpdwIconIndex: Integer): LongBool; stdcall; external shell32 index 62;

function IsUserAnAdmin; external shell32;

{ --- Power Management Functions --- }

const
  POWRPROF_DLL = 'powrprof.dll';

type
  TIsPwrHibernateAllowed = function: Boolean; stdcall;
  TIsPwrShutdownAllowed = function: Boolean; stdcall;
  TIsPwrSuspendAllowed = function: Boolean; stdcall;

  TSetSuspendState = function(bHibernate, bForceCritical, bDisableWakeEvent: Boolean): Boolean; stdcall;

function IsPwrHibernateAllowed: Boolean;
 var fProc: TIsPwrHibernateAllowed;
begin
  @fProc := LinkAPI(POWRPROF_DLL, 'IsPwrHibernateAllowed');
  if Assigned(fProc) then Result := fProc else Result := False;
end;

function IsPwrShutdownAllowed: Boolean;
 var fProc: TIsPwrShutdownAllowed;
begin
  @fProc := LinkAPI(POWRPROF_DLL, 'IsPwrShutdownAllowed');
  if Assigned(fProc) then Result := fProc else Result := False;
end;

function IsPwrSuspendAllowed: Boolean;
 var fProc: TIsPwrSuspendAllowed;
begin
  @fProc := LinkAPI(POWRPROF_DLL, 'IsPwrSuspendAllowed');
  if Assigned(fProc) then Result := fProc else Result := False;
end;

function SetSuspendState(bHibernate, bForceCritical, bDisableWakeEvent: Boolean): Boolean;
 var fProc: TSetSuspendState;
begin
  @fProc := LinkAPI(POWRPROF_DLL, 'SetSuspendState');
  if Assigned(fProc) then Result := fProc(bHibernate, bForceCritical, bDisableWakeEvent) else Result := False;
end;

end.

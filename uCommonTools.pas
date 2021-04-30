unit uCommonTools;

interface

uses
  Windows, Messages, WinINet, SysUtils, Classes, Wcrypt2;

const
  PROG_MESSAGE_PROGRESS = WM_USER + $200;

type
  TProgMessageProgressAction = (paInit, paUpdate, paOk, paFail);
  TExitWindowsAction = (ewaShutDown, ewaReboot, ewaHibernate, ewaStandby, ewaLogOff);

var
  INetFileTerminated: Boolean = False;

procedure icsDBG(const Msg: String = '');

function icsWordCount(const S: String; const Delimiter: Char): Integer;
function icsWordPosition(const N: Integer; const S: String; const Delimiter: Char): Integer;
function icsExtractWord(N: Integer; const S: String; const Delimiter: Char): String;

function icsGetReplacedString(SourceStr: String; const OldEntry, NewEntry: String): String;
function icsGetReplacedStringEx(const SourceStr: String; const OldEntries, NewEntries: array of String): String;
function icsGetStringWithoutChars(S: String; const Chs: String): String;
function icsGenerateGUIDString: String;
function icsExtractDigits(const S: String): String;
function icsExtractDigitsEx(const S: String): String;
function icsExpandString(const S: String): String;

function icsFileExistsEx(const FileName: String): Boolean;
function icsGetFolderLocation(const CSIDL: integer): string;
function icsIsDiskInDrive(const cDisk: Char): Boolean;
function icsGetFileSize(const FName: String): Int64;
function icsFileInUse(const FName: String): Boolean;
function icsGetIconHandleFromFileName(FName: String; Small: Boolean = True; const IconIndex: Integer = 0): HICON;
function icsGetLongPathName(ShortName: String): String;

function icsGetLogicalDriveString: String;
function icsIsDriveLetterFree(const DriveLetter: Char): Boolean;
function icsGetFirstFreeDriveLetter: Char;
function icsGetDriveSerialNumber(Drive: Char): DWORD;
function icsGetDriveSerialNumberString(Drive: Char): String;
function icsGetDriveLabel(const Drive: String): String;
function icsGetDriveFreeSpace(const Drive: Char): Int64;
function icsGetDriveTotalSpace(const Drive: Char): Int64;

function icsIsMainAppWindow(const Wnd: THandle): Boolean;
function icsGetMainAppWndFromPid(const PID: DWORD): THandle;
function icsGetPIDFromWnd(Wnd: HWND): DWORD;

function icsHexToInt(HexNum: String): Int64;
function icsGetLargeInteger(const LInt, HInt: Integer): Int64;

function icsB64Encode(const S: String): String;
function icsB64Decode(const S: String): String;
function icsMemoryStreamToString(MS: TMemoryStream; B64: Boolean = False): String;
function icsXorString(const Key: AnsiString; const Src: AnsiString): AnsiString;
function icsXORCryptDecryptStream(ST: TStream; const sKey: AnsiString; const bCrypt: Boolean): Boolean;
function icsXORCryptDecryptString(S: String; const sKey: AnsiString; const bCrypt: Boolean): String;
function icsGetMD5FromString(const InputString: String): String;
function icsCryptDecryptStream(ST: TStream; const Password: String; const Encrypt: Boolean): Boolean;

function icsIniFileSectionExists(IniFile, Section: String): Boolean;
function icsIniFileGetString(IniFile, Section, IniValue: String): String;
function icsIniFileSetString(IniFile, Section, IniValue, Value: String): Boolean;

function icsGetSpecialFolderLocation(Wnd: HWND; CSIDLFolder: Integer): String;
function icsGetKnownFolderPath(GUIDFolder: TGUID): String;
function icsGetFileVersion(FName: String): String;
function icsGetTempPath: String;
function icsGetTempFileName(Ext: String = '.tmp'): String;
function icsGetThisModuleName: String;

function icsExtractFileFromRes(ResName, FileName: String): Boolean;
function icsGetOSVersionInfo: TOSVersionInfo;
function icsIsWindows64: Boolean;
function icsSetEnvironmentVariable(const VarName, VarValue: String): Integer;

function icsSetPrivilege(const Privilege: PChar; const EnablePrivilege: Boolean; out PreviousState: Boolean): Boolean;
function icsStartProcess(FileName: String; Params: String = ''; CurrentDir: String = ''; ShowWindow: Integer = SW_SHOW; WaitInputIdle: Boolean = False; WaitSingleObject: Boolean = False): Boolean;
function icsStartProcessEx(const FileName: String; const Params: String = ''; const CurrentDir: String = ''; const ShowWindow: Integer = SW_SHOW; const WaitInputIdle: Boolean = False; const WaitSingleObject: Boolean = False; const RunAsAdmin: Boolean = False): Boolean;
function icsStartProcessElevated(lpApplicationName: PChar; lpCommandLine: PChar; lpCurrentDirectory: PChar; var ProcessInfo: TProcessInformation): Boolean;
function icsStartProcessAsUser(const UserName, Domain, Password: String; FileName: String; FileParams: String = ''; CurrentDir: String = ''; WaitInputIdle: Boolean = False; WaitSingleObject: Boolean = False): Cardinal;
function icsProcessTerminate(Id: DWORD): Boolean;
function icsGetCommandLineParams: String;
function icsFlashProcessMemory(Id: DWORD): Boolean;

//procedure icsParseURL(const AURL: String; var AHost, AResource: String);
function icsURLComponents(const AURL: String): TURLComponents;
function icsGetINetStream(const URL: String; ST: TStream): Boolean;
function icsINetProcessRequest(const URL, AcceptTypes: String; stData, stResult: TStream): Boolean;
function icsGetINetString(const URL: String): String;
function icsGetINetFile(const URL, FName: String; Wnd: HWND = 0): Boolean;
function icsGetINetFileEx(const URL, FName: String; Wnd: HWND = 0; HeaderSubString: String = ''): Boolean;

function icsURLEncode(const DecodedStr: String; Pluses: Boolean = False): String;
function icsURLDecode(const EncodedStr: String): String;

function icsUACEnabled: Boolean;
procedure icsSetUACEnabled(Enabled: Boolean);
function icsGetLastErrorText: String;

function icsFileTimeToDateTime(const FileTime: TFileTime; const dtDefault: TDateTime): TDateTime;
function icsDateTimeToFileTime(const FileTime: TDateTime): TFileTime;
function icsGetFileLastWriteTime(const FileName: String; const dtDefault: TDateTime): TDateTime;
function icsSetSystemTime(DateTime: TDateTime): Boolean;

function icsBringToTop(Wnd: HWND; bWaitFor: Boolean = False; dwWaitPause: DWORD = 0): Boolean;

procedure icsDeleteFileTree(RootPath: String; const DeleteRoot: Boolean);
function icsCopyDirectory(const ExistingDirectoryName, NewDirectoryName: String): Boolean;
function icsMoveDirectory(const ExistingDirectoryName, NewDirectoryName: String): Boolean;
function icsDeleteDirectory(const DirectoryName: String): Boolean;

function icsGetWindowCaption(Wnd: HWND): String;
function icsGetWindowClassName(Wnd: HWND): String;
function icsGetWindowIcon(Wnd: HWND): HICON;
function icsGetTrayNotifyWndHandle: HWND;

function icsDateTimeToMilliseconds(const ADateTime: TDateTime): Int64;

function MaxX(A: array of Integer): Integer;
function MinX(A: array of Integer): Integer;

procedure icsDoExitWindows(const ExitWindowsAction: TExitWindowsAction; const bForce: Boolean);

function icsGetLayerAlpha(Procent: Byte): Byte;
function icsIsWindowsVista: Boolean;
function icsGetLastParentWnd(Wnd: HWND): HWND;

function icsGetCurrentSSFileName: String;
function icsSetCurrentSSFileName(SSFileName: String): Boolean;

function icsGetCurrentUserName: String;

function icsIsClipboardEmpty(Wnd: HWND): Boolean;
function icsGetRecycleBinItemCount: UInt64;

procedure icsDoWindowsShutdown(Flags: DWORD);

procedure icsEnterText(AText: String);

function icsGetLocalIPs: String;

procedure icsDoOptimizeMemory;

function icsLoadStringDataFromFile(const sFile: String; const sKey: String = ''): String;
procedure icsSaveStringDataToFile(const sData, sFile: String; const sKey: String = '');

procedure icsAddLog(const FName, LogMessage: String);
procedure icsGetLog(const FName: String; var STLog: TStringList);

function icsIsSystemShellForCurrentUser: Boolean;

function icsIsValidEmail(const emailAddress: string): Boolean;

implementation

uses
  ActiveX, ShlObj, ShellAPI, RegStr, System.NetEncoding, WinSock, TlHelp32,
  uWindows, uRegLite, uWindowsVersionInfo, uProcesses,
  System.RegularExpressions;

const
  GENERAL_BUFFER_SIZE             = 2048;
  INET_BUFFER_SIZE                = 8192;
  ICS_USER_AGENT                  = 'ICS';

procedure icsDBG(const Msg: String = '');
begin
{$IFDEF DEBUG}
  OutputDebugString(PChar('ics: ' + FormatDateTime('dd.mm.yyyy, hh:nn:ss - ', Now) + Msg));
{$ENDIF}
end;

function icsWordCount(const S: String; const Delimiter: Char): Integer;
 var sLen, I: Integer;
begin
  Result := 0;
  I := 1;
  sLen := S.Length;
  while I <= S.Length do begin
    while (I <= SLen) and (S[I] = Delimiter) do Inc(I);
    if I <= SLen then Inc(Result);
    while (I <= SLen) and (S[I] <> Delimiter) do Inc(I);
  end;
end;

function icsWordPosition(const N: Integer; const S: String; const Delimiter: Char): Integer;
 var Count, I: Integer;
begin
  Count := 0;
  I := 1;
  Result := 0;
  while (I <= S.Length) and (Count <> N) do begin
    while (I <= Length(S)) and (S[I] = Delimiter) do Inc(I);
    if I <= Length(S) then Inc(Count);
    if Count <> N then while (I <= Length(S)) and (S[I] <> Delimiter) do Inc(I) else Result := I;
  end;
end;

function icsExtractWord(N: Integer; const S: String; const Delimiter: Char): String;
 var
   I: Integer;
   Len: Integer;
begin
  Len := 0;
  I := icsWordPosition(N, S, Delimiter);
  if I <> 0 then while (I <= Length(S)) and (S[I] <> Delimiter) do begin
    Inc(Len);
    SetLength(Result, Len);
    Result[Len] := S[I];
    Inc(I);
  end;
  SetLength(Result, Len);
end;

function icsGetReplacedString(SourceStr: String; const OldEntry, NewEntry: String): String;
 var I: Integer;
begin
  repeat
    I := Pos(OldEntry, SourceStr);
    if I > 0 then begin
      Delete(SourceStr, I, Length(OldEntry));
      Insert(NewEntry, SourceStr, I);
    end;
  until (I <= 0);
  Result := SourceStr;
end;

function icsGetReplacedStringEx(const SourceStr: String; const OldEntries, NewEntries: array of String): String;
 var
   I: Integer;
   NewEntry: String;
begin
  Result := SourceStr;
  for I := 0 to Length(OldEntries) - 1 do begin
    if Length(NewEntries) >= I then NewEntry := NewEntries[I] else NewEntry := '';
    Result := icsGetReplacedString(Result, OldEntries[I], NewEntry);
  end;
end;

function icsGetStringWithoutChars(S: String; const Chs: String): String;
 var I: Integer;
begin
  for I := 1 to Length(Chs) do while Pos(Chs[I], S) <> 0 do Delete(S, Pos(Chs[I], S), 1);
  Result := S;
end;

function icsGenerateGUIDString: String;
 var
   GUID: TGUID;
   P: PWideChar;
begin
  CoCreateGuid(GUID);
  try
    if StringFromCLSID(GUID, P) = S_OK then Result := P else Result := '';
  finally
    CoTaskMemFree(P);
  end;
end;

function icsExtractDigits(const S: String): String;
 var I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do if CharInSet(S[I], ['0'..'9']) then Result := Result + S[I];
end;

function icsExtractDigitsEx(const S: String): String;
begin
  Result := '';
  for var I := 1 to Length(S) do if CharInSet(S[I], ['0'..'9', '.', ',']) then Result := Result + S[I];
end;

function icsExpandString(const S: String): String;
 var BufSize: Integer;
begin
  BufSize := ExpandEnvironmentStrings(PChar(S), nil, 0);
  SetLength(Result, BufSize);
  ExpandEnvironmentStrings(PChar(S), PChar(Result), BufSize);
  Result := Trim(Result);
end;

function icsFileExistsEx(const FileName: String): Boolean;
 var
   Code: Integer;
   ErrorMode: Cardinal;
begin
  ErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS);
  try
    Code := GetFileAttributes(PChar(FileName));
    Result := (Code <> -1) and (FILE_ATTRIBUTE_DIRECTORY and Code = 0);
  finally
    SetErrorMode(ErrorMode);
  end;
end;

procedure icsFreePidl(pidl: PItemIDList);
 var allocator: IMalloc;
begin
  if Succeeded(SHGetMalloc(allocator)) then begin
    allocator.Free(pidl);
{$IFDEF VER90}
    allocator.Release;
{$ENDIF}
  end;
end;

function icsGetFolderLocation(const CSIDL: Integer): string;
 var
   Path : PChar;
   pPIDL: PItemIDList;
begin
  GetMem(path, MAX_PATH * SizeOf(char));
  try
    if Succeeded(SHGetSpecialFolderLocation(0, CSIDL, pPIDL)) then begin
      SHGetPathFromIDList(pPIDL, Path);
      icsFreePidl(pPIDL);
    end else StrCopy(Path, '');
    Result := string(Path);
  finally FreeMem(Path); end;
end;

function icsIsDiskInDrive(const cDisk: Char): Boolean;
 var errorMode: word;
begin
  errorMode := SetErrorMode(SEM_FailCriticalErrors);
  try
    Result := (DiskSize(Ord(cDisk) - Ord('A') + 1) >= 0);
  finally
    SetErrorMode(errorMode);
  end;
end;

function icsGetFileSize(const FName: String): Int64;
 var Handle: THandle;
begin
  Result := 0;
  Handle := CreateFile(PChar(FName), 0, FILE_SHARE_READ, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  if Handle <> INVALID_HANDLE_VALUE then begin
    Result := GetFileSize(Handle, nil);
    CloseHandle(Handle);
  end;
end;

function icsFileInUse(const FName: String): Boolean;
 var Handle: THandle;
begin
  Handle := FileOpen(FName, fmExclusive);
  Result := (Handle = INVALID_HANDLE_VALUE);
  if not Result then FileClose(Handle);
end;

function icsGetIconHandleFromFileName(FName: String; Small: Boolean = True; const IconIndex: Integer = 0): HICON;
 var
   shInfo: TSHFileInfo;
   Flags: DWORD;
begin
  Result := 0;
  if not FileExists(FName) then FName := icsGetLongPathName(FName);
  if FileExists(FName) then begin
    FillChar(shInfo, SizeOf(shInfo), 0);
    shInfo.iIcon := IconIndex;
  //  SHGetFileInfo(PChar(FName), 0, shInfo, SizeOf(shInfo), SHGFI_ICON or SHGFI_OPENICON or SHGFI_SHELLICONSIZE or SHGFI_SMALLICON or SHGFI_SYSICONINDEX);
    Flags := SHGFI_ICON;
    if Small then Flags := Flags or SHGFI_SMALLICON;
    if SHGetFileInfo(PChar(FName), 0, shInfo, SizeOf(shInfo), Flags) > 0 then Result := shInfo.hIcon;
  end;
end;

function icsGetLongPathName(ShortName: String): String;
 var
   NameS: String;
   Len: integer;
   pDummy: PCHAR;
begin
  Len := GetFullPathName(PChar(ShortName), 0, PChar(Result), pDummy);
  SetLength(NameS, Len);
  GetFullPathName(PChar(ShortName), Len, PChar(NameS), pDummy);
  Result := NameS;
end;

function icsGetLogicalDriveString: String;
 var
   Buf: array [0..MAX_PATH - 1] of Char;
   I: Integer;
begin
  Result := '';
  for I := 0 to GetLogicalDriveStrings(MAX_PATH, Buf) do if Buf[I] <> #0 then Result := Result + Buf[I] else Result := Result + ';';
  Delete(Result, Pos(';;', Result), 2);
  Result := UpperCase(Result);
end;

function icsIsDriveLetterFree(const DriveLetter: Char): Boolean;
begin
  Result := (CharInSet(UpCase(DriveLetter), ['A'..'Z'])) and (Pos(UpCase(DriveLetter), icsGetLogicalDriveString) <= 0);
end;

function icsGetFirstFreeDriveLetter: Char;
 var
   S: String;
   I: Integer;
begin
  Result := Chr(0);
  S := icsGetStringWithoutChars(icsGetLogicalDriveString, ':\');
  for I := Ord('C') to Ord('Z') do if Pos(Chr(I), S) <= 0 then begin
    Result := Chr(I);
    Break;
  end;
end;

function icsGetDriveSerialNumber(Drive: Char): DWORD;
begin
  if not GetVolumeInformation(PChar(Drive + ':\'), nil, 0, @Result, DWORD(nil^), DWORD(nil^), nil, 0) then Result := 0;
end;

function icsGetDriveSerialNumberString(Drive: Char): String;
 var SN: DWORD;
begin
  SN := icsGetDriveSerialNumber(Drive);
  if SN <> 0 then Result := IntToHex(HiWord(SN), 4) + '-' + IntToHex(LoWord(SN), 4) else Result := '';
end;

function icsGetDriveLabel(const Drive: String): String;
 var
   VolumeName, FileSystemType: array[0..MAX_PATH - 1] of Char;
   SerialNum, MaxFilenameLength, Flags: DWORD;
begin
  if (GetVolumeInformation(PChar(Drive), VolumeName, MAX_PATH, @SerialNum, MaxFilenameLength, Flags, FileSystemType, MAX_PATH)) then Result := VolumeName else Result := '';
end;

function icsGetDriveFreeSpace(const Drive: Char): Int64;
 var TotalSpace: Int64;
begin
  if not GetDiskFreeSpaceEx(PChar(Drive + ':\'), Result, TotalSpace, nil) then Result := 0;
end;

function icsGetDriveTotalSpace(const Drive: Char): Int64;
 var FreeSpace: Int64;
begin
  if not GetDiskFreeSpaceEx(PChar(Drive + ':\'), FreeSpace, Result, nil) then Result := 0;
end;

function icsIsMainAppWindow(const Wnd: THandle): Boolean;
 var
   ParentWnd: THandle;
//   ExStyle: DWORD;
begin
  ParentWnd := THandle(GetWindowLongPtr(Wnd, GWLP_HWNDPARENT));
//  ExStyle := GetWindowLongPtr(Wnd, GWL_EXSTYLE);
  Result := ((ParentWnd = 0) or (ParentWnd = GetDesktopWindow));// and ((ExStyle and WS_EX_TOOLWINDOW = 0) or (ExStyle and WS_EX_APPWINDOW <> 0));
end;

type
  PSearch = ^TSearch;
  TSearch = record
    PID: DWORD;
    Wnd: THandle;
  end;

function EnumMainAppWindowsProc(Wnd: THandle; Res: PSearch): Boolean; stdcall;
 var WindowPid: DWORD;
begin
  WindowPid := 0;
  GetWindowThreadProcessId(Wnd, @WindowPid);
  if (WindowPid = Res^.PID) and icsIsMainAppWindow(Wnd) then begin
    Res^.Wnd := Wnd;
    Result := False;
  end else Result := True;
end;

function icsGetMainAppWndFromPid(const PID: DWORD): THandle;
 var SearchRec: TSearch;
begin
  SearchRec.PID := PID;
  SearchRec.Wnd := 0;
  EnumWindows(@EnumMainAppWindowsProc, LPARAM(@SearchRec));
  Result := SearchRec.Wnd;
end;

function icsGetPIDFromWnd(Wnd: HWND): DWORD;
begin
  if IsWindow(Wnd) then GetWindowThreadProcessID(Wnd, @Result) else Result := 0;
end;

function icsByteToHex(const B: Byte): ShortString;
 const Digits: array[0..15] of AnsiChar = '0123456789ABCDEF';
begin
  Result := Digits[B shr 4] + Digits[B and $0F];
end;

function icsHexToInt(HexNum: String): Int64;
begin
  Result := StrToIntDef('$' + HexNum, 0);
end;

function icsGetLargeInteger(const LInt, HInt: Integer): Int64;
 type
   _UInt64 = packed record
     Lo, Hi: LongWord;
   end;
begin
  _Uint64(Result).Lo := LInt;
  _Uint64(Result).Hi := HInt;
end;

function icsB64Encode(const S: String): String;
 var Base64Encoding: TBase64Encoding;
begin
  Base64Encoding := TBase64Encoding.Create;
  try
    try
      Result := Base64Encoding.Encode(S);
    except
      Result := '';
    end;
  finally
    Base64Encoding.Free;
  end;
end;

function icsB64Decode(const S: String): String;
 var Base64Encoding: TBase64Encoding;
begin
  Base64Encoding := TBase64Encoding.Create;
  try
    try
      Result := Base64Encoding.Decode(S);
    except
      Result := '';
    end;
  finally
    Base64Encoding.Free;
  end;
end;

function icsMemoryStreamToString(MS: TMemoryStream; B64: Boolean = False): String;
begin
  if Assigned(MS) then begin
    SetString(Result, PChar(MS.Memory), MS.Size div SizeOf(Char));
    if B64 then Result := icsB64Encode(Result);
  end else Result := '';
end;

function icsXorString(const Key: AnsiString; const Src: AnsiString): AnsiString;
 const NotCrypted = [0];
 var
   I, KeyLen: Integer;
   B: Byte;
begin
  Result := Src;
  KeyLen := Length(Key);
  if (KeyLen > 0) and (Length(Src) > 0) then for I := 1 to Length(Src) do begin
    B := Byte(Key[1 + ((I - 1) mod KeyLen)]) xor Ord(Src[I]);
    if B in NotCrypted then Result[I] := Src[I] else Result[I] := AnsiChar(Chr(B));
  end;
end;

function icsConvertStreamToHexString(ST: TStream): AnsiString;
 const
   BUFFER_SIZE = 2048;
 type
   TBuffer = array[0..BUFFER_SIZE - 1] of Byte;
 var
   PBuffer: ^TBuffer;
   dwLen: DWORD;
   IsEndOfStream: Boolean;
   I: Integer;
begin
  Result := '';
  if Assigned(ST) and (ST.Size > 0) then begin
    ST.Position := 0;
    GetMem(PBuffer, BUFFER_SIZE);
    try
      repeat
        dwLen := ST.Read(PBuffer^, BUFFER_SIZE);
        for I := 0 to dwLen - 1 do Result := Result + icsByteToHex(PBuffer^[I]);
        IsEndOfStream := (ST.Position >= ST.Size);
      until IsEndOfStream;
    finally
      FreeMem(PBuffer, BUFFER_SIZE);
    end;
  end;
end;

function icsCopyStringToStream(const pS: PAnsiChar; const iLen: Integer; ST: TStream): Boolean;
begin
  ST.Size := 0;
  ST.Position := 0;
  try
    ST.Write(pS^, iLen);
  finally
    Result := (ST.Size > 0);
  end;
end;

function icsGetStringFromStream(ST: TStream): AnsiString;
 var SST: TStringStream;
begin
  Result := '';
  if Assigned(ST) and (ST.Size > 0) then begin
    SST := TStringStream.Create;
    try
      SST.LoadFromStream(ST);
      Result := AnsiString(SST.DataString);
    finally
      SST.Free;
    end;
  end;
end;

function icsConvertHexStringToStream(const HS: AnsiString; ST: TStream): Boolean;
 var
   I: Integer;
   B: Byte;
begin
  Result := False;
  if Assigned(ST) then begin
    ST.Size := 0;
    ST.Position := 0;
    if Length(HS) > 0 then begin
      I := 1;
      while I < Length(HS) do begin
        B := Byte(StrToIntDef('$' + Copy(String(HS), I, 2), 0));
        ST.Write(B, 1);
        Inc(I, 2);
      end;
      ST.Position := 0;
      Result := (ST.Size > 0);
    end;
  end;
end;

function icsXORCryptDecryptStream(ST: TStream; const sKey: AnsiString; const bCrypt: Boolean): Boolean;
 var S: AnsiString;
begin
  Result := False;
  if Assigned(ST) and (ST.Size > 0) then begin
    if bCrypt then begin
      S := icsXorString(sKey, icsConvertStreamToHexString(ST));
      Result := icsCopyStringToStream(PAnsiChar(S), Length(S), ST);
    end else begin
      S := icsXorString(sKey, icsGetStringFromStream(ST));
      if Length(S) > 0 then Result := icsConvertHexStringToStream(S, ST);
    end;
  end;
end;

function icsXORCryptDecryptString(S: String; const sKey: AnsiString; const bCrypt: Boolean): String;
 var ST: TStringStream;
begin
  ST := TStringStream.Create;
  try
    if bCrypt then begin
      ST.WriteString(S);
      if icsXORCryptDecryptStream(ST, sKey, bCrypt) then Result := String(icsConvertStreamToHexString(ST)) else Result := '';
    end else begin
      if icsConvertHexStringToStream(AnsiString(S), ST) and icsXORCryptDecryptStream(ST, sKey, bCrypt) then Result := ST.DataString else Result := '';
    end;
  finally
    ST.Free;
  end;
end;

function icsGetMD5FromString(const InputString: String): String;
var
  CRYPTPROV: HCRYPTPROV;
  CRYPTHASH: HCRYPTHASH;
  bHash: array[0..$7f] of Byte;
  dwHashBytes: Cardinal;
  AnsiInputString: AnsiString;
  I: Integer;
begin
  dwHashBytes := 16;
  Result := '';
  if CryptAcquireContext(@CRYPTPROV, nil, nil, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT or CRYPT_MACHINE_KEYSET) then try
    if CryptCreateHash(CRYPTPROV, CALG_MD5, 0, 0, @CRYPTHASH) then try
      AnsiInputString := AnsiString(InputString);
      if CryptHashData(CRYPTHASH, @AnsiInputString[1], Length(AnsiInputString), 0) and CryptGetHashParam(CRYPTHASH, HP_HASHVAL, @bHash[0], @dwHashBytes, 0) then begin
        for I := 0 to dwHashBytes - 1 do Result := Result + Format('%.2x', [bHash[I]]);
        Result := LowerCase(Result);
      end;
    finally
      CryptDestroyHash(CRYPTHASH);
    end;
  finally
    CryptReleaseContext(CRYPTPROV, 0);
  end;
end;

function icsCryptDecryptStream(ST: TStream; const Password: String; const Encrypt: Boolean): Boolean;
 const
   BufferSize = 1024 * 1024;
 var
   Base64Encoding: TBase64Encoding;
   MS: TMemoryStream;
   CRYPTPROV: HCRYPTPROV;
   CRYPTHASH: HCRYPTHASH;
   CRYPTKEY: HCRYPTKEY;
   Buffer: LPBYTE;
   BytesIn: DWORD;
   FinalCrypt: Boolean;
   AnsiPassword: AnsiString;
begin
  Result := False;
  if CryptAcquireContext(@CRYPTPROV, nil, nil, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT) then try
    if CryptCreateHash(CRYPTPROV, CALG_SHA1, 0, 0, @CRYPTHASH) then try
      AnsiPassword := AnsiString(icsGetMD5FromString(Password));
      if CryptHashData(CRYPTHASH, @AnsiPassword[1], Length(AnsiPassword), 0) then Result := CryptDeriveKey(CRYPTPROV,  CALG_RC4, CRYPTHASH, 0, @CRYPTKEY);
    finally
      CryptDestroyHash(CRYPTHASH);
    end;
    if Result then begin
      Base64Encoding := TBase64Encoding.Create;
      try
        ST.Position := 0;
        MS := TMemoryStream.Create;
        try
          if Encrypt then begin
            Base64Encoding.Encode(ST, MS);
            ST.Size := 0;
            MS.Position := 0;
            ST.CopyFrom(MS, MS.Size);
            ST.Position := 0;
            MS.Clear;
          end;
          GetMem(Buffer, BufferSize);
          try
            repeat
              BytesIn := ST.Read(Buffer^, BufferSize);
              FinalCrypt := (ST.Position >= ST.Size);
              if Encrypt then CryptEncrypt(CRYPTKEY, 0, FinalCrypt, 0, Buffer, @BytesIn, BytesIn) else CryptDecrypt(CRYPTKEY, 0, FinalCrypt, 0, Buffer, @BytesIn);
              MS.Write(Buffer^, BytesIn);
            until FinalCrypt;
            MS.Position := 0;
            ST.Size := 0;
            if Encrypt then ST.CopyFrom(MS, MS.Size) else Base64Encoding.Decode(MS, ST);
            ST.Position := 0;
            Result := (ST.Size > 0);
          finally
            FreeMem(Buffer, BufferSize);
          end;
        finally
          MS.Free;
        end;
      finally
        Base64Encoding.Free;
      end;
    end;
  finally
    CryptReleaseContext(CRYPTPROV, 0);
  end;
end;

function icsIniFileSectionExists(IniFile, Section: String): Boolean;
  var Buf: array[0..MAX_PATH - 1] of Char;
begin
  Result := (GetPrivateProfileSection(PChar(Section), @Buf, MAX_PATH, PChar(IniFile)) > 0);
end;

function icsIniFileGetString(IniFile, Section, IniValue: String): String;
  var Buf: array[0..MAX_PATH - 1] of Char;
begin
  if GetPrivateProfileString(PChar(Section), PChar(IniValue), '', @Buf, MAX_PATH, PChar(IniFile)) > 0 then Result := String(Buf) else Result := '';
end;

function icsIniFileSetString(IniFile, Section, IniValue, Value: String): Boolean;
begin
  Result := WritePrivateProfileString(PChar(Section), PChar(IniValue), PChar(Value), PChar(IniFile));
end;

function icsGetSpecialFolderLocation(Wnd: HWND; CSIDLFolder: Integer): String;
 var aPath: array [0..MAX_PATH - 1] of Char;
begin
  if SHGetFolderPath(Wnd, CSIDLFolder, 0, 0, aPath) = S_OK then Result := aPath else Result := '';
end;

function icsGetKnownFolderPath(GUIDFolder: TGUID): String;
 var sPath: LPWSTR;
begin
  if SHGetKnownFolderPath(GUIDFolder, KF_FLAG_DEFAULT, 0, sPath) = S_OK then Result := sPath else Result := '';
  CoTaskMemFree(sPath);
end;

function icsGetFileVersion(FName: String): String;
 var
   VerInfoSize, VerValueSize, Dummy: DWORD;
   VerInfo: Pointer;
   VerValue: PVSFixedFileInfo;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(FName), Dummy);
  if VerInfoSize > 0 then begin
    GetMem(VerInfo, VerInfoSize);
    try
      if GetFileVersionInfo(PChar(FName), 0, VerInfoSize, VerInfo) and VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize) then Result := IntToStr(VerValue^.dwFileVersionMS shr 16) + '.' + IntToStr(VerValue^.dwFileVersionMS and $FFFF) + '.' + IntToStr(VerValue^.dwFileVersionLS shr 16) + '.' + IntToStr(VerValue^.dwFileVersionLS and $FFFF);
    finally
      FreeMem(VerInfo, VerInfoSize);
    end;
  end;
end;

function icsGetTempPath: String;
 var Buf: array[0..MAX_PATH - 1] of Char;
begin
  if GetTempPath(MAX_PATH, Buf) > 0 then Result := String(Buf) else Result := GetCurrentDir + '\';
end;

function icsGetTempFileName(Ext: String = '.tmp'): String;
begin
  if Pos('.', Ext) = 0 then Ext := '.' + Ext;
  repeat
    Result := icsGetTempPath + icsGetStringWithoutChars(icsGenerateGUIDString, '{-}') + Ext;
  until not FileExists(Result);
end;

function icsGetThisModuleName: String;
 var Buf: array[0..MAX_PATH - 1] of Char;
begin
  GetModuleFileName(HInstance, Buf, MAX_PATH);
  Result := String(Buf);
end;

function icsExtractFileFromRes(ResName, FileName: String): Boolean;
 var
   PBuffer: Pointer;
   F: File;
   hResFind, hResLoad: THandle;
   dwSize: DWORD;
begin
  Result := False;
  hResFind := FindResource(hInstance, PChar(ResName), RT_RCDATA);
  if hResFind <> 0 then begin
    dwSize := SizeOfResource(hInstance, hResFind);
    hResLoad := LoadResource(hInstance, hResFind);
    if hResLoad <> 0 then begin
      GetMem(PBuffer, dwSize);
      try
        Move(Pointer(Integer(LockResource(hResLoad)))^, PBuffer^, dwSize);
{$I-}
        AssignFile(F, FileName);
        Rewrite(F, 1);
        BlockWrite(F, PBuffer^, dwSize);
        CloseFile(F);
{$I+}
      finally
        FreeMem(PBuffer);
      end;
      Result := FileExists(FileName);
    end;
  end;
end;

function icsGetOSVersionInfo: TOSVersionInfo;
begin
  Result.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  GetVersionEx(Result);
end;

function icsIsWindows64: Boolean;
 var ASystemInfo: TSystemInfo;
 const
   PROCESSOR_ARCHITECTURE_INTEL = 0;
   PROCESSOR_ARCHITECTURE_IA64 = 6;
   PROCESSOR_ARCHITECTURE_AMD64 = 9;
begin
  GetNativeSystemInfo(ASystemInfo);
  Result := ASystemInfo.wProcessorArchitecture in [PROCESSOR_ARCHITECTURE_IA64, PROCESSOR_ARCHITECTURE_AMD64];
end;

function icsSetEnvironmentVariable(const VarName, VarValue: String): Integer;
begin
  if Windows.SetEnvironmentVariable(PChar(VarName), PChar(VarValue)) then Result := 0 else Result := GetLastError;
end;

function icsSetPrivilege(const Privilege: PChar; const EnablePrivilege: Boolean; out PreviousState: Boolean): Boolean;
 var
   ReturnLength: Cardinal;
   TokenHandle: THandle;
   lpLuid: TOKEN_PRIVILEGES;
   OldlpLuid: TOKEN_PRIVILEGES;
begin
  Result := False;
  PreviousState := True;
  if OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, TokenHandle) then try
    if LookupPrivilegeValue(nil, Privilege, lpLuid.Privileges[0].Luid) then begin
      lpLuid.PrivilegeCount := 1;
      if EnablePrivilege then lpLuid.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED else lpLuid.Privileges[0].Attributes := 0;
      ReturnLength := 0;
      OldlpLuid := lpLuid;
      if AdjustTokenPrivileges(TokenHandle, False, lpLuid, SizeOf(OldlpLuid), OldlpLuid, ReturnLength) then begin
        Result := True;
        PreviousState := (OldlpLuid.Privileges[0].Attributes and SE_PRIVILEGE_ENABLED <> 0);
      end;
    end;
  finally
    CloseHandle(TokenHandle);
  end;
end;

function icsStartProcess(FileName: String; Params: String = ''; CurrentDir: String = ''; ShowWindow: Integer = SW_SHOW; WaitInputIdle: Boolean = False; WaitSingleObject: Boolean = False): Boolean;
 var
   StartupInfo: TStartupInfo;
   ProcessInfo: TProcessInformation;
   CMD: String;
   PCurrentDir: PChar;
begin
  FillChar(StartupInfo, SizeOf(StartupInfo), 0);
  FillChar(ProcessInfo, SizeOf(ProcessInfo), 0);
  StartupInfo.cb := SizeOf(TStartupInfo);
  StartupInfo.dwFlags := STARTF_FORCEONFEEDBACK or STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := ShowWindow;

  CMD := '"' + icsGetStringWithoutChars(FileName, '"') + '"';
  if Params <> '' then CMD := CMD + ' ' + Params;
  if CurrentDir = '' then PCurrentDir := nil else PCurrentDir := PChar(CurrentDir);
  try
    Result := CreateProcess(nil, PChar(CMD), nil, nil, False, NORMAL_PRIORITY_CLASS, nil, PCurrentDir, StartupInfo, ProcessInfo);
    if Result then begin
      if WaitInputIdle then WaitForInputIdle(ProcessInfo.hProcess, INFINITE);
      if WaitSingleObject then WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
    end;
  finally
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;
end;

function icsStartProcessWithExitCode(FileName: String; Params: String = ''; CurrentDir: String = ''; ShowWindow: Integer = SW_SHOW; WaitInputIdle: Boolean = False; WaitSingleObject: Boolean = False): Cardinal;
 var
   StartupInfo: TStartupInfo;
   ProcessInfo: TProcessInformation;
   CMD: String;
   PCurrentDir: PChar;
begin
  FillChar(StartupInfo, SizeOf(StartupInfo), 0);
  FillChar(ProcessInfo, SizeOf(ProcessInfo), 0);
  StartupInfo.cb := SizeOf(TStartupInfo);
  StartupInfo.dwFlags := STARTF_FORCEONFEEDBACK or STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := ShowWindow;

  CMD := '"' + icsGetStringWithoutChars(FileName, '"') + '"';
  if Params <> '' then CMD := CMD + ' ' + Params;
  if CurrentDir = '' then PCurrentDir := nil else PCurrentDir := PChar(CurrentDir);
  try
    if CreateProcess(nil, PChar(CMD), nil, nil, False, NORMAL_PRIORITY_CLASS, nil, PCurrentDir, StartupInfo, ProcessInfo) then begin
      Result := ProcessInfo.hProcess;
      if Result > 32 then begin
        if WaitInputIdle then WaitForInputIdle(ProcessInfo.hProcess, INFINITE);
        if WaitSingleObject then begin
          WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
          GetExitCodeProcess(ProcessInfo.hProcess, Result);
        end;
      end;
    end;
  finally
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;
end;

function icsStartProcessEx(const FileName: String; const Params: String = ''; const CurrentDir: String = ''; const ShowWindow: Integer = SW_SHOW; const WaitInputIdle: Boolean = False; const WaitSingleObject: Boolean = False; const RunAsAdmin: Boolean = False): Boolean;
 var ShellExecuteInfo: TShellExecuteInfo;
begin
  Result := False;
  FillChar(ShellExecuteInfo, SizeOf(ShellExecuteInfo), 0);
  ShellExecuteInfo.cbSize:= SizeOf(ShellExecuteInfo);
  ShellExecuteInfo.fMask := SEE_MASK_NOASYNC or SEE_MASK_NOCLOSEPROCESS or SEE_MASK_DOENVSUBST or SEE_MASK_UNICODE;
  ShellExecuteInfo.fMask := ShellExecuteInfo.fMask or SEE_MASK_FLAG_NO_UI;
  if RunAsAdmin and (icsGetOSVersionInfo.dwMajorVersion >= 6) then begin
    ShellExecuteInfo.Wnd := 0;
    ShellExecuteInfo.lpVerb := 'runas';
  end else begin
    ShellExecuteInfo.Wnd := GetDesktopWindow;
    ShellExecuteInfo.lpVerb := nil;
  end;
  ShellExecuteInfo.lpFile := PChar(FileName);
  ShellExecuteInfo.lpParameters := PChar(Params);
  if CurrentDir = '' then ShellExecuteInfo.lpDirectory := PChar(ExtractFilePath(FileName)) else ShellExecuteInfo.lpDirectory := PChar(CurrentDir);
  ShellExecuteInfo.nShow := ShowWindow;
  if ShellExecuteEx(@ShellExecuteInfo) then begin
    Result := (ShellExecuteInfo.hProcess >= 32);
    if WaitInputIdle then WaitForInputIdle(ShellExecuteInfo.hProcess, INFINITE);
    if WaitSingleObject then WaitForSingleObject(ShellExecuteInfo.hProcess, INFINITE);
  end;
end;

function icsStartProcessExWithExitCode(const FileName, Params, CurrentDir: String; const ShowWindow: Integer; const WaitInputIdle, WaitSingleObject, RunAsAdmin: Boolean; var ExitCode: Cardinal): Boolean;
 var ShellExecuteInfo: TShellExecuteInfo;
begin
  Result := False;
  FillChar(ShellExecuteInfo, SizeOf(ShellExecuteInfo), 0);
  ShellExecuteInfo.cbSize:= SizeOf(ShellExecuteInfo);
  ShellExecuteInfo.fMask := SEE_MASK_NOASYNC or SEE_MASK_NOCLOSEPROCESS or SEE_MASK_DOENVSUBST or SEE_MASK_UNICODE;
  ShellExecuteInfo.fMask := ShellExecuteInfo.fMask or SEE_MASK_FLAG_NO_UI;
  if RunAsAdmin and (icsGetOSVersionInfo.dwMajorVersion >= 6) then begin
    ShellExecuteInfo.Wnd := 0;
    ShellExecuteInfo.lpVerb := 'runas';
  end else begin
    ShellExecuteInfo.Wnd := GetDesktopWindow;
    ShellExecuteInfo.lpVerb := nil;
  end;
  ShellExecuteInfo.lpFile := PChar(FileName);
  ShellExecuteInfo.lpParameters := PChar(Params);
  if CurrentDir = '' then ShellExecuteInfo.lpDirectory := PChar(ExtractFilePath(FileName)) else ShellExecuteInfo.lpDirectory := PChar(CurrentDir);
  ShellExecuteInfo.nShow := ShowWindow;
  if ShellExecuteEx(@ShellExecuteInfo) then begin
    Result := (ShellExecuteInfo.hProcess >= 32);
    if WaitInputIdle then WaitForInputIdle(ShellExecuteInfo.hProcess, INFINITE);
    if WaitSingleObject then begin
      WaitForSingleObject(ShellExecuteInfo.hProcess, INFINITE);
      GetExitCodeProcess(ShellExecuteInfo.hProcess, ExitCode);
    end;
  end;
end;

function icsStartProcessElevated(lpApplicationName: PChar; lpCommandLine: PChar; lpCurrentDirectory: PChar; var ProcessInfo: TProcessInformation): Boolean;

  function _OpenShellProcessToken(ProcessName: String; var hToken: THandle): Boolean;
   var
     hSnapshot, hProcess: THandle;
     Process: TProcessEntry32;
  begin
    Result := false;
    hSnapshot := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    if (hSnapshot <> 0) and (hSnapshot <> INVALID_HANDLE_VALUE) then try
      FillChar(Process, SizeOf(Process), #0);
      Process.dwSize := SizeOf(Process);
      if Process32First(hSnapshot, Process) then repeat
        if (AnsiLowerCase(Process.szExeFile) = AnsiLowerCase(ProcessName)) then begin
          hProcess := OpenProcess(PROCESS_ALL_ACCESS, false, Process.th32ProcessID);
          if (hProcess <> 0) and (hProcess <> INVALID_HANDLE_VALUE) then try
            Result := OpenProcessToken(hProcess, TOKEN_ALL_ACCESS, hToken);
          finally
            CloseHandle(hProcess);
          end;
          Break;
        end;
      until (not Process32Next(hSnapshot, Process));
    finally
      CloseHandle(hSnapshot);
    end;
  end;

var
  WTSGetActiveConsoleSessionId: function: DWord; stdcall;
  WTSQueryUserToken: function(SessionId: ULONG; var phToken: THandle): BOOL; stdcall;
  CreateEnvironmentBlock: function(lpEnvironment: PPointer; hToken: THandle; bInherit: BOOL): BOOL; stdcall;
  DestroyEnvironmentBlock: function(lpEnvironment: LPVOID): BOOL; stdcall;
var
  hUserToken, hLinkedToken, hElevatedToken: THandle;
  ReturnLength, ElevationType: DWord;
  Environment: Pointer;
  StartupInfo: TStartupInfo;
begin
  Result := false;
  @CreateEnvironmentBlock := GetProcAddress(LoadLibrary('userenv.dll'), 'CreateEnvironmentBlock');
  @DestroyEnvironmentBlock := GetProcAddress(LoadLibrary('userenv.dll'), 'DestroyEnvironmentBlock');
  if (not Assigned(CreateEnvironmentBlock)) or (not Assigned(DestroyEnvironmentBlock)) then Exit;
  @WTSGetActiveConsoleSessionId := GetProcAddress(LoadLibrary('kernel32.dll'), 'WTSGetActiveConsoleSessionId');
  @WTSQueryUserToken := GetProcAddress(LoadLibrary('wtsapi32.dll'), 'WTSQueryUserToken');
  if (Assigned(WTSGetActiveConsoleSessionId) and Assigned(WTSQueryUserToken)) then begin
    Result := WTSQueryUserToken(WTSGetActiveConsoleSessionId, hUserToken);
  end else begin
    Result := _OpenShellProcessToken('explorer.exe', hUserToken);
  end;
  if Result then try
    if GetTokenInformation(hUserToken, TokenElevationType, @ElevationType, SizeOf(ElevationType), ReturnLength) then begin
      if (ElevationType = 3) then begin
        if GetTokenInformation(hUserToken, TokenLinkedToken, @hLinkedToken, SizeOf(hLinkedToken), ReturnLength) then try
          Result := DuplicateTokenEx(hLinkedToken, MAXIMUM_ALLOWED, nil, SecurityImpersonation, TokenPrimary, hElevatedToken);
        finally
          CloseHandle(hLinkedToken);
        end;
      end else begin
        hElevatedToken := hUserToken;
      end;
      try
        if CreateEnvironmentBlock(@Environment, hElevatedToken, false) then try
          FillChar(StartupInfo, SizeOf(StartupInfo), #0);
          StartupInfo.cb := SizeOf(StartupInfo);
          Result := CreateProcessAsUser(hElevatedToken, lpApplicationName, lpCommandLine, nil, nil, false, CREATE_NEW_CONSOLE or CREATE_DEFAULT_ERROR_MODE or CREATE_UNICODE_ENVIRONMENT, Environment, lpCurrentDirectory, StartupInfo, ProcessInfo);
        finally
          DestroyEnvironmentBlock(Environment);
        end;
      finally
        CloseHandle(hElevatedToken);
      end;
    end;
  finally
    CloseHandle(hUserToken);
  end;
end;

function icsStartProcessAsUser(const UserName, Domain, Password: String; FileName: String; FileParams: String = ''; CurrentDir: String = ''; WaitInputIdle: Boolean = False; WaitSingleObject: Boolean = False): Cardinal;
 var
   hToken: THandle;
   StartupInfo: TStartupInfo;
   ProcessInfo: TProcessInformation;
//   PrivPrevState: Boolean;
begin
  Result := 0;

//  icsSetPrivilege(SE_INCREASE_QUOTA_NAME, True, PrivPrevState);
//  icsSetPrivilege(SE_ASSIGNPRIMARYTOKEN_NAME, True, PrivPrevState);
//  icsSetPrivilege(SE_TCB_NAME, True, PrivPrevState);

  if LogonUser(PChar(UserName), PChar(Domain), PChar(Password), LOGON32_LOGON_INTERACTIVE, LOGON32_PROVIDER_DEFAULT, hToken) then try
    if ImpersonateLoggedOnUser(hToken) then begin
      FillChar(StartupInfo, SizeOf(StartupInfo), 0);
      StartupInfo.cb := SizeOf(StartupInfo);
      try
        if CreateProcessAsUser(hToken, nil, PChar('"' + FileName + '" ' + FileParams), nil, nil, True, CREATE_UNICODE_ENVIRONMENT or NORMAL_PRIORITY_CLASS or CREATE_NEW_CONSOLE, nil, nil, StartupInfo, ProcessInfo) then begin
          Result := ProcessInfo.hProcess;
          if Result > 32 then begin
            if WaitInputIdle then WaitForInputIdle(ProcessInfo.hProcess, INFINITE);
            if WaitSingleObject then begin
              WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
              GetExitCodeProcess(ProcessInfo.hProcess, Result);
            end;
          end;
        end else Result := 0;
      finally
        CloseHandle(ProcessInfo.hProcess);
        CloseHandle(ProcessInfo.hThread);
      end;
    end;
  finally
    CloseHandle(hToken);
  end;
end;

function icsProcessTerminate(Id: DWORD): Boolean;

  function _Terminate(Id: DWORD): Boolean;
   var H: THandle;
  begin
    Result := False;
    H := OpenProcess(SYNCHRONIZE or PROCESS_TERMINATE, False, Id);
    if H <> 0 then begin
      Result := TerminateProcess(H, 0);
      CloseHandle(H);
    end;
  end;

 var PrivPrevState: Boolean;
begin
  Result := False;
  if (Id <> GetCurrentProcessId) and icsSetPrivilege(SE_DEBUG_NAME, True, PrivPrevState) then try
    Result := _Terminate(Id);
  finally
    icsSetPrivilege(SE_DEBUG_NAME, PrivPrevState, PrivPrevState);
  end;
end;

function icsGetCommandLineParams: String;
 var I: Integer;
begin
  Result := '';//GetCommandLine;
  for I := 1 to ParamCount do Result := Result + ' ' + ParamStr(I);
end;

function icsFlashProcessMemory(Id: DWORD): Boolean;
begin
  Result := False;
  Id := OpenProcess(PROCESS_ALL_ACCESS, False, Id);
  if Id <> 0 then begin
    Result := SetProcessWorkingSetSize(Id, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(Id);
  end;
end;

procedure icsParseURL(const AURL: String; var AHost, AResource: String);

  procedure CleanArray(var Arr: array of Char);
  begin
    ZeroMemory(@Arr, (High(Arr) - Low(Arr) + 1) * SizeOf(Char));
  end;

 var
   UrlComponents: TURLComponents;
   Scheme: array[0..INTERNET_MAX_SCHEME_LENGTH - 1] of Char;
   Host: array[0..INTERNET_MAX_HOST_NAME_LENGTH - 1] of Char;
   User: array[0..INTERNET_MAX_USER_NAME_LENGTH - 1] of Char;
   Password: array[0..INTERNET_MAX_PASSWORD_LENGTH - 1] of Char;
   URLPath: array[0..INTERNET_MAX_PATH_LENGTH - 1] of Char;
   FullURL: array[0..INTERNET_MAX_URL_LENGTH - 1] of Char;
   Extra: array[0..GENERAL_BUFFER_SIZE - 1] of Char;
begin
  CleanArray(Scheme);
  CleanArray(Host);
  CleanArray(User);
  CleanArray(Password);
  CleanArray(URLPath);
  CleanArray(FullURL);
  CleanArray(Extra);
  ZeroMemory(@UrlComponents, SizeOf(TURLComponents));

  UrlComponents.dwStructSize := SizeOf(TURLComponents);
  UrlComponents.lpszScheme := Scheme;
  UrlComponents.dwSchemeLength := High(Scheme) + 1;
  UrlComponents.lpszHostName := Host;
  UrlComponents.dwHostNameLength := High(Host) + 1;
  UrlComponents.lpszUserName := User;
  UrlComponents.dwUserNameLength := High(User) + 1;
  UrlComponents.lpszPassword := Password;
  UrlComponents.dwPasswordLength := High(Password) + 1;
  UrlComponents.lpszUrlPath := URLPath;
  UrlComponents.dwUrlPathLength := High(URLPath) + 1;
  UrlComponents.lpszExtraInfo := Extra;
  UrlComponents.dwExtraInfoLength := High(Extra) + 1;

  InternetCrackUrl(PChar(AURL), Length(AURL), ICU_DECODE or ICU_ESCAPE, UrlComponents);

  AHost := String(Host);
  AResource := String(URLPath) + String(Extra);
end;

function icsURLComponents(const AURL: String): TURLComponents;

  procedure CleanArray(var Arr: array of Char);
  begin
    ZeroMemory(@Arr, (High(Arr) - Low(Arr) + 1) * SizeOf(Char));
  end;

 var
   Scheme: array[0..INTERNET_MAX_SCHEME_LENGTH - 1] of Char;
   Host: array[0..INTERNET_MAX_HOST_NAME_LENGTH - 1] of Char;
   User: array[0..INTERNET_MAX_USER_NAME_LENGTH - 1] of Char;
   Password: array[0..INTERNET_MAX_PASSWORD_LENGTH - 1] of Char;
   URLPath: array[0..INTERNET_MAX_PATH_LENGTH - 1] of Char;
   Extra: array[0..GENERAL_BUFFER_SIZE - 1] of Char;
begin
  CleanArray(Scheme);
  CleanArray(Host);
  CleanArray(User);
  CleanArray(Password);
  CleanArray(URLPath);
  CleanArray(Extra);
  ZeroMemory(@Result, SizeOf(TURLComponents));

  Result.dwStructSize := SizeOf(TURLComponents);
  Result.lpszScheme := Scheme;
  Result.dwSchemeLength := Length(Scheme);
  Result.lpszHostName := Host;
  Result.dwHostNameLength := Length(Host);
  Result.lpszUserName := User;
  Result.dwUserNameLength := Length(User);
  Result.lpszPassword := Password;
  Result.dwPasswordLength := Length(Password);
  Result.lpszUrlPath := URLPath;
  Result.dwUrlPathLength := Length(URLPath);
  Result.lpszExtraInfo := Extra;
  Result.dwExtraInfoLength := Length(Extra);

  InternetCrackUrl(PChar(AURL), Length(AURL), ICU_DECODE or ICU_ESCAPE, Result);
end;

function icsGetINetStream(const URL: String; ST: TStream): Boolean;
 const
  INET_BUFFER_SIZE                = 8192;
  ICS_USER_AGENT                  = 'IE';
 var
   hSession, hConnect, hRequest: hInternet;
   BytesToRead, dwFlagsConnection, dwFlagsRequest: DWORD;
   Data: array[0..INET_BUFFER_SIZE - 1] of Char;
   Host, Resource: String;
begin
  Result := False;
  if Assigned(ST) then begin
    icsParseURL(URL, Host, Resource);
    hRequest := nil;
    hConnect := nil;
    hSession := nil;
    try
      INetFileTerminated := False;
      hSession := InternetOpen(ICS_USER_AGENT, INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
      if not INetFileTerminated and (hSession <> nil) then begin
        if Pos('https', LowerCase(URL)) > 0 then begin
          dwFlagsConnection := INTERNET_DEFAULT_HTTPS_PORT;
          dwFlagsRequest := INTERNET_FLAG_RELOAD or INTERNET_FLAG_IGNORE_CERT_CN_INVALID or INTERNET_FLAG_NO_CACHE_WRITE or INTERNET_FLAG_SECURE or INTERNET_FLAG_PRAGMA_NOCACHE or INTERNET_FLAG_KEEP_CONNECTION;
        end else begin
          dwFlagsConnection := INTERNET_DEFAULT_HTTP_PORT;
          dwFlagsRequest := INTERNET_FLAG_RELOAD or INTERNET_FLAG_IGNORE_CERT_CN_INVALID or INTERNET_FLAG_NO_CACHE_WRITE or INTERNET_FLAG_PRAGMA_NOCACHE or INTERNET_FLAG_KEEP_CONNECTION;
        end;
        hConnect := InternetConnect(hSession, PChar(Host), dwFlagsConnection, nil, nil, INTERNET_SERVICE_HTTP, 0, 0);
        if not INetFileTerminated and (hConnect <> nil) then begin
          hRequest := HttpOpenRequest(hConnect, 'GET', PChar(Resource), nil, nil, nil, dwFlagsRequest, 1);
          if not INetFileTerminated and (hRequest <> nil) and HttpSendRequest(hRequest, nil, 0, nil, 0) then begin
            ST.Size := 0;
            ST.Position := 0;
            while not INetFileTerminated and InternetReadFile(hRequest, @Data, INET_BUFFER_SIZE, BytesToRead) and (BytesToRead > 0) do ST.Write(Data, BytesToRead);
            Result := (ST.Size > 0);
            if Result then ST.Seek(0, 0);
          end;
        end;
      end;
    finally
      InternetCloseHandle(hRequest);
      InternetCloseHandle(hConnect);
      InternetCloseHandle(hSession);
    end;
  end;
end;

function icsINetProcessRequest(const URL, AcceptTypes: String; stData, stResult: TStream): Boolean;
 const
   INET_BUFFER_SIZE = 8192;
   ICS_USER_AGENT = 'Mozilla/3.0 (icsProcessRequest)';
 var
   hSession, hConnect, hRequest: hInternet;
   dwBytesToRead, dwServerPort, dwRequestFlags: DWORD;
   Data: array[0..INET_BUFFER_SIZE - 1] of Char;
   sHost, sResource, sMethode: String;
   stDataStream, stHeadersStream: TStringStream;
   aData: UTF8String;
begin
  Result := False;
  if Assigned(stResult) then begin
    hRequest := nil;
    hConnect := nil;
    hSession := nil;
    try
      INetFileTerminated := False;
      hSession := InternetOpen(ICS_USER_AGENT, INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
      if hSession <> nil then begin
        dwRequestFlags := INTERNET_FLAG_RELOAD or INTERNET_FLAG_IGNORE_CERT_CN_INVALID or INTERNET_FLAG_NO_CACHE_WRITE or INTERNET_FLAG_PRAGMA_NOCACHE or INTERNET_FLAG_KEEP_CONNECTION;
        if Pos('https', LowerCase(URL)) > 0 then begin
          dwServerPort := INTERNET_DEFAULT_HTTPS_PORT;
          dwRequestFlags := dwRequestFlags or INTERNET_FLAG_SECURE;
        end else begin
          dwServerPort := INTERNET_DEFAULT_HTTP_PORT;
        end;
        icsParseURL(URL, sHost, sResource);
        hConnect := InternetConnect(hSession, PChar(sHost), dwServerPort, nil, nil, INTERNET_SERVICE_HTTP, 0, 0);
        if hConnect <> nil then begin
          stDataStream := TStringStream.Create;
          try
            if Assigned(stData) then begin
              sMethode := 'POST';
              stDataStream.LoadFromStream(stData);
            end else sMethode := 'GET';
            hRequest := HttpOpenRequest(hConnect, PChar(sMethode), PChar(sResource), nil, nil, nil, dwRequestFlags, 0);
            if hRequest <> nil then begin
              stHeadersStream := TStringStream.Create;
              try
                stHeadersStream.WriteString('Host: ' + sHost + sLineBreak);
                stHeadersStream.WriteString('User-Agent: ' + ICS_USER_AGENT + sLineBreak);
                stHeadersStream.WriteString('Accept: ' + AcceptTypes + ';q=0.9,*/*;q=0.8' + sLineBreak);
                stHeadersStream.WriteString('Accept-Language: en-us,en;q=0.5' + sLineBreak);
                stHeadersStream.WriteString('Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7' + sLineBreak);
                stHeadersStream.WriteString('Keep-Alive: 300' + sLineBreak);
                stHeadersStream.WriteString('Connection: keep-alive' + slineBreak + sLineBreak);
//                if HttpAddRequestHeaders(hRequest, PChar(stHeadersStream.DataString), Length(stHeadersStream.DataString), HTTP_ADDREQ_FLAG_ADD) then begin
                  aData := UTF8String(stDataStream.DataString);
                  if HttpSendRequest(hRequest, PChar(stHeadersStream.DataString), Length(stHeadersStream.DataString), PAnsiChar(aData), Length(aData)) then begin
//                  if HttpSendRequest(hRequest, nil, 0, PChar(aData), Length(aData)) then begin
                    stResult.Size := 0;
                    stResult.Position := 0;
                    while not INetFileTerminated and InternetReadFile(hRequest, @Data, INET_BUFFER_SIZE, dwBytesToRead) and (dwBytesToRead > 0) do stResult.Write(Data, dwBytesToRead);
                    Result := (stResult.Size > 0);
                    if Result then stResult.Seek(0, 0);
                  end;
//                end;
              finally
                stHeadersStream.Free;
              end;
            end;
          finally
            stDataStream.Free;
          end;
        end;
      end;
    finally
      if hRequest <> nil then InternetCloseHandle(hRequest);
      if hConnect <> nil then InternetCloseHandle(hConnect);
      if hSession <> nil then InternetCloseHandle(hSession);
    end;
  end;
end;

function icsGetINetString(const URL: String): String;
 var ST: TStringStream;
begin
  ST := TStringStream.Create;
  try
    if icsGetINetStream(URL, ST) then Result := ST.DataString else Result := '';
  finally
    ST.Free;
  end;
end;

function icsGetINetFile(const URL, FName: String; Wnd: HWND = 0): Boolean;
 var
   F: file;
   hSession, hURL: hInternet;
   BytesToRead, CurrentPos: DWORD;
   Data: array[0..INET_BUFFER_SIZE - 1] of Byte;
begin
  Result := False;
  hURL := nil;
  hSession := InternetOpen(ICS_USER_AGENT, INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if hSession <> nil then try
    hURL := InternetOpenURL(hSession, PChar(URL), nil, 0, INTERNET_FLAG_EXISTING_CONNECT or INTERNET_FLAG_NO_CACHE_WRITE or INTERNET_FLAG_RELOAD, 0);
    if hURL <> nil then begin
      if IsWindow(Wnd) then SendMessage(Wnd, PROG_MESSAGE_PROGRESS, Ord(paInit), 0);
      AssignFile(F, FName);
      Rewrite(F, 1);
      CurrentPos := 0;
      while not INetFileTerminated and InternetReadFile(hURL, @Data, INET_BUFFER_SIZE, BytesToRead) and (BytesToRead > 0) do begin
        BlockWrite(F, Data, BytesToRead);
        Inc(CurrentPos, BytesToRead);
        if IsWindow(Wnd) then SendMessage(Wnd, PROG_MESSAGE_PROGRESS, Ord(paUpdate), CurrentPos);
      end;
      CloseFile(F);
      Result := (icsFileExistsEx(FName) and (icsGetFileSize(FName) > 0));
    end;
  finally
    InternetCloseHandle(hURL);
    InternetCloseHandle(hSession);
    if IsWindow(Wnd) then begin
      if Result then PostMessage(Wnd, PROG_MESSAGE_PROGRESS, Ord(paOk), 0) else PostMessage(Wnd, PROG_MESSAGE_PROGRESS, Ord(paFail), 0);
    end;
  end;
end;

function icsGetINetFileEx(const URL, FName: String; Wnd: HWND = 0; HeaderSubString: String = ''): Boolean;
 var
   F: file;
   hSession, hConnect, hRequest: hInternet;
   dwBufLen, dwIndex, BytesToRead: DWORD;
   Data: array[0..INET_BUFFER_SIZE - 1] of Byte;
   StringData: array[0..INET_BUFFER_SIZE - 1] of Char;
   FileSize, CurrentPos: DWORD;
   Host, Resource: String;
   Ok: Boolean;
begin
  Result := False;
  icsParseURL(URL, Host, Resource);
  hRequest := nil;
  hConnect := nil;
  hSession := nil;
  try
    INetFileTerminated := False;
    hSession := InternetOpen(ICS_USER_AGENT, INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
    if not INetFileTerminated and (hSession <> nil) then begin
      hConnect := InternetConnect(hSession, PChar(Host), INTERNET_DEFAULT_HTTP_PORT, nil, nil, INTERNET_SERVICE_HTTP, 0, 0);
      if not INetFileTerminated and (hConnect <> nil) then begin
        hRequest := HttpOpenRequest(hConnect, 'GET', PChar(Resource), nil, nil, nil, INTERNET_FLAG_EXISTING_CONNECT or INTERNET_FLAG_NO_CACHE_WRITE or INTERNET_FLAG_RELOAD or INTERNET_FLAG_NEED_FILE, 0);
        if not INetFileTerminated and (hRequest <> nil) and HttpSendRequest(hRequest, nil, 0, nil, 0) then begin
          Ok := (HeaderSubString = '');
          if not Ok then begin
            dwBufLen := SizeOf(StringData);
            dwIndex := 0;
            if HttpQueryInfo(hRequest, HTTP_QUERY_RAW_HEADERS_CRLF, @StringData, dwBufLen, dwIndex) then Ok := (Pos(HeaderSubString, StringData) > 0);
          end;
          if Ok then begin
            dwBufLen := SizeOf(StringData);
            dwIndex := 0;
            if HttpQueryInfo(hRequest, HTTP_QUERY_CONTENT_LENGTH, @StringData, dwBufLen, dwIndex) then begin
              FileSize := StrToIntDef(String(StringData), 0);
              if FileSize > 0 then begin
                if IsWindow(Wnd) then PostMessage(Wnd, PROG_MESSAGE_PROGRESS, Ord(paInit), FileSize);
                AssignFile(F, FName);
                Rewrite(F, 1);
                CurrentPos := 0;
                while not INetFileTerminated and InternetReadFile(hRequest, @Data, INET_BUFFER_SIZE, BytesToRead) and (BytesToRead > 0) do begin
                  BlockWrite(F, Data, BytesToRead);
                  Inc(CurrentPos, BytesToRead);
                  if IsWindow(Wnd) then PostMessage(Wnd, PROG_MESSAGE_PROGRESS, Ord(paUpdate), CurrentPos);
                end;
                CloseFile(F);
                Result := not INetFileTerminated and (FileExists(FName) and (icsGetFileSize(FName) = FileSize));
              end;
            end;
          end;
        end;
      end;
    end;
  finally
    InternetCloseHandle(hRequest);
    InternetCloseHandle(hConnect);
    InternetCloseHandle(hSession);
    if IsWindow(Wnd) then begin
      if Result then PostMessage(Wnd, PROG_MESSAGE_PROGRESS, Ord(paOk), 0) else PostMessage(Wnd, PROG_MESSAGE_PROGRESS, Ord(paFail), 0);
    end;
  end;
end;

function icsURLEncode(const DecodedStr: String; Pluses: Boolean = False): String;
 var I: Integer;
begin
  Result := '';
  if Length(DecodedStr) > 0 then for I := 1 to Length(DecodedStr) do begin
    if not CharInSet(DecodedStr[I], ['0'..'9', 'a'..'z', 'A'..'Z', ' ']) then Result := Result + '%' + IntToHex(Ord(DecodedStr[I]), 2)
    else if not (DecodedStr[I] = ' ') then Result := Result + DecodedStr[I]
    else begin
      if not Pluses then Result := Result + '%20' else Result := Result + '+';
    end;
  end;
end;

function icsURLDecode(const EncodedStr: String): String;
 var I: Integer;
begin
  Result := '';
  if Length(EncodedStr) > 0 then begin
    I := 1;
    while I <= Length(EncodedStr) do begin
      if EncodedStr[I] = '%' then begin
        Result := Result + Chr(icsHexToInt(EncodedStr[I+1] + EncodedStr[I+2]));
        I := Succ(Succ(I));
      end else if EncodedStr[I] = '+' then Result := Result + ' '
      else Result := Result + EncodedStr[I];
      I := Succ(I);
    end;
  end;
end;

function icsUACEnabled: Boolean;
 const
   REG_KEY_SYSTEM_POLICES = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System';
   REG_VALUE_UAC = 'EnableLUA';
begin
  Result := Boolean(RegGetDWORD(HKEY_LOCAL_MACHINE, REG_KEY_SYSTEM_POLICES, REG_VALUE_UAC));
end;

procedure icsSetUACEnabled(Enabled: Boolean);
 const
   REG_KEY_SYSTEM_POLICES = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System';
   REG_VALUE_UAC = 'EnableLUA';
begin
  RegSetDWORD(HKEY_LOCAL_MACHINE, REG_KEY_SYSTEM_POLICES, REG_VALUE_UAC, Integer(Enabled));
end;

function icsGetLastErrorText: String;
 var
   P: PChar;
   dwErrCode: DWORD;
begin
  dwErrCode := GetLastError;
  if FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER or FORMAT_MESSAGE_FROM_SYSTEM, nil, dwerrCode, LANG_NEUTRAL, @P, 0, nil) <> 0 then begin
    Result := IntToStr(dwErrCode) + ': ' + icsGetStringWithoutChars(String(P), #13#10);
    LocalFree(DWORD(P))
  end else Result := '';
end;

function icsFileTimeToDateTime(const FileTime: TFileTime; const dtDefault: TDateTime): TDateTime;
 var
   ModifiedTime: TFileTime;
   SystemTime: TSystemTime;
begin
  Result := dtDefault;
  if (FileTime.dwLowDateTime = 0) and (FileTime.dwHighDateTime = 0) then Exit;
  try
    FileTimeToLocalFileTime(FileTime, ModifiedTime);
    FileTimeToSystemTime(ModifiedTime, SystemTime);
    Result := SystemTimeToDateTime(SystemTime);
  except
  end;
end;

function icsDateTimeToFileTime(const FileTime: TDateTime): TFileTime;
 var
   LocalFileTime: TFileTime;
   SystemTime: TSystemTime;
begin
  Result.dwLowDateTime  := 0;
  Result.dwHighDateTime := 0;
  DateTimeToSystemTime(FileTime, SystemTime);
  SystemTimeToFileTime(SystemTime, LocalFileTime);
  LocalFileTimeToFileTime(LocalFileTime, Result);
end;

function icsGetFileLastWriteTime(const FileName: String; const dtDefault: TDateTime): TDateTime;
 var
   FD: TWin32FindData;
   H: THandle;
begin
  Result := dtDefault;
  H := Windows.FindFirstFile(PChar(FileName), FD);
  if H <> INVALID_HANDLE_VALUE then begin
    Result := icsFileTimeToDateTime(FD.ftLastWriteTime, dtDefault);
    Windows.FindClose(H);
  end;
end;

function icsSetSystemTime(DateTime: TDateTime): Boolean;
 var
   tSetDati: TDateTime;
   vDatiBias: Variant;
   tTZI: TTimeZoneInformation;
   tST: TSystemTime;
begin
  GetTimeZoneInformation(tTZI);
  vDatiBias := tTZI.Bias / 1440;
  tSetDati := DateTime + vDatiBias;
  with tST do begin
    wYear := StrToInt(FormatDateTime('yyyy', tSetDati));
    wMonth := StrToInt(FormatDateTime('mm', tSetDati));
    wDay := StrToInt(FormatDateTime('dd', tSetDati));
    wHour := StrToInt(FormatDateTime('hh', tSetDati));
    wMinute := StrToInt(FormatDateTime('nn', tSetDati));
    wSecond := StrToInt(FormatDateTime('ss', tSetDati));
    wMilliseconds := 0;
  end;
  Result := Windows.SetSystemTime(tST);
end;

function icsBringToTop(Wnd: HWND; bWaitFor: Boolean = False; dwWaitPause: DWORD = 0): Boolean;
 var
   hCurrWnd: HWND;
   iMyTID, iCurrTID: Integer;
   Counter: DWORD;
begin
  hCurrWnd := GetForegroundWindow;
  iMyTID := GetCurrentThreadId;
  iCurrTID := GetWindowThreadProcessId(hCurrWnd, nil);
  AttachThreadInput(iMyTID, iCurrTID, True);
  Result := (not IsWindow(Wnd) or SetForegroundWindow(Wnd));
  AttachThreadInput(iMyTID, iCurrTID, False);
  if Result and bWaitFor then begin
    Counter := GetTickCount;
    while GetTickCount - Counter <= dwWaitPause do Sleep(100);
  end;
end;

procedure icsDeleteFileTree(RootPath: String; const DeleteRoot: Boolean);
 var
   Handle: THandle;
   FD: TWin32FindData;
begin
  RootPath := IncludeTrailingPathDelimiter(RootPath);
  Handle := Windows.FindFirstFile(PChar(RootPath + '*.*'), FD);
  if Handle <> INVALID_HANDLE_VALUE then try
    repeat
      if (String(FD.cFileName) <> '.') and (FD.cFileName <> '..') then if (FD.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = FILE_ATTRIBUTE_DIRECTORY then icsDeleteFileTree(RootPath + FD.cFileName, True) else begin
        Windows.SetFileAttributes(PChar(RootPath + FD.cFileName), FILE_ATTRIBUTE_NORMAL);
        Windows.DeleteFile(PChar(RootPath + FD.cFileName));
      end;
    until not Windows.FindNextFile(Handle, FD);
    if DeleteRoot then Windows.RemoveDirectory(PChar(ExcludeTrailingPathDelimiter(RootPath)));
  finally
    Windows.FindClose(Handle);
  end;
end;

function icsCopyDirectory(const ExistingDirectoryName, NewDirectoryName: String): Boolean;
 var SH: SHFILEOPSTRUCT;
begin
  FillChar(SH, SizeOf(SH), 0);
  SH.Wnd    := 0;
  SH.wFunc  := FO_COPY;
  SH.pFrom  := PChar(ExcludeTrailingPathDelimiter(ExistingDirectoryName) + #0);
  SH.pTo    := PChar(ExcludeTrailingPathDelimiter(NewDirectoryName) + #0);
  SH.fFlags := FOF_NO_UI;
  Result := SHFileOperation(SH) = 0;
end;

function icsMoveDirectory(const ExistingDirectoryName, NewDirectoryName: String): Boolean;
 var SH: SHFILEOPSTRUCT;
begin
  FillChar(SH, SizeOf(SH), 0);
  SH.Wnd    := 0;
  SH.wFunc  := FO_MOVE;
  SH.pFrom  := PChar(ExcludeTrailingPathDelimiter(ExistingDirectoryName) + #0);
  SH.pTo    := PChar(ExcludeTrailingPathDelimiter(NewDirectoryName) + #0);
  SH.fFlags := FOF_NO_UI;
  Result := SHFileOperation(SH) = 0;
end;

function icsDeleteDirectory(const DirectoryName: String): Boolean;
begin
  icsDeleteFileTree(DirectoryName, True);
  Result := not DirectoryExists(DirectoryName);
end;

function icsGetWindowCaption(Wnd: HWND): String;
 var Buf: array[0..GENERAL_BUFFER_SIZE - 1] of Char;
begin
  if SendMessage(Wnd, WM_GETTEXT, GENERAL_BUFFER_SIZE, Integer(@Buf)) > 0 then Result := String(Buf) else Result := '';
end;

function icsGetWindowClassName(Wnd: HWND): String;
 var Buf: array[0..MAX_PATH - 1] of Char;
begin
  if GetClassName(Wnd, Buf, SizeOf(Buf)) > 0 then Result := String(Buf) else Result := '';
end;

function icsGetWindowIcon(Wnd: HWND): HICON;
begin
  Result := SendMessage(Wnd, WM_GETICON, ICON_SMALL, 0);
  if Result = 0 then Result := SendMessage(Wnd, WM_GETICON, ICON_BIG, 0);
  if Result = 0 then Result := GetClassLong(Wnd, GCL_HICONSM);
  if Result = 0 then Result := GetClassLong(Wnd, GCL_HICON);
  if Result <> 0 then Result := CopyIcon(Result);
end;

function icsGetTrayNotifyWndHandle: HWND;
begin
  Result := FindWindowEx(FindWindow('Shell_TrayWnd', ''), 0, 'TrayNotifyWnd', nil);
end;

function icsDateTimeToMilliseconds(const ADateTime: TDateTime): Int64;
 var LTimeStamp: TTimeStamp;
begin
  LTimeStamp := DateTimeToTimeStamp(ADateTime);
  Result := (LTimeStamp.Date * MSecsPerDay) + LTimeStamp.Time;
end;

function MaxX(A: array of Integer): Integer;
 var I: Integer;
begin
  Result := Low(Integer);
  for I := 0 to High(A) do if A[I] > Result then Result := A[I];
end;

function MinX(A: array of Integer): Integer;
 var I: Integer;
begin
  Result := High(Integer);
  for I := 0 to High(A) do if A[I] < Result then Result := A[I];
end;

procedure icsDoExitWindows(const ExitWindowsAction: TExitWindowsAction; const bForce: Boolean);
 var
   Flags: Integer;
   PrivPrevState: Boolean;
begin
  case ExitWindowsAction of
    ewaShutDown: Flags := EWX_SHUTDOWN or EWX_POWEROFF;
    ewaReboot: Flags := EWX_REBOOT;
    ewaHibernate: Flags := Integer(True);
    ewaStandby: Flags := Integer(False);
    ewaLogoff: Flags := EWX_LOGOFF;
    else Flags := 0;
  end;
  if ExitWindowsAction in [ewaShutDown, ewaReboot, ewaLogoff] then begin
    if bForce then Flags := Flags or EWX_FORCE;
    if icsSetPrivilege(SE_SHUTDOWN_NAME, True, PrivPrevState) then ExitWindowsEx(Flags, 0);
  end else if ExitWindowsAction in [ewaHibernate, ewaStandby] then begin
    if (Boolean(Flags) and IsPwrHibernateAllowed) or (not Boolean(Flags) and IsPwrSuspendAllowed) then SetSuspendState(Boolean(Flags), bForce, False);
  end;
end;

function icsGetLayerAlpha(Procent: Byte): Byte;
 const DISKRET = $FF / 100;
begin
  if Procent > 100 then Procent := 100;
  Procent := 100 - Procent;
  Result := Round(DISKRET * Procent);
end;

function icsIsWindowsVista: Boolean;
begin
  Result := (GetWindowsVersion >= wvWinVista);
end;

function icsGetLastParentWnd(Wnd: HWND): HWND;
begin
  Result := 0;
  while Wnd <> 0 do begin
    Result := Wnd;
    Wnd := GetParent(Wnd);
  end;
end;

const
  REG_INI_SS_VALUE       = 'SCRNSAVE.EXE';

function icsGetCurrentSSFileName: String;
begin
  Result := RegGetString(HKEY_CURRENT_USER, REGSTR_PATH_SCREENSAVE, REG_INI_SS_VALUE);
end;

function icsSetCurrentSSFileName(SSFileName: String): Boolean;
begin
  Result := RegSetString(HKEY_CURRENT_USER, REGSTR_PATH_SCREENSAVE, REG_INI_SS_VALUE, SSFileName);
end;

function icsGetCurrentUserName: String;
 var
   Buf: array[0..MAX_PATH - 1] of Char;
   DW: DWORD;
begin
  Result := '';
  DW := MAX_PATH;
  if GetUserName(Buf, DW) then Result := String(Buf);
end;

function icsIsClipboardEmpty(Wnd: HWND): Boolean;
begin
  Result := False;
  if OpenClipboard(Wnd) then begin
    Result := (EnumClipboardFormats(0) = 0);
    CloseClipboard;
  end;
end;

function icsGetRecycleBinItemCount: UInt64;
 var
   RBin: TSHQueryRBInfo;
   I: Integer;
   DW: DWord;
   sDisks, sDisk: String;
begin
  Result := 0;
  sDisks := icsGetLogicalDriveString;
  if Length(sDisks) > 0 then for I := 1 to icsWordCount(sDisks, ';') do begin
    sDisk := icsExtractWord(I, sDisks, ';');
    DW := GetDriveType(PChar(sDisk));
    if (DW = DRIVE_FIXED) or (DW = DRIVE_RAMDISK) then begin
      RBin.cbSize := SizeOf(TSHQueryRBInfo);
      if SHQueryRecycleBin(PChar(sDisk), @RBin) = S_OK then Result := Result + RBin.i64NumItems;
    end
  end;
end;

procedure icsDoWindowsShutdown(Flags: DWORD);
 var PrivPrevState: Boolean;
begin
  if icsSetPrivilege(SE_SHUTDOWN_NAME, True, PrivPrevState) then ExitWindowsEx(Flags, 0);
end;

procedure icsEnterText(AText: String);
 var
   lCount: Integer;
   lScanCode: Smallint;
   lWithAlt, lWithCtrl, lWithShift: Boolean;
begin
  for lCount := 1 To Length(AText) Do begin
    lScanCode := VkKeyScan(AText[lCount]);
    lWithShift := lScanCode and (1 shl 8) <> 0;
    lWithCtrl := lScanCode and (1 shl 9) <> 0;
    lWithAlt := lScanCode and (1 shl 10) <> 0;

    if lWithShift then keybd_event(VK_SHIFT, 0, 0, 0);
    if lWithCtrl then keybd_event(VK_CONTROL, 0, 0, 0);
    if lWithAlt then keybd_event(VK_MENU, 0, 0, 0);

    keybd_event(lScanCode, 0, 0, 0);
    keybd_event(lScanCode, 0, KEYEVENTF_KEYUP, 0);

    if lWithAlt then keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, 0);
    if lWithCtrl then keybd_event(VK_CONTROL, 0, KEYEVENTF_KEYUP, 0);
    if lWithShift then keybd_event(VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
  end;
end;

function icsGetLocalIPs: String;
 type
   TaPInAddr = array[0..10] of PInAddr;
   PaPInAddr = ^TaPInAddr;
 var
   phe: PHostEnt;
   pptr: PaPInAddr;
   Buffer: array[0..63] of AnsiChar;
   I: Integer;
   GInitData: TWSAData;
   IPs: TStringList;
begin
  IPs := TStringList.Create;
  try
    WSAStartup($101, GInitData);
    try
      GetHostName(Buffer, SizeOf(Buffer));
      phe := GetHostByName(Buffer);
      if phe <> nil then begin
        pPtr := PaPInAddr(phe^.h_addr_list);
        I := 0;
        while pPtr^[I] <> nil do begin
          IPs.Add(String(inet_ntoa(pptr^[I]^)));
          Inc(I);
        end;
      end;
    finally
      WSACleanup;
    end;
  finally
    Result := IPs.Text;
    IPs.Free;
  end;
end;

procedure icsDoOptimizeMemory;
 var
   I: Integer;
   hProcess: THandle;
begin
  ProcessRefresh(False, False);
  for I := 0 to ProcessList.Count - 1 do begin
    hProcess := OpenProcess(PROCESS_ALL_ACCESS, False, ProcessList.Processes[I].Id);
    if hProcess > 0 then try
      SetProcessWorkingSetSize(hProcess, High(SIZE_T), High(SIZE_T));
    finally
      CloseHandle(hProcess);
    end;
  end;
end;

function icsLoadStringDataFromFile(const sFile: String; const sKey: String = ''): String;
 var ST: TStringStream;
begin
  Result := '';
  if FileExists(sFile) then begin
    ST := TStringStream.Create;
    try
      ST.LoadFromFile(sFile);
      if sKey <> '' then icsCryptDecryptStream(ST, sKey, False);
      Result := ST.DataString;
    finally
      ST.Free;
    end;
  end;
end;

procedure icsSaveStringDataToFile(const sData, sFile: String; const sKey: String = '');
 var ST: TStringStream;
begin
  ST := TStringStream.Create;
  try
    ST.WriteString(sData);
    if sKey <> '' then icsCryptDecryptStream(ST, sKey, True);
    ST.SaveToFile(sFile);
  finally
    ST.Free;
  end;
end;

procedure icsAddLog(const FName, LogMessage: String);
 var STWriter: TStreamWriter;
begin
  STWriter := TStreamWriter.Create(FName, True, TEncoding.UTF8);
  try
    STWriter.WriteLine(LogMessage);
  finally
    STWriter.Free;
  end;
end;

procedure icsGetLog(const FName: String; var STLog: TStringList);
 var STReader: TStreamReader;
begin
  if FileExists(FName) then begin
    STReader := TStreamReader.Create(FName, TEncoding.UTF8);
    try
      if not Assigned(STLog) then STLog := TStringList.Create;
      STLog.Text := STReader.ReadToEnd;
    finally
      STReader.Free;
    end;
  end;
end;

function icsIsSystemShellForCurrentUser: Boolean;
 const
   ICS_REG_SHELL_KEY = 'Software\Microsoft\Windows NT\CurrentVersion\Winlogon';
   ICS_REG_SHELL_VALUE = 'Shell';
begin
  Result := UpperCase(icsGetStringWithoutChars(RegGetString(HKEY_CURRENT_USER, ICS_REG_SHELL_KEY, ICS_REG_SHELL_VALUE), '"')) = UpperCase(ParamStr(0));
end;

function icsIsValidEmail(const emailAddress: string): Boolean;
var
  RegEx: TRegEx;
begin
  RegEx := TRegex.Create('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]*[a-zA-Z0-9]+$');
  Result := RegEx.Match(emailAddress).Success;
end;

{
function GetNetworkCards(var aRegName, aRegID, aRegType, aRegMedia, aRegPhMedia, aRegBusType: array of string; var iRegName: Integer): String;
 const
   cnOK = 'OK';
   REG_KEY_NETWORK_CARDS = 'SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards';
 var
   rr: TRegistry;
   RegList: TStringList;
   i, x, xx: integer;
   sRes, s, s1, s2: string;
begin
  sRes:=cnOK;
  iRegName:=-1;
  rr:=TRegistry.Create(KEY_READ);
  rr.RootKey:=HKEY_LOCAL_MACHINE;
  RegList:=TStringList.Create;

  if rr.OpenKey(REG_KEY_NETWORK_CARDS, false) then begin
    rr.GetKeyNames(RegList);
    i := RegList.count;
  end;


  if sRes = cnOK then begin
    if I > 0 then begin
      for x := 0 to I - 1 do begin
        s := RegList.Strings[x];
        if rr.OpenKey('\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards\'+s, false) then begin
          inc(iRegName);
          if rr.ValueExists('Description') then aRegName[iRegName]:=rr.ReadString('Description') else aRegName[iRegName]:='-';
          if rr.ValueExists('ServiceName') then aRegID[iRegName]:=rr.ReadString('ServiceName') else aRegID[iRegName]:='-';
         end;
       end;
     end else sRes := 'ERR - No Keys - \SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards';
   end;
  RegCloseKey(HKEY_LOCAL_MACHINE);
  if sRes=cnOK then begin
   if rr.OpenKey('\SYSTEM\ControlSet001\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}{', false) then begin
{     rr.GetKeyNames(RegList);
     i := RegList.count;
//    end else sRes:='ERR - OpenKey - \SYSTEM\ControlSet001\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}{';
//  end;
{  if sRes=cnOK then begin
    if i>0 then begin
     for x:=0 to i-1 do
      begin
       s:=RegList.Strings[x];
       if rr.OpenKey('\SYSTEM\ControlSet001\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}{\'+s, false) then begin
{         for xx :=0 to iRegName do begin
           s1 := rr.ReadString('NetCfgInstanceId');
           if s1 = aRegID[xx] then begin
             if rr.ValueExists('*IfType') then aRegType[xx]:=IntToStr(rr.ReadInteger('*IfType')) else aRegType[xx]:='-';
             if rr.ValueExists('*MediaType') then aRegMedia[xx]:=IntToStr(rr.ReadInteger('*MediaType')) else aRegMedia[xx]:='-';
             if rr.ValueExists('*PhysicalMediaType') then aRegPhMedia[xx]:=IntToStr(rr.ReadInteger('*PhysicalMediaType')) else aRegPhMedia[xx]:='-';
             if rr.ValueExists('BusType') then aRegBusType[xx]:=rr.ReadString('BusType') else aRegBusType[xx]:='-';
             break;
            end;
          end;
        end;
      end;
    end else sRes:='ERR - No Keys - \SYSTEM\ControlSet001\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}{';
  end;
  RegCloseKey(HKEY_LOCAL_MACHINE);
  RegList.Free;
  rr.Free;
  result:=sRes;
end;
                                                                                                               }

end.


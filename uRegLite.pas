unit uRegLite;

interface

uses
  Windows;

const
  REG_QWORD          = 11;

type
  TRegDataInfo = record
    DataType: Integer;
    DataSize: Integer;
  end;

function RegGetString(RegRoot: HKEY; RegKey, RegValue: String; DefaultValue: String = ''): String;
function RegGetStringEx(RegRoot: HKEY; RegKey, RegValue: String): String;
function RegSetString(RegRoot: HKEY; RegKey, RegValue, Value: String): Boolean;

function RegGetDWORD(RegRoot: HKEY; RegKey, RegValue: String; DefaultValue: DWORD = 0): DWORD;
function RegSetDWORD(RegRoot: HKEY; RegKey, RegValue: String; Value: DWORD): Boolean;

function RegGetValueDataSize(RegRoot: HKEY; RegKey, RegValue: String): DWORD;

function RegGetBinary(RegRoot: HKEY; RegKey, RegValue: String; Buffer: Pointer; BufSize: DWORD): Boolean;
function RegSetBinary(RegRoot: HKEY; RegKey, RegValue: String; Buffer: Pointer; BufSize: DWORD): Boolean;

function RegDelValue(RegRoot: HKEY; RegKey, RegValue: String): Boolean;
procedure RegDeleteKeyTree(RootKey: HKEY; Key: String; DeleteTopKey: Boolean);
procedure RegCopyKeyTree(SourceRootKey: HKEY; SourceKey: String; DestRootKey: HKEY; DestKey: String);

function RegKeyExists(RootKey: HKEY; Key: String): Boolean;
function RegValueExists(RootKey: HKEY; Key, Value: String): Boolean;

function RegSaveKeyToFile(Key: HKEY; const SubKey, FileName: String): Boolean;
function RegRestoreKeyFromFile(Key: HKEY; const SubKey, FileName: String): Boolean;

function RegGetSubKeyCount(RootKey: HKEY; Key: String): Integer;
function RegGetDataInfo(const RootKey: HKEY; const Key, Value: String): TRegDataInfo;

function RegGetSystemTime(RegRoot: HKEY; RegKey, RegValue: String): TSystemTime;
function RegSetSystemTime(RegRoot: HKEY; RegKey, RegValue: String; ST: TSystemTime): Boolean;

implementation

uses
  uWindows, uCommonTools;

function RegGetString(RegRoot: HKEY; RegKey, RegValue: String; DefaultValue: String = ''): String;
 var
   hCurrentKey: HKEY;
   lpType, lpcbData: DWORD;
   Buf: array[0..MAX_PATH - 1] of Char;
begin
  Result := DefaultValue;
  if RegOpenKeyEx(RegRoot, PChar(RegKey), 0, KEY_READ or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin
    lpType := REG_SZ;
    lpcbData := MAX_PATH;
    if RegQueryValueEx(hCurrentKey, PChar(RegValue), nil, @lpType, PByte(@Buf), @lpcbData) = ERROR_SUCCESS then Result := String(Buf);
    RegCloseKey(hCurrentKey);
  end;
end;

function RegGetStringEx(RegRoot: HKEY; RegKey, RegValue: String): String;
 var
   hCurrentKey: HKEY;
   lpType, lpcbData: DWORD;
   Buf: String;
begin
  Result := '';
  if RegOpenKeyEx(RegRoot, PChar(RegKey), 0, KEY_READ or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin
    lpType := REG_NONE;
    lpcbData := 0;
    if RegQueryValueEx(hCurrentKey, PChar(RegValue), nil, @lpType, nil, @lpcbData) = ERROR_SUCCESS then begin
      SetLength(Buf, lpcbData);
      lpType := REG_SZ;
      if RegQueryValueEx(hCurrentKey, PChar(RegValue), nil, @lpType, PByte(Buf), @lpcbData) = ERROR_SUCCESS then Result := Buf;
    end;
    RegCloseKey(hCurrentKey);
  end;
end;

function RegSetString(RegRoot: HKEY; RegKey, RegValue, Value: String): Boolean;
 var hCurrentKey: HKEY;
begin
  Result := False;
  if RegCreateKeyEx(RegRoot, PChar(RegKey), 0, nil, REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS or KEY_WOW64_64KEY, nil, hCurrentKey, nil) = ERROR_SUCCESS then begin
    Result := (RegSetValueEx(hCurrentKey, PChar(RegValue), 0, REG_SZ, PChar(Value), Length(Value) * SizeOf(Char) + SizeOf(Char) * 2) = ERROR_SUCCESS);
    RegCloseKey(hCurrentKey);
  end;
end;

function RegGetDWORD(RegRoot: HKEY; RegKey, RegValue: String; DefaultValue: DWORD = 0): DWORD;
 var
   hCurrentKey: HKEY;
   lpType, lpcbData: DWord;
begin
  Result := DefaultValue;
  if RegOpenKeyEx(RegRoot, PChar(RegKey), 0, KEY_READ or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin
    lpType := REG_DWORD;
    lpcbData := SizeOf(DWORD);
    RegQueryValueEx(hCurrentKey, PChar(RegValue), nil, @lpType, @Result, @lpcbData);
    RegCloseKey(hCurrentKey);
  end;
end;

function RegSetDWORD(RegRoot: HKEY; RegKey, RegValue: String; Value: DWORD): Boolean;
 var hCurrentKey: HKEY;
begin
  Result := False;
  if RegCreateKeyEx(RegRoot, PChar(RegKey), 0, nil, REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS or KEY_WOW64_64KEY, nil, hCurrentKey, nil) = ERROR_SUCCESS then begin
    Result := (RegSetValueEx(hCurrentKey, PChar(RegValue), 0, REG_DWORD, @Value, SizeOf(DWORD)) = ERROR_SUCCESS);
    RegCloseKey(hCurrentKey);
  end;
end;

function RegGetValueDataSize(RegRoot: HKEY; RegKey, RegValue: String): DWORD;
 var
   hCurrentKey: HKEY;
   BufSize: DWORD;
begin
  Result := 0;
  if RegOpenKeyEx(RegRoot, PChar(RegKey), 0, KEY_READ or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin
    if RegQueryValueEx(hCurrentKey, PChar(RegValue), nil, nil, nil, @BufSize) = ERROR_SUCCESS then Result := BufSize;
    RegCloseKey(hCurrentKey);
  end;
end;

function RegGetBinary(RegRoot: HKEY; RegKey, RegValue: String; Buffer: Pointer; BufSize: DWORD): Boolean;
 var
   hCurrentKey: HKEY;
   lpType: DWORD;
begin
  Result := False;
  if RegOpenKeyEx(RegRoot, PChar(RegKey), 0, KEY_READ or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin
    lpType := REG_BINARY;
    Result := (RegQueryValueEx(hCurrentKey, PChar(RegValue), nil, @lpType, PByte(Buffer), @BufSize) = ERROR_SUCCESS);
    RegCloseKey(hCurrentKey);
  end;
end;

function RegSetBinary(RegRoot: HKEY; RegKey, RegValue: String; Buffer: Pointer; BufSize: DWORD): Boolean;
 var hCurrentKey: HKEY;
begin
  Result := False;
  if RegCreateKeyEx(RegRoot, PChar(RegKey), 0, nil, REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS or KEY_WOW64_64KEY, nil, hCurrentKey, nil) = ERROR_SUCCESS then begin
    Result := (RegSetValueEx(hCurrentKey, PChar(RegValue), 0, REG_BINARY, PByte(Buffer), BufSize) = ERROR_SUCCESS);
    RegCloseKey(hCurrentKey);
  end;
end;

function RegDelValue(RegRoot: HKEY; RegKey, RegValue: String): Boolean;
 var hCurrentKey: HKEY;
begin
  if RegOpenKeyEx(RegRoot, PChar(RegKey), 0, KEY_ALL_ACCESS or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin
    Result := (RegDeleteValue(hCurrentKey, PChar(RegValue)) = ERROR_SUCCESS);
    RegCloseKey(hCurrentKey);
  end else Result := False;
end;

procedure RegDeleteKeyTree(RootKey: HKEY; Key: String; DeleteTopKey: Boolean);
 var
   hCurrentKey: HKEY;
   lpBuf: array[0..MAX_PATH - 1] of Char;
   dwIndex, lpcbBuf: DWORD;
   Terminated: Boolean;
begin
  Terminated := False;
  while not Terminated and (RegOpenKeyEx(RootKey, PChar(Key), 0, KEY_ALL_ACCESS or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS) do begin
    dwIndex := 0;
    lpcbBuf := MAX_PATH;
    while RegEnumKeyEx(hCurrentKey, dwIndex, lpBuf, lpcbBuf, nil, nil, nil, nil) = ERROR_SUCCESS do begin
      if String(lpBuf) <> '' then RegDeleteKeyTree(RootKey, Key + '\' + String(lpBuf), True);
      lpcbBuf := MAX_PATH;
    end;
    if DeleteTopKey then RegDeleteKey(RootKey, PChar(Key)) else Terminated := True;
    RegCloseKey(hCurrentKey);
  end;
end;

procedure RegCopyKeyTree(SourceRootKey: HKEY; SourceKey: String; DestRootKey: HKEY; DestKey: String);
 var
   hCurrentKey, hCurrentDestKey: HKEY;
   lpBuf: array[0..MAX_PATH - 1] of Char;
   dwIndex, lpcbBuf, dwType, dwSize, lpType: DWORD;
   P: array of Byte;
begin
  if RegOpenKeyEx(SourceRootKey, PChar(SourceKey), 0, KEY_READ or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin

    dwIndex := 0;
    lpcbBuf := MAX_PATH;
    while RegEnumKeyEx(hCurrentKey, dwIndex, lpBuf, lpcbBuf, nil, nil, nil, nil) = ERROR_SUCCESS do begin
      if RegCreateKeyEx(DestRootKey, PChar(DestKey + '\' + String(lpBuf)), 0, nil, REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS, nil, hCurrentDestKey, nil) = ERROR_SUCCESS then begin
        RegCopyKeyTree(SourceRootKey, SourceKey + '\' + String(lpBuf), DestRootKey, DestKey + '\' + String(lpBuf));
        RegCloseKey(hCurrentDestKey);
      end;
      Inc(dwIndex);
      lpcbBuf := MAX_PATH;
    end;

    if RegOpenKeyEx(DestRootKey, PChar(DestKey), 0, KEY_ALL_ACCESS or KEY_WOW64_64KEY, hCurrentDestKey) = ERROR_SUCCESS then begin
      dwIndex := 0;
      lpcbBuf := MAX_PATH;
      lpType := REG_BINARY;
      while RegEnumValue(hCurrentKey, dwIndex, lpBuf, lpcbBuf, nil, nil, nil, nil) = ERROR_SUCCESS do begin
        if RegQueryValueEx(hCurrentKey, lpBuf, nil, @dwType, nil, @dwSize) = ERROR_SUCCESS then begin
          SetLength(P, dwSize);
          if RegQueryValueEx(hCurrentKey, lpBuf, nil, @lpType, PByte(P), @dwSize) = ERROR_SUCCESS then RegSetValueEx(hCurrentDestKey, lpBuf, 0, dwType, P, dwSize);
          Inc(dwIndex);
          lpcbBuf := MAX_PATH;
        end;
      end;
      RegCloseKey(hCurrentDestKey);
    end;

    RegCloseKey(hCurrentKey);
  end;
end;

function RegKeyExists(RootKey: HKEY; Key: String): Boolean;
 var hCurrentKey: HKEY;
begin
  if RegOpenKeyEx(RootKey, PChar(Key), 0, KEY_QUERY_VALUE or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin
    Result := True;
    RegCloseKey(hCurrentKey);
  end else Result := False;
end;

function RegValueExists(RootKey: HKEY; Key, Value: String): Boolean;
 var hCurrentKey: HKEY;
begin
  Result := False;
  if RegOpenKeyEx(RootKey, PChar(Key), 0, KEY_QUERY_VALUE or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin
    Result := (RegQueryValueEx(hCurrentKey, PChar(Value), nil, nil, nil, nil) = ERROR_SUCCESS);
    RegCloseKey(hCurrentKey);
  end;
end;

function RegSaveKeyToFile(Key: HKEY; const SubKey, FileName: String): Boolean;
 const SE_BACKUP_NAME = 'SeBackupPrivilege';
 var
   PreviousState: Boolean;
   KeyHandle: HKEY;
begin
  Result := False;
  if icsSetPrivilege(SE_BACKUP_NAME, True, PreviousState) then try
    KeyHandle := 0;
    if RegOpenKeyEx(Key, PChar(SubKey), 0, MAXIMUM_ALLOWED or KEY_WOW64_64KEY, KeyHandle) = ERROR_SUCCESS then try
      Result := (RegSaveKey(KeyHandle, PChar(FileName), nil) = ERROR_SUCCESS);
    finally
      RegCloseKey(KeyHandle);
    end;
  finally
    if (not PreviousState) then icsSetPrivilege(SE_BACKUP_NAME, PreviousState, PreviousState);
  end;
end;

function RegRestoreKeyFromFile(Key: HKEY; const SubKey, FileName: String): Boolean;
 const
   SE_BACKUP_NAME = 'SeBackupPrivilege';
   SE_RESTORE_NAME = 'SeRestorePrivilege';
 var
   PrevBackup: Boolean;
   PrevRestore: Boolean;
   KeyHandle: HKEY;
   ShortName: array [0..MAX_PATH] of Char;
begin
  Result := False;
  if icsSetPrivilege(SE_BACKUP_NAME, True, PrevBackup) then try
    if icsSetPrivilege(SE_RESTORE_NAME, True, PrevRestore) then try
      if (GetVersion() > $80000000) then begin  // Win9x (FIXME: Test it! - and see RegReplaceKey)
        if GetShortPathName(PChar(FileName), ShortName, MAX_PATH) <> 0 then Result := (RegLoadKey(Key, PChar(SubKey), ShortName) = ERROR_SUCCESS);
      end else begin  // WinNT (FIXME: Load RegRestoreKey dynamically!)
        KeyHandle := 0;
        if RegOpenKeyEx(Key, PChar(SubKey), 0, MAXIMUM_ALLOWED or KEY_WOW64_64KEY, KeyHandle) = ERROR_SUCCESS then try
          Result := (RegRestoreKey(KeyHandle, PChar(FileName), 0) = ERROR_SUCCESS);
        finally
          RegCloseKey(KeyHandle);
        end;
      end;
    finally
      if (not PrevRestore) then icsSetPrivilege(SE_RESTORE_NAME, PrevRestore, PrevRestore);
    end;
  finally
    if (not PrevBackup) then icsSetPrivilege(SE_BACKUP_NAME, PrevBackup, PrevBackup);
  end;
end;

function RegGetSubKeyCount(RootKey: HKEY; Key: String): Integer;
 var
   hCurrentKey: HKEY;
   DW: DWORD;
begin
  Result := 0;
  if RegOpenKeyEx(RootKey, PChar(Key), 0, KEY_QUERY_VALUE or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin
    if RegQueryInfoKey(hCurrentKey, nil, nil, nil, @DW, nil, nil, nil, nil, nil, nil, nil) = ERROR_SUCCESS then Result := DW;
    RegCloseKey(hCurrentKey);
  end;
end;

function RegGetDataInfo(const RootKey: HKEY; const Key, Value: String): TRegDataInfo;
 var
   hCurrentKey: HKEY;
   dwType, dwSize: DWORD;
begin
  Result.DataType := REG_NONE;
  if RegOpenKeyEx(RootKey, PChar(Key), 0, KEY_QUERY_VALUE or KEY_WOW64_64KEY, hCurrentKey) = ERROR_SUCCESS then begin
    if RegQueryValueEx(hCurrentKey, PChar(Value), nil, @dwType, nil, @dwSize) = ERROR_SUCCESS then begin
      Result.DataType := dwType;
      Result.DataSize := dwSize;
    end;
    RegCloseKey(hCurrentKey);
  end;
end;

function RegGetSystemTime(RegRoot: HKEY; RegKey, RegValue: String): TSystemTime;
begin
  if not RegGetBinary(RegRoot, RegKey, RegValue, @Result, SizeOf(Result)) then FillChar(Result, SizeOf(Result), 0);
end;

function RegSetSystemTime(RegRoot: HKEY; RegKey, RegValue: String; ST: TSystemTime): Boolean;
begin
  Result := RegSetBinary(RegRoot, RegKey, RegValue, @ST, SizeOf(ST));
end;

end.

unit uRegistry;

interface

uses
  Windows, Classes, uRegLite;

type
  TRegistryKeyData = record
    RootKey: HKEY;
    RootKeyText: String;
    SubKey: String;
    FullPath: String;
  end;

const
  cNumRegHKEYKeys = 7;
  cRegHKEYLookUp: array[1..cNumRegHKEYKeys] of record
    Description: String;
    Value: HKEY;
  end = ((Description: 'HKEY_CLASSES_ROOT'; Value: HKEY_CLASSES_ROOT),
         (Description: 'HKEY_CURRENT_USER'; Value: HKEY_CURRENT_USER),
         (Description: 'HKEY_LOCAL_MACHINE'; Value: HKEY_LOCAL_MACHINE),
         (Description: 'HKEY_USERS'; Value: HKEY_USERS),
         (Description: 'HKEY_PERFORMANCE_DATA'; Value: HKEY_PERFORMANCE_DATA),
         (Description: 'HKEY_CURRENT_CONFIG'; Value: HKEY_CURRENT_CONFIG),
         (Description: 'HKEY_DYN_DATA'; Value: HKEY_DYN_DATA));

function HKEYTextToHKEY(HKEYText: String): HKEY;
function HKEYToHKEYText(RootKey: HKEY): String;

function GetRegistryKeyData(const Value: String): TRegistryKeyData;

procedure RegGetSubKeyNames(RootKey: HKEY; Key: String; SL: TStringList; FullKey: Boolean);
procedure RegGetValueNames(RootKey: HKEY; Key: String; SL: TStringList);

function RegGetBinaryEx(RegRoot: HKEY; RegKey, RegValue: String; var WS: String): Boolean;

function RegGetCountries(SL: TStringList): Boolean;

implementation

uses
  uCommonTools;

function HKEYTextToHKEY(HKEYText: String): HKEY;
 var I: Integer;
begin
  I := 0;
  repeat
    Inc(I);
  until (cRegHKEYLookUp[I].Description = HKEYText) or (I = cNumRegHKEYKeys);
  if (cRegHKEYLookUp[I].Description = HKEYText) then Result := cRegHKEYLookUp[I].Value else Result := HKEY_CURRENT_USER;
end;

function HKEYToHKEYText(RootKey: HKEY): String;
 var I: Integer;
begin
  Result := cRegHKEYLookUp[1].Description;
  for I := 1 to cNumRegHKEYKeys do if cRegHKEYLookUp[I].Value = RootKey then begin
    Result := cRegHKEYLookUp[I].Description;
    Break;
  end;
end;

function GetRegistryKeyData(const Value: String): TRegistryKeyData;
 var
   KeyText: String;
   DelimPos: Integer;
begin
  if (Result.FullPath <> Value) then begin
    Result.FullPath := Value;
    DelimPos := Pos('\', Result.FullPath);
    if (DelimPos > 0) then begin
      KeyText := Copy(Result.FullPath, 1, Pred(DelimPos));
      Result.SubKey := Copy(Result.FullPath, Succ(DelimPos), Length(Result.FullPath) - DelimPos);
    end else begin
      KeyText := Result.FullPath;
      Result.SubKey := '';
    end;
    if (Result.RootKeyText <> KeyText) then begin
      Result.RootKeyText := KeyText;
      Result.RootKey := HKEYTextToHKEY(Result.RootKeyText);
    end;
  end;
end;

procedure RegGetSubKeyNames(RootKey: HKEY; Key: String; SL: TStringList; FullKey: Boolean);
 var
   hCurrentKey: HKEY;
   lpBuf: array[0..MAX_PATH - 1] of Char;
   dwIndex, lpcbBuf: DWORD;
begin
  if Assigned(SL) then begin
    SL.Clear;
    if RegOpenKeyEx(RootKey, PChar(Key), 0, KEY_ENUMERATE_SUB_KEYS, hCurrentKey) = ERROR_SUCCESS then begin
      dwIndex := 0;
      lpcbBuf := MAX_PATH;
      while RegEnumKeyEx(hCurrentKey, dwIndex, lpBuf, lpcbBuf, nil, nil, nil, nil) = ERROR_SUCCESS do begin
        if String(lpBuf) <> '' then if FullKey then SL.Add(Key + '\' + String(lpBuf)) else SL.Add(String(lpBuf));
        Inc(dwIndex);
        lpcbBuf := MAX_PATH;
      end;
    end;
    RegCloseKey(hCurrentKey);
  end;
end;

procedure RegGetValueNames(RootKey: HKEY; Key: String; SL: TStringList);
 var
   hCurrentKey: HKEY;
   lpBuf: array[0..MAX_PATH - 1] of Char;
   dwIndex, lpcbBuf: DWORD;
begin
  if Assigned(SL) then begin
    SL.Clear;
    if RegOpenKeyEx(RootKey, PChar(Key), 0, KEY_QUERY_VALUE, hCurrentKey) = ERROR_SUCCESS then begin
      dwIndex := 0;
      lpcbBuf := MAX_PATH;
      while RegEnumValue(hCurrentKey, dwIndex, lpBuf, lpcbBuf, nil, nil, nil, nil) = ERROR_SUCCESS do begin
        if String(lpBuf) <> '' then SL.Add(String(lpBuf));
        Inc(dwIndex);
        lpcbBuf := MAX_PATH;
      end;
    end;
    RegCloseKey(hCurrentKey);
  end;
end;

function RegGetBinaryEx(RegRoot: HKEY; RegKey, RegValue: String; var WS: String): Boolean;
 var
   hCurrentKey: HKEY;
   lpType, BufSize: DWORD;
begin
  Result := False;
  if RegOpenKeyEx(RegRoot, PChar(RegKey), 0, KEY_READ, hCurrentKey) = ERROR_SUCCESS then begin
    lpType := REG_BINARY;
    BufSize := 0;
    if RegQueryValueEx(hCurrentKey, PChar(RegValue), nil, nil, nil, @BufSize) = ERROR_SUCCESS then begin
      SetLength(WS, BufSize);
      Result := (RegQueryValueEx(hCurrentKey, PChar(RegValue), nil, @lpType, PByte(WS), @BufSize) = ERROR_SUCCESS);
    end;
    RegCloseKey(hCurrentKey);
  end;
end;

function RegGetCountries(SL: TStringList): Boolean;
 const
//   REG_KEY_COUNTRY_LIST = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Telephony\Country List';
   REG_KEY_COUNTRY_LIST = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Telephony\Country/region List';
 var I: Integer;
begin
  Result := False;
  if Assigned(SL) then begin
    SL.Clear;
    SL.Sorted := False;
    RegGetSubKeyNames(HKEY_LOCAL_MACHINE, REG_KEY_COUNTRY_LIST, SL, False);
    for I := 0 to SL.Count - 1 do SL[I] := RegGetString(HKEY_LOCAL_MACHINE, REG_KEY_COUNTRY_LIST + '\' + SL[I], 'Name', '') + '=' + SL[I];
    Result := (SL.Count > 0);
  end;
end;

end.

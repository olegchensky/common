unit uRegExport;

interface

uses
  Windows;

{$I-}

procedure ExportRegistryBranch(RootKey: HKEY; Key: String; FileName: String);

implementation

uses
  Classes, SysUtils, uRegistry, uRegLite;

function DblBackSlash(S: String): String;
 var I: Integer;
begin
  Result := S;
  for I := Length(S) downto 1 do if Result[I] = '\' then Insert('\', Result, I);
end;

procedure ExportRegistryBranch(RootKey: HKEY; Key: String; FileName: String);
 var
   F: Text;
   P: array of Byte;

  procedure ProcessBranch(Key: String);
   var
     Keys, Values: TStringList;
     I, J: Integer;
     S, T: String;
     DataInfo: TRegDataInfo;
  begin
    Writeln(F);
    Writeln(F, '[' + HKEYToHKEYText(RootKey) + '\' + Key + ']');

    Keys := TStringList.Create;
    try
      Values := TStringList.Create;
      try
        RegGetSubKeyNames(RootKey, Key, Keys, False);
        RegGetValueNames(RootKey, Key, Values);

        for I := 0 to Values.Count - 1 do begin
          S := Values[I];
          T := S;
          if S = '' then S := '@' else S := '"' + S + '"';
          Write(F, DblBackSlash(S) + '=');
          DataInfo := RegGetDataInfo(RootKey, Key, T);
          case DataInfo.DataType of
            REG_SZ, REG_LINK: Writeln(F, '"' + DblBackSlash(RegGetString(RootKey, Key, T) + '"'));
            REG_DWORD, REG_DWORD_BIG_ENDIAN: Writeln(F, 'dword:' + IntToHEX(RegGetDWORD(RootKey, Key, T), 8));
            REG_NONE, REG_BINARY, REG_EXPAND_SZ, REG_MULTI_SZ, REG_RESOURCE_LIST, REG_RESOURCE_REQUIREMENTS_LIST, REG_QWORD: begin
              if DataInfo.DataType = REG_BINARY then Write(F, 'hex:') else Write(F, 'hex(' + IntToHEX(DataInfo.DataType, 1) + '):');
              SetLength(P, DataInfo.DataSize);
              try
                RegGetBinary(RootKey, Key, T, P, DataInfo.DataSize);
                for J := 0 to DataInfo.DataSize - 1 do begin
                  Write(F, IntToHEX(P[J], 2));
                  if J <> DataInfo.DataSize - 1 then begin
                    Write(F, ',');
                    if (J > 0) and ((J mod 25) = 0) then Writeln(F, '\');
                  end;
                end;
              finally
                Writeln(F);
              end;
            end;
            else Writeln(F, '""');
          end;
        end;

      finally
        Values.Free;
        for I := 0 to Keys.Count - 1 do ProcessBranch(Key + '\' + Keys[I]);
      end;
    finally
      Keys.Free;
    end;
  end;

begin
  if Key[Length(Key)] = '\' then SetLength(Key, Length(Key) - 1);
  Assignfile(F, FileName);
  Rewrite(F);
  if IOResult = 0 then begin
    Writeln(F, 'REGEDIT4');
    try
      ProcessBranch(Key);
    finally
      CloseFile(F);
    end;
  end;
end;

end.


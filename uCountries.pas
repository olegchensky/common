unit uCountries;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Classes, SysUtils;

procedure icsGetCountries(SL: TStrings);

implementation

var
  CSL: TStringList;

function EnumLocalesProc(Name: PChar): Cardinal; stdcall;
 var
   Locale: Integer;
   Country: string;
begin
  Result := 1;
  Locale := StrToIntDef('$' + Copy(Name, 5, 4), 0) and $3FF;
  Country := GetLocaleStr(Locale, LOCALE_SLOCALIZEDCOUNTRYNAME, '');
  if Country <>'' then CSL.Add(Country);
end;

procedure icsGetCountries(SL: TStrings);
begin
  if Assigned(SL) then begin
    CSL := TStringList.Create;
    try
      CSL.Duplicates := dupIgnore;
      CSL.Sorted := True;
      EnumSystemLocales(@EnumLocalesProc, LCID_SUPPORTED);
      SL.Assign(CSL);
    finally
      CSL.Free;
    end;
  end;
end;

end.

unit uMatrixAPI;

interface

uses
  Windows, SysUtils;

function GetMatrixUserCode(const S: String): Integer;

const
  MATRIX_USER_CODE_CLSID                               = 'C9812C3A4-8420-4C76-9EB5-92AA0E2D88E7';
  MATRIX_USER_CODE_CD_X                                = #119#11#1#5#5#119#7;   // '4294744' cryptoDira GmbH
  MATRIX_USER_CODE_RS_X                                = #119#11#1#7#10#113#51; // '4296823' repsoft
  MATRIX_USER_CODE                                     = MATRIX_USER_CODE_RS_X;
//  MATRIX_USER_CODE                                     = MATRIX_USER_CODE_CD_X;

  DONGLE_PORT                                 = $55;
  DONGLE_MEMORY_LENGTH                        = 15;

//  DONGLE_CLIENT_VAR_1                         = 2;
//  DONGLE_CLIENT_VAR_2                         = 3;

var
  USER_CODE: Integer = 0;

type
  TDongle_DataBlock = array[0..1] of DWORD;
  PDongle_DataBlock = ^TDongle_DataBlock;

  TDongle_KeyBuffer = array[0..3] of DWORD;
  PDongle_KeyBuffer = ^TDongle_KeyBuffer;

  TDongle_MemoryBuffer = array[0..DONGLE_MEMORY_LENGTH - 1] of DWORD;
  PDongle_MemoryBuffer = ^TDongle_MemoryBuffer;

function cdDongle_InitMatrix(const LibraryName: String; const UserCode: Integer): Boolean;
procedure cdDongle_ReleaseMatrix;

function cdDongle_GenerateKey(const sKey: String): TDongle_KeyBuffer;
function cdDongle_GetCount: Integer;
function cdDongle_GetSN: Integer;
function cdDongle_IsOk(bCheckKey: Boolean): Boolean;
function cdDongle_GetKeyFlag: Boolean;
function cdDongle_WriteKey(const Key: TDongle_KeyBuffer): Boolean;
procedure cdDongle_EncryptDecrypt(var DataBlock: TDongle_DataBlock; bEncrypt: Boolean);
function cdDongle_ReadData(var MemoryBuffer: TDongle_MemoryBuffer): Boolean;
function cdDongle_WriteData(const MemoryBuffer: TDongle_MemoryBuffer): Boolean;
function cdDongle_GetVariable(const VarID: Integer): Integer;
function cdDongle_SetVariable(const VarID: Integer; const iVar: Integer): Boolean;

implementation

uses
  uCommonTools, uWindows;

function GetMatrixUserCode(const S: String): Integer;
begin
  Result := StrToIntDef(String(icsXorString(MATRIX_USER_CODE_CLSID, AnsiString(S))), 0);
end;

type
  pLongWord = ^LongWord;

  DNGINFO = packed record
              LPT_Nr: SmallInt;
              LPT_Adr: SmallInt;
              DNG_Cnt: SmallInt;
            end;

  pDNGINFO  = ^DNGINFO;

var
  MatrixAPIInitialized: Boolean = False;

var
  MATRIX_DLL_NAME: String = '';

//function Init_MatrixAPI: SmallInt; stdcall; external MATRIX_DLL_NAME;
function Init_MatrixAPI: SmallInt; stdcall;
 var fProc: function: SmallInt; stdcall;
begin
  @fProc := LinkAPI(MATRIX_DLL_NAME, 'Init_MatrixAPI');
  if Assigned(fProc) then Result := fProc else Result := -1;
end;

//function Release_MatrixAPI: SmallInt; stdcall; external MATRIX_DLL_NAME;
procedure Release_MatrixAPI stdcall;
 var fProc: procedure; stdcall;
begin
  @fProc := LinkAPI(MATRIX_DLL_NAME, 'Release_MatrixAPI');
  if Assigned(fProc) then fProc;
end;

//function PausePrinterActivity: SmallInt; stdcall; external MATRIX_DLL_NAME;
//function ResumePrinterActivity: SmallInt; stdcall; external MATRIX_DLL_NAME;
//function GetVersionAPI: LongInt; stdcall; external MATRIX_DLL_NAME;
//function GetVersionDRV: LongInt; stdcall; external MATRIX_DLL_NAME;
//function GetVersionDRV_USB: LongInt; stdcall; external MATRIX_DLL_NAME;
//function GetPortAdr(DNG_LPT: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;
//function Dongle_Find: SmallInt; stdcall; external MATRIX_DLL_NAME;
//function Dongle_FindEx(xBuffer: pDNGINFO): SmallInt; stdcall; external MATRIX_DLL_NAME;
//function Dongle_Version(DNG_Nr: SmallInt; DNG_Port: SmallInt): LongInt; stdcall; external MATRIX_DLL_NAME;
//function Dongle_Model(DNG_Nr: SmallInt; DNG_Port: SmallInt): LongInt; stdcall; external MATRIX_DLL_NAME;
//function Dongle_MemSize(DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;

//function Dongle_Count(DNG_Port: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;
function Dongle_Count(DNG_Port: SmallInt): SmallInt; stdcall;
 var fProc: function(DNG_Port: SmallInt): SmallInt; stdcall;
begin
  @fProc := LinkAPI(MATRIX_DLL_NAME, 'Dongle_Count');
  if Assigned(fProc) then Result := fProc(DNG_Port) else Result := 0;
end;

//function Dongle_ReadData(UserCode: LongInt; DataIn: pLongWord; MaxVar: SmallInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;
function Dongle_ReadData(UserCode: LongInt; DataIn: pLongWord; MaxVar: SmallInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall;
 var fProc: function(UserCode: LongInt; DataIn: pLongWord; MaxVar: SmallInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall;
begin
  @fProc := LinkAPI(MATRIX_DLL_NAME, 'Dongle_ReadData');
  if Assigned(fProc) then Result := fProc(UserCode, DataIn, MaxVar, DNG_Nr, DNG_Port) else Result := 0;
end;

//function Dongle_ReadDataEx(UserCode: LongInt; DataIn: pLongWord; StartVar: SmallInt; MaxVar: SmallInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;

//function Dongle_WriteData(UserCode: LongInt; DataOut : pLongWord; MaxVar: SmallInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;
function Dongle_WriteData(UserCode: LongInt; DataOut : pLongWord; MaxVar: SmallInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall;
 var fProc: function(UserCode: LongInt; DataOut : pLongWord; MaxVar: SmallInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall;
begin
  @fProc := LinkAPI(MATRIX_DLL_NAME, 'Dongle_WriteData');
  if Assigned(fProc) then Result := fProc(UserCode, DataOut, MaxVar, DNG_Nr, DNG_Port) else Result := 0;
end;

//function Dongle_WriteDataEx(UserCode: LongInt; DataOut: pLongWord; StartVar: SmallInt; MaxVar: SmallInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;

//function Dongle_ReadSerNr(UserCode: LongInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): LongInt; stdcall; external MATRIX_DLL_NAME;
function Dongle_ReadSerNr(UserCode: LongInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): LongInt; stdcall;
 var fProc: function(UserCode: LongInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): LongInt; stdcall;
begin
  @fProc := LinkAPI(MATRIX_DLL_NAME, 'Dongle_ReadSerNr');
  if Assigned(fProc) then Result := fProc(UserCode, DNG_Nr, DNG_Port) else Result := 0;
end;

//function SetConfig_MatrixNet(NAccess: SmallInt; NFile: PChar): SmallInt; stdcall; external MATRIX_DLL_NAME;
//function GetConfig_MatrixNet(Category: SmallInt): LongInt; stdcall; external MATRIX_DLL_NAME;
//function LogIn_MatrixNet(UserCode: LongInt; AppSlot: SmallInt; DNG_Nr: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;
//function LogOut_MatrixNet(UserCode: LongInt; AppSlot: SmallInt; DNG_Nr: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;

//function Dongle_WriteKey(UserCode: LongInt; KeyData: pLongWord; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;
function Dongle_WriteKey(UserCode: LongInt; KeyData: pLongWord; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall;
 var fProc: function(UserCode: LongInt; KeyData: pLongWord; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall;
begin
  @fProc := LinkAPI(MATRIX_DLL_NAME, 'Dongle_WriteKey');
  if Assigned(fProc) then Result := fProc(UserCode, KeyData, DNG_Nr, DNG_Port) else Result := 0;
end;

//function Dongle_GetKeyFlag(UserCode: LongInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;
function Dongle_GetKeyFlag(UserCode: LongInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall;
 var fProc: function(UserCode: LongInt; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall;
begin
  @fProc := LinkAPI(MATRIX_DLL_NAME, 'Dongle_GetKeyFlag');
  if Assigned(fProc) then Result := fProc(UserCode, DNG_Nr, DNG_Port) else Result := -99;
end;

//function Dongle_EncryptData(UserCode: LongInt; DataBlock: pLongWord; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall; external MATRIX_DLL_NAME;
function Dongle_EncryptData(UserCode: LongInt; DataBlock: pLongWord; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall;
 var fProc: function(UserCode: LongInt; DataBlock: pLongWord; DNG_Nr: SmallInt; DNG_Port: SmallInt): SmallInt; stdcall;
begin
  @fProc := LinkAPI(MATRIX_DLL_NAME, 'Dongle_EncryptData');
  if Assigned(fProc) then Result := fProc(UserCode, DataBlock, DNG_Nr, DNG_Port) else Result := 0;
end;

//function Dongle_DecryptData(UserCode: LongInt; DataBlock: pLongWord; DNG_Nr: SmallInt; DNG_Port: SmallInt): smallint; stdcall; external MATRIX_DLL_NAME;
function Dongle_DecryptData(UserCode: LongInt; DataBlock: pLongWord; DNG_Nr: SmallInt; DNG_Port: SmallInt): smallint; stdcall;
 var fProc: function(UserCode: LongInt; DataBlock: pLongWord; DNG_Nr: SmallInt; DNG_Port: SmallInt): smallint; stdcall;
begin
  @fProc := LinkAPI(MATRIX_DLL_NAME, 'Dongle_DecryptData');
  if Assigned(fProc) then Result := fProc(UserCode, DataBlock, DNG_Nr, DNG_Port) else Result := 0;
end;

// ----------------------------------

function cdDongle_InitMatrix(const LibraryName: String; const UserCode: Integer): Boolean;
begin
  cdDongle_ReleaseMatrix;
  MATRIX_DLL_NAME := LibraryName;
  USER_CODE := UserCode;
  MatrixAPIInitialized := (Init_MatrixAPI() = 0);
  Result := MatrixAPIInitialized;
end;

procedure cdDongle_ReleaseMatrix;
begin
  if MatrixAPIInitialized then Release_MatrixAPI();
end;

function cdDongle_GetDongleNumber: Integer;
begin
  Result := 1;
end;

function cdDongle_GenerateKey(const sKey: String): TDongle_KeyBuffer;
 var S: AnsiString;
begin
  FillChar(Result, SizeOf(Result), 0);
  S := AnsiString(icsGetMD5FromString(sKey));
  Result[0] := icsHexToInt(Copy(String(S), 1, 8));
  Result[1] := icsHexToInt(Copy(String(S), 9, 8));
  Result[2] := icsHexToInt(Copy(String(S), 17, 8));
  Result[3] := icsHexToInt(Copy(String(S), 25, 8));
end;

function cdDongle_GetCount: Integer;
begin
  if MatrixAPIInitialized then Result := Dongle_Count(DONGLE_PORT) else Result := 0;
end;

function cdDongle_GetSN: Integer;
begin
  if MatrixAPIInitialized and (Dongle_Count(DONGLE_PORT) = 1) then Result := Dongle_ReadSerNr(USER_CODE, cdDongle_GetDongleNumber, DONGLE_PORT) else Result := 0;
end;

function cdDongle_IsOk(bCheckKey: Boolean): Boolean;
begin
  Result := MatrixAPIInitialized and (Dongle_Count(DONGLE_PORT) = 1) and (Dongle_ReadSerNr(USER_CODE, cdDongle_GetDongleNumber, DONGLE_PORT) > 0) and (not bCheckKey or cdDongle_GetKeyFlag);
end;

function cdDongle_GetKeyFlag: Boolean;
begin
  Result := MatrixAPIInitialized and (Dongle_GetKeyFlag(USER_CODE, cdDongle_GetDongleNumber, DONGLE_PORT) = 1);
end;

function cdDongle_WriteKey(const Key: TDongle_KeyBuffer): Boolean;
begin
  Result := MatrixAPIInitialized and (Dongle_WriteKey(USER_CODE, @Key, cdDongle_GetDongleNumber, DONGLE_PORT) > 0);
end;

procedure cdDongle_EncryptDecrypt(var DataBlock: TDongle_DataBlock; bEncrypt: Boolean);
 var bSuccess: Boolean;
begin
  bSuccess := False;
  try
    if MatrixAPIInitialized then begin
      if bEncrypt then begin
        bSuccess := (Dongle_EncryptData(USER_CODE, @DataBlock, cdDongle_GetDongleNumber, DONGLE_PORT) > 0);
      end else begin
        bSuccess := (Dongle_DecryptData(USER_CODE, @DataBlock, cdDongle_GetDongleNumber, DONGLE_PORT) > 0);
      end;
    end;
  finally
    if not bSuccess then begin
      DataBlock[0] := 0;
      DataBlock[1] := 0;
    end;
  end;
end;

function cdDongle_ReadData(var MemoryBuffer: TDongle_MemoryBuffer): Boolean;
begin
  Result := MatrixAPIInitialized and (Dongle_ReadData(USER_CODE, @MemoryBuffer, DONGLE_MEMORY_LENGTH, cdDongle_GetDongleNumber, DONGLE_PORT) > 0);
end;

function cdDongle_WriteData(const MemoryBuffer: TDongle_MemoryBuffer): Boolean;
begin
  Result := MatrixAPIInitialized and (Dongle_WriteData(USER_CODE, @MemoryBuffer, DONGLE_MEMORY_LENGTH, cdDongle_GetDongleNumber, DONGLE_PORT) > 0);
end;

function cdDongle_GetVariable(const VarID: Integer): Integer;
 var MemoryBuffer: TDongle_MemoryBuffer;
begin
  if (VarID in [1..DONGLE_MEMORY_LENGTH]) and cdDongle_ReadData(MemoryBuffer) then Result := MemoryBuffer[VarID - 1] else Result := -1;
end;

function cdDongle_SetVariable(const VarID: Integer; const iVar: Integer): Boolean;
 var MemoryBuffer: TDongle_MemoryBuffer;
begin
  Result := False;
  if MatrixAPIInitialized then begin
    if (VarID in [1..DONGLE_MEMORY_LENGTH]) and (Dongle_ReadData(USER_CODE, @MemoryBuffer, DONGLE_MEMORY_LENGTH, cdDongle_GetDongleNumber, DONGLE_PORT) > 0) then begin
      MemoryBuffer[VarID - 1] := iVar;
      Result := (Dongle_WriteData(USER_CODE, @MemoryBuffer, DONGLE_MEMORY_LENGTH, cdDongle_GetDongleNumber, DONGLE_PORT) > 0);
    end;
  end;
end;

end.

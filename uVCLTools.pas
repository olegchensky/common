unit uVCLTools;

interface

{$WARN SYMBOL_PLATFORM OFF}

uses
  Windows, SysUtils, Forms, Classes, Graphics, Controls, Menus;

function SetPositionToSystemTray(F: TForm): Boolean;

procedure ConvertTo32BitImageList(const ImageList: TImageList);

function DoFileOperation(InFile, OutFile: String; FileOP: Integer; Wnd: HWND; Title: String = ''): Boolean;

function GetINetStreamString(URL: String): String;

function CreateEnvBlock(const NewEnv: TStrings; const IncludeCurrent: Boolean; const Buffer: Pointer; const BufSize: Integer): Integer;
function GetAllEnvVars(const Vars: TStrings): Integer;

//function GetCryptDecryptString(Source: String; KeyString: AnsiString; ToCrypt: Boolean; Provider: Integer = PROV_RSA_FULL): String;

function GetFileInformation(const FileName: String): TSearchRec;
function GetFileLastWriteDateTime(const FileName: String): TDateTime;

function IsBrightColor(const Color: TColor): Boolean;
function GetBWFontColor(const Color: TColor): TColor;
function ConvertBitmapToGrayscale(const Bitmap: TBitmap): TBitmap;
function ChangeBitmapColor(const Bitmap: TBitmap; OldColor, NewColor: TColor): TBitmap;
function GetLuminancedColor(const Color: TColor; LumDelta: Integer): TColor;

procedure ShortCutToHotKey(HotKey: TShortCut; var Key: Word; var Modifiers: Uint);

function DoSelectDirectory(Handle: HWND; var CurrentDir: String; const Title: String = ''): Boolean;

procedure icsImageListLoadFromRecources(ImageList: TImageList; ResId: Integer);

implementation

uses
  ShellAPI, shlobj, uCommonTools, CommCtrl, WinINet, Masks, DateUtils, GraphUtil, EncdDecd;

function SetPositionToSystemTray(F: TForm): Boolean;
 var
   Wnd: HWND;
   R: TRect;
begin
  Wnd := icsGetTrayNotifyWndHandle;
  Result := IsWindow(Wnd);
  if Result then begin
    GetWindowRect(Wnd, R);
    if Screen.WorkAreaWidth div 2 > R.Left then F.Left := Screen.WorkAreaLeft + 10 else F.Left := Screen.WorkAreaLeft + Screen.WorkAreaWidth - F.Width - 10;
    if Screen.WorkAreaHeight div 2 > R.Top then F.Top := Screen.WorkAreaTop + 10 else F.Top := Screen.WorkAreaTop + Screen.WorkAreaHeight - F.Height - 10;
  end;
end;

procedure ConvertTo32BitImageList(const ImageList: TImageList);
 const Mask: array[Boolean] of Longint = (0, ILC_MASK);
 var TempList: TImageList;
begin
  if Assigned(ImageList) then begin
    TempList := TImageList.Create(nil);
    try
      TempList.Assign(ImageList);
      with ImageList do Handle := ImageList_Create(Width, Height, ILC_COLOR32 or Mask[Masked], 0, AllocBy);
      Imagelist.AddImages(TempList);
    finally
      TempList.Free;
    end;
  end;
end;

{procedure TramsformImages(ASourceImageList, ADestinationImageList: TcxImageList; ABkColor: TColor; AEnabled: Boolean = True);
var
  ABitmap: TcxBitmap;
  ABitmap24bit: TcxCustomBitmap;
  I: Integer;
begin
  ADestinationImageList.Clear;
  ABitmap := TcxBitmap.CreateSize(ASourceImageList.Width, ASourceImageList.Height, cxColorToRGBQuad(ABkColor, $FF));
  ABitmap24bit := TcxCustomBitmap.CreateSize(ABitmap.ClientRect, pf24bit);
  try
    for I := 0 to ASourceImageList.Count - 1 do
    begin
      ABitmap.Clear;
      ASourceImageList.Draw(ABitmap.Canvas, ABitmap.ClientRect, I, True, False, AEnabled);
      ABitmap24bit.CopyBitmap(ABitmap);
      ADestinationImageList.AddMasked(ABitmap24bit, ABkColor);
    end;
  finally
    ABitmap24bit.Free;
    ABitmap.Free;
  end;
end;


// USAGE
if not IsXPManifestEnabled then
begin
  tlbYourToolbar.Images := ilToolBar24;
  TramsformImages(ilToolbar32, ilToolBar24, clBtnFace);
end;

if not IsXPManifestEnabled then
begin
  tlbYourToolbar.Images := ilToolBar24;
  cxTransformImages(ilToolbar32, ilToolBar24, clBtnFace);
end;
}


{function GetCPUSpeed: Double;
 const
   THREAD_PRIORITY_TIME_CRITICAL = 15;
   REALTIME_PRIORITY_CLASS = 256;
   PF_RDTSC_INSTRUCTION_AVAILABLE = 8;
   DELAY_TIME = 500;
 var
   dwTimerHi, dwTimerLo: DWORD;
   priorityClass, priority: Integer;
   time: Double;
   lCountsStart, lCountsEnd, lFrequency: Int64;
begin
  if (IsProcessorFeaturePresent(PF_RDTSC_INSTRUCTION_AVAILABLE) = True) then begin
    priorityClass := GetPriorityClass(GetCurrentProcess());
    priority := GetThreadPriority(GetCurrentThread());
    SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);
    SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_TIME_CRITICAL);
    QueryPerformanceCounter(lCountsStart);

    asm
      dw 310Fh
      mov dwTimerLo, eax
      mov dwTimerHi, edx
    end;
    Sleep(DELAY_TIME);
    asm
      dw 310Fh
      sub eax, dwTimerLo
      sbb edx, dwTimerHi
      mov dwTimerLo, eax
      mov dwTimerHi, edx
    end;
    QueryPerformanceCounter(lCountsEnd);
    SetThreadPriority(GetCurrentThread(), priority);
    SetPriorityClass(GetCurrentProcess(), priorityClass);
    QueryPerformanceFrequency(lFrequency);

    time := (lCountsEnd - lCountsStart) / lFrequency;
    Result := dwTimerLo / (1000.0 * 1000.0 * time);
  end else Result := -1.0;  // CPU < Pentium
end;}

procedure RecurseFolder(const RootPath: String);
 var F: TSearchRec;
begin
  if SysUtils.FindFirst(RootPath + '*.*', faAnyFile, F) = 0 then try
    repeat
      if (F.Name <> '.') and (F.Name <> '..') then begin
        if (F.Attr and faDirectory) = faDirectory then RecurseFolder(RootPath + F.Name + '\') else begin

        end;
      end;
    until SysUtils.FindNext(F) <> 0;
  finally
    SysUtils.FindClose(F);
  end;
end;

function DoFileOperation(InFile, OutFile: String; FileOP: Integer; Wnd: HWND; Title: String = ''): Boolean;
 var recSHF: TSHFileOpStruct;
begin
  try
    InFile := ExpandFileName(InFile) + #0#0;
    OutFile := ExpandFileName(OutFile) + #0#0;
    FillChar(recSHF, SizeOf(recSHF), 0);
    recSHF.Wnd := Wnd;
    recSHF.wFunc := FileOP;
    recSHF.pFrom := PChar(InFile);
    recSHF.pTo := PChar(OutFile);
    recSHF.fFlags := FOF_NOCONFIRMATION or FOF_NOCONFIRMMKDIR or FOF_SIMPLEPROGRESS or FOF_NOERRORUI;
//    recSHF.fFlags := FOF_NO_UI or FOF_SIMPLEPROGRESS;
    recSHF.lpszProgressTitle := PChar(Title);
  finally
    Result := (SHFileOperation(recSHF) = ERROR_SUCCESS);
  end;
end;

function GetINetStreamString(URL: String): String;
 var ST: TStringStream;
begin
  Result := '';
  ST := TStringStream.Create('');
  try
    if icsGetINetStream(URL, ST) then Result := ST.DataString;
  finally
    ST.Free;
  end;
end;

function CreateEnvBlock(const NewEnv: TStrings; const IncludeCurrent: Boolean; const Buffer: Pointer; const BufSize: Integer): Integer;
 var
   EnvVars: TStringList;
   Idx: Integer;
   PBuf: PChar;
begin
  EnvVars := TStringList.Create;
  try
    if IncludeCurrent then GetAllEnvVars(EnvVars);
    if Assigned(NewEnv) then EnvVars.AddStrings(NewEnv);
    Result := 0;
    for Idx := 0 to Pred(EnvVars.Count) do Inc(Result, Length(EnvVars[Idx]) + 1);
    Inc(Result);
    if (Buffer <> nil) and (BufSize >= Result) then begin
      EnvVars.Sorted := True;
      PBuf := Buffer;
      for Idx := 0 to Pred(EnvVars.Count) do begin
        StrPCopy(PBuf, EnvVars[Idx]);
        Inc(PBuf, Length(EnvVars[Idx]) + 1);
      end;
      PBuf^ := #0;
    end;
  finally
    EnvVars.Free;
  end;
end;

function GetAllEnvVars(const Vars: TStrings): Integer;
 var
   PEnvVars: PChar;
   PEnvEntry: PChar;
begin
  if Assigned(Vars) then Vars.Clear;
  PEnvVars := GetEnvironmentStrings;
  if PEnvVars <> nil then begin
    PEnvEntry := PEnvVars;
    try
      while PEnvEntry^ <> #0 do begin
        if Assigned(Vars) then Vars.Add(PEnvEntry);
        Inc(PEnvEntry, StrLen(PEnvEntry) + 1);
      end;
      Result := (PEnvEntry - PEnvVars) + 1;
    finally
      FreeEnvironmentStrings(PEnvEntry);
    end;
  end else Result := 0;
end;

{function Stream_To_ByteString(aStream: TMemoryStream): String;
begin
  SetLength(Result, aStream.Size);
  if astream.Size > 0 then Move(aStream.Memory^, Result[1], aStream.Size);
end;

function GetCryptDecryptString(Source: String; KeyString: AnsiString; ToCrypt: Boolean; Provider: Integer = PROV_RSA_FULL): String;
 var
   SS: TStringStream;
   MS: TMemoryStream;
begin
  SS := TStringStream.Create;
  try
    if not ToCrypt then Source := String(B64Decode(Source));
    SS.WriteString(Source);
    CryptDecryptStream(SS, KeyString, ToCrypt, Provider);
    if ToCrypt then begin
      SS.Position := 0;
      MS := TMemoryStream.Create;
      try
        MS.CopyFrom(SS, SS.Size);
        Result := String(B64Encode(Stream_To_ByteString(MS)));
      finally
        MS.Free;
      end;
    end else Result := SS.ReadString(SS.Size);
  finally
    SS.Free;
  end;
end;}

function GetFileInformation(const FileName: String): TSearchRec;
begin
  if SysUtils.FindFirst(FileName, faAnyFile, Result) = 0 then SysUtils.FindClose(Result);
end;

function GetFileLastWriteDateTime(const FileName: String): TDateTime;
 var
   FileTime, LocalFileTime: TFileTime;
   SysTime: TSystemTime;
begin
  FileTime := GetFileInformation(FileName).FindData.ftLastWriteTime;
  FileTimeToLocalFileTime(FileTime, LocalFileTime);
  if FileTimeToSystemTime(LocalFileTime, SysTime) then with SysTime do Result := EncodeDateTime(wYear, wMonth, wDay, wHour, wMinute, wSecond, wMilliseconds) else Result := 0;
end;

{function ExtractFromLNK(srcPath, destPath: String): Integer;
 var
   lnk: string;
   Iico: PWORD;
   ico: TIcon;
   hic: hicon;
begin
  getmem(Iico,sizeof(word));
  lnk :=  srcPath;
  Iico^ := 0;
  ico := ticon.create;
  hic := extractassociatedicon(Hinstance,pchar(lnk),Iico^);
  try
    ico.handle := hic;
    drawicon(ico.handle,0,0,hic);
    if not(ico.Empty) then ico.savetofile(destPath+changefileext(extractFileName(srcPath), '') + inttostr(iico^) + '.ico');
  finally
    freemem(iico,sizeof(word));
    ico.free;
  end;
  result := 1;
end;

function ExtractIcon(srcPath , destPath: String): Integer;
 var
   pTemp, phiconlarge, phIconSmall: ^HICON;
   i, iconCount: integer;
   ico : TIcon;
begin

  phiconlarge := nil;
  phIconSmall := nil;

  destPath := includetrailingbackslash(destPath);

  if extractfileext(srcPath) = '.lnk' then result := ExtractFromLNK(srcPath,destPath) else begin
    iconCount := extracticonEx(pchar(srcPath),-1,phiconlarge^,phIconSmall^,0);
    result := iconCount;
    if iconcount = 0 then exit;
    getmem(phiconlarge, sizeof(HICON) * iconCount);
    ico := TIcon.create;
    pTemp := phiconLarge;

    try
      extracticonEx(pchar(srcPath),0,phiconlarge^,phIconSmall^,iconCount);
      for i:= 0 to iconcount - 1 do begin
        ico.Handle := phiconlarge^;
        drawicon(ico.handle,0,0,ico.handle);
        if not(ico.Empty) then ico.savetofile(destPath+changefileext(extractFileName(srcPath),'')+inttostr(i)+'.ico');
        inc(phiconlarge);
      end;
    finally
      phiconLarge := pTemp;
      freemem(phiconlarge,sizeof(HICON)*iconCount);
      ico.free;
    end;
  end;
end;
}

function IsBrightColor(const Color: TColor): Boolean;
 var Hue, Luminance, Saturation: Word;
begin
  ColorRGBToHLS(Color, Hue, Luminance, Saturation);
  Result := (Luminance >= 120);
end;

function GetBWFontColor(const Color: TColor): TColor;
begin
  if IsBrightColor(Color) then Result := clBlack else Result := clWhite;
end;

function GetLuminancedColor(const Color: TColor; LumDelta: Integer): TColor;
 var Hue, Luminance, Saturation: Word;
begin
  ColorRGBToHLS(Color, Hue, Luminance, Saturation);
  if Luminance - LumDelta <= 0 then LumDelta := - LumDelta;
  Result := ColorHLSToRGB(Hue, Luminance - LumDelta, Saturation);
end;

function ConvertBitmapToGrayscale(const Bitmap: TBitmap): TBitmap;
 var
   I, J: Integer;
   Grayshade, Red, Green, Blue: Byte;
   PixelColor: Integer;
begin
  with Bitmap do for I := 0 to Width - 1 do for J := 0 to Height - 1 do begin
    PixelColor := ColorToRGB(Canvas.Pixels[I, J]);
    Red := PixelColor;
    Green := PixelColor shr 8;
    Blue := PixelColor shr 16;
    Grayshade := Round(0.3 * Red + 0.6 * Green + 0.1 * Blue);
    Canvas.Pixels[I, J] := RGB(Grayshade, Grayshade, Grayshade);
  end;
  Result := Bitmap;
end;

function ChangeBitmapColor(const Bitmap: TBitmap; OldColor, NewColor: TColor): TBitmap;
 var I, J: Integer;
begin
  with Bitmap do for I := 0 to Width - 1 do for J := 0 to Height - 1 do if Canvas.Pixels[I, J] = OldColor then Canvas.Pixels[I, J] := NewColor;
  Result := Bitmap;
end;

procedure ShortCutToHotKey(HotKey: TShortCut; var Key: Word; var Modifiers: Uint);
 var Shift: TShiftState;
begin
  ShortCutToKey(HotKey, Key, Shift);
  Modifiers := 0;
  if (ssShift in Shift) then Modifiers := Modifiers or MOD_SHIFT;
  if (ssAlt in Shift) then Modifiers := Modifiers or MOD_ALT;
  if (ssCtrl in Shift) then Modifiers := Modifiers or MOD_CONTROL;
end;

var
  sStartFolder: String;

function _BrowseForFolderCallBack(Wnd: HWND; uMsg: UINT; lParam, lpData: LPARAM): Integer stdcall;
begin
  if uMsg = BFFM_INITIALIZED then SendMessage(Wnd, BFFM_SETSELECTION, 1, Integer(@sStartFolder[1]));
  Result := 0;
end;

function DoSelectDirectory(Handle: HWND; var CurrentDir: String; const Title: String = ''): Boolean;
 var
   BrowseInfo: TBrowseInfo;
   ItemIDList: PItemIDList;
   DisplayName: array[0..MAX_PATH - 1] of Char;
begin
  Result := False;
  FillChar(BrowseInfo, SizeOf(BrowseInfo), #0);
  sStartFolder := CurrentDir;
  with BrowseInfo do begin
    hwndOwner := Handle;
    pszDisplayName := @DisplayName[0];
    lpszTitle := PChar(Title);
    ulFlags := BIF_RETURNONLYFSDIRS or BIF_NEWDIALOGSTYLE;
    lpfn := _BrowseForFolderCallBack;
  end;
  ItemIDList := SHBrowseForFolder(BrowseInfo);
  if Assigned(ItemIDList) then begin
    Result := SHGetPathFromIDList(ItemIDList, DisplayName);
    if Result then CurrentDir := DisplayName;
  end;
end;

procedure icsImageListLoadFromRecources(ImageList: TImageList; ResId: Integer);
 var Ico: TIcon;
begin
  if Assigned(ImageList) then begin
    Ico := TIcon.Create;
    try
      Ico.Handle := LoadImage(HInstance, MAKEINTRESOURCE(ResId), IMAGE_ICON, ImageList.Width, ImageList.Height, LR_DEFAULTCOLOR);
      ImageList.AddIcon(Ico);
    finally
      Ico.Free;
    end;
  end;
end;

end.

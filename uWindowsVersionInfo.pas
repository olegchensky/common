unit uWindowsVersionInfo;

interface

uses
  Windows, SysUtils, Classes;

// Version Information
type
  TWindowsVersion =
   (wvUnknown, wvWin95, wvWin95OSR2, wvWin98, wvWin98SE, wvWinME,
    wvWinNT31, wvWinNT35, wvWinNT351, wvWinNT4, wvWin2000, wvWinXP,
    wvWin2003, wvWinXP64, wvWin2003R2, wvWinVista, wvWinServer2008,
    wvWin7, wvWinServer2008R2, wvWin8, wvWinServer2012);
  TWindowsEdition =
   (weUnknown, weWinXPHome, weWinXPPro, weWinXPHomeN, weWinXPProN, weWinXPHomeK,
    weWinXPProK, weWinXPHomeKN, weWinXPProKN, weWinXPStarter, weWinXPMediaCenter,
    weWinXPTablet, weWinVistaStarter, weWinVistaHomeBasic, weWinVistaHomeBasicN,
    weWinVistaHomePremium, weWinVistaBusiness, weWinVistaBusinessN,
    weWinVistaEnterprise, weWinVistaUltimate, weWin7Starter, weWin7HomeBasic,
    weWin7HomePremium, weWin7Professional, weWin7Enterprise, weWin7Ultimate,
    weWin8, weWin8Pro, weWin8Enterprise, weWin8RT);
  TNtProductType =
   (ptUnknown, ptWorkStation, ptServer, ptAdvancedServer,
    ptPersonal, ptProfessional, ptDatacenterServer, ptEnterprise, ptWebEdition);
  TProcessorArchitecture =
   (paUnknown, // unknown processor
    pax8632,   // x86 32 bit processors (some P4, Celeron, Athlon and older)
    pax8664,   // x86 64 bit processors (latest P4, Celeron and Athlon64)
    paIA64);   // Itanium processors

var
  { in case of additions, don't forget to update initialization section! }
  IsWin95: Boolean = False;
  IsWin95OSR2: Boolean = False;
  IsWin98: Boolean = False;
  IsWin98SE: Boolean = False;
  IsWinME: Boolean = False;
  IsWinNT: Boolean = False;
  IsWinNT3: Boolean = False;
  IsWinNT31: Boolean = False;
  IsWinNT35: Boolean = False;
  IsWinNT351: Boolean = False;
  IsWinNT4: Boolean = False;
  IsWin2K: Boolean = False;
  IsWinXP: Boolean = False;
  IsWin2003: Boolean = False;
  IsWinXP64: Boolean = False;
  IsWin2003R2: Boolean = False;
  IsWinVista: Boolean = False;
  IsWinServer2008: Boolean = False;
  IsWin7: Boolean = False;
  IsWinServer2008R2: Boolean = False;
  IsWin8: Boolean = False;
  IsWinServer2012: Boolean = False;

const
  PROCESSOR_ARCHITECTURE_INTEL = 0;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_INTEL}
  PROCESSOR_ARCHITECTURE_AMD64 = 9;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_AMD64}
  PROCESSOR_ARCHITECTURE_IA32_ON_WIN64 = 10;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_IA32_ON_WIN64}
  PROCESSOR_ARCHITECTURE_IA64 = 6;
  {$EXTERNALSYM PROCESSOR_ARCHITECTURE_IA64}

function GetWindowsVersion: TWindowsVersion;
function GetWindowsEdition: TWindowsEdition;
function NtProductType: TNtProductType;
function GetWindowsServicePackVersion: Integer;
function GetProcessorArchitecture: TProcessorArchitecture;
function IsWindows64: Boolean;

implementation

uses
  uRegLite;

var
  KernelVersionHi: DWORD;

function GetWindowsVersion: TWindowsVersion;
var
  TrimmedWin32CSDVersion: string;
  SystemInfo: TSystemInfo;
  OSVersionInfoEx: TOSVersionInfoEx;
const
  SM_SERVERR2 = 89;
begin
  Result := wvUnknown;
  TrimmedWin32CSDVersion := Trim(Win32CSDVersion);
  case Win32Platform of
    VER_PLATFORM_WIN32_WINDOWS:
      case Win32MinorVersion of
        0..9:
          if (TrimmedWin32CSDVersion = 'B') or (TrimmedWin32CSDVersion = 'C') then
            Result := wvWin95OSR2
          else
            Result := wvWin95;
        10..89:
          // On Windows ME Win32MinorVersion can be 10 (indicating Windows 98
          // under certain circumstances (image name is setup.exe). Checking
          // the kernel version is one way of working around that.
          if KernelVersionHi = $0004005A then // 4.90.x.x
            Result := wvWinME
          else
          if (TrimmedWin32CSDVersion = 'A') or (TrimmedWin32CSDVersion = 'B') then
            Result := wvWin98SE
          else
            Result := wvWin98;
        90:
          Result := wvWinME;
      end;
    VER_PLATFORM_WIN32_NT:
      case Win32MajorVersion of
        3:
          case Win32MinorVersion of
            1:
              Result := wvWinNT31;
            5:
              Result := wvWinNT35;
            51:
              Result := wvWinNT351;
          end;
        4:
          Result := wvWinNT4;
        5:
          case Win32MinorVersion of
            0:
              Result := wvWin2000;
            1:
              Result := wvWinXP;
            2:
              begin
                OSVersionInfoEx.dwOSVersionInfoSize := SizeOf(OSVersionInfoEx);
                SystemInfo.dwOemId := 0;
                GetNativeSystemInfo(SystemInfo);
                if GetSystemMetrics(SM_SERVERR2) <> 0 then
                  Result := wvWin2003R2
                else
                if (SystemInfo.wProcessorArchitecture <> PROCESSOR_ARCHITECTURE_INTEL) and
                  GetVersionEx(OSVersionInfoEx) and (OSVersionInfoEx.wProductType = VER_NT_WORKSTATION) then
                  Result := wvWinXP64
                else
                  Result := wvWin2003;
              end;
          end;
        6:
          case Win32MinorVersion of
            0:
              begin
                OSVersionInfoEx.dwOSVersionInfoSize := SizeOf(OSVersionInfoEx);
                if GetVersionEx(OSVersionInfoEx) and (OSVersionInfoEx.wProductType = VER_NT_WORKSTATION) then
                  Result := wvWinVista
                else
                  Result := wvWinServer2008;
              end;
            1:
              begin
                OSVersionInfoEx.dwOSVersionInfoSize := SizeOf(OSVersionInfoEx);
                if GetVersionEx(OSVersionInfoEx) and (OSVersionInfoEx.wProductType = VER_NT_WORKSTATION) then
                  Result := wvWin7
                else
                  Result := wvWinServer2008R2;
              end;
            2:
              begin
                OSVersionInfoEx.dwOSVersionInfoSize := SizeOf(OSVersionInfoEx);
                if GetVersionEx(OSVersionInfoEx) and (OSVersionInfoEx.wProductType = VER_NT_WORKSTATION) then
                  Result := wvWin8
                else
                  Result := wvWinServer2012;
              end;
          end;
      end;
  end;
end;

function GetWindowsEdition: TWindowsEdition;
const
  ProductName = 'SOFTWARE\Microsoft\Windows NT\CurrentVersion';
var
  Edition: string;
begin
  Result := weUnknown;
  Edition := RegGetString(HKEY_LOCAL_MACHINE, ProductName, 'ProductName', '');

  // remove (tm) in 'Windows (TM) Vista Ultimate'
  Edition := StringReplace(Edition, '(TM) ', '', [rfReplaceAll, rfIgnoreCase]);

  if (pos('Windows XP', Edition) = 1) then
  begin
   // Windows XP Editions
   if (pos('Home Edition N', Edition) > 0) then
      Result :=  weWinXPHomeN
   else
   if (pos('Professional N', Edition) > 0) then
      Result :=  weWinXPProN
   else
   if (pos('Home Edition K', Edition) > 0) then
      Result :=  weWinXPHomeK
   else
   if (pos('Professional K', Edition) > 0) then
      Result :=  weWinXPProK
   else
   if (pos('Home Edition KN', Edition) > 0) then
      Result :=  weWinXPHomeKN
   else
   if (pos('Professional KN', Edition) > 0) then
      Result :=  weWinXPProKN
   else
   if (pos('Home', Edition) > 0) then
      Result :=  weWinXPHome
   else
   if (pos('Professional', Edition) > 0) then
      Result :=  weWinXPPro
   else
   if (pos('Starter', Edition) > 0) then
      Result :=  weWinXPStarter
   else
   if (pos('Media Center', Edition) > 0) then
      Result :=  weWinXPMediaCenter
   else
   if (pos('Tablet', Edition) > 0) then
      Result :=  weWinXPTablet;
  end
  else
  if (pos('Windows Vista', Edition) = 1) then
  begin
   // Windows Vista Editions
   if (pos('Starter', Edition) > 0) then
      Result := weWinVistaStarter
   else
   if (pos('Home Basic N', Edition) > 0) then
      Result := weWinVistaHomeBasicN
   else
   if (pos('Home Basic', Edition) > 0) then
      Result := weWinVistaHomeBasic
   else
   if (pos('Home Premium', Edition) > 0) then
      Result := weWinVistaHomePremium
   else
   if (pos('Business N', Edition) > 0) then
      Result := weWinVistaBusinessN
   else
   if (pos('Business', Edition) > 0) then
      Result := weWinVistaBusiness
   else
   if (pos('Enterprise', Edition) > 0) then
      Result := weWinVistaEnterprise
   else
   if (pos('Ultimate', Edition) > 0) then
      Result := weWinVistaUltimate;
  end
  else
  if (pos('Windows 7', Edition) = 1) then
  begin
   // Windows 7 Editions
   if (pos('Starter', Edition) > 0) then
      Result := weWin7Starter
   else
   if (pos('Home Basic', Edition) > 0) then
      Result := weWin7HomeBasic
   else
   if (pos('Home Premium', Edition) > 0) then
      Result := weWin7HomePremium
   else
   if (pos('Professional', Edition) > 0) then
      Result := weWin7Professional
   else
   if (pos('Enterprise', Edition) > 0) then
      Result := weWin7Enterprise
   else
   if (pos('Ultimate', Edition) > 0) then
      Result := weWin7Ultimate;
  end
  else
  if (pos('Windows 8', Edition) = 1) then
  begin
   // Windows 8 Editions
   if (pos('Pro', Edition) > 0) then
      Result := weWin8Pro
   else
   if (pos('Enterprise', Edition) > 0) then
      Result := weWin8Enterprise
   else
      Result := weWin8;
  end
  else
  if (pos('Windows RT', Edition) = 1) then
    Result := weWin8RT;
end;

function NtProductType: TNtProductType;
const
  ProductType = 'SYSTEM\CurrentControlSet\Control\ProductOptions';
var
  Product: string;
  OSVersionInfo: TOSVersionInfoEx;
  SystemInfo: TSystemInfo;
begin
  Result := ptUnknown;
  FillChar(OSVersionInfo, SizeOf(OSVersionInfo), 0);
  FillChar(SystemInfo, SizeOf(SystemInfo), 0);
  OSVersionInfo.dwOSVersionInfoSize := SizeOf(OSVersionInfo);
  GetNativeSystemInfo(SystemInfo);

  // Favor documented API over registry
  if IsWinNT4 and (GetWindowsServicePackVersion >= 6) then
  begin
    if GetVersionEx(OSVersionInfo) then
    begin
      if (OSVersionInfo.wProductType = VER_NT_WORKSTATION) then
        Result := ptWorkstation
      else
      if (OSVersionInfo.wSuiteMask and VER_SUITE_ENTERPRISE) = VER_SUITE_ENTERPRISE then
        Result := ptEnterprise
      else
        Result := ptServer;
    end;
  end
  else
  if IsWin2K then
  begin
    if GetVersionEx(OSVersionInfo) then
    begin
      if OSVersionInfo.wProductType  in [VER_NT_SERVER,VER_NT_DOMAIN_CONTROLLER] then
      begin
        if (OSVersionInfo.wSuiteMask and VER_SUITE_DATACENTER) <> 0 then
          Result := ptDatacenterServer
        else
        if (OSVersionInfo.wSuiteMask and VER_SUITE_ENTERPRISE) <> 0 then
          Result := ptAdvancedServer
        else
          Result := ptServer;
      end
      else
        Result := ptProfessional;
    end;
  end
  else
  if IsWinXP64 or IsWin2003 or IsWin2003R2 then // all (5.2)
  begin
    if GetVersionEx(OSVersionInfo) then
    begin
      if OSVersionInfo.wProductType in [VER_NT_SERVER,VER_NT_DOMAIN_CONTROLLER] then
      begin
        if (OSVersionInfo.wSuiteMask and VER_SUITE_DATACENTER) = VER_SUITE_DATACENTER then
          Result := ptDatacenterServer
        else
        if (OSVersionInfo.wSuiteMask and VER_SUITE_ENTERPRISE) = VER_SUITE_ENTERPRISE then
          Result := ptEnterprise
        else
        if (OSVersionInfo.wSuiteMask = VER_SUITE_BLADE) then
          Result := ptWebEdition
        else
          Result := ptServer;
      end
      else
      if (OSVersionInfo.wProductType = VER_NT_WORKSTATION) then
        Result := ptProfessional;
    end;
  end
  else
  if IsWinXP or IsWinVista or IsWin7 or IsWin8 then // workstation
  begin
    if GetVersionEx(OSVersionInfo) then
    begin
      if OSVersionInfo.wProductType = VER_NT_WORKSTATION then
      begin
        if (OSVersionInfo.wSuiteMask and VER_SUITE_PERSONAL) = VER_SUITE_PERSONAL then
          Result := ptPersonal
        else
          Result := ptProfessional;
      end;
    end;
  end
  else
  if IsWinServer2008 or IsWinServer2008R2 or IsWinServer2012 then // server
  begin
    if OSVersionInfo.wProductType in [VER_NT_SERVER,VER_NT_DOMAIN_CONTROLLER] then
    begin
      if (OSVersionInfo.wSuiteMask and VER_SUITE_DATACENTER) = VER_SUITE_DATACENTER then
        Result := ptDatacenterServer
      else
      if (OSVersionInfo.wSuiteMask and VER_SUITE_ENTERPRISE) = VER_SUITE_ENTERPRISE then
        Result := ptEnterprise
      else
        Result := ptServer;
    end;
  end;

  if Result = ptUnknown then
  begin
    // Non Windows 2000/XP system or the above method failed, try registry
    Product := RegGetString(HKEY_LOCAL_MACHINE, ProductType, 'ProductType', '');
    if CompareText(Product, 'WINNT') = 0 then
      Result :=  ptWorkStation
    else
    if CompareText(Product, 'SERVERNT') = 0 then
      Result := {ptServer} ptAdvancedServer
    else
    if CompareText(Product, 'LANMANNT') = 0 then
      Result := {ptAdvancedServer} ptServer
    else
      Result := ptUnknown;
  end;
end;

function GetWindowsServicePackVersion: Integer;
const
  RegWindowsControl = 'SYSTEM\CurrentControlSet\Control\Windows';
var
  SP: Integer;
  VersionInfo: TOSVersionInfoEx;
begin
  Result := 0;
  if (Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion >= 5) then
  begin
    FillChar(VersionInfo, SizeOf(VersionInfo), 0);
    VersionInfo.dwOSVersionInfoSize := SizeOf(VersionInfo);
    if GetVersionEx(VersionInfo) then
      Result := VersionInfo.wServicePackMajor;
  end
  else
  begin
    SP := RegGetDWORD(HKEY_LOCAL_MACHINE, RegWindowsControl, 'CSDVersion', 0);
    Result := StrToInt(IntToHex(SP, 4)) div 100;
  end;
end;

function GetProcessorArchitecture: TProcessorArchitecture;
var
  ASystemInfo: TSystemInfo;
begin
  ASystemInfo.dwOemId := 0;
  GetNativeSystemInfo(ASystemInfo);
  case ASystemInfo.wProcessorArchitecture of
    PROCESSOR_ARCHITECTURE_INTEL:
      Result := pax8632;
    PROCESSOR_ARCHITECTURE_IA64:
      Result := paIA64;
    PROCESSOR_ARCHITECTURE_AMD64:
      Result := pax8664;
    else
      Result := paUnknown;
  end;
end;

function IsWindows64: Boolean;
var
  ASystemInfo: TSystemInfo;
begin
  ASystemInfo.dwOemId := 0;
  GetNativeSystemInfo(ASystemInfo);
  Result := ASystemInfo.wProcessorArchitecture in [PROCESSOR_ARCHITECTURE_IA64,PROCESSOR_ARCHITECTURE_AMD64];
end;

end.

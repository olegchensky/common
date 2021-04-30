unit uRawInput;

interface

uses
  SysUtils, Windows, Messages;

type
  HRAWINPUT = THANDLE;

const
  RIM_INPUT       = 0;
  RIM_INPUTSINK   = 1;

type
  tagRAWINPUTHEADER = record
    dwType: DWORD;
    dwSize: DWORD;
    hDevice: THANDLE;
    wParam: WPARAM;
  end;
  {$EXTERNALSYM tagRAWINPUTHEADER}
  RAWINPUTHEADER = tagRAWINPUTHEADER;
  {$EXTERNALSYM RAWINPUTHEADER}
  PRAWINPUTHEADER = ^RAWINPUTHEADER;
  {$EXTERNALSYM PRAWINPUTHEADER}
  LPRAWINPUTHEADER = ^RAWINPUTHEADER;
  {$EXTERNALSYM LPRAWINPUTHEADER}
  TRawInputHeader = RAWINPUTHEADER;
 
const
  RIM_TYPEMOUSE      = 0;
  RIM_TYPEKEYBOARD   = 1;
  RIM_TYPEHID        = 2;

type
  tagRAWMOUSE = record
    usFlags: WORD;
    union: record
    case Integer of
      0: (
        ulButtons: ULONG);
      1: (
        usButtonFlags: WORD;
        usButtonData: WORD);
    end;
    ulRawButtons: ULONG;
    lLastX: LongInt;
    lLastY: LongInt;
    ulExtraInformation: ULONG;
  end;
  {$EXTERNALSYM tagRAWMOUSE}
  RAWMOUSE = tagRAWMOUSE;
  {$EXTERNALSYM RAWMOUSE}
  PRAWMOUSE = ^RAWMOUSE;
  {$EXTERNALSYM PRAWMOUSE}
  LPRAWMOUSE = ^RAWMOUSE;
  {$EXTERNALSYM LPRAWMOUSE}
  TRawMouse = RAWMOUSE;
 
const
  RI_MOUSE_LEFT_BUTTON_DOWN   = $0001; // Left Button changed to down.
  {$EXTERNALSYM RI_MOUSE_LEFT_BUTTON_DOWN}
  RI_MOUSE_LEFT_BUTTON_UP     = $0002; // Left Button changed to up.
  {$EXTERNALSYM RI_MOUSE_LEFT_BUTTON_UP}
  RI_MOUSE_RIGHT_BUTTON_DOWN  = $0004; // Right Button changed to down.
  {$EXTERNALSYM RI_MOUSE_RIGHT_BUTTON_DOWN}
  RI_MOUSE_RIGHT_BUTTON_UP    = $0008; // Right Button changed to up.
  {$EXTERNALSYM RI_MOUSE_RIGHT_BUTTON_UP}
  RI_MOUSE_MIDDLE_BUTTON_DOWN = $0010; // Middle Button changed to down.
  {$EXTERNALSYM RI_MOUSE_MIDDLE_BUTTON_DOWN}
  RI_MOUSE_MIDDLE_BUTTON_UP   = $0020; // Middle Button changed to up.
  {$EXTERNALSYM RI_MOUSE_MIDDLE_BUTTON_UP}
 
  RI_MOUSE_BUTTON_1_DOWN = RI_MOUSE_LEFT_BUTTON_DOWN;
  {$EXTERNALSYM RI_MOUSE_BUTTON_1_DOWN}
  RI_MOUSE_BUTTON_1_UP   = RI_MOUSE_LEFT_BUTTON_UP;
  {$EXTERNALSYM RI_MOUSE_BUTTON_1_UP}
  RI_MOUSE_BUTTON_2_DOWN = RI_MOUSE_RIGHT_BUTTON_DOWN;
  {$EXTERNALSYM RI_MOUSE_BUTTON_2_DOWN}
  RI_MOUSE_BUTTON_2_UP   = RI_MOUSE_RIGHT_BUTTON_UP;
  {$EXTERNALSYM RI_MOUSE_BUTTON_2_UP}
  RI_MOUSE_BUTTON_3_DOWN = RI_MOUSE_MIDDLE_BUTTON_DOWN;
  {$EXTERNALSYM RI_MOUSE_BUTTON_3_DOWN}
  RI_MOUSE_BUTTON_3_UP   = RI_MOUSE_MIDDLE_BUTTON_UP;
  {$EXTERNALSYM RI_MOUSE_BUTTON_3_UP}
 
  RI_MOUSE_BUTTON_4_DOWN = $0040;
  {$EXTERNALSYM RI_MOUSE_BUTTON_4_DOWN}
  RI_MOUSE_BUTTON_4_UP   = $0080;
  {$EXTERNALSYM RI_MOUSE_BUTTON_4_UP}
  RI_MOUSE_BUTTON_5_DOWN = $0100;
  {$EXTERNALSYM RI_MOUSE_BUTTON_5_DOWN}
  RI_MOUSE_BUTTON_5_UP   = $0200;
  {$EXTERNALSYM RI_MOUSE_BUTTON_5_UP}
 
  RI_MOUSE_WHEEL = $0400;
  {$EXTERNALSYM RI_MOUSE_WHEEL}
 
  MOUSE_MOVE_RELATIVE      = 0;
  {$EXTERNALSYM MOUSE_MOVE_RELATIVE}
  MOUSE_MOVE_ABSOLUTE      = 1;
  {$EXTERNALSYM MOUSE_MOVE_ABSOLUTE}
  MOUSE_VIRTUAL_DESKTOP    = $02; // the coordinates are mapped to the virtual desktop
  {$EXTERNALSYM MOUSE_VIRTUAL_DESKTOP}
  MOUSE_ATTRIBUTES_CHANGED = $04; // requery for mouse attributes
  {$EXTERNALSYM MOUSE_ATTRIBUTES_CHANGED}

type
  tagRAWKEYBOARD = record
    MakeCode: WORD;
    Flags: WORD;
    Reserved: WORD;
    VKey: WORD;
    Message: UINT;
    ExtraInformation: ULONG;
  end;
  {$EXTERNALSYM tagRAWKEYBOARD}
  RAWKEYBOARD = tagRAWKEYBOARD;
  {$EXTERNALSYM RAWKEYBOARD}
  PRAWKEYBOARD = ^RAWKEYBOARD;
  {$EXTERNALSYM PRAWKEYBOARD}
  LPRAWKEYBOARD = ^RAWKEYBOARD;
  {$EXTERNALSYM LPRAWKEYBOARD}
  TRawKeyBoard = RAWKEYBOARD;
 
const
  KEYBOARD_OVERRUN_MAKE_CODE = $FF;
  {$EXTERNALSYM KEYBOARD_OVERRUN_MAKE_CODE}
 
  RI_KEY_MAKE            = 0;
  {$EXTERNALSYM RI_KEY_MAKE}
  RI_KEY_BREAK           = 1;
  {$EXTERNALSYM RI_KEY_BREAK}
  RI_KEY_E0              = 2;
  {$EXTERNALSYM RI_KEY_E0}
  RI_KEY_E1              = 4;
  {$EXTERNALSYM RI_KEY_E1}
  RI_KEY_TERMSRV_SET_LED = 8;
  {$EXTERNALSYM RI_KEY_TERMSRV_SET_LED}
  RI_KEY_TERMSRV_SHADOW  = $10;
  {$EXTERNALSYM RI_KEY_TERMSRV_SHADOW}
 
type
  tagRAWHID = record
    dwSizeHid: DWORD;    // byte size of each report
    dwCount: DWORD;      // number of input packed
    bRawData: array [0..0] of BYTE;
  end;
  {$EXTERNALSYM tagRAWHID}
  RAWHID = tagRAWHID;
  {$EXTERNALSYM RAWHID}
  PRAWHID = ^RAWHID;
  {$EXTERNALSYM PRAWHID}
  LPRAWHID = ^RAWHID;
  {$EXTERNALSYM LPRAWHID}
  TRawHid = RAWHID;
 
  tagRAWINPUT = record
    header: RAWINPUTHEADER;
    case Integer of
      0: (mouse: RAWMOUSE);
      1: (keyboard: RAWKEYBOARD);
      2: (hid: RAWHID);
  end;
  {$EXTERNALSYM tagRAWINPUT}
  RAWINPUT = tagRAWINPUT;
  {$EXTERNALSYM RAWINPUT}
  PRAWINPUT = ^RAWINPUT;
  {$EXTERNALSYM PRAWINPUT}
  LPRAWINPUT = ^RAWINPUT;
  {$EXTERNALSYM LPRAWINPUT}
  TRawInput = RAWINPUT;

const
  RID_INPUT  = $10000003;
  {$EXTERNALSYM RID_INPUT}
  RID_HEADER = $10000005;
  {$EXTERNALSYM RID_HEADER}

  RIDI_PREPARSEDDATA = $20000005;
  {$EXTERNALSYM RIDI_PREPARSEDDATA}
  RIDI_DEVICENAME    = $20000007; // the return valus is the character length, not the byte size
  {$EXTERNALSYM RIDI_DEVICENAME}
  RIDI_DEVICEINFO    = $2000000b;
  {$EXTERNALSYM RIDI_DEVICEINFO}
 
type
  PRID_DEVICE_INFO_MOUSE = ^RID_DEVICE_INFO_MOUSE;
  {$EXTERNALSYM PRID_DEVICE_INFO_MOUSE}
  tagRID_DEVICE_INFO_MOUSE = record
    dwId: DWORD;
    dwNumberOfButtons: DWORD;
    dwSampleRate: DWORD;
  end;
  {$EXTERNALSYM tagRID_DEVICE_INFO_MOUSE}
  RID_DEVICE_INFO_MOUSE = tagRID_DEVICE_INFO_MOUSE;
  {$EXTERNALSYM RID_DEVICE_INFO_MOUSE}
  TRidDeviceInfoMouse = RID_DEVICE_INFO_MOUSE;
  PRidDeviceInfoMouse = PRID_DEVICE_INFO_MOUSE;
 
  PRID_DEVICE_INFO_KEYBOARD = ^RID_DEVICE_INFO_KEYBOARD;
  {$EXTERNALSYM PRID_DEVICE_INFO_KEYBOARD}
  tagRID_DEVICE_INFO_KEYBOARD = record
    dwType: DWORD;
    dwSubType: DWORD;
    dwKeyboardMode: DWORD;
    dwNumberOfFunctionKeys: DWORD;
    dwNumberOfIndicators: DWORD;
    dwNumberOfKeysTotal: DWORD;
  end;
  {$EXTERNALSYM tagRID_DEVICE_INFO_KEYBOARD}
  RID_DEVICE_INFO_KEYBOARD = tagRID_DEVICE_INFO_KEYBOARD;
  {$EXTERNALSYM RID_DEVICE_INFO_KEYBOARD}
  TRidDeviceInfoKeyboard = RID_DEVICE_INFO_KEYBOARD;
  PRidDeviceInfoKeyboard = PRID_DEVICE_INFO_KEYBOARD;
 
  PRID_DEVICE_INFO_HID = ^RID_DEVICE_INFO_HID;
  {$EXTERNALSYM PRID_DEVICE_INFO_HID}
  tagRID_DEVICE_INFO_HID = record
    dwVendorId: DWORD;
    dwProductId: DWORD;
    dwVersionNumber: DWORD;
    usUsagePage: WORD;
    usUsage: WORD;
  end;
  {$EXTERNALSYM tagRID_DEVICE_INFO_HID}
  RID_DEVICE_INFO_HID = tagRID_DEVICE_INFO_HID;
  {$EXTERNALSYM RID_DEVICE_INFO_HID}
  TRidDeviceInfoHid = RID_DEVICE_INFO_HID;
  PRidDeviceInfoHid = PRID_DEVICE_INFO_HID;
 
  tagRID_DEVICE_INFO = record
    cbSize: DWORD;
    dwType: DWORD;
    case Integer of
    0: (mouse: RID_DEVICE_INFO_MOUSE);
    1: (keyboard: RID_DEVICE_INFO_KEYBOARD);
    2: (hid: RID_DEVICE_INFO_HID);
  end;
  {$EXTERNALSYM tagRID_DEVICE_INFO}
  RID_DEVICE_INFO = tagRID_DEVICE_INFO;
  {$EXTERNALSYM RID_DEVICE_INFO}
  PRID_DEVICE_INFO = ^RID_DEVICE_INFO;
  {$EXTERNALSYM PRID_DEVICE_INFO}
  LPRID_DEVICE_INFO = ^RID_DEVICE_INFO;
  {$EXTERNALSYM LPRID_DEVICE_INFO}
  TRidDeviceInfo = RID_DEVICE_INFO;
  PRidDeviceInfo = PRID_DEVICE_INFO;

  TGetRawInputDeviceInfo = function (hDevice: THANDLE; uiCommand: UINT; pData: POINTER;
    var pcbSize: UINT): UINT; stdcall;

  TGetRawInputBuffer = function (pData: PRAWINPUT; var pcbSize: UINT;
    cbSizeHeader: UINT): UINT; stdcall;

  TGetRawInputData = function (hRawInput: HRAWINPUT; uiCommand: UINT; pData: POINTER;
    var pcbSize: UINT; cbSizeHeader: UINT): UINT; stdcall;

  LPRAWINPUTDEVICE = ^RAWINPUTDEVICE;
  {$EXTERNALSYM LPRAWINPUTDEVICE}
  PRAWINPUTDEVICE = ^RAWINPUTDEVICE;
  {$EXTERNALSYM PRAWINPUTDEVICE}
  tagRAWINPUTDEVICE = record
    usUsagePage: WORD; // Toplevel collection UsagePage
    usUsage: WORD;     // Toplevel collection Usage
    dwFlags: DWORD;
    hwndTarget: HWND;    // Target hwnd. NULL = follows keyboard focus
  end;
  {$EXTERNALSYM tagRAWINPUTDEVICE}
  RAWINPUTDEVICE = tagRAWINPUTDEVICE;
  {$EXTERNALSYM RAWINPUTDEVICE}
  TRawInputDevice = RAWINPUTDEVICE;
 
const
  RIDEV_REMOVE       = $00000001;
  {$EXTERNALSYM RIDEV_REMOVE}
  RIDEV_EXCLUDE      = $00000010;
  {$EXTERNALSYM RIDEV_EXCLUDE}
  RIDEV_PAGEONLY     = $00000020;
  {$EXTERNALSYM RIDEV_PAGEONLY}
  RIDEV_NOLEGACY     = $00000030;
  {$EXTERNALSYM RIDEV_NOLEGACY}
  RIDEV_INPUTSINK    = $00000100;
  {$EXTERNALSYM RIDEV_INPUTSINK}
  RIDEV_CAPTUREMOUSE = $00000200; // effective when mouse nolegacy is specified, otherwise it would be an error
  {$EXTERNALSYM RIDEV_CAPTUREMOUSE}
  RIDEV_NOHOTKEYS    = $00000200; // effective for keyboard.
  {$EXTERNALSYM RIDEV_NOHOTKEYS}
  RIDEV_APPKEYS      = $00000400;  // effective for keyboard.
  {$EXTERNALSYM RIDEV_APPKEYS}
  RIDEV_EXMODEMASK   = $000000F0;
  {$EXTERNALSYM RIDEV_EXMODEMASK}

type
  PRAWINPUTDEVICELIST = ^RAWINPUTDEVICELIST;
  {$EXTERNALSYM PRAWINPUTDEVICELIST}
  tagRAWINPUTDEVICELIST = record
    hDevice: THANDLE;
    dwType: DWORD;
  end;
  {$EXTERNALSYM tagRAWINPUTDEVICELIST}
  RAWINPUTDEVICELIST = tagRAWINPUTDEVICELIST;
  {$EXTERNALSYM RAWINPUTDEVICELIST}
  TRawInputDeviceList = RAWINPUTDEVICELIST;

  TGetRawInputDeviceList = function (pRawInputDeviceList: PRAWINPUTDEVICELIST; var puiNumDevices: UINT; cbSize: UINT): UINT; stdcall;
  TRegisterRawInputDevices = function (pRawInputDevices: PRAWINPUTDEVICE; uiNumDevices: UINT; cbSize: UINT): BOOL; stdcall;
  TGetRegisteredRawInputDevices = function (pRawInputDevices: PRAWINPUTDEVICE; var puiNumDevices: UINT; cbSize: UINT): UINT; stdcall;

const
  HID_USAGE_PAGE_GENERIC = $00000001;

  HID_USAGE_GENERIC_MOUSE = $00000002;
  HID_USAGE_GENERIC_KEYBOARD = $00000006;

var
  GetRawInputDeviceInfo: TGetRawInputDeviceInfo = nil;
  GetRawInputBuffer: TGetRawInputBuffer = nil;
  GetRawInputData: TGetRawInputData = nil;
  GetRawInputDeviceList: TGetRawInputDeviceList = nil;
  RegisterRawInputDevices: TRegisterRawInputDevices = nil;
  GetRegisteredRawInputDevices: TGetRegisteredRawInputDevices = nil;

function RegisterRawInput(InputWnd: HWND): Boolean;

implementation

var
  User32DllHandle: THandle = 0;
  User32NeedFree: Boolean = False;

function RegisterRawInput(InputWnd: HWND): Boolean;
 const
   DEVICE_COUNT = 2;
//   DEVICE_COUNT = 1;
 var
   Device: array[0..DEVICE_COUNT - 1] of RAWINPUTDEVICE;
begin
  Device[0].usUsagePage := HID_USAGE_PAGE_GENERIC;
  Device[0].usUsage := HID_USAGE_GENERIC_KEYBOARD;
  Device[0].dwFlags := RIDEV_INPUTSINK;
  Device[0].hwndTarget := InputWnd;

  Device[1] := Device[0];
  Device[1].usUsage := HID_USAGE_GENERIC_MOUSE;

  Result := RegisterRawInputDevices(@Device, DEVICE_COUNT, SizeOf(RAWINPUTDEVICE));
end;

procedure GetRawInputAPIs;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then begin
    User32DllHandle := GetModuleHandle('User32.DLL');
    if User32DllHandle = 0 then begin
      User32DllHandle := LoadLibrary('User32.DLL');
      User32NeedFree := User32DllHandle <> 0;
    end;
    if User32DllHandle <> 0 then begin
      @GetRawInputDeviceInfo := GetProcAddress(User32DllHandle, 'GetRawInputDeviceInfoW');
      @GetRawInputBuffer := GetProcAddress(User32DllHandle, 'GetRawInputBuffer');
      @GetRawInputData := GetProcAddress(User32DllHandle, 'GetRawInputData');
      @GetRawInputDeviceList := GetProcAddress(User32DllHandle, 'GetRawInputDeviceList');
      @RegisterRawInputDevices := GetProcAddress(User32DllHandle, 'RegisterRawInputDevices');
      @GetRegisteredRawInputDevices := GetProcAddress(User32DllHandle, 'GetRegisteredRawInputDevices');
    end;
  end;
end;

procedure FreeRawInputAPIs;
begin
  if User32NeedFree and (User32DllHandle <> 0) then begin
    FreeLibrary(User32DllHandle);
    User32DllHandle := 0;
  end;
end;

initialization

  GetRawInputAPIs;

finalization

  FreeRawInputAPIs;

end.

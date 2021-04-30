unit uCameras;

interface

uses
  Windows, Messages, SysUtils, vfw,
  VideoCap;

const
  AVICAPDLL = 'AVICAP32.DLL';

  WM_CAP_START = WM_USER;
  WM_CAP_STOP = WM_CAP_START + 68;
  WM_CAP_DRIVER_CONNECT = WM_CAP_START + 10;
  WM_CAP_DRIVER_DISCONNECT = WM_CAP_START + 11;
  WM_CAP_SAVEDIB = WM_CAP_START + 25;
  WM_CAP_GRAB_FRAME = WM_CAP_START + 60;
  WM_CAP_SEQUENCE = WM_CAP_START + 62;
  WM_CAP_FILE_SET_CAPTURE_FILEA = WM_CAP_START + 20;


  WM_CAP_START = WM_USER;
  WM_CAP_SET_CALLBACK_FRAME = WM_CAP_START + 5;
  WM_CAP_DRIVER_CONNECT = WM_CAP_START + 10;
  WM_CAP_DRIVER_DISCONNECT = WM_CAP_START + 11;
  WM_CAP_DLG_VIDEOFORMAT = WM_CAP_START + 41;
  WM_CAP_GET_VIDEOFORMAT = WM_CAP_START + 44;
  WM_CAP_SET_VIDEOFORMAT = WM_CAP_START + 45;
  WM_CAP_GET_STATUS = WM_CAP_START + 54;
  WM_CAP_GRAB_FRAME = WM_CAP_START + 60;
  WM_CAP_STOP = WM_CAP_START + 68;
  WM_CAP_SET_PREVIEW = WM_CAP_START + 50;
  WM_CAP_SET_PREVIEWRATE = WM_CAP_START + 52;
  WM_CAP_SET_SCALE = WM_CAP_START + 53;
  WM_CAP_EDIT_COPY = WM_CAP_START + 30;
  WM_CAP_SET_CALLBACK_YIELD = WM_CAP_START + 4;
  WM_CAP_SET_CALLBACK_VIDEOSTREAM = WM_CAP_START + 6;
  WM_CAP_DLG_VIDEODISPLAY = WM_CAP_START + 43;

function capCreateCaptureWindow(lpszWindowName: PChar; dwStyle: Longint; x, y, nWidth, nHeight: Integer; ParentWin : HWND; nId: Integer): HWND; stdcall;

implementation

function capCreateCaptureWindow(lpszWindowName: PChar; dwStyle: Longint; x, y, nWidth, nHeight: Integer; ParentWin : HWND; nId: Integer): HWND; stdcall; external AVICAPDLL name 'capCreateCaptureWindowW';


    SendMessage(h_cam, WM_CAP_SET_SCALE, 1, 0);
    SendMessage(h_cam, WM_CAP_SET_PREVIEWRATE, 40, 0);
    SendMessage(h_cam, WM_CAP_SET_PREVIEW, 1, 0);
    SendMessage(h_cam, WM_CAP_SET_CALLBACK_FRAME, 0, Integer(@FrameCallback));

end.

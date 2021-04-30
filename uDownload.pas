unit uDownload;

interface

uses
  Windows, Messages, SysUtils, Classes, StdCtrls, Controls, Graphics, Forms, uForm,
  ComCtrls, ExtCtrls, uCommonTools, ICSLanguages, ICSFrame;

type
  TDownloadThread = class(TThread)
  private
    FURL: String;
    FResultFileName: String;
    FWnd: HWND;
    FResult: Boolean;
    FBusy: Boolean;
  protected
    procedure Execute; override;
  public
    constructor Create(URL, RFN: String; Wnd: HWND);
    property ResultFileName: String read FResultFileName;
    property Result: Boolean read FResult;
    property Busy: Boolean read FBusy;
  end;

  TfrmDownload = class(TfrmForm)
    ProgressBar1: TProgressBar;
    btnCancel: TButton;
    Image1: TImage;
    LabelKB: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    FURL: String;
    FResultFileName: String;
    FDownloadResult: Boolean;
    FDownloadThread: TDownloadThread;
    FMaxDownloadBytes: Int64;
    FUpdateKB: WideString;
  protected
    procedure OnDownloadMsg(var Msg: TMessage); message PROG_MESSAGE_PROGRESS;
  public
    procedure CreateParams(var Params: TCreateParams); override;
  public
    property URL: String read FURL write FURL;
    property ResultFileName: String read FResultFileName write FResultFileName;
    property DownloadResult: Boolean read FDownloadResult;
    property DownloadThread: TDownloadThread read FDownloadThread;
  end;

var
  frmDownload: TfrmDownload;

function DownloadINetFile(URL, DestinationFile: String): Boolean;

implementation

uses
  ShellAPI, uVCLTools;

{$R *.dfm}

function DownloadINetFile(URL, DestinationFile: String): Boolean;
begin
  Application.CreateForm(TfrmDownload, frmDownload);

    frmDownload.URL := URL;
    frmDownload.ResultFileName := DestinationFile;
    Application.Run;
//    Result := (DF.ShowModal = mrOk) and icsFileExistsEx(DestinationFile);
    Result := icsFileExistsEx(DestinationFile);
    if not Result then DeleteFile(DestinationFile);

end;

{ TDownloadThread }

constructor TDownloadThread.Create(URL, RFN: String; Wnd: HWND);
begin
  FURL := URL;
  FResultFileName := RFN;
  FWnd := Wnd;
  FResult := False;
  inherited Create(False);
  FreeOnTerminate := True;
end;

procedure TDownloadThread.Execute;
begin
  FBusy := True;
  FResult := icsGetINetFileEx(FURL, FResultFileName, FWnd);
  FBusy := False;
end;

{ TfrmDownload }

procedure TfrmDownload.btnCancelClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfrmDownload.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmDownload.OnDownloadMsg(var Msg: TMessage);
 var VirtualPosition: Int64;
begin
  case TProgMessageProgressAction(Msg.WParam) of
    paInit: begin
      ProgressBar1.Position := 0;
      FMaxDownloadBytes := Msg.LParam;
      FUpdateKB := icsGetReplacedString(ICSLanguagesBase.CurrentStrings[3], '#', Trim(Format('%9.2f', [FMaxDownloadBytes / (1024 * 1024)])));
    end;
    paUpdate: begin
      VirtualPosition := Int64(Msg.LParam);
      ProgressBar1.Position := VirtualPosition * 100 div FMaxDownloadBytes;
      Caption := Application.Title + ' - ' + IntToStr(ProgressBar1.Position) + '%';
      LabelKB.Caption := Trim(Format('%9.2f', [VirtualPosition / (1024 * 1024)])) + ' ' + FUpdateKB;
    end;
    paOk, paFail: begin
      if FDownloadResult then ProgressBar1.Position := ProgressBar1.Max;
      FDownloadThread := nil;
      if TProgMessageProgressAction(Msg.WParam) = paOk then ModalResult := mrOk else ModalResult := mrAbort;
    end;
  end;
end;

procedure TfrmDownload.FormCreate(Sender: TObject);
begin
  inherited;
  FURL := '';
  FResultFileName := '';
  FDownloadResult := False;
  FMaxDownloadBytes := 0;
  AlignToSystemTray := True;
  Caption := Application.Title;
end;

procedure TfrmDownload.FormShow(Sender: TObject);
begin
  inherited;
  FDownloadThread := TDownloadThread.Create(FURL, FResultFileName, Handle);
  PostMessage(Handle, WM_USER + 1, 0, 0);
end;

end.

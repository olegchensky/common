unit uFormBase;

interface

uses
  Windows, Messages, Classes, SysUtils, Forms;

type
  TfrmFormBase = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FAlignToSystemTray: Boolean;
    procedure OnWMSettingChange(var Msg: TWMSettingChange); message WM_SETTINGCHANGE;
    procedure OnWMDisplayChange(var Msg: TWMDisplayChange); message WM_DISPLAYCHANGE;
    procedure SetAlignToSystemTray(const Value: Boolean);
  public
    procedure CheckPosition;
    property AlignToSystemTray: Boolean read FAlignToSystemTray write SetAlignToSystemTray default False;
  end;

var
  frmFormBase: TfrmFormBase;

implementation

uses uVCLTools;

{$R *.dfm}

{ TfrmForm }

procedure TfrmFormBase.CheckPosition;
 var
   L, T: Integer;
   CurrentMonitor: TMonitor;
   P: TPoint;
begin
  L := Left; T := Top;
  if Top < Screen.DesktopTop then T := Screen.DesktopTop;
  if L  < Screen.DesktopLeft then L := Screen.DesktopLeft;
  if L + Width > Screen.DesktopWidth then L := Screen.DesktopWidth - Width;
  if T + Height > Screen.DesktopHeight then T := Screen.DesktopWidth - Height;

  P.X := L + Width div 2; P.Y := T + Height div 2;
  CurrentMonitor := Screen.MonitorFromPoint(P);

  if Top < CurrentMonitor.Top then T := CurrentMonitor.Top;
  if L  < CurrentMonitor.Left then L := CurrentMonitor.Left;
  if L + Width > CurrentMonitor.Left + CurrentMonitor.Width then L := CurrentMonitor.Left + CurrentMonitor.Width - Width;
  if T + Height > CurrentMonitor.Top + CurrentMonitor.Height then T := CurrentMonitor.Top + CurrentMonitor.Height - Height;

  SetBounds(L, T, Width, Height);
end;

procedure TfrmFormBase.FormShow(Sender: TObject);
begin
  CheckPosition;
end;

procedure TfrmFormBase.SetAlignToSystemTray(const Value: Boolean);
begin
  FAlignToSystemTray := Value;
  if FAlignToSystemTray then SetPositionToSystemTray(Self);
end;

procedure TfrmFormBase.OnWMDisplayChange(var Msg: TWMDisplayChange);
begin
  inherited;
  CheckPosition;
end;

procedure TfrmFormBase.OnWMSettingChange(var Msg: TWMSettingChange);
begin
  inherited;
  CheckPosition;
end;

procedure TfrmFormBase.FormCreate(Sender: TObject);
begin
  FAlignToSystemTray := False;
end;

end.

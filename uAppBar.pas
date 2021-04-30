unit uAppBar;

interface

uses
  System.Classes,
  System.Types,
  Vcl.Controls,
  Vcl.Forms,
  uForm,
  Winapi.Windows,
  Winapi.Messages;

const
  // AppBar's user notification message
  WM_APPBARNOTIFY = WM_USER + $100;
  SLIDE_DEF_TIMER_INTERVAL = 100;

type
  TAppBarMessage = (abmNew, abmRemove, abmQueryPos, abmSetPos, abmGetState, abmGetTaskBarPos, abmActivate,
    abmGetAutoHideBar, abmSetAutoHideBar, abmWindowPosChanged, abmSetState, abmGetAutoHideBarEx, abmSetAutoHideBarEx);
  TAppBarEdge = (abeLeft, abeTop, abeRight, abeBottom, abeUnknown, abeFloat);

  TEdgeChangeEvent = procedure(Sender: TObject; ANewEdge: TAppBarEdge; var Allow: Boolean) of object;

  TAppBar = class(TfrmForm)
  strict private
    FEdge: TAppBarEdge;
    FProposedEdge: TAppBarEdge;
    FAppbarCreated: Boolean;
    FFloatRect: TRect;

    FAppbarWidth: integer;
    FAppbarHeight: integer;

    FAutohide: Boolean;
    FDragByMouse: Boolean;

    FOnEdgeChange: TEdgeChangeEvent;

    procedure SetEdge(const Value: TAppBarEdge);
    procedure SetAutohide(const Value: Boolean);
    procedure WMHideTimer(var Msg: TMessage); message WM_TIMER;
    procedure WMActivate(var Msg: TMessage); message WM_ACTIVATE;
    procedure WMWindowPosChanged(var Msg: TMessage); message WM_WINDOWPOSCHANGED;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
    procedure WMNCMouseMove(var Msg: TWMNCMouseMove); message WM_NCMOUSEMOVE;
    procedure WMMoving(var Msg: TWMMoving); message WM_MOVING;

    procedure AppBarCallbackMsg(var Msg: TMessage); message WM_APPBARNOTIFY;
    function AppBarMessage(abMessage: TAppBarMessage; abEdge: TAppBarEdge; lp: LPARAM; var rc: TRect): UINT;

    procedure CreateAppBar;
    procedure FreeAppBar;
    procedure SetAppBarPos;
    procedure SetABNWindowsArrange(bStartArrange: Boolean);

    function GetVisibleAppbarRect(AEdge: TAppBarEdge): TRect;
    function GetHiddenAppbarRect(AEdge: TAppBarEdge): TRect;

    procedure ShowHiddenAppBar(bShow, Force: Boolean);
    procedure SlideWindow(var rcEnd: TRect);
  protected
    function DoEdgeChange(ANewEdge: TAppBarEdge): Boolean; virtual;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property AppBarEdge: TAppBarEdge read FEdge write SetEdge default abeFloat;
    property AppBarAutohide: Boolean read FAutohide write SetAutohide default False;

    property AppbarWidth: Integer read FAppbarWidth write FAppbarWidth;
    property AppbarHeight: Integer read FAppbarHeight write FAppbarHeight;

    property DragByMouse: Boolean read FDragByMouse write FDragByMouse default True;

    property OnEdgeChange: TEdgeChangeEvent read FOnEdgeChange write FOnEdgeChange;
  end;

  TfrmForm = TAppBar;

implementation

uses
  System.SysUtils,
  Winapi.ShellAPI;

const
  cAnyEdge = [abeLeft .. abeBottom];
  cLeftRightEdge = [abeLeft, abeRight];
  cTopBottomEdge = [abeTop, abeBottom];

  { TAppBar }

procedure TAppBar.AppBarCallbackMsg(var Msg: TMessage);
begin
  case Msg.WParam of
    ABN_STATECHANGE: ;
    ABN_POSCHANGED: SetAppbarPos;
    ABN_FULLSCREENAPP: ;
    ABN_WINDOWARRANGE: SetABNWindowsArrange(Msg.LPARAM <> 0);
  end;
end;

function TAppBar.AppBarMessage(abMessage: TAppBarMessage; abEdge: TAppBarEdge; lp: LPARAM; var rc: TRect): UINT;
var
  abd: TAppBarData;
begin
  abd.cbSize := sizeof(TAppBarData);
  abd.hWnd := Self.Handle;
  abd.uCallbackMessage := WM_APPBARNOTIFY;
  abd.uEdge := Ord(abEdge);
  abd.rc := rc;
  abd.LPARAM := lp;
  Result := SHAppBarMessage(Ord(abMessage), abd);

  rc := abd.rc;
end;

constructor TAppBar.Create(AOwner: TComponent);
begin
  inherited;
  FEdge := abeFloat;
  FProposedEdge := abeUnknown;
  FAppbarWidth := 120;
  FAppbarHeight := 120;
  FAutohide := False;
  FDragByMouse := True;
end;

procedure TAppBar.CreateAppbar;
var
  rc: TRect;
begin
  if (not FAppbarCreated) and (FEdge in cAnyEdge) then
  begin
    if FProposedEdge = abeUnknown then FFloatRect := BoundsRect;
    rc := TRect.Empty;
    AppBarMessage(abmNew, FEdge, 0, rc);
    FAppbarCreated := True;
    FProposedEdge := abeUnknown;
  end;
end;

destructor TAppBar.Destroy;
begin
  AppBarEdge := abeUnknown;
  inherited;
end;

function TAppBar.DoEdgeChange(ANewEdge: TAppBarEdge): Boolean;
begin
  if Assigned(FOnEdgeChange) then FOnEdgeChange(Self, ANewEdge, Result) else Result := True;
end;

procedure TAppBar.FreeAppbar;
var
  rc: TRect;
begin
  if FAppbarCreated then
  begin
    rc := TRect.Empty;
    AppBarMessage(abmRemove, abeUnknown, 0, rc);
    FAppbarCreated := False;

    if not(csDestroying in ComponentState) then BoundsRect := FFloatRect;
  end;
end;

function TAppBar.GetHiddenAppbarRect(AEdge: TAppBarEdge): TRect;
begin
  Result := Self.Monitor.BoundsRect;
  AppBarMessage(abmQueryPos, AEdge, 0, Result);
  case AEdge of
    abeLeft: Result.Width := 2 * GetSystemMetrics(SM_CXBORDER);
    abeTop: Result.Height := 2 * GetSystemMetrics(SM_CYBORDER);
    abeRight: Result.Left := Result.Right - 2 * GetSystemMetrics(SM_CXBORDER);
    abeBottom: Result.Top := Result.Bottom - 2 * GetSystemMetrics(SM_CYBORDER);
  end;
end;

function TAppBar.GetVisibleAppbarRect(AEdge: TAppBarEdge): TRect;
begin
  CreateAppbar;
  Result := Self.Monitor.BoundsRect;
  AppBarMessage(abmQueryPos, AEdge, 0, Result);
  case AEdge of
    abeLeft: Result.Right := Result.Left + AppbarWidth;
    abeTop: Result.Bottom := Result.Top + AppbarHeight;
    abeRight: Result.Left := Result.Right - AppbarWidth;
    abeBottom: Result.Top := Result.Bottom - AppbarHeight;
    abeUnknown, abeFloat: ;
  end;
end;

procedure TAppBar.SetABNWindowsArrange(bStartArrange: Boolean);
begin
  Visible := not bStartArrange;
end;

procedure TAppBar.SetAppBarPos;
var
  rc: TRect;
begin
  rc := GetVisibleAppbarRect(FEdge);
  if AppBarMessage(abmSetAutoHideBarEx, FEdge, LPARAM(BOOL(FAutohide)), rc) = 0 then FAutohide := False;

  if FAutohide then rc := GetHiddenAppbarRect(FEdge) else rc := GetVisibleAppbarRect(FEdge);

  AppBarMessage(abmSetPos, FEdge, 0, rc);

  if FAutohide and (GetActiveWindow = Handle) then ShowHiddenAppBar(True, True) else SlideWindow(rc);
end;

procedure TAppBar.SetAutohide(const Value: Boolean);
begin
  if FAutohide <> Value then begin
    FAutohide := Value;
    if FEdge in cAnyEdge then SetAppbarPos;
  end;
end;

procedure TAppBar.SetEdge(const Value: TAppBarEdge);
var
  rc: TRect;
begin
  if (FEdge = Value) or not DoEdgeChange(Value) then Exit;

  FEdge := Value;
  case FEdge of
    abeUnknown: FreeAppbar;
    abeFloat: FreeAppbar;
    else begin
      CreateAppbar;
      SetAppbarPos;
      AppBarMessage(abmActivate, FEdge, 0, rc);
      if FEdge in cLeftRightEdge then rc.Width := Width else rc.Height := Height;
    end;
  end;
end;

procedure TAppBar.ShowHiddenAppBar(bShow, Force: Boolean);
var
  rc: TRect;
  HiddenAppbarShowed: Boolean;
begin
  if FAutohide and (FEdge in cAnyEdge) then begin
    HiddenAppbarShowed := (Width = AppbarWidth) or (Height = AppbarHeight);
    if (bShow <> HiddenAppbarShowed) or Force then begin
      if bShow then begin
        rc := GetVisibleAppbarRect(FEdge);
        SetTimer(Handle, 0, SLIDE_DEF_TIMER_INTERVAL, nil);
      end else begin
        rc := GetHiddenAppbarRect(FEdge);
        KillTimer(Handle, 0);
      end;
      SlideWindow(rc);
    end;
  end;
end;

procedure TAppBar.SlideWindow(var rcEnd: TRect);
var
  bFullDragOn: LongBool;
  rcStart: TRect;
  dwTimeStart, dwTimeEnd, dwTime, dwTimeDiff: DWORD;
  tmpRect: TRect;
begin
  SystemParametersInfo(SPI_GETDRAGFULLWINDOWS, 0, @bFullDragOn, 0);

  GetWindowRect(Handle, rcStart);
  if bFullDragOn and ((rcStart.Left <> rcEnd.Left) or (rcStart.Top <> rcEnd.Top) or (rcStart.Right <> rcEnd.Right) or (rcStart.Bottom <> rcEnd.Bottom)) then begin    // Get our starting and ending time
    dwTimeStart := GetTickCount;
    dwTimeEnd := dwTimeStart + SLIDE_DEF_TIMER_INTERVAL;
    dwTime := dwTimeStart;
    while (dwTime < dwTimeEnd) do begin
      dwTimeDiff := dwTime - dwTimeStart;
      tmpRect.Left := rcStart.Left - (rcStart.Left - rcEnd.Left) * integer(dwTimeDiff) div SLIDE_DEF_TIMER_INTERVAL;
      tmpRect.Top := rcStart.Top - (rcStart.Top - rcEnd.Top) * integer(dwTimeDiff) div SLIDE_DEF_TIMER_INTERVAL;
      tmpRect.Width := rcStart.Width - (rcStart.Width - rcEnd.Width) * integer(dwTimeDiff) div SLIDE_DEF_TIMER_INTERVAL;
      tmpRect.Height := rcStart.Height - (rcStart.Height - rcEnd.Height) * integer(dwTimeDiff) div SLIDE_DEF_TIMER_INTERVAL;
      if SetWindowPos(Handle, 0, tmpRect.Left, tmpRect.Top, tmpRect.Width, tmpRect.Height, SWP_NOZORDER or SWP_NOACTIVATE or SWP_DRAWFRAME) then UpdateWindow(Handle);
      dwTime := GetTickCount;
    end;
  end;

  BoundsRect := rcEnd;
end;

procedure TAppBar.WMActivate(var Msg: TMessage);
var rc: TRect;
begin
  inherited;
  if FAppbarCreated and (Msg.WParam <> WA_INACTIVE) then begin
    rc := BoundsRect;
    AppBarMessage(abmActivate, FEdge, 0, rc);
  end;
end;

procedure TAppBar.WMExitSizeMove(var Msg: TMessage);
begin
  inherited;
  if FAppbarCreated and ((FProposedEdge = FEdge) or (FProposedEdge = abeUnknown)) then begin
    case FEdge of
      abeLeft, abeRight: AppBarWidth := Width;
      abeTop, abeBottom: AppBarHeight := Height;
      abeUnknown: ;
      abeFloat: ;
    end;
    SetAppbarPos;
  end else begin
    if FProposedEdge <> abeUnknown then AppBarEdge := FProposedEdge;
  end;
  FProposedEdge := abeUnknown;
end;

procedure TAppBar.WMHideTimer(var Msg: TMessage);
begin
  if FAutohide and (FEdge in cAnyEdge) then begin
    if (GetActiveWindow <> Handle) and not BoundsRect.Contains(Mouse.CursorPos) then ShowHiddenAppBar(False, False);
  end;
end;

procedure TAppBar.WMMoving(var Msg: TWMMoving);

  function GetEdgeFromPoint(pt: TPoint): TAppBarEdge;
  var
    rc: TRect;
    ptOffset: TPoint;
    bIsLeftOrRight: Boolean;
  begin
    rc := Self.Monitor.WorkareaRect;
    rc.Inflate(-GetSystemMetrics(SM_CXVSCROLL), -GetSystemMetrics(SM_CYHSCROLL));
    if rc.Contains(pt) then
    begin
      Result := abeFloat;
      exit;
    end;

    ptOffset := pt.Subtract(Self.Monitor.BoundsRect.CenterPoint);
    bIsLeftOrRight := ((Abs(ptOffset.Y) * Self.Monitor.BoundsRect.Width) <= (Abs(ptOffset.X) * Self.Monitor.BoundsRect.Height));

    if bIsLeftOrRight then begin
      if 0 <= ptOffset.X then Result := abeRight else Result := abeLeft;
    end else begin
      if 0 <= ptOffset.Y then Result := abeBottom else Result := abeTop;
    end;
  end;

  function CalcProposedState(var pt: TPoint): TAppBarEdge;
   var bForceFloat: Boolean;
  begin
    bForceFloat := (GetKeyState(VK_CONTROL) and $8000) <> 0;
    if bForceFloat then Result := abeFloat else Result := GetEdgeFromPoint(pt);
  end;

var
  prc: PRect;
  dwMousePos: DWORD;
  pt: TPoint;
  abEdgeProposed: TAppBarEdge;
begin
  inherited;
  prc := Msg.DragRect;
  dwMousePos := GetMessagePos;
  pt := TPoint.Create(SmallInt(LongRec(dwMousePos).Lo), SmallInt(LongRec(dwMousePos).Hi));

  abEdgeProposed := CalcProposedState(pt);

  if abEdgeProposed = abeFloat then begin
    if (FProposedEdge in cAnyEdge) or ((FProposedEdge = abeUnknown) and (FEdge in cAnyEdge)) then begin
      prc^ := FFloatRect;
      prc.SetLocation(pt.X - prc.Width div 2, pt.Y);
    end else if FProposedEdge = abeFloat then FFloatRect := BoundsRect;
  end else begin
    prc^ := GetVisibleAppbarRect(abEdgeProposed);
  end;
  FProposedEdge := abEdgeProposed;
end;

procedure TAppBar.WMNCMouseMove(var Msg: TWMNCMouseMove);
begin
  inherited;
  ShowHiddenAppBar(True, False);
end;

procedure TAppBar.WMWindowPosChanged(var Msg: TMessage);
var
  rc: TRect;
begin
  inherited;
  if FAppbarCreated then begin
    rc := BoundsRect;
    AppBarMessage(abmWindowPosChanged, FEdge, 0, rc);
  end;
end;

end.

unit uForm;

interface

uses
  Windows, Messages, Classes, SysUtils, Forms, Menus, ExtCtrls,
  StdCtrls, ComCtrls, ActnList, StdActns, Buttons, Dialogs,
  ICSLanguages;

type
  TfrmForm = class(TForm)
    ICSLanguagesBase: TICSLanguages;
    procedure FormCreate(Sender: TObject);
  private
    FAlignToSystemTray: Boolean;
    procedure OnAppSetLanguageMsg(var Msg: TMessage); message ICS_SETLANGUAGE_MSG;
    procedure SetCaptions(LanguageId: Integer);
    procedure SetAlignToSystemTray(const Value: Boolean);
  public
    property AlignToSystemTray: Boolean read FAlignToSystemTray write SetAlignToSystemTray default False;
  end;

var
  frmForm: TfrmForm;
  ICSCurrentLanguageString: String = 'ENU';

implementation

uses uVCLTools;

{$R *.dfm}

{ TfrmForm }

procedure TfrmForm.OnAppSetLanguageMsg(var Msg: TMessage);
begin
  SetCaptions(Msg.WParam);
end;

procedure TfrmForm.SetAlignToSystemTray(const Value: Boolean);
begin
  FAlignToSystemTray := Value;
  if FAlignToSystemTray then SetPositionToSystemTray(Self);
end;

procedure TfrmForm.SetCaptions(LanguageId: Integer);
 var I: Integer;
begin
  if ICSLanguagesBase.Languages.Count = 0 then Exit;
  if LanguageId >= 0 then ICSLanguagesBase.CurrentLanguageID := LanguageId else ICSLanguagesBase.CurrentLanguageString := ICSCurrentLanguageString;
  if (Tag >= 0) and (ICSLanguagesBase.CurrentStrings[Tag] <> '') then Caption := ICSLanguagesBase.CurrentStrings[Tag];
  for I := 0 to ComponentCount - 1 do if (Components[I].Tag > 0) and (Components[I].Tag < ICSLanguagesBase.CurrentStrings.Count) then begin
    if Components[I] is TAction then begin
      (Components[I] as TAction).Caption := ICSLanguagesBase.CurrentStrings[Components[I].Tag];
      (Components[I] as TAction).Hint := ICSLanguagesBase.CurrentStrings[Components[I].Tag];
    end
    else if Components[I] is TMenuItem then (Components[I] as TMenuItem).Caption := ICSLanguagesBase.CurrentStrings[Components[I].Tag]
    else if Components[I] is TLabel then (Components[I] as TLabel).Caption := ICSLanguagesBase.CurrentStrings[Components[I].Tag]
    else if Components[I] is TButton then begin
      (Components[I] as TButton).Caption := ICSLanguagesBase.CurrentStrings[Components[I].Tag];
      if (Components[I] as TButton).ShowHint then begin
        (Components[I] as TButton).Hint := (Components[I] as TButton).Caption;
        (Components[I] as TButton).Caption := '';
      end;
    end
    else if Components[I] is TSpeedButton then begin
      if (Components[I] as TSpeedButton).ShowHint then (Components[I] as TSpeedButton).Hint := ICSLanguagesBase.CurrentStrings[Components[I].Tag] else (Components[I] as TSpeedButton).Caption := ICSLanguagesBase.CurrentStrings[Components[I].Tag];
    end
    else if Components[I] is TCheckBox then (Components[I] as TCheckBox).Caption := ICSLanguagesBase.CurrentStrings[Components[I].Tag]
    else if Components[I] is TRadioButton then (Components[I] as TRadioButton).Caption := ICSLanguagesBase.CurrentStrings[Components[I].Tag]
    else if Components[I] is TGroupBox then (Components[I] as TGroupBox).Caption := ICSLanguagesBase.CurrentStrings[Components[I].Tag]
    else if Components[I] is TTabSheet then (Components[I] as TTabSheet).Caption := ICSLanguagesBase.CurrentStrings[Components[I].Tag]
    else if Components[I] is TImage then (Components[I] as TImage).Hint := ICSLanguagesBase.CurrentStrings[Components[I].Tag]
    else if Components[I] is TLabeledEdit then (Components[I] as TLabeledEdit).EditLabel.Caption := ICSLanguagesBase.CurrentStrings[(Components[I] as TLabeledEdit).Tag]
    else ;
  end;
end;

procedure TfrmForm.FormCreate(Sender: TObject);
begin
  FAlignToSystemTray := False;
  SendMessage(Handle, ICS_SETLANGUAGE_MSG, -1, 0);
end;

initialization

  ICSCurrentLanguageString := GetCurrentLanguage;

end.

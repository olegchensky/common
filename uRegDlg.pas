unit uRegDlg;

interface

uses
  Windows, Messages, SysUtils, Controls, Classes, Forms,
  Dialogs, ComCtrls, StdCtrls,
  ImgList, uForm, uRegistry, ICSLanguages, System.ImageList;

type
  TfrmRegistryDlg = class(TfrmForm)
    TreeViewRegistry: TTreeView;
    btnOk: TButton;
    btnCancel: TButton;
    ImageList1: TImageList;
    EditKey: TEdit;
    procedure TreeViewRegistryExpanding(Sender: TObject; Node: TTreeNode; var AllowExpansion: Boolean);
    procedure btnOkClick(Sender: TObject);
    procedure TreeViewRegistryChange(Sender: TObject; Node: TTreeNode);
    procedure TreeViewRegistryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    FResultRegistryKeyData: TRegistryKeyData;
    FInitKey: String;
    procedure AddTreeNodes(Node: TTreeNode; List: TStrings);
    procedure GetRegKeyNames(RootKey: HKEY; SubKey: String; Node: TTreeNode);
    function GetCurrentKeyData(const Value: String): TRegistryKeyData;
    procedure ExpandNode(Node: TTreeNode; SubNodeName: String);
    procedure ExpandKey(KeyName: String);
  public
    property ResultRegistryKeyData: TRegistryKeyData read FResultRegistryKeyData;
    property InitKey: string read FInitKey write FInitKey;
  end;

function SelectRegistryKey(AOwner: TComponent; var RKD: TRegistryKeyData; const Key: String = ''): Boolean;

implementation

uses uRegLite;

{$R *.dfm}

function SelectRegistryKey(AOwner: TComponent; var RKD: TRegistryKeyData; const Key: String = ''): Boolean;
begin
  with TfrmRegistryDlg.Create(AOwner) do try
    if not Assigned(AOwner) then AlignToSystemTray := True;
    InitKey := Key;
    if InitKey <> '' then ExpandKey(InitKey);
    Result := (ShowModal = mrOk);
    if Result then RKD := ResultRegistryKeyData;
  finally
    Release;
  end;
end;

function GetNodePath(Node: TTreeNode): String;
begin
  Result  := Node.Text;
  while (Node.Level > 1) do begin
    Node := Node.Parent;
    Result := Node.Text + '\' + Result;
  end;
end;

function TfrmRegistryDlg.GetCurrentKeyData(const Value: String): TRegistryKeyData;
 var
   KeyText: String;
   DelimPos: Integer;
begin
  if (Result.FullPath <> Value) then begin
    Result.FullPath := Value;
    DelimPos := Pos('\', Result.FullPath);
    if (DelimPos > 0) then begin
      KeyText := Copy(Result.FullPath, 1, Pred(DelimPos));
      Result.SubKey := Copy(Result.FullPath, Succ(DelimPos), Length(Result.FullPath) - DelimPos);
    end else begin
      KeyText := Result.FullPath;
      Result.SubKey := '';
    end;
    if (Result.RootKeyText <> KeyText) then begin
      Result.RootKeyText := KeyText;
      Result.RootKey := HKEYTextToHKEY(Result.RootKeyText);
    end;
  end;
end;

procedure TfrmRegistryDlg.AddTreeNodes(Node: TTreeNode; List: TStrings);
 var
   I: Integer;
   N1 : TTreeNode;
   CKD: TRegistryKeyData;
begin
  with TreeViewRegistry.Items do for I := 0 to List.Count - 1 do begin
    N1 := AddChild(Node, List[I]);
    CKD := GetCurrentKeyData(GetNodePath(N1));
    N1.HasChildren := (RegGetSubKeyCount(CKD.RootKey, CKD.SubKey) > 0);
    N1.ImageIndex := 0;
  end;
end;

procedure TfrmRegistryDlg.GetRegKeyNames(RootKey: HKEY; SubKey: String; Node: TTreeNode);
 var SL: TStringList;
begin
  SL := TStringList.Create;
  try
    RegGetSubKeyNames(RootKey, SubKey, SL, False);
    SL.Sorted  := True;
    AddTreeNodes(Node, SL);
  finally
    SL.Free;
  end;
end;

procedure TfrmRegistryDlg.TreeViewRegistryExpanding(Sender: TObject; Node: TTreeNode; var AllowExpansion: Boolean);
 var CKD: TRegistryKeyData;
begin
  inherited;
  if (Node.Level > 0) then try
    CKD := GetCurrentKeyData(GetNodePath(TTreeNode(Node)));
    if (Node.Level = 1) then Screen.Cursor := crHourGlass;
    if Node.HasChildren and (Node.GetFirstChild = nil) then GetRegKeyNames(CKD.RootKey, CKD.SubKey, TTreeNode(Node));
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmRegistryDlg.btnOkClick(Sender: TObject);
begin
  inherited;
  if Assigned(TreeViewRegistry.Selected) then begin
    FResultRegistryKeyData := GetCurrentKeyData(GetNodePath(TreeViewRegistry.Selected));
  end;
end;

procedure TfrmRegistryDlg.ExpandNode(Node: TTreeNode; SubNodeName: String);
 var
   I, DelimPos: Integer;
   S: String;
begin
  Node.Expand(False);
  DelimPos := Pos('\', SubNodeName);
  if (DelimPos > 0) then begin
    S := Copy(SubNodeName, 1, Pred(DelimPos));
    for I := 0 to Node.Count - 1 do if UpperCase(Node.Item[I].Text) = UpperCase(S) then begin
      ExpandNode(Node.Item[I], Copy(SubNodeName, Succ(DelimPos), Length(SubNodeName)));
      Break;
    end;
  end else for I := 0 to Node.Count - 1 do if UpperCase(Node.Item[I].Text) = UpperCase(SubNodeName) then begin
    Node.Item[I].Expand(False);
    Node.Item[I].Selected := True;
    Break;
  end;
end;

procedure TfrmRegistryDlg.FormCreate(Sender: TObject);
 var
   I: Integer;
   N1, N2: TTreeNode;
begin
  inherited;
  FillChar(FResultRegistryKeyData, SizeOf(FResultRegistryKeyData), 0);

  N1 := TreeViewRegistry.Items.Add(nil, ICSLanguagesBase.CurrentStrings[2]);
  N1.ImageIndex := 1;
  N1.SelectedIndex := N1.ImageIndex;
  for I := 1 to cNumRegHKEYKeys do if RegKeyExists(cRegHKEYLookUp[I].Value, '') then begin
    N2 := TreeViewRegistry.Items.AddChild(N1, cRegHKEYLookUp[I].Description);
    N2.HasChildren := (RegGetSubKeyCount(cRegHKEYLookUp[I].Value, '') > 0);
  end;
  N1.Expand(False);
end;

procedure TfrmRegistryDlg.ExpandKey(KeyName: String);
 var
   CKD: TRegistryKeyData;
   I: Integer;
begin
  CKD := GetCurrentKeyData(KeyName);
  if Assigned(TreeViewRegistry.Items.Item[0]) then for I := 0 to TreeViewRegistry.Items.Item[0].Count - 1 do if TreeViewRegistry.Items.Item[I].Text = CKD.RootKeyText then begin
    if CKD.SubKey <> '' then ExpandNode(TreeViewRegistry.Items.Item[I], CKD.SubKey) else begin
      TreeViewRegistry.Items.Item[I].Expand(False);
      TreeViewRegistry.Items.Item[I].Selected := True;
    end;
    Break;
  end;
end;

procedure TfrmRegistryDlg.TreeViewRegistryChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  EditKey.Text := GetNodePath(TTreeNode(Node));
end;

procedure TfrmRegistryDlg.TreeViewRegistryKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
 var HasChildren, Expanded: Boolean;
begin
  inherited;
  if Assigned(TreeViewRegistry.Selected) and (TreeViewRegistry.Selected.ImageIndex = 0) then begin
    if (Key = VK_F5) and (Shift = []) then try
      TreeViewRegistry.Items.BeginUpdate;
      HasChildren := TreeViewRegistry.Selected.HasChildren;
      Expanded := TreeViewRegistry.Selected.Expanded;
      TreeViewRegistry.Selected.DeleteChildren;
      TreeViewRegistry.Selected.HasChildren := HasChildren;
      if Expanded then TreeViewRegistry.Selected.Expand(False);
    finally
      TreeViewRegistry.Items.EndUpdate;
    end;
  end;
end;

end.

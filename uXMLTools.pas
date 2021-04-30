unit uXMLTools;

interface

uses
  Xml.XMLDoc, Xml.XMLIntf;

const
  ICS_XML_HEADER = '<?xml version="1.0" encoding="UTF-8"?>';

function xmlGetItemString(XMLNode: IXMLNode; Param: String; Default: String = ''): String;
procedure xmlSetItemString(XMLNode: IXMLNode; Param: String; const Value: String);
function xmlGetItemIntegerString(XMLNode: IXMLNode; Param: String; Default: Integer = 0): String;
function xmlGetItemBoolean(XMLNode: IXMLNode; Param: String; Default: Boolean = False): Boolean;
procedure xmlSetItemBoolean(XMLNode: IXMLNode; Param: String; Value: Boolean);
function xmlGetItemInteger(XMLNode: IXMLNode; Param: String; Default: Integer = 0): Integer;
procedure xmlSetItemInteger(XMLNode: IXMLNode; Param: String; Value: Integer);
function xmlGetItemDateTime(XMLNode: IXMLNode; Param: String; Default: TDateTime): TDateTime;
procedure xmlSetItemDateTime(XMLNode: IXMLNode; Param: String; Value: TDateTime);

procedure xmlXMLNodeCopyAttributes(SourceXMLNode, DestXMLNode: IXMLNode);
procedure xmlXMLNodeCopyNodes(SourceXMLNode, DestXMLNode: IXMLNode; const ExcludeNodeNames: array of String; bRecursive: Boolean = True);
procedure xmlXMLNodeUpdateNodes(SourceXMLNode, DestXMLNode: IXMLNode; bRecursive: Boolean = True; AncorAttrName: String = '');

implementation

uses
  SysUtils;

function xmlGetItemString(XMLNode: IXMLNode; Param: String; Default: String = ''): String;
begin
  if XMLNode.HasAttribute(Param) then Result := XMLNode.Attributes[Param] else Result := Default;
end;

function xmlGetItemIntegerString(XMLNode: IXMLNode; Param: String; Default: Integer = 0): String;
begin
  if XMLNode.HasAttribute(Param) then Result := XMLNode.Attributes[Param] else Result := IntToStr(Default);
  Result := StrToIntDef(Result, Default).ToString;
end;

procedure xmlSetItemString(XMLNode: IXMLNode; Param: String; const Value: String);
begin
  XMLNode.Attributes[Param] := Value;
end;

function xmlGetItemBoolean(XMLNode: IXMLNode; Param: String; Default: Boolean = False): Boolean;
begin
  if XMLNode.HasAttribute(Param) then Result := Boolean(StrToIntDef(XMLNode.Attributes[Param], Integer(Default))) else begin
    xmlSetItemBoolean(XMLNode, Param, Default);
    Result := Default;
  end;
end;

procedure xmlSetItemBoolean(XMLNode: IXMLNode; Param: String; Value: Boolean);
begin
  XMLNode.Attributes[Param] := IntToStr(Integer(Value));
end;

function xmlGetItemInteger(XMLNode: IXMLNode; Param: String; Default: Integer = 0): Integer;
begin
  if XMLNode.HasAttribute(Param) then Result := Integer(StrToIntDef(XMLNode.Attributes[Param], Default)) else begin
    xmlSetItemInteger(XMLNode, Param, Default);
    Result := Default;
  end;
end;

procedure xmlSetItemInteger(XMLNode: IXMLNode; Param: String; Value: Integer);
begin
  XMLNode.Attributes[Param] := IntToStr(Value);
end;

function xmlGetItemDateTime(XMLNode: IXMLNode; Param: String; Default: TDateTime): TDateTime;
begin
  if XMLNode.HasAttribute(Param) then Result := StrToDateTimeDef(XMLNode.Attributes[Param], Default) else Result := Default;
end;

procedure xmlSetItemDateTime(XMLNode: IXMLNode; Param: String; Value: TDateTime);
begin
  XMLNode.Attributes[Param] := DateTimeToStr(Value);
end;

procedure xmlXMLNodeCopyAttributes(SourceXMLNode, DestXMLNode: IXMLNode);
 var I: Integer;
begin
  if Assigned(SourceXMLNode) and Assigned(DestXMLNode) then for I := 0 to SourceXMLNode.AttributeNodes.Count - 1 do begin
    if SourceXMLNode.AttributeNodes[I].Text <> '' then DestXMLNode.AttributeNodes[SourceXMLNode.AttributeNodes[I].NodeName].Text := SourceXMLNode.AttributeNodes[I].Text;
  end;
end;

procedure xmlXMLNodeCopyNodes(SourceXMLNode, DestXMLNode: IXMLNode; const ExcludeNodeNames: array of String; bRecursive: Boolean = True);
 var
   I, j: Integer;
   iNode: IXMLNode;
   bFound: Boolean;
begin
  if Assigned(SourceXMLNode) and Assigned(DestXMLNode) then begin
    xmlXMLNodeCopyAttributes(SourceXMLNode, DestXMLNode);
    for I := 0 to SourceXMLNode.ChildNodes.Count - 1 do begin
      bFound := False;
      for J := 0 to Length(ExcludeNodeNames) - 1 do begin
        bFound := (SourceXMLNode.ChildNodes[I].NodeName = ExcludeNodeNames[J]);
        if bfound then Break;
      end;
      if not bFound then begin
        iNode := DestXMLNode.AddChild(SourceXMLNode.ChildNodes[I].NodeName);
        if SourceXMLNode.ChildNodes[I].NodeType = ntText then iNode.Text := SourceXMLNode.ChildNodes[I].Text;
        xmlXMLNodeCopyAttributes(SourceXMLNode.ChildNodes[I], iNode);
        if bRecursive and SourceXMLNode.ChildNodes[I].HasChildNodes then xmlXMLNodeCopyNodes(SourceXMLNode.ChildNodes[I], iNode, ExcludeNodeNames, bRecursive);
      end;
    end;
  end;
end;

procedure xmlXMLNodeUpdateNodes(SourceXMLNode, DestXMLNode: IXMLNode; bRecursive: Boolean = True; AncorAttrName: String = '');
 var
   I, J: Integer;
   iNode: IXMLNode;
begin
  if Assigned(SourceXMLNode) and Assigned(DestXMLNode) then for I := 0 to SourceXMLNode.ChildNodes.Count - 1 do begin
    iNode := nil;
    if AncorAttrName <> '' then begin
      for J := 0 to DestXMLNode.ChildNodes.Count - 1 do
        if DestXMLNode.ChildNodes[J].HasAttribute(AncorAttrName) and (SourceXMLNode.ChildNodes[I].Attributes[AncorAttrName] = DestXMLNode.ChildNodes[J].Attributes[AncorAttrName]) then begin
          iNode := DestXMLNode.ChildNodes[J];
          Break;
        end;
    end;
    if not Assigned(iNode) then iNode := DestXMLNode.AddChild(SourceXMLNode.ChildNodes[I].NodeName) else iNode.ChildNodes.Clear;
    if bRecursive then xmlXMLNodeCopyNodes(SourceXMLNode.ChildNodes[I], iNode, []) else xmlXMLNodeCopyAttributes(SourceXMLNode, DestXMLNode);
  end;
end;


end.

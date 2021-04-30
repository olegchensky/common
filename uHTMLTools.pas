unit uHTMLTools;

interface

function RemoveHTMLComments(const S: String): String;
function RemoveHTMLScripts(const S: String): String;
function RemoveHTMLNoScripts(const S: String): String;
function RemoveHTMLStyles(const S: String): String;
function StripHtmlMarkup(const Source: String): String;

implementation

uses
  StrUtils;

function RemoveHTMLComments(const S: String): String;
 var I, J: Integer;
begin
  Result := S;
  I := 1;
  repeat
    I := PosEx('<!--', Result, I);
    if I = 0 then Break;
    J := PosEx('-->', Result, I + 4); // 4 = Length('<!--')
    if J = 0 then Break;
    Delete(Result, I, (J + 3) - I); // 3 = Length('-->')
  until False;
end;

function RemoveHTMLScripts(const S: String): String;
 var I, J: Integer;
begin
  Result := S;
  I := 1;
  repeat
    I := PosEx('<script', Result, I);
    if I = 0 then Break;
    J := PosEx('</script>', Result, I + 7); // start length
    if J = 0 then Break;
    Delete(Result, I, (J + 9) - I); // stop length
  until False;
end;

function RemoveHTMLNoScripts(const S: String): String;
 var I, J: Integer;
begin
  Result := S;
  I := 1;
  repeat
    I := PosEx('<noscript', Result, I);
    if I = 0 then Break;
    J := PosEx('</noscript>', Result, I + 9); // start length
    if J = 0 then Break;
    Delete(Result, I, (J + 11) - I); // stop length
  until False;
end;

function RemoveHTMLStyles(const S: String): String;
 var I, J: Integer;
begin
  Result := S;
  I := 1;
  repeat
    I := PosEx('<style', Result, I);
    if I = 0 then Break;
    J := PosEx('</style>', Result, I + 6); // start length
    if J = 0 then Break;
    Delete(Result, I, (J + 8) - I); // stop length
  until False;
end;

function StripHtmlMarkup(const Source: String): String;
 var
   I, Count: Integer;
   InTag: Boolean;
   P: PChar;
begin
  SetLength(Result, Length(Source));
  P := PChar(Result);
  InTag := False;
  Count := 0;
  for I := 1 to Length(Source) do if InTag then begin
    if Source[I] = '>' then InTag := False;
  end else if Source[I] = '<' then InTag := True else begin
    P[Count] := Source[I];
    Inc(Count);
  end;
  SetLength(Result, Count);
end;

end.

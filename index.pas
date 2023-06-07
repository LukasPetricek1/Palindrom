program PalindromeChecker;

uses
  SysUtils;

procedure Palindrome(const AText: string);
var
  WithSpaces, LengthNoSpaces: Integer;
  Text: string;
  Index: Integer;
  Statement: Boolean;
begin
  WithSpaces := Length(AText);
  Text := LowerCase(StringReplace(AText, ' ', '', [rfReplaceAll]));
  LengthNoSpaces := Length(Text);

  Statement := True;
  for Index := 1 to Trunc(LengthNoSpaces / 2) do
  begin
    if not (Text[Index] = Text[LengthNoSpaces - Index + 1]) then
    begin
      Statement := False;
      Break;
    end;
  end;

  Writeln(statement, '   ', LengthNoSpaces, '  ( s mezerami: ', WithSpaces, ' )');
end;

var
  Text: string;
begin
  Write('Napište palindrom: ');
  Readln(Text);

  Palindrome(Text);
  
  Write('Napište cokoliv pro zavření');
  Readln(Text);
end.

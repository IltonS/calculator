unit BaseCalc;

interface

type

  TBaseCalc = class
    protected
      FScreen: String;
      FlagDecimal: Boolean;
    public
      constructor Create;
    published
      procedure PushToScreen(Value: Char);
      property Screen: String read FScreen;
  end;


implementation

constructor TBaseCalc.Create;
begin
  FScreen := '0';
  FlagDecimal := False;
end;

procedure TBaseCalc.PushToScreen(Value: Char);
begin
  if (Value=',') and (FlagDecimal) then
    Exit;

  if (Value=',') then
    FlagDecimal := True;

  if (Value='0') and (FScreen='0') then
    Exit;

  if (Value<>'0') and (FScreen='0') then
    if (Value<>',') then
      FScreen := Value
    else
      FScreen := FScreen + Value
  else
    FScreen := FScreen + Value;
end;

end.

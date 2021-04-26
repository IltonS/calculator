unit BaseCalc;

interface

type

  TBaseCalc = class
    private
      constructor Create;
    protected
      FScreen: String;
    published
      procedure PushToScreen(value: Char);
      property Screen: String read FScreen;
  end;


implementation

constructor TBaseCalc.Create;
begin
  Self.FScreen := '';
end;

procedure TBaseCalc.PushToScreen(value: Char);
begin
  FScreen := FScreen + Value;
end;

end.

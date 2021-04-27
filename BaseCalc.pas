unit BaseCalc;

interface

type
  TOperations = (opAddition, opSubtraction, opMultiplication, opDivision, opUnset);

  TBaseCalc = class
    protected
      FScreen: String;
      FOperation: TOperations;
      FlagDecimal: Boolean;
      FlagClearScreen: Boolean;
      Total: Double;
    public
      constructor Create;
      property Screen: String read FScreen;
      property Operation: TOperations read FOperation;
      procedure PushToScreen(Value: Char);
      procedure TurnOnAddition;
  end;


implementation

uses
  System.SysUtils;

constructor TBaseCalc.Create;
begin
  FScreen := '0';
  FlagDecimal := False;
  FlagClearScreen := False;
  Total := 0;
  FOperation := opUnset;
end;

procedure TBaseCalc.PushToScreen(Value: Char);
begin
  if FlagClearScreen then
  begin
    FScreen := '0';
    FlagDecimal := False;
    FlagClearScreen := False;
  end;

  if (Length(FScreen)=15) then
    Exit;

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

procedure TBaseCalc.TurnOnAddition;
begin
  FOperation := opAddition;
  FlagClearScreen := True;
end;

end.

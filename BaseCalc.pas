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
      FlagConstant: Boolean;
      FlagConstantReady: Boolean;
      Total: Double;
    public
      constructor Create;
      property Screen: String read FScreen;
      property Operation: TOperations read FOperation;
      property ConstantFlag: Boolean read FlagConstant;
      procedure PushToScreen(Value: Char);
      procedure PushResultToScreen;
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
  FlagConstant := False;
  FlagConstantReady := False;
  Total := 0;
  FOperation := opUnset;
end;

procedure TBaseCalc.PushToScreen(Value: Char);
begin
  if FlagClearScreen then
  begin
    if FOperation <> opUnset then
      Total := StrToFloat(FScreen);

    FScreen := '0';
    FlagDecimal := False;
    FlagClearScreen := False;
    FlagConstantReady := False;
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

procedure TBaseCalc.PushResultToScreen;
begin

  if not FlagConstantReady then
    case FOperation of
      opAddition: FScreen := FloatToStr( Total + StrToFloat(FScreen) );
      opSubtraction: FScreen := FloatToStr( Total - StrToFloat(FScreen) );
      opMultiplication: FScreen := FloatToStr( Total * StrToFloat(FScreen) );
      opDivision: FScreen := FloatToStr( Total / StrToFloat(FScreen) );
    end;

  Total := 0;
  FlagClearScreen := True;
  FlagConstantReady := False;
  FOperation := opUnset;
end;

procedure TBaseCalc.TurnOnAddition;
begin
  if FOperation = opAddition then
    if FlagConstantReady then
      FlagConstant := not FlagConstant
    else
    begin
      FOperation := opAddition;
      FlagClearScreen := True;
      FScreen := FloatToStr( Total + StrToFloat(FScreen) );
      FlagConstantReady := True;
    end
  else
  begin
    FOperation := opAddition;
    FlagClearScreen := True;
    FlagConstantReady := True;
  end;
end;

end.

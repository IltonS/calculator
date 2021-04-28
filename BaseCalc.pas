unit BaseCalc;

interface

type
  TOperations = (opAddition, opSubtraction, opMultiplication, opDivision, opUnset);
  TValidInput = set of Char;

  TBaseCalc = class
    protected
      FScreen: String;
      FOperation: TOperations;
      FlagDecimal: Boolean;
      FlagClearScreen: Boolean;
      FlagConstant: Boolean;
      FlagDontRepeatOperation: Boolean;
      FlagError: Boolean;
      K: Double;
      Answer: Double;
      function ValidateInput(Value: Char): Boolean;
    public
      constructor Create;
      property Screen: String read FScreen;
      property Operation: TOperations read FOperation;
      property ConstantOn: Boolean read FlagConstant;
      property ErrorOn: Boolean read FlagError;
      procedure ClearAll;
      procedure PushToScreen(Value: Char);
      procedure PushResultToScreen;
      procedure PushAddition;
      procedure PushSubtraction;
      procedure PushMultiplication;
  end;

implementation

uses
  System.SysUtils;

constructor TBaseCalc.Create;
begin
  ClearAll;
end;

function TBaseCalc.ValidateInput(Value: Char): Boolean;
const
   ValidInput: TValidInput = ['0'..'9',','];
begin
  Result := Value in ValidInput;
end;

procedure TBaseCalc.ClearAll;
begin
  FScreen := '0';
  FlagDecimal := False;
  FlagClearScreen := False;
  FlagConstant := False;
  FlagDontRepeatOperation := False;
  FlagError := False;
  K := 0;
  Answer := 0;
  FOperation := opUnset;
end;

procedure TBaseCalc.PushToScreen(Value: Char);
begin
  if FlagError then
    Exit;

  if not ValidateInput(Value) then
  begin
    FlagError := True;
    raise Exception.Create('Invalid Input');
  end;

  if FlagClearScreen then
  begin
    if FOperation <> opUnset then
      Answer := StrToFloat(FScreen);

    FScreen := '0';
    FlagDecimal := False;
    FlagClearScreen := False;
    FlagDontRepeatOperation := False;
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
  if FlagError then
    Exit;

  if FlagConstant then
  begin
    case FOperation of
      opAddition: FScreen := FloatToStr( StrToFloat(FScreen) + K );
      opSubtraction: FScreen := FloatToStr( StrToFloat(FScreen) - K );
      opMultiplication: FScreen := FloatToStr( StrToFloat(FScreen) * K );
      opDivision: FScreen := FloatToStr( StrToFloat(FScreen) / K );
    end;
    FlagClearScreen := True;
    FlagDontRepeatOperation := True;
  end
  else
  begin
    if not FlagDontRepeatOperation then
      case FOperation of
        opAddition: FScreen := FloatToStr( Answer + StrToFloat(FScreen) );
        opSubtraction: FScreen := FloatToStr( Answer - StrToFloat(FScreen) );
        opMultiplication: FScreen := FloatToStr( Answer * StrToFloat(FScreen) );
        opDivision: FScreen := FloatToStr( Answer / StrToFloat(FScreen) );
      end
    else
      case FOperation of
        opMultiplication: FScreen := FloatToStr( StrToFloat(FScreen) * StrToFloat(FScreen) );
        opDivision: FScreen := FloatToStr( StrToFloat(FScreen) / StrToFloat(FScreen) );
      end;

    Answer := 0;
    FlagClearScreen := True;
    FlagDontRepeatOperation := False;
    FOperation := opUnset;
  end;
end;

procedure TBaseCalc.PushAddition;
begin
  if FlagError then
    Exit;

  if FOperation = opAddition then
    if FlagDontRepeatOperation then
    begin
      FlagConstant := not FlagConstant;
      if FlagConstant then
        K := StrToFloat(FScreen);
    end
    else
    begin
      FOperation := opAddition;
      FlagClearScreen := True;
      FScreen := FloatToStr( Answer + StrToFloat(FScreen) );
      FlagDontRepeatOperation := True;
    end
  else
  begin
    FOperation := opAddition;
    FlagClearScreen := True;
    FlagConstant := False;
    FlagDontRepeatOperation := True;
  end;
end;

procedure TBaseCalc.PushSubtraction;
begin
  if FlagError then
    Exit;

  if FOperation = opSubtraction then
    if FlagDontRepeatOperation then
    begin
      FlagConstant := not FlagConstant;
      if FlagConstant then
        K := StrToFloat(FScreen);
    end
    else
    begin
      FOperation := opSubtraction;
      FlagClearScreen := True;
      FScreen := FloatToStr( Answer - StrToFloat(FScreen) );
      FlagDontRepeatOperation := True;
    end
  else
  begin
    FOperation := opSubtraction;
    FlagClearScreen := True;
    FlagConstant := False;
    FlagDontRepeatOperation := True;
  end;
end;

procedure TBaseCalc.PushMultiplication;
begin
  if FlagError then
    Exit;

  if FOperation = opMultiplication then
    if FlagDontRepeatOperation then
    begin
      FlagConstant := not FlagConstant;
      if FlagConstant then
        K := StrToFloat(FScreen);
    end
    else
    begin
      FOperation := opMultiplication;
      FlagClearScreen := True;
      FScreen := FloatToStr( Answer * StrToFloat(FScreen) );
      FlagDontRepeatOperation := True;
    end
  else
  begin
    FOperation := opMultiplication;
    FlagClearScreen := True;
    FlagConstant := False;
    FlagDontRepeatOperation := True;
  end;
end;

end.

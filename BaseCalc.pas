unit BaseCalc;

interface

type
  TOperations = (opAddition, opSubtraction, opMultiplication, opDivision, opUnset);
  TValidInput = set of Char;

  TBaseCalc = class
    protected
      FScreen: String;
      FScreenSize: Integer;
      FOperation: TOperations;
      FlagDecimal: Boolean;
      FlagClearScreen: Boolean;
      FlagConstant: Boolean;
      FlagDontRepeatOperation: Boolean;
      FlagError: Boolean;
      K: Double;
      Answer: Double;
      function ValidateInput(Value: Char): Boolean;
      function FormatToScreen(Value: Double): String;
    public
      constructor Create(ScSize: Integer = 8);
      property Screen: String read FScreen;
      property ScreenSize: Integer read FScreenSize;
      property Operation: TOperations read FOperation;
      property ConstantOn: Boolean read FlagConstant;
      property ErrorOn: Boolean read FlagError;
      procedure ClearAll;
      procedure Clear;
      procedure PushToScreen(Value: Char);
      procedure PushResultToScreen;
      procedure PushAddition;
      procedure PushSubtraction;
      procedure PushMultiplication;
      procedure PushDivision;
  end;

implementation

uses
  System.SysUtils;

constructor TBaseCalc.Create(ScSize: Integer = 8);
begin
  ClearAll;
  FScreenSize := ScSize;
end;

function TBaseCalc.ValidateInput(Value: Char): Boolean;
const
   ValidInput: TValidInput = ['0'..'9',','];
begin
  Result := Value in ValidInput;
end;

procedure TBaseCalc.ClearAll;
begin
  if not FlagError then
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

procedure TBaseCalc.Clear;
begin
  if FlagError then
  begin
    ClearAll;
    Exit
  end;

  if FlagClearScreen then
    Exit;

  FScreen := '0';
  FlagDecimal := False;
end;

function TBaseCalc.FormatToScreen(Value: Double): String;
var
  IntegerPart, DecimalPart: Double;

  IntegerPartLength, DecimalPartLength,
  DecimalPartLengthAvailable, DecimalOutput: Integer;
begin
  {DecimalPart := Frac(Value);
  IntegerPart := Value - DecimalPart;

  if DecimalPart > 0 then
    DecimalPartLength := FloatToStr(DecimalPart).Length-2
  else
    DecimalPartLength := 0;

  IntegerPartLength := FloatToStr(IntegerPart).Length;

  DecimalPartLengthAvailable := FScreenSize-IntegerPartLength-1;

  if DecimalPartLength < DecimalPartLengthAvailable then
    DecimalOutput := DecimalPartLength
  else
    DecimalOutput := DecimalPartLengthAvailable;


  if IntegerPartLength > FScreenSize then
  begin
    FlagError := True;
    FOperation := opUnset;
    FScreen := '1,';
    while FScreen.Length < FScreenSize do
      FScreen := FScreen + '0';
    raise Exception.Create('Overflow');
  end;

  Result := Format('%*.*f', [IntegerPartLength, DecimalOutput, Value]);}
  Result := FloatToStr(Value);
end;

procedure TBaseCalc.PushToScreen(Value: Char);
begin
  if FlagError then
    Exit;

  if not ValidateInput(Value) then
  begin
    FlagError := True;
    FOperation := opUnset;
    raise Exception.Create('Invalid Input');
  end;

  if FlagClearScreen then
  begin
    if FOperation <> opUnset then
      Answer := StrToFloat(FScreen);

    FScreen := '0';
    FlagDecimal := False;
    FlagClearScreen := False;
    FlagDontRepeatOperation := FlagConstant;
    //FlagDontRepeatOperation := False;
  end;

  {if (Length(FScreen)=15) then
    Exit;}

  if (Screen.Length+1) > FScreenSize then
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

  try
    if FlagConstant then
    begin
      case FOperation of
        opAddition: FScreen := FormatToScreen( StrToFloat(FScreen) + K );
        opSubtraction: FScreen := FormatToScreen( StrToFloat(FScreen) - K );
        opMultiplication: FScreen := FormatToScreen( StrToFloat(FScreen) * K );
        opDivision: FScreen := FormatToScreen( StrToFloat(FScreen) / K );
      end;
      FlagClearScreen := True;
      FlagDontRepeatOperation := True;
    end
    else
    begin
      if not FlagDontRepeatOperation then
        case FOperation of
          opAddition: FScreen := FormatToScreen( Answer + StrToFloat(FScreen) );
          opSubtraction: FScreen := FormatToScreen( Answer - StrToFloat(FScreen) );
          opMultiplication: FScreen := FormatToScreen( Answer * StrToFloat(FScreen) );
          opDivision: FScreen := FormatToScreen( Answer / StrToFloat(FScreen) );
        end
      else
        case FOperation of
          opMultiplication: FScreen := FormatToScreen( StrToFloat(FScreen) * StrToFloat(FScreen) );
          opDivision: FScreen := FormatToScreen( StrToFloat(FScreen) / StrToFloat(FScreen) );
        end;

      Answer := 0;
      FlagClearScreen := True;
      FlagDontRepeatOperation := False;
      FOperation := opUnset;
    end;
  except
    FlagError := True;
    FOperation := opUnset;
    raise Exception.Create('Invalid Operation');
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
      FScreen := FormatToScreen( Answer + StrToFloat(FScreen) );
      FlagDontRepeatOperation := True;
    end
  else
  begin
    if (FOperation <> opUnset) and (not FlagConstant) and (not FlagClearScreen) then
      PushResultToScreen;

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
      FScreen := FormatToScreen( Answer - StrToFloat(FScreen) );
      FlagDontRepeatOperation := True;
    end
  else
  begin
    if (FOperation <> opUnset) and (not FlagConstant) and (not FlagClearScreen) then
      PushResultToScreen;

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
      FScreen := FormatToScreen( Answer * StrToFloat(FScreen) );
      FlagDontRepeatOperation := True;
    end
  else
  begin
    if (FOperation <> opUnset) and (not FlagConstant) and (not FlagClearScreen) then
      PushResultToScreen;

    FOperation := opMultiplication;
    FlagClearScreen := True;
    FlagConstant := False;
    FlagDontRepeatOperation := True;
  end;
end;

procedure TBaseCalc.PushDivision;
begin
  if FlagError then
    Exit;

  if FOperation = opDivision then
    if FlagDontRepeatOperation then
    begin
      FlagConstant := not FlagConstant;
      if FlagConstant then
        K := StrToFloat(FScreen);
    end
    else
    begin
      FOperation := opDivision;
      FlagClearScreen := True;

      try
        FScreen := FormatToScreen( Answer / StrToFloat(FScreen) );
      except
        FlagError := True;
        FOperation := opUnset;
        raise Exception.Create('Invalid Operation');
      end;

      FlagDontRepeatOperation := True;
    end
  else
  begin
    if (FOperation <> opUnset) and (not FlagConstant) and (not FlagClearScreen) then
      PushResultToScreen;

    FOperation := opDivision;
    FlagClearScreen := True;
    FlagConstant := False;
    FlagDontRepeatOperation := True;
  end;
end;

end.

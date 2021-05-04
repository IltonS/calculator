# TBaseCalc

Base class with core functions for calculators. This class aims to emulate the behavior of Casio calculator independently of the user interface.

## Creating the object

When instantiating TBaseCalc you can setup the maximum number of digitis on the screen, not including the decimal separator or the minus sign.

`Calc := TBaseCalc.Create(10);`

This will allow to print numbers like:

`-1234,567809`

When no screen size is informed, TBaseCalc assumes a 8 digits screen. You can't create an calculator with less than 8 digits. After instantiating the object, you should read the calculator's screen:

```pascal
Calc := TBaseCalc.Create;
PnlScreen.Caption := Calc.Screen; //You can user any component to display the value of the calculator's screen.
```

## Basic Operations

To perform basic operations you can use the following commands:

`12,3 + 74 - 90`

```pascal
Calc.PushToScreen('1'); //Key [1] pressed
//You can call PnlScreen.Caption := Calc.Screen to refresh the screen after pushing a value
Calc.PushToScreen('2'); //Key [2] pressed
Calc.PushToScreen(','); //Key [,] pressed
Calc.PushToScreen('3'); //Key [3] pressed

Calc.PushAddition; //Key [+] pressed

Calc.PushToScreen('7'); //Key [7] pressed
Calc.PushToScreen('4'); //Key [4] pressed

Calc.PushSubtraction; //Key [-] pressed

Calc.PushToScreen('9'); //Key [9] pressed
Calc.PushToScreen('0'); //Key [0] pressed

Calc.PushResultToScreen; //Key [enter] or [=] pressed
PnlScreen.Caption := Calc.Screen; //Refresh the screen
```

## Flags

TBaseCalc comes with a few flags that you can use to improve the UI

```pascal
Calc.ConstantOn; //True when a constant operation is set
Calc.ErrorOn; //True when a error occurs

//Operations come in the TOperations type
case Calc.Operation of
    opAddition: //Do something
    opSubtraction: //Do something
    opMultiplication: //Do something
    opDivision: //Do something
    opUnset: //Do something
end;
```

## Cleaning

```pascal
//To clear the display (Usually the C button)
Calc.Clear;
PnlScreen.Caption := Calc.Screen;

//To clear the current operation (Usually the AC button)
Calc.ClearAll;
PnlScreen.Caption := Calc.Screen;
```

## Errors

`EInvalidInput`

Raised when a invalid character is pushed to the screen.

`EOverflow`

Raised when the resulting number exceeds the number of digits specified at the creation of the object. Read `Calc.Screen` to see an approximate result and use the clear function to continue the operation. You can also use the ClearAll function to reset the calculator.

`EInvalidOperation`

Raised when an error occurs when performing an operation. Eg: Division by zero.
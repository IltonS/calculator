# TBaseCalc

Base component with core functions for calculators. This component aims to emulate the behavior of Casio calculators and to be independent of the user interface.

## Initializing the component

When adding a TBaseCalc to your form you can setup the maximum number of digitis on the screen, not including the decimal separator or the minus sign.

`BaseBaseCalc.Init(10);`

This will allow to print numbers like:

`-1234,567809`

You should always initialize TBaseCalc, but when no screen size is informed, TBaseCalc assumes a 8 digits screen. You can't create an calculator with less than 8 digits. After initializing the object, you should read the calculator's screen:

```pascal
BaseBaseCalc.Init(10);
PnlScreen.Caption := BaseBaseCalc.Screen; //You can user any component to display the value of the calculator's screen.
```

## Basic Operations

To perform basic operations you can use the following commands:

`12,3 + 74 - 90`

```pascal
BaseCalc.PushToScreen('1'); //Key [1] pressed
//You can call PnlScreen.Caption := BaseCalc.Screen to refresh the screen after pushing a value
BaseCalc.PushToScreen('2'); //Key [2] pressed
BaseCalc.PushToScreen(','); //Key [,] pressed
BaseCalc.PushToScreen('3'); //Key [3] pressed

BaseCalc.PushAddition; //Key [+] pressed

BaseCalc.PushToScreen('7'); //Key [7] pressed
BaseCalc.PushToScreen('4'); //Key [4] pressed

BaseCalc.PushSubtraction; //Key [-] pressed

BaseCalc.PushToScreen('9'); //Key [9] pressed
BaseCalc.PushToScreen('0'); //Key [0] pressed

BaseCalc.PushResultToScreen; //Key [enter] or [=] pressed
PnlScreen.Caption := BaseCalc.Screen; //Refresh the screen
```

## Flags

TBaseCalc comes with a few flags that you can use to improve the UI

```pascal
BaseCalc.ConstantOn; //True when a constant operation is set
BaseCalc.ErrorOn; //True when a error occurs

//Operations come in the TOperations type
case BaseCalc.Operation of
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
BaseCalc.Clear;
PnlScreen.Caption := BaseCalc.Screen;

//To clear the current operation (Usually the AC button)
BaseCalc.ClearAll;
PnlScreen.Caption := BaseCalc.Screen;
```

## Errors

`EInvalidInput`

Raised when a invalid character is pushed to the screen.

`EOverflow`

Raised when the resulting number exceeds the number of digits specified at the creation of the object. Read `BaseCalc.Screen` to see an approximate result and use the clear function to continue the operation. You can also use the ClearAll function to reset the calculator.

`EInvalidOperation`

Raised when an error occurs when performing an operation. Eg: Division by zero.
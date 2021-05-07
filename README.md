# ![Icon Image](/resources/calculator-grid-icon_48.png) Calculator (0.x)
A simple arithmetic calculator and Delphi component that implement the behavior of Casio calculators. Written for Win32 platform.

See [TBaseCalc](TBaseCalc.md) for technical documentation on the TBaseCalc component.

See [Changelog](CHANGELOG.md) for the version history.

## Operation

| Example | Operation |   | Display |
| --- | ---: | ---: | ---: |
| (Basic Calculation) | [AC] |   | 0 |
| 53+123-63 | 53 [+] 123 [-] 63 [=] |   | 113 |
| 963×(23-56) | 23 [-] 56 [×] 963 [=] |   | -31779 |
| (56×3-89)÷5,2+63 | 56 [×] 3 [-] 89 [÷] 5,2 [+] 63 [=] |   | 78,192308 |
| 123456×741852 *¹˙* | 123456 [×] 741852 [=] |   | 915,8608E |
|   | [C] |   | 915,86081 |
| (Constant Calculation)  | [AC] |   | 0 |
| 12<u>+23</u> | 23 [+] [+] 12 [=] | K | 35 |
| 78<u>+23</u> | 78 [=] | K | 101 |
| 7<u>-5,6</u> | 5,6 [-] [-] 7 [=] | K | 1,4 |
| 2<u>-5,6</u> | 2 [=] | K | -3,6 |
| 2,3<u>×12</u> | 12 [×] [×] 2,3 [=] | K | 27,6 |
| 4,5<u>×12</u> | 4,5 [=] | K | 54 |
| 45<u>÷9,6</u> | 9,6 [÷] [÷] 45 [=] | K | 4,6875 |
| 78<u>÷9,6</u> | 78 [=] | K | 8,125 |
| (2,3)⁴ | 2,3 [×] [×] [=] [=] [=] | K | 27,9841 |
| (Square a Number) |   |   |   |
| 7² | 7 [×] [=] |   | 49 |
| (Correcting Inputs) |   |   |   |
| 2 + ~~3~~ 4 *²˙* | 2 [+] 3 [C] 4 [=] |   | 6 |
| 2 ~~+~~ - 7 *³˙* | 2 [+] [-] 7 [=] |   | -5 |
| *⁴˙* | [AC] |   | 0 |

*¹˙ An **E** error indicator will appear whenever the result of a calculation exceeds 8 digits. Press [C] to clear the error indicator. After that you'll be able to continue the calculation using an aproximate result.*

*²˙ When you have to correct the value you currently inputing, without deleting the part of the calculation you have input up to the current value, press [C] to clear the displayed value and return to the 0 display. Next input the value you want.*

*³˙ When you want to correct the arithmetic operator you have just input, without pressing [C], press the key for the correct arithmetic operator.*

*⁴˙ Press [AC] to completely clear the calculation you're inputing, or to clear a displayed calculation result (produced by pressing the [+] [-] [×] [÷] or [=] key) and its calculation.*

## Auto Power Off Function

The application will close after 6 minutes from the last key operation.



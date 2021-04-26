unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, Vcl.AppEvnts, BaseCalc,
  Vcl.Buttons;

type
  TFrmMain = class(TForm)
    ActionList: TActionList;
    AjudaTopicosCmd: TAction;
    AjudaSobreCmd: TAction;
    MainMenu: TMainMenu;
    Ajuda1: TMenuItem;
    AjudaTopicosItem: TMenuItem;
    N1: TMenuItem;
    AjudaSobreItem: TMenuItem;
    PnlScreen: TPanel;
    StatusBar: TStatusBar;
    ApplicationEvents: TApplicationEvents;
    Btn1: TSpeedButton;
    Btn2: TSpeedButton;
    Btn3: TSpeedButton;
    BtnEquals: TSpeedButton;
    Btn4: TSpeedButton;
    Btn5: TSpeedButton;
    Btn6: TSpeedButton;
    BtnDecimal: TSpeedButton;
    Btn7: TSpeedButton;
    Btn8: TSpeedButton;
    Btn9: TSpeedButton;
    Btn0: TSpeedButton;
    BtnDivision: TSpeedButton;
    BtnMultiplication: TSpeedButton;
    BtnSubtraction: TSpeedButton;
    BtnAddition: TSpeedButton;
    BtnAllClear: TSpeedButton;
    PnlErrorFlag: TPanel;
    PnlConstantFlag: TPanel;
    PnlOperator: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEventsHint(Sender: TObject);
    procedure BtnAllClearClick(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn6Click(Sender: TObject);
    procedure Btn7Click(Sender: TObject);
    procedure Btn8Click(Sender: TObject);
    procedure Btn9Click(Sender: TObject);
    procedure Btn0Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Btn1Click(Sender: TObject);
    procedure BtnDecimalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;
  Calc: TBaseCalc;

implementation

{$R *.dfm}

procedure TFrmMain.ApplicationEventsHint(Sender: TObject);
begin
  StatusBar.Panels[0].Text := Application.Hint;
end;

procedure TFrmMain.Btn0Click(Sender: TObject);
begin
  Calc.PushToScreen('0');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.Btn1Click(Sender: TObject);
begin
  Calc.PushToScreen('1');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.Btn2Click(Sender: TObject);
begin
  Calc.PushToScreen('2');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.Btn3Click(Sender: TObject);
begin
  Calc.PushToScreen('3');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.Btn4Click(Sender: TObject);
begin
  Calc.PushToScreen('4');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.Btn5Click(Sender: TObject);
begin
  Calc.PushToScreen('5');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.Btn6Click(Sender: TObject);
begin
  Calc.PushToScreen('6');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.Btn7Click(Sender: TObject);
begin
  Calc.PushToScreen('7');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.Btn8Click(Sender: TObject);
begin
  Calc.PushToScreen('8');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.Btn9Click(Sender: TObject);
begin
  Calc.PushToScreen('9');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.BtnAllClearClick(Sender: TObject);
begin
  FreeAndNil(Calc);
  Calc := TBaseCalc.Create;
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.BtnDecimalClick(Sender: TObject);
begin
  Calc.PushToScreen(',');
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  FrmMain.Width := 206;
  Calc := TBaseCalc.Create;
  PnlScreen.Caption := Calc.Screen;
end;

procedure TFrmMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_NUMPAD1: Btn1Click(Sender);
    VK_NUMPAD2: Btn2Click(Sender);
    VK_NUMPAD3: Btn3Click(Sender);
    VK_NUMPAD4: Btn4Click(Sender);
    VK_NUMPAD5: Btn5Click(Sender);
    VK_NUMPAD6: Btn6Click(Sender);
    VK_NUMPAD7: Btn7Click(Sender);
    VK_NUMPAD8: Btn8Click(Sender);
    VK_NUMPAD9: Btn9Click(Sender);
    VK_NUMPAD0: Btn0Click(Sender);

    {Comma}
    188: BtnDecimalClick(Sender);
    110: BtnDecimalClick(Sender);

    {Numeric Character}
    49: Btn1Click(Sender);
    50: Btn2Click(Sender);
    51: Btn3Click(Sender);
    52: Btn4Click(Sender);
    53: Btn5Click(Sender);
    54: Btn6Click(Sender);
    55: Btn7Click(Sender);
    56: Btn8Click(Sender);
    57: Btn9Click(Sender);
    48: Btn0Click(Sender);

    VK_ESCAPE: BtnAllClearClick(Sender);
  end;
end;

end.

unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, Vcl.AppEvnts,
  Vcl.Buttons, BaseCalc;

type
  TFrmMain = class(TForm)
    ActionList: TActionList;
    HelpTopicsCmd: TAction;
    HelpAboutCmd: TAction;
    MainMenu: TMainMenu;
    Help1: TMenuItem;
    AjudaTopicosItem: TMenuItem;
    N1: TMenuItem;
    AjudaSobreItem: TMenuItem;
    PnlScreen: TPanel;
    StatusBar: TStatusBar;
    ApplicationEvents: TApplicationEvents;
    Btn1: TSpeedButton;
    BtnAllClear: TSpeedButton;
    PnlConstantFlag: TPanel;
    PnlOperator: TPanel;
    Panel1: TPanel;
    ActBtn1: TAction;
    ActBtnAllClear: TAction;
    ActBtn2: TAction;
    ActBtn3: TAction;
    ActBtn4: TAction;
    ActBtn5: TAction;
    ActBtn6: TAction;
    ActBtn7: TAction;
    ActBtn8: TAction;
    ActBtn9: TAction;
    ActBtn0: TAction;
    ActBtnDecimal: TAction;
    Btn2: TSpeedButton;
    Btn3: TSpeedButton;
    Btn4: TSpeedButton;
    Btn5: TSpeedButton;
    Btn6: TSpeedButton;
    Btn7: TSpeedButton;
    Btn8: TSpeedButton;
    Btn9: TSpeedButton;
    BtnDecimal: TSpeedButton;
    Btn0: TSpeedButton;
    BtnEquals: TSpeedButton;
    BtnDivision: TSpeedButton;
    BtnMultiplication: TSpeedButton;
    BtnSubtraction: TSpeedButton;
    BtnAddition: TSpeedButton;
    ActBtnAddition: TAction;
    ActBtnEquals: TAction;
    TmrPowerOff: TTimer;
    ActBtnSubtraction: TAction;
    ActBtnMultiplication: TAction;
    ActBtnDivision: TAction;
    BtnClear: TSpeedButton;
    ActBtnClear: TAction;
    BaseCalc: TBaseCalc;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEventsHint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActBtn1Execute(Sender: TObject);
    procedure ActBtnAllClearExecute(Sender: TObject);
    procedure ActBtn2Execute(Sender: TObject);
    procedure ActBtn3Execute(Sender: TObject);
    procedure ActBtn4Execute(Sender: TObject);
    procedure ActBtn5Execute(Sender: TObject);
    procedure ActBtn6Execute(Sender: TObject);
    procedure ActBtn7Execute(Sender: TObject);
    procedure ActBtn8Execute(Sender: TObject);
    procedure ActBtn9Execute(Sender: TObject);
    procedure ActBtn0Execute(Sender: TObject);
    procedure ActBtnDecimalExecute(Sender: TObject);
    procedure ActBtnAdditionExecute(Sender: TObject);
    procedure ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure ActBtnEqualsExecute(Sender: TObject);
    procedure TmrPowerOffTimer(Sender: TObject);
    procedure ActionListExecute(Action: TBasicAction; var Handled: Boolean);
    procedure ActBtnSubtractionExecute(Sender: TObject);
    procedure ActBtnMultiplicationExecute(Sender: TObject);
    procedure ActBtnDivisionExecute(Sender: TObject);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure ActBtnClearExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.ActBtn0Execute(Sender: TObject);
begin
  BaseCalc.PushToScreen('0');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtn1Execute(Sender: TObject);
begin
  BaseCalc.PushToScreen('1');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtn2Execute(Sender: TObject);
begin
  BaseCalc.PushToScreen('2');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtn3Execute(Sender: TObject);
begin
  BaseCalc.PushToScreen('3');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtn4Execute(Sender: TObject);
begin
  BaseCalc.PushToScreen('4');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtn5Execute(Sender: TObject);
begin
  BaseCalc.PushToScreen('5');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtn6Execute(Sender: TObject);
begin
  BaseCalc.PushToScreen('6');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtn7Execute(Sender: TObject);
begin
  BaseCalc.PushToScreen('7');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtn8Execute(Sender: TObject);
begin
  BaseCalc.PushToScreen('8');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtn9Execute(Sender: TObject);
begin
  BaseCalc.PushToScreen('9');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtnAdditionExecute(Sender: TObject);
begin
  BaseCalc.PushAddition;
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtnAllClearExecute(Sender: TObject);
begin
  BaseCalc.ClearAll;
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtnClearExecute(Sender: TObject);
begin
  BaseCalc.Clear;
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtnDecimalExecute(Sender: TObject);
begin
  BaseCalc.PushToScreen(',');
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtnDivisionExecute(Sender: TObject);
begin
  BaseCalc.PushDivision;
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtnEqualsExecute(Sender: TObject);
begin
  BaseCalc.PushResultToScreen;
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtnMultiplicationExecute(Sender: TObject);
begin
  BaseCalc.PushMultiplication;
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActBtnSubtractionExecute(Sender: TObject);
begin
  BaseCalc.PushSubtraction;
  PnlScreen.Caption := BaseCalc.Screen;
end;

procedure TFrmMain.ActionListExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  TmrPowerOff.Enabled := False;
  TmrPowerOff.Enabled := True;
  //ShowMessage(Action.Name);
end;

procedure TFrmMain.ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
var
  ErrorMsg: String;
begin
  //Update PnlOperator
  case BaseCalc.Operation of
    opAddition: PnlOperator.Caption := '+';
    opSubtraction: PnlOperator.Caption := '-';
    opMultiplication: PnlOperator.Caption := '×';
    opDivision: PnlOperator.Caption := '÷';
    opUnset: PnlOperator.Caption := '';
  end;

  //Update PnlConstantFlag
  PnlConstantFlag.ShowCaption := BaseCalc.ConstantOn;

  //Update PnlErrorFlag
  if BaseCalc.ErrorOn then
  begin
    ErrorMsg := BaseCalc.Screen;
    SetLength(ErrorMsg, BaseCalc.Screen.Length-1);
    PnlScreen.Caption := ErrorMsg + 'E';
  end;
end;

procedure TFrmMain.ApplicationEventsException(Sender: TObject; E: Exception);
begin
  //Remove this procedure to see error dialogs.
end;

procedure TFrmMain.ApplicationEventsHint(Sender: TObject);
begin
  StatusBar.Panels[0].Text := Application.Hint;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  FrmMain.Width := 206;
  BaseCalc.Init;
  PnlScreen.Caption := BaseCalc.Screen;

  TmrPowerOff.Interval := 1000 * 60 * 6; //6 Minutes
  TmrPowerOff.Enabled := True;
end;

procedure TFrmMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //ShowMessage(IntToStr(Key));
  //PnlScreen.Caption := IntToStr(Key);

  //Shift key pressed
  if (Shift=[ssShift]) then
    case Key of
      187: ActBtnAddition.Execute;
      56: ActBtnMultiplication.Execute;
    end
  else
    case Key of
      VK_ESCAPE: ActBtnAllClear.Execute;
      VK_DELETE: ActBtnClear.Execute;
      VK_RETURN: ActBtnEquals.Execute;

      //Num Pad
      VK_NUMPAD1: ActBtn1.Execute;
      VK_NUMPAD2: ActBtn2.Execute;
      VK_NUMPAD3: ActBtn3.Execute;
      VK_NUMPAD4: ActBtn4.Execute;
      VK_NUMPAD5: ActBtn5.Execute;
      VK_NUMPAD6: ActBtn6.Execute;
      VK_NUMPAD7: ActBtn7.Execute;
      VK_NUMPAD8: ActBtn8.Execute;
      VK_NUMPAD9: ActBtn9.Execute;
      VK_NUMPAD0: ActBtn0.Execute;

      //Numeric Character
      49: ActBtn1.Execute;
      50: ActBtn2.Execute;
      51: ActBtn3.Execute;
      52: ActBtn4.Execute;
      53: ActBtn5.Execute;
      54: ActBtn6.Execute;
      55: ActBtn7.Execute;
      56: ActBtn8.Execute;
      57: ActBtn9.Execute;
      48: ActBtn0.Execute;

      //Comma
      188: ActBtnDecimal.Execute;
      VK_DECIMAL: ActBtnDecimal.Execute;

      //Operations
      107: ActBtnAddition.Execute;
      109: ActBtnSubtraction.Execute;
      189: ActBtnSubtraction.Execute;
      106: ActBtnMultiplication.Execute;
      111: ActBtnDivision.Execute;
      193: ActBtnDivision.Execute;
    end;
end;

procedure TFrmMain.TmrPowerOffTimer(Sender: TObject);
begin
  Close;
end;

end.

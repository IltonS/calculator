unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, Vcl.AppEvnts;

type
  TFrmMain = class(TForm)
    Btn1: TButton;
    Btn2: TButton;
    Btn3: TButton;
    BtnEquals: TButton;
    Btn4: TButton;
    Btn5: TButton;
    Btn6: TButton;
    BtnDecimal: TButton;
    Btn7: TButton;
    Btn8: TButton;
    Btn9: TButton;
    Btn0: TButton;
    BtnDivision: TButton;
    BtnMultiplication: TButton;
    BtnSubtraction: TButton;
    BtnAddition: TButton;
    BtnAllClear: TButton;
    PnlFlags: TPanel;
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
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEventsHint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.ApplicationEventsHint(Sender: TObject);
begin
  StatusBar.Panels[0].Text := Application.Hint;
end;

procedure TFrmMain.FormActivate(Sender: TObject);
begin
  FocusControl(Nil);
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  FrmMain.Width := 327;
end;

end.

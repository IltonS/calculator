program calculator;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FrmMain},
  Vcl.Themes,
  Vcl.Styles,
  BaseCalc in 'BaseCalc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.Title := 'Calculadora';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.

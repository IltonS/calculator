program calculator;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FrmMain},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.Title := 'Calculator';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.

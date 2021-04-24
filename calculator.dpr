program calculator;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FrmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Calculadora';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.

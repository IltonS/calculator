program calculator;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FrmMain},
  Vcl.Themes,
  Vcl.Styles,
  About in 'About.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.Title := 'Calculator';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.

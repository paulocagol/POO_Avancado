program Injecao;

uses
  Vcl.Forms,
  eInjecao.View.Principal in 'eInjecao.View.Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

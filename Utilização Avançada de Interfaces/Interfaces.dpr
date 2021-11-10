program Interfaces;

uses
  Vcl.Forms,
  eInterfaces.View.Principal in 'eInterfaces.View.Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

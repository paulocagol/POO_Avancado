unit eInterfaces.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  iPessoa = interface
    ['{3E640487-B895-4DAE-B4B7-9ABBD327DEC1}']
    function Nome: String;
  end;

  TPessoa = class(TInterfacedObject, iPessoa)
  private
    function Nome: String;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): iPessoa;
  end;



  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

class function TPessoa.New: iPessoa;
begin
  Result := Self.Create();
end;

function TPessoa.Nome: String;
begin
  Result := 'Teste';

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(
    TPessoa.New().Nome
  );
end;

end.

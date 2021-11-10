unit eInjecao.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  iNota = interface
    ['{F2573E6B-63F0-4EA3-B521-319FFCAD3E74}']
    function Numero: Integer;

  end;

  iNotaItens = interface
    ['{EA0E60A4-278C-460E-86B6-818DC914CB56}']
    function RetornaNumero: Integer;
  end;

  TNota = class(TInterfacedObject, iNota)
    private
      function Numero: Integer;
    public

  end;

  TNotaItens = class(TInterfacedObject, iNotaItens)
    private
      FNota: iNota;
      function RetornaNumero: Integer;
    public
      constructor Create(Nota: iNota);
      destructor Destroy(); override;
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

{ TNota }

function TNota.Numero: Integer;
begin
  Result := 10;
end;

{ TNotaItens }

constructor TNotaItens.Create(Nota: iNota);
begin
  FNota := Nota;
end;

destructor TNotaItens.Destroy;
begin

  inherited;
end;

function TNotaItens.RetornaNumero: Integer;
begin
  Result := FNota.Numero;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Nota: iNota;
  NotaItens: iNotaItens;
begin
  Nota := TNota.Create as iNota;
  NotaItens := TNotaItens.Create(Nota) as iNotaItens;

  ShowMessage(NotaItens.RetornaNumero.ToString);
end;

end.

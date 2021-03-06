unit eInterface.Model.PessoaFisica;

interface

uses
  eInterface.Model.Interfaces;

type

  TModelPessoaFisica = class(TInterfacedObject, iPessoa)
  private
    FNome: String;
    FSobreNome: String;
    FEvDisplay: TEvDisplay;
    function Nome (Value: String): iPessoa;
    function SobreNome(Value: String): iPessoa;
    function Display(Value: TEvDisplay): iPessoa;
    function NomeCompleto: iPessoa;

  public
    constructor Create;
    destructor Destroy; override;

    class function New(): iPessoa;
  end;


implementation

{ TModelPessoa }

constructor TModelPessoaFisica.Create;
begin

end;

destructor TModelPessoaFisica.Destroy;
begin

  inherited;
end;

function TModelPessoaFisica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FEvDisplay := Value;
end;

class function TModelPessoaFisica.New: iPessoa;
begin
  Result := Self.Create();
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaFisica.NomeCompleto(): iPessoa;
begin
  Result := Self;
  FEvDisplay(FNome + ' ' + FSobreNome);
end;

function TModelPessoaFisica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.

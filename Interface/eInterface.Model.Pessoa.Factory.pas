unit eInterface.Model.Pessoa.Factory;

interface

uses
  eInterface.Model.Interfaces, eInterface.Model.PessoaFisica;

type
  TModelPessoaFactory = class(TInterfacedObject, iPessoaFactory)
    private
      function PessoaFisica(): iPessoa;
      function PessoaJurifica(): iPessoa;
    public
      constructor Create();
      destructor Destroy(); override;
      class function New(): iPessoaFactory;
  end;

implementation

uses
  eInterface.Model.PessoaJuridica;

{ TModelPessoaFactory }

constructor TModelPessoaFactory.Create;
begin

end;

destructor TModelPessoaFactory.Destroy;
begin

  inherited;
end;

class function TModelPessoaFactory.New(): iPessoaFactory;
begin
  Result := Self.Create();
end;

function TModelPessoaFactory.PessoaFisica(): iPessoa;
begin
  Result := TModelPessoaFisica.New();
end;

function TModelPessoaFactory.PessoaJurifica(): iPessoa;
begin
  Result := TModelPessoaJuridica.New();
end;

end.

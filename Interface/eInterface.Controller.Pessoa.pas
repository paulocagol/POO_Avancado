unit eInterface.Controller.Pessoa;

interface

uses
  eInterface.Controller.Interfaces, eInterface.Model.Interfaces;

type
  TControllerPessoa = class(TInterfacedObject, iControllerPessoa)
  private
    function Pessoa(Value: tTypePessoa): iPessoa;
  public
    constructor Create();
    destructor Destroy(); override;
    class function New(): iControllerPessoa;
  end;


implementation

uses
  eInterface.Model.Pessoa.Factory;

{ TControllerPessoa }

constructor TControllerPessoa.Create();
begin

end;

destructor TControllerPessoa.Destroy();
begin

  inherited;
end;

class function TControllerPessoa.New: iControllerPessoa;
begin
  Result := Self.Create();
end;

function TControllerPessoa.Pessoa(Value: tTypePessoa): iPessoa;
begin
  case Value of
    tpFisica: Result := TModelPessoaFactory.New().PessoaFisica();
    tpJuridica: Result := TModelPessoaFactory.New().PessoaJurifica();
  end;
end;

end.

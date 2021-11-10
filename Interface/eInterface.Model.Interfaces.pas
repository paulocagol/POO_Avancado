unit eInterface.Model.Interfaces;

interface

type
  TEvDisplay = procedure(Value: String) of object;


  iPessoa = interface
    ['{D869F00A-09F6-451A-A1E4-B4F30743876C}']
    function Nome (Value: String): iPessoa;
    function SobreNome(Value: String): iPessoa;
    function Display(Value: TEvDisplay): iPessoa;
    function NomeCompleto: iPessoa;
  end;

  iPessoaFactory = interface
    ['{8481A452-4983-4F0C-9811-F222EF33C2F6}']
    function PessoaFisica(): iPessoa;
    function PessoaJurifica(): iPessoa;
  end;


implementation

end.

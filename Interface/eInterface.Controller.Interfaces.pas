unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.Interfaces;

type
  tTypePessoa = (
    tpFisica = 0
    , tpJuridica = 1
  );


  iControllerPessoa = interface
    ['{1D4A5E15-5BDA-4B22-9874-37BA91AFEB79}']
    function Pessoa(Value: tTypePessoa): iPessoa;
  end;

implementation

end.

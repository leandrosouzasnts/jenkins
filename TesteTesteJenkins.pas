unit TesteTesteJenkins;

interface

uses
  DUnitX.TestFramework,
  Calculadora;

type
  [TestFixture]
  TMyTesteJenkins = class
  private
    FCalculadora : TCalculadora;
  public
  end;

implementation

initialization
  TDUnitX.RegisterTestFixture(TMyTesteJenkins);

end.

unit Teste;

interface

uses
  DUnitX.TestFramework,
  Calculadora;

type
  [TestFixture]
  TMyTest = class
  private
    FCalculadora : TCalculadora;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2,3')]
    [TestCase('TestB','3,4,7')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer; const AValue3 : Integer);
  end;

implementation

procedure TMyTest.Setup;
begin
  FCalculadora := TCalculadora.Create;
end;

procedure TMyTest.TearDown;
begin
  FCalculadora.Free;
end;

procedure TMyTest.Test1;
begin
end;

procedure TMyTest.Test2(const AValue1 : Integer;const AValue2 : Integer; const AValue3 : Integer);
begin
  if FCalculadora.Add(AValue1, AValue2) = AValue3 then
    Assert.Pass('Sucesso!')
  else
    Assert.Fail('Fail!');

end;

initialization
  TDUnitX.RegisterTestFixture(TMyTest);

end.

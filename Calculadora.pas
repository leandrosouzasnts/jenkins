unit Calculadora;

interface
type
  TCalculadora = class
    function Add(AValue1, AValue2 : Integer) : Integer;
  end;

implementation

{ TCalculador }

function TCalculadora.Add(AValue1, AValue2: Integer): Integer;
begin
  Result := AValue1 + AValue2;
end;

end.

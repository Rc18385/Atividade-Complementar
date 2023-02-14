unit UFuncionario;

interface

type
  TFuncionario = class
    FNome: String;
    FSobrenome: String;
    FSalarioMensal: Double;

    private

      function GetNome: string;
      function GetSobrenome: string;
      function GetSalarioMensal: Double;

      procedure SetNome(const Value: String);
      procedure SetSobrenome(const Value: String);
      procedure SetSalarioMensal(const Value: Double);

    public

      constructor create;
      destructor  destroy;

      property Nome: string read GetNome write SetNome;
      property Sobrenome: string read GetSobrenome write SetSobrenome;
      property SalarioMensal: double read GetSalarioMensal write SetSalarioMensal;
  end;

implementation

Uses System.SysUtils;

constructor TFuncionario.create;
Begin
  Inherited Create;
  FNome := EmptyStr;
  FSobrenome := EmptyStr;
  FSalarioMensal := 0.0;
End;

destructor TFuncionario.destroy;
begin
  Inherited Destroy;
end;

function TFuncionario.GetNome: String;
begin
  Result:= FNome;
end;

function TFuncionario.GetSobrenome: String;
begin
  Result:= FSobrenome;
end;

function TFuncionario.GetSalarioMensal: Double;
begin
  Result:= FSalarioMensal;
end;

procedure TFuncionario.SetNome(const Value: String);
begin
  FNome:= Value;
end;

procedure TFuncionario.SetSobrenome(const Value: String);
begin
  FSobrenome:= Value;
end;

procedure TFuncionario.SetSalarioMensal(const Value: Double);
begin
  FSalarioMensal:= Value;
end;

end.

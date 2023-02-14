unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UFuncionario, Generics.Collections;

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    edtSobrenome: TEdit;
    edtSalario: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnGravar: TButton;
    mmResultado: TMemo;
    btnLimparDados: TButton;
    btnHistorico: TButton;
    Label4: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure btnLimparDadosClick(Sender: TObject);
    procedure btnHistoricoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FListaFuncionarios: TList<TFuncionario>;
    procedure Limpar;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Limpar;
begin
  edtNome.Clear;
  edtSobrenome.Clear;
  edtSalario.Clear;
  mmResultado.Clear;
end;

procedure TForm1.btnGravarClick(Sender: TObject);
var
  NovoFuncionario: TFuncionario;
begin
  NovoFuncionario := TFuncionario.create;
  NovoFuncionario.Nome := edtNome.Text;
  NovoFuncionario.Sobrenome := edtSobrenome.Text;
  NovoFuncionario.SalarioMensal := StrToFloatDef(edtSalario.Text, 0.0);
  FListaFuncionarios.Add(NovoFuncionario);
  Limpar;
end;

procedure TForm1.btnHistoricoClick(Sender: TObject);
var
  Funcionario: TFuncionario;
begin
  mmResultado.Clear;
  for Funcionario in FListaFuncionarios do
      begin
        mmResultado.Lines.Add('Nome do funcionário: '+ Funcionario.Nome);
        mmResultado.Lines.Add('Sobrenome do funcionário: '+ Funcionario.Sobrenome);
        mmResultado.Lines.Add('Salário mensal : '+ FloatToStr(Funcionario.SalarioMensal));
        mmResultado.Lines.Add(EmptyStr);
      end;
end;

procedure TForm1.btnLimparDadosClick(Sender: TObject);
begin
  Limpar;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FListaFuncionarios := TList<TFuncionario>.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FListaFuncionarios);
end;

end.

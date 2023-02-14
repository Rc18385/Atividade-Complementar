object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 295
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 15
    Width = 94
    Height = 13
    Caption = 'Informe o nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 153
    Top = 15
    Width = 126
    Height = 13
    Caption = 'Informe o sobrenome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 36
    Top = 61
    Width = 100
    Height = 13
    Caption = 'Informe o sal'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 36
    Top = 113
    Width = 147
    Height = 13
    Caption = 'Funcion'#225'rios cadastrados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 36
    Top = 34
    Width = 94
    Height = 21
    TabOrder = 0
  end
  object edtSobrenome: TEdit
    Left = 153
    Top = 34
    Width = 126
    Height = 21
    TabOrder = 1
  end
  object edtSalario: TEdit
    Left = 36
    Top = 80
    Width = 94
    Height = 21
    TabOrder = 2
  end
  object btnGravar: TButton
    Left = 153
    Top = 78
    Width = 126
    Height = 25
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object mmResultado: TMemo
    Left = 36
    Top = 136
    Width = 243
    Height = 105
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object btnLimparDados: TButton
    Left = 36
    Top = 249
    Width = 94
    Height = 25
    Caption = 'Limpar Dados'
    TabOrder = 5
    OnClick = btnLimparDadosClick
  end
  object btnHistorico: TButton
    Left = 188
    Top = 249
    Width = 91
    Height = 25
    Caption = 'Hist'#243'rico'
    TabOrder = 6
    OnClick = btnHistoricoClick
  end
end

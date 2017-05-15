object frmFaturamentoTipo: TfrmFaturamentoTipo
  Left = 398
  Top = 228
  BorderStyle = bsSingle
  Caption = 'Faturamento'
  ClientHeight = 96
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btncancelar: TcxButton
    Left = 167
    Top = 65
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 5
  end
  object btnok: TcxButton
    Left = 87
    Top = 65
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    ModalResult = 1
    TabOrder = 4
    OnClick = btnokClick
  end
  object chkarquivo: TCheckBox
    Left = 13
    Top = 15
    Width = 115
    Height = 17
    Caption = 'Ler de arquivo texto'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = chkarquivoClick
  end
  object chkbanco: TCheckBox
    Left = 13
    Top = 42
    Width = 213
    Height = 17
    Caption = 'Buscar pedidos cadastrados no sistema'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = chkbancoClick
  end
  object ckbmensalidade: TCheckBox
    Left = 232
    Top = 42
    Width = 113
    Height = 17
    Caption = 'Gerar Mensalidade'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = chkbancoClick
  end
  object rdg: TRadioGroup
    Left = 128
    Top = 6
    Width = 216
    Height = 32
    Caption = 'CSV'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'sem valores'
      'com valores')
    TabOrder = 1
  end
end

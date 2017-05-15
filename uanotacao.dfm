object frmAnotacao: TfrmAnotacao
  Left = 397
  Top = 157
  Caption = 'Anota'#231#227'o'
  ClientHeight = 405
  ClientWidth = 714
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
  object Label1: TLabel
    Left = 16
    Top = 11
    Width = 21
    Height = 13
    Caption = 'Tipo'
    Transparent = True
  end
  object cbx: TcxComboBox
    Left = 43
    Top = 8
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'Anota'#231#227'o'
      'Aviso'
      'Comunica'#231#227'o'
      'Contato'
      'Observa'#231#227'o'
      'Solu'#231#227'o')
    Properties.OnChange = cbxPropertiesChange
    TabOrder = 0
    Width = 169
  end
  object rce: TcxRichEdit
    Left = 16
    Top = 32
    TabOrder = 1
    Height = 340
    Width = 648
  end
  object btncancelar: TcxButton
    Left = 343
    Top = 376
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object btnok: TcxButton
    Left = 263
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    TabOrder = 3
    OnClick = btnokClick
  end
end

object frmdlginfNumIntervencao: TfrmdlginfNumIntervencao
  Left = 407
  Top = 207
  BorderStyle = bsDialog
  Caption = 'Informe o N'#250'mero'
  ClientHeight = 63
  ClientWidth = 324
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
  object lbl: TLabel
    Left = 8
    Top = 10
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    Transparent = True
  end
  object btncancelar: TcxButton
    Left = 170
    Top = 32
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object btnok: TcxButton
    Left = 79
    Top = 32
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 1
    OnClick = btnokClick
  end
  object edtcdintervencao: TEdit
    Left = 49
    Top = 7
    Width = 271
    Height = 21
    TabOrder = 0
    OnKeyPress = edtcdintervencaoKeyPress
  end
end

object frmdlgchaveuso: Tfrmdlgchaveuso
  Left = 407
  Top = 207
  BorderStyle = bsDialog
  Caption = 'Chave de Uso'
  ClientHeight = 155
  ClientWidth = 418
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
    Left = 2
    Top = 103
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    Transparent = True
  end
  object lblnucnpj: TLabel
    Left = 2
    Top = 81
    Width = 27
    Height = 13
    Caption = 'CNPJ'
    Transparent = True
  end
  object lblrzsocial: TLabel
    Left = 2
    Top = 59
    Width = 63
    Height = 13
    Caption = 'Raz'#227'o Social'
    Transparent = True
  end
  object lbl1: TLabel
    Left = 2
    Top = 4
    Width = 407
    Height = 39
    Caption = 
      'Para que o sistema funcione corretamente '#233' importante que a data' +
      ' e hora do seu computador e/ou servidor estejam corretas. Veriqu' +
      'e se a data e hora est'#227'o de acordo com hor'#225'rio de Brasilia. Cliq' +
      'ue no link abaixo para verificar se est'#225' correto.'
    Transparent = True
    WordWrap = True
  end
  object lbl2: TLabel
    Left = 0
    Top = 45
    Width = 157
    Height = 13
    Caption = 'http://www.horariodebrasilia.org/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = lbl2Click
  end
  object btncancelar: TcxButton
    Left = 217
    Top = 125
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 4
  end
  object btnok: TcxButton
    Left = 126
    Top = 125
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object edtnuchaveuso: TEdit
    Left = 69
    Top = 100
    Width = 346
    Height = 21
    TabOrder = 2
  end
  object edtnucnpj: TEdit
    Left = 69
    Top = 78
    Width = 346
    Height = 21
    TabStop = False
    BorderStyle = bsNone
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 1
  end
  object edtrzsocial: TEdit
    Left = 69
    Top = 59
    Width = 346
    Height = 21
    TabStop = False
    BorderStyle = bsNone
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 0
  end
end

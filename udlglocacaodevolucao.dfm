object frmdlglocacaodevolucao: Tfrmdlglocacaodevolucao
  Left = 543
  Top = 410
  BorderStyle = bsDialog
  Caption = 'Devolu'#231#227'o'
  ClientHeight = 298
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnok: TcxButton
    Left = 110
    Top = 271
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    TabOrder = 8
    OnClick = btnokClick
  end
  object btncancelar: TcxButton
    Left = 206
    Top = 271
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    TabOrder = 9
    OnClick = btncancelarClick
  end
  object cxLabel1: TcxLabel
    Left = 1
    Top = 5
    Caption = 'Data'
  end
  object cxLabel2: TcxLabel
    Left = 193
    Top = 5
    Caption = 'Hora'
  end
  object cxLabel3: TcxLabel
    Left = 1
    Top = 29
    Caption = 'N'#250'mero Dias'
  end
  object cxLabel4: TcxLabel
    Left = 1
    Top = 53
    Caption = 'Quantidade'
  end
  object cxLabel5: TcxLabel
    Left = 1
    Top = 77
    Caption = 'Valor Unit'#225'rio'
  end
  object cxLabel6: TcxLabel
    Left = 1
    Top = 101
    Caption = 'Valor Total'
  end
  object edtdtentrega: TcxDateEdit
    Left = 72
    Top = 4
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    OnExit = edtdtentregaExit
    Width = 121
  end
  object edthrentrega: TcxTimeEdit
    Left = 264
    Top = 4
    EditValue = 0d
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Width = 121
  end
  object edtnudias: TcxSpinEdit
    Left = 73
    Top = 28
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Width = 121
  end
  object edtqtitem: TcxSpinEdit
    Left = 73
    Top = 52
    Properties.OnChange = edtqtitemPropertiesChange
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Width = 121
  end
  object edtvlunitario: TcxCalcEdit
    Left = 73
    Top = 76
    EditValue = 0.000000000000000000
    Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    Properties.OnChange = edtvlunitarioPropertiesChange
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    Width = 121
  end
  object edtvltotal: TcxCalcEdit
    Left = 73
    Top = 100
    EditValue = 0.000000000000000000
    Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    Properties.OnChange = edtvltotalPropertiesChange
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Width = 121
  end
  object memdsobservacao: TcxMemo
    Left = 1
    Top = 137
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 7
    Height = 129
    Width = 385
  end
  object cxLabel7: TcxLabel
    Left = 1
    Top = 123
    Caption = 'Observa'#231#227'o'
  end
  object edtnusaida: TcxTextEdit
    Left = 264
    Top = 100
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 6
    OnKeyPress = edtnusaidaKeyPress
    Width = 121
  end
  object cxLabel8: TcxLabel
    Left = 193
    Top = 101
    Caption = 'NF Devoluc.'
  end
end

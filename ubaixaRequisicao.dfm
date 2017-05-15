object frmBaixaRequisicao: TfrmBaixaRequisicao
  Left = 375
  Top = 139
  ClientHeight = 363
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object bvl: TBevel
    Left = 0
    Top = 0
    Width = 661
    Height = 49
    Align = alTop
    Shape = bsLeftLine
  end
  object lbldtsaida: TLabel
    Left = 8
    Top = 6
    Width = 55
    Height = 13
    Caption = 'Data Sa'#237'da'
    Transparent = True
  end
  object lblcntcusto: TLabel
    Left = 8
    Top = 28
    Width = 76
    Height = 13
    Caption = 'Centro de Custo'
    Transparent = True
  end
  object lblnmcntcusto: TLabel
    Left = 214
    Top = 30
    Width = 322
    Height = 13
    AutoSize = False
    Transparent = True
  end
  object btnok: TcxButton
    Left = 226
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    Enabled = False
    LookAndFeel.NativeStyle = False
    TabOrder = 0
    OnClick = btnokClick
  end
  object btncancelar: TcxButton
    Left = 306
    Top = 336
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    LookAndFeel.NativeStyle = False
    ModalResult = 2
    TabOrder = 1
  end
  object edtcdcntcusto: TcxButtonEdit
    Left = 87
    Top = 26
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = edtcdcntcustoPropertiesButtonClick
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    OnExit = edtcdcntcustoExit
    OnKeyDown = edtcdcntcustoKeyDown
    OnKeyPress = edtcdcntcustoKeyPress
    Width = 121
  end
  object edtdtsaida: TcxDateEdit
    Left = 88
    Top = 3
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Width = 121
  end
  object panel2: TcxLabel
    Left = 0
    Top = 49
    Align = alTop
    Caption = 
      '  PRODUTO                                                       ' +
      '          LOTE QUANTIDADE'
    ParentFont = False
    Style.BorderStyle = ebsSingle
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Courier New'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object clb: TcxCheckListBox
    Left = 0
    Top = 67
    Width = 661
    Height = 232
    Align = alTop
    Items = <>
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    OnClickCheck = clbClickCheck
    OnKeyPress = clbKeyPress
  end
end

object frmcalculopeso: Tfrmcalculopeso
  Left = 804
  Top = 256
  BorderStyle = bsDialog
  Caption = 'C'#225'lculo do Peso'
  ClientHeight = 272
  ClientWidth = 352
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 10
    Top = 30
    Width = 337
    Height = 2
  end
  object btnok: TcxButton
    Left = 99
    Top = 246
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    Enabled = False
    LookAndFeel.NativeStyle = False
    ModalResult = 1
    TabOrder = 0
  end
  object btncancel: TcxButton
    Left = 179
    Top = 246
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    LookAndFeel.NativeStyle = False
    ModalResult = 2
    TabOrder = 1
  end
  object lbl1: TcxLabel
    Left = 8
    Top = -1
    Caption = 'Forma:'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -24
    Style.Font.Name = 'Arial Rounded MT Bold'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object lblnmforma: TcxLabel
    Left = 104
    Top = 1
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -24
    Style.Font.Name = 'Times New Roman'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object lblmaterial: TcxLabel
    Left = 8
    Top = 33
    Caption = 'Material:'
  end
  object lblnmmaterial: TcxLabel
    Left = 53
    Top = 33
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Height = 17
    Width = 151
  end
  object lbl2: TcxLabel
    Left = 208
    Top = 33
    Caption = 'Peso Espec'#237'fico:'
  end
  object lblqtpesoespecifico: TcxLabel
    Left = 298
    Top = 33
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Height = 17
    Width = 46
  end
  object lbl5: TcxLabel
    Left = 8
    Top = 198
    Caption = 'F'#243'rmula'
  end
  object lbldsformula: TcxLabel
    Left = 61
    Top = 198
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Height = 17
    Width = 287
  end
  object lbl6: TcxLabel
    Left = 8
    Top = 214
    Caption = 'Peso (kg):'
  end
  object lblqtpeso: TcxLabel
    Left = 61
    Top = 214
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Height = 17
    Width = 287
  end
  object cxLabel16: TcxLabel
    Left = 8
    Top = 229
    Caption = 'C'#225'lculo'
  end
  object lblcalculo: TcxLabel
    Left = 61
    Top = 229
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Height = 17
    Width = 287
  end
  object ntb: TNotebook
    Left = 8
    Top = 52
    Width = 337
    Height = 147
    PageIndex = 8
    TabOrder = 14
    object TPage
      Left = 0
      Top = 0
      Caption = 'BARRA REDONDA'
      object edtbarraredondadiametro: TcxCalcEdit
        Left = 85
        Top = 5
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 121
      end
      object edtbarraredondacomprimento: TcxCalcEdit
        Left = 85
        Top = 30
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 121
      end
      object cxLabel3: TcxLabel
        Left = 5
        Top = 5
        Caption = 'Di'#226'metro'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel4: TcxLabel
        Left = 5
        Top = 30
        Caption = 'Comprimento'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'BARRA CHATA'
      object edtbarrachatacomprimento: TcxCalcEdit
        Left = 85
        Top = 5
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 121
      end
      object edtbarrachatadiamentro: TcxCalcEdit
        Left = 85
        Top = 55
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 5
        Top = 5
        Caption = 'Comprimento'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel2: TcxLabel
        Left = 5
        Top = 55
        Caption = 'Espessura'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel5: TcxLabel
        Left = 5
        Top = 30
        Caption = 'Largura'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbarrachatalargura: TcxCalcEdit
        Left = 85
        Top = 30
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 121
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'forma'
      object edtformaqtkilometro: TcxCalcEdit
        Left = 85
        Top = 5
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 121
      end
      object edtformaqtmetro: TcxCalcEdit
        Left = 85
        Top = 30
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 121
      end
      object lbl3: TcxLabel
        Left = 5
        Top = 5
        Caption = 'Kilo/Metro'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object lbl4: TcxLabel
        Left = 5
        Top = 30
        Caption = 'Metro'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'CHAPA'
      object cxLabel6: TcxLabel
        Left = 5
        Top = 5
        Caption = 'Comprimento'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel7: TcxLabel
        Left = 5
        Top = 30
        Caption = 'Largura'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel8: TcxLabel
        Left = 5
        Top = 55
        Caption = 'Espessura'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtchapacomprimento: TcxCalcEdit
        Left = 85
        Top = 5
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 121
      end
      object edtchapalargura: TcxCalcEdit
        Left = 85
        Top = 30
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Width = 121
      end
      object edtchapaespessura: TcxCalcEdit
        Left = 85
        Top = 55
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Width = 121
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'BOBINA'
      object cxLabel9: TcxLabel
        Left = 5
        Top = 5
        Caption = 'Largura'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbobinalargura: TcxCalcEdit
        Left = 85
        Top = 5
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 121
      end
      object edtbobinaespessura: TcxCalcEdit
        Left = 85
        Top = 30
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 121
      end
      object cxLabel10: TcxLabel
        Left = 5
        Top = 30
        Caption = 'Espessura'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'BUCHA'
      object cxLabel11: TcxLabel
        Left = 5
        Top = 5
        Caption = 'Di'#226'm Externo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbuchadiamexterno: TcxCalcEdit
        Left = 85
        Top = 5
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 121
      end
      object edtbuchadiaminterno: TcxCalcEdit
        Left = 85
        Top = 30
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 121
      end
      object cxLabel12: TcxLabel
        Left = 5
        Top = 30
        Caption = 'Di'#226'm Interno'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel13: TcxLabel
        Left = 5
        Top = 54
        Caption = 'Comprimento'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbuchacomprimento: TcxCalcEdit
        Left = 85
        Top = 54
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 121
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'DISCO CHAPA'
      object cxLabel14: TcxLabel
        Left = 5
        Top = 5
        Caption = 'Di'#226'metro'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel15: TcxLabel
        Left = 5
        Top = 30
        Caption = 'Espessura'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtdiscochapadiametro: TcxCalcEdit
        Left = 85
        Top = 5
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 121
      end
      object edtdiscochapaespessura: TcxCalcEdit
        Left = 85
        Top = 30
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 121
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'BUCHA FLANGEADA'
      object cxLabel17: TcxLabel
        Left = 5
        Top = 2
        Caption = 'Di'#226'm Externo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbuchaflangediaexterno: TcxCalcEdit
        Left = 96
        Top = 2
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 121
      end
      object edtbuchaflangediacorpo: TcxCalcEdit
        Left = 96
        Top = 42
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 121
      end
      object cxLabel18: TcxLabel
        Left = 5
        Top = 42
        Caption = 'Di'#226'm Corpo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel19: TcxLabel
        Left = 5
        Top = 22
        Caption = 'Comprimento 1'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbuchaflangecomprimentro1: TcxCalcEdit
        Left = 96
        Top = 22
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 121
      end
      object cxLabel20: TcxLabel
        Left = 5
        Top = 82
        Caption = 'Di'#226'm Furo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel21: TcxLabel
        Left = 5
        Top = 62
        Caption = 'Comprimento 2'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbuchaflangecomprimento2: TcxCalcEdit
        Left = 96
        Top = 62
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 121
      end
      object edtbuchaflangediafuro: TcxCalcEdit
        Left = 96
        Top = 82
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Width = 121
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'BUCHA 2 FLANGES'
      object cxLabel22: TcxLabel
        Left = 5
        Top = 2
        Caption = 'Di'#226'm Flange 1'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbucha2flangediaexterno: TcxCalcEdit
        Left = 96
        Top = 2
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 121
      end
      object edtbucha2flangediacorpo: TcxCalcEdit
        Left = 96
        Top = 42
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 121
      end
      object cxLabel23: TcxLabel
        Left = 5
        Top = 42
        Caption = 'Di'#226'm Flange 2'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel24: TcxLabel
        Left = 5
        Top = 22
        Caption = 'Comp Flange 1'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbucha2flangecomprimento1: TcxCalcEdit
        Left = 96
        Top = 22
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 121
      end
      object cxLabel25: TcxLabel
        Left = 5
        Top = 82
        Caption = 'Di'#226'm Furo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel26: TcxLabel
        Left = 5
        Top = 62
        Caption = 'Comp Flange 2'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbucha2flangecomprimento2: TcxCalcEdit
        Left = 96
        Top = 62
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 121
      end
      object edtbucha2flangediafuro: TcxCalcEdit
        Left = 96
        Top = 82
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Width = 121
      end
      object cxLabel27: TcxLabel
        Left = 5
        Top = 123
        Caption = 'Comp Corpo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edtbucha2flangecomprimento3: TcxCalcEdit
        Left = 96
        Top = 123
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Width = 121
      end
      object edtbucha2flangediaexterno2: TcxCalcEdit
        Left = 96
        Top = 103
        EditValue = 0.000000000000000000
        Properties.OnChange = CalcularPeso
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Width = 121
      end
      object cxLabel28: TcxLabel
        Left = 5
        Top = 103
        Caption = 'Di'#226'm Corpo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
    end
  end
end

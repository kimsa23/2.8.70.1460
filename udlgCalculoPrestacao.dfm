object frmdlgCalculoPrestacao: TfrmdlgCalculoPrestacao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'C'#225'lculo de Presta'#231#227'o'
  ClientHeight = 288
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object gbxcondicoes: TcxGroupBox
    Left = 0
    Top = 124
    Align = alTop
    Caption = 'Condi'#231#245'es'
    TabOrder = 2
    Height = 65
    Width = 774
    object Label5: TLabel
      Left = 160
      Top = 15
      Width = 40
      Height = 13
      Caption = '% Juros'
      Transparent = True
    end
    object Label6: TLabel
      Left = 2
      Top = 15
      Width = 65
      Height = 13
      Caption = 'Valor Entrada'
      Transparent = True
    end
    object Label12: TLabel
      Left = 375
      Top = 15
      Width = 38
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object edtprjuros: TcxCalcEdit
      Left = 160
      Top = 34
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnExit = exitcontrol
      Width = 150
    end
    object edtvlentrada: TcxCalcEdit
      Left = 2
      Top = 34
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnExit = exitcontrol
      Width = 150
    end
    object edtdtemissao: TcxDateEdit
      Left = 375
      Top = 34
      TabOrder = 2
      Width = 150
    end
  end
  object gbxlote: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Lote'
    TabOrder = 0
    Height = 62
    Width = 774
    object lblvltotal: TLabel
      Left = 2
      Top = 13
      Width = 41
      Height = 13
      Caption = 'Valor M2'
      Transparent = True
    end
    object Label1: TLabel
      Left = 160
      Top = 13
      Width = 44
      Height = 13
      Caption = 'Tamanho'
      Transparent = True
    end
    object Label2: TLabel
      Left = 550
      Top = 4
      Width = 134
      Height = 25
      Caption = 'Valor Im'#243'vel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtvlmetroquadrado: TcxCalcEdit
      Left = 2
      Top = 32
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnExit = exitcontrol
      Width = 150
    end
    object edtqttamanholote: TcxCalcEdit
      Left = 160
      Top = 32
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnExit = exitcontrol
      Width = 150
    end
    object edtvlimovel: TcxCurrencyEdit
      Left = 550
      Top = 25
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -24
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 195
    end
  end
  object gbxintermediaria: TcxGroupBox
    Left = 0
    Top = 62
    Align = alTop
    Caption = 'Intermedi'#225'ria'
    TabOrder = 1
    Height = 62
    Width = 774
    object Label3: TLabel
      Left = 160
      Top = 14
      Width = 62
      Height = 13
      Caption = 'Valor Parcela'
      Transparent = True
    end
    object Label8: TLabel
      Left = 0
      Top = 14
      Width = 63
      Height = 13
      Caption = 'Periodicidade'
      Transparent = True
    end
    object Label4: TLabel
      Left = 328
      Top = 6
      Width = 25
      Height = 25
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 550
      Top = 4
      Width = 206
      Height = 25
      Caption = 'Valor Intermedi'#225'ria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 375
      Top = 4
      Width = 108
      Height = 25
      Caption = '1'#186' Parcela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lbldtprimeiraperiodica: TLabel
      Left = 375
      Top = 28
      Width = 6
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 501
      Top = 4
      Width = 38
      Height = 25
      Caption = 'Qtd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblqtparcelaperiodica: TLabel
      Left = 533
      Top = 28
      Width = 6
      Height = 25
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtvlparcelaperiodica: TcxCalcEdit
      Left = 160
      Top = 31
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnExit = exitcontrol
      Width = 150
    end
    object cbxcdperiodicidade: TcxLookupComboBox
      Left = 0
      Top = 31
      Properties.KeyFieldNames = 'CDPERIODICIDADE'
      Properties.ListColumns = <
        item
          FieldName = 'NMPERIODICIDADE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 100
      Properties.OEMConvert = True
      EditValue = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnExit = exitcontrol
      Width = 150
    end
    object edtvlperiodicidade: TcxCurrencyEdit
      Left = 550
      Top = 25
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -24
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 195
    end
    object edtprperiodicidade: TcxCurrencyEdit
      Left = 309
      Top = 24
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -24
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 58
    end
  end
  object gbxFinanciamento: TcxGroupBox
    Left = 0
    Top = 189
    Align = alTop
    Caption = 'Financiamento'
    TabOrder = 3
    Height = 65
    Width = 774
    object Label10: TLabel
      Left = 2
      Top = 15
      Width = 55
      Height = 13
      Caption = 'N'#186' Parcelas'
      Transparent = True
    end
    object Label7: TLabel
      Left = 160
      Top = 6
      Width = 158
      Height = 25
      Caption = 'Parcela Mensal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 550
      Top = 4
      Width = 215
      Height = 25
      Caption = 'Valor Financiamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 375
      Top = 4
      Width = 108
      Height = 25
      Caption = '1'#186' Parcela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lbldtprimeiramensal: TLabel
      Left = 375
      Top = 28
      Width = 6
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtvlfinanciamento: TcxCurrencyEdit
      Left = 550
      Top = 25
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -24
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 195
    end
    object edtvlparcelamensal: TcxCurrencyEdit
      Left = 160
      Top = 28
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -24
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 150
    end
    object edtqtparcela: TcxSpinEdit
      Left = 2
      Top = 34
      Properties.MaxValue = 255.000000000000000000
      Properties.MinValue = 1.000000000000000000
      TabOrder = 0
      Value = 1
      OnExit = exitcontrol
      Width = 150
    end
  end
  object btncancelar: TcxButton
    Left = 389
    Top = 256
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    ModalResult = 2
    TabOrder = 5
  end
  object btnok: TcxButton
    Left = 309
    Top = 256
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    TabOrder = 4
  end
end

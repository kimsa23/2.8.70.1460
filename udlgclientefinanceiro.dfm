object frmdlgclientefinanceiro: Tfrmdlgclientefinanceiro
  Left = 600
  Top = 167
  BorderStyle = bsDialog
  Caption = 'Estat'#237'stica Financeira do Cliente'
  ClientHeight = 530
  ClientWidth = 424
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
  object vgrd: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 424
    Height = 387
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    OptionsView.CellAutoHeight = True
    OptionsView.ScrollBars = ssVertical
    OptionsView.ShowEditButtons = ecsbAlways
    OptionsView.GridLineColor = 65408
    OptionsView.RowHeaderWidth = 294
    OptionsBehavior.AlwaysShowEditor = True
    OptionsData.Editing = False
    ParentFont = False
    TabOrder = 0
    Version = 1
    object lblestatistica: TcxCategoryRow
      Properties.Caption = 'Estat'#237'stica'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object edtvljurosnrecebido: TcxEditorRow
      Properties.Caption = 'Juros n'#227'o recebido'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 1
      ParentID = 0
      Index = 0
      Version = 1
    end
    object edtvlmaiorfatura: TcxEditorRow
      Properties.Caption = 'Maior Fatura'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 2
      ParentID = 0
      Index = 1
      Version = 1
    end
    object edtvlultimacommpra: TcxEditorRow
      Properties.Caption = #218'ltima Compra'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 3
      ParentID = 0
      Index = 2
      Version = 1
    end
    object edtvlprimeiracompra: TcxEditorRow
      Properties.Caption = 'Primeira Compra'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 4
      ParentID = 0
      Index = 3
      Version = 1
    end
    object edtvlmaioracumulo: TcxEditorRow
      Properties.Caption = 'Maior Ac'#250'mulo'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 5
      ParentID = 0
      Index = 4
      Version = 1
    end
    object vgrdCategoryRow1: TcxCategoryRow
      Properties.Caption = 'Atraso'
      ID = 6
      ParentID = -1
      Index = 1
      Version = 1
    end
    object edtnudiasmaioratrasohistorico: TcxEditorRow
      Properties.Caption = 'N'#250'mero dias Maior Atraso Hist'#243'rico'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 7
      ParentID = 6
      Index = 0
      Version = 1
    end
    object edtdiasmaioratraso12meses: TcxEditorRow
      Properties.Caption = 'N'#186' dias Maior Atraso Hist. 12 meses:'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 8
      ParentID = 6
      Index = 1
      Version = 1
    end
    object edtdtmaioratrasohistorico12meses: TcxEditorRow
      Properties.Caption = 'Dt Maior Atraso Hist'#243'rico 12 meses'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 9
      ParentID = 6
      Index = 2
      Version = 1
    end
    object edtatrasomedio12meses: TcxEditorRow
      Properties.Caption = 'Atraso M'#233'dio 12 meses'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = Null
      ID = 10
      ParentID = 6
      Index = 3
      Version = 1
    end
    object edtnutitulosatrasado: TcxEditorRow
      Properties.Caption = 'N'#250'mero de T'#237'tulos Atrasados'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 11
      ParentID = 6
      Index = 4
      Version = 1
    end
    object edtdtmaioratraso: TcxEditorRow
      Properties.Caption = 'Data Maior Atraso'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 12
      ParentID = 6
      Index = 5
      Version = 1
    end
    object edtnudiasmaioratraso: TcxEditorRow
      Properties.Caption = 'N'#250'mero dias Maior Atraso'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 13
      ParentID = 6
      Index = 6
      Version = 1
    end
    object edtvlatrasomedio: TcxEditorRow
      Properties.Caption = 'Atraso M'#233'dio'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 14
      ParentID = 6
      Index = 7
      Version = 1
    end
    object edtdtmaioratrasohistorico: TcxEditorRow
      Properties.Caption = 'Data Maior Atraso Hist'#243'rico'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = ''
      ID = 15
      ParentID = 6
      Index = 8
      Version = 1
    end
    object edtvlatrasado: TcxEditorRow
      Properties.Caption = 'Valor Atrasado'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 16
      ParentID = 6
      Index = 9
      Version = 1
    end
    object lblcredito: TcxCategoryRow
      Properties.Caption = 'Cr'#233'dito'
      ID = 17
      ParentID = -1
      Index = 2
      Version = 1
    end
    object edtpedidosemaberto: TcxEditorRow
      Properties.Caption = 'Pedidos em aberto'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'String'
      Properties.Value = '0'
      ID = 18
      ParentID = 17
      Index = 0
      Version = 1
    end
    object edtvlutilizado: TcxEditorRow
      Properties.Caption = 'Valor Utilizado'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'Currency'
      Properties.Value = 0c
      ID = 19
      ParentID = 17
      Index = 1
      Version = 1
    end
    object edtlimitecredito: TcxEditorRow
      Properties.Caption = 'L'#237'mite Cr'#233'dito'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.Alignment.Horz = taRightJustify
      Properties.DataBinding.ValueType = 'Currency'
      Properties.Value = 100000000c
      ID = 20
      ParentID = 17
      Index = 2
      Version = 1
    end
  end
  object pnl: TPanel
    Left = 0
    Top = 492
    Width = 424
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnfechar: TcxButton
      Left = 170
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      Default = True
      TabOrder = 0
      OnClick = btnfecharClick
    end
  end
  object gbxobservacao: TcxGroupBox
    Left = 0
    Top = 387
    Align = alBottom
    Caption = 'Observa'#231#227'o Financeiro'
    TabOrder = 2
    Height = 105
    Width = 424
    object memobsfinanceira: TcxMemo
      Left = 2
      Top = 18
      Align = alClient
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 85
      Width = 420
    end
  end
end

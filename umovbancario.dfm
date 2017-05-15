object frmmovbancario: Tfrmmovbancario
  Left = 272
  Top = 297
  BorderStyle = bsDialog
  Caption = 'nuni'
  ClientHeight = 494
  ClientWidth = 1093
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object grd: TcxGrid
    Left = 0
    Top = 193
    Width = 1093
    Height = 253
    Align = alClient
    TabOrder = 2
    Visible = False
    LookAndFeel.NativeStyle = False
    object grdDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Enabled = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Enabled = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Refresh.Enabled = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Enabled = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Enabled = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dtsbaixa
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdDBTableView1NUBAIXA: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'NUBAIXA'
      end
      object grdDBTableView1VLBAIXA: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'VLBAIXA'
      end
      object grdDBTableView1VLMULTA: TcxGridDBColumn
        Caption = 'Multa'
        DataBinding.FieldName = 'VLMULTA'
      end
      object grdDBTableView1VLJURO: TcxGridDBColumn
        Caption = 'Juro'
        DataBinding.FieldName = 'VLJURO'
      end
      object grdDBTableView1VLDESCONTO: TcxGridDBColumn
        Caption = 'Desconto'
        DataBinding.FieldName = 'VLDESCONTO'
      end
      object grdDBTableView1VLABATIMENTO: TcxGridDBColumn
        Caption = 'Abatimento'
        DataBinding.FieldName = 'VLABATIMENTO'
      end
      object grdDBTableView1VLDEVOLUCAO: TcxGridDBColumn
        Caption = 'Devolu'#231#227'o'
        DataBinding.FieldName = 'VLDEVOLUCAO'
      end
      object grdDBTableView1VLLIQUIDO: TcxGridDBColumn
        Caption = 'L'#237'quido'
        DataBinding.FieldName = 'VLLIQUIDO'
      end
    end
    object tbv: TcxGridDBBandedTableView
      OnKeyDown = ExportarGradeExcel
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Enabled = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Enabled = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Refresh.Enabled = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Enabled = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Enabled = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Enabled = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dtsbaixa
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLABATIMENTO'
          Column = tbvVLABATIMENTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLBAIXA'
          Column = tbvVLBAIXA
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLDESCONTO'
          Column = tbvVLDESCONTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLDEVOLUCAO'
          Column = tbvVLDEVOLUCAO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLJURO'
          Column = tbvVLJURO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLLIQUIDO'
          Column = tbvVLLIQUIDO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLMULTA'
          Column = tbvVLMULTA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'Documento'
          Width = 373
        end
        item
          Caption = 'Valor'
        end
        item
          Caption = 'Acr'#233'scimo'
        end
        item
          Caption = 'Devolu'#231#245'es'
        end
        item
          Caption = 'L'#237'quido'
        end>
      object tbvNUBAIXA: TcxGridDBBandedColumn
        Caption = 'N'#250'mero'
        DataBinding.FieldName = 'NUBAIXA'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = tbvNUBAIXAPropertiesButtonClick
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvVLMULTA: TcxGridDBBandedColumn
        Caption = 'Multa'
        DataBinding.FieldName = 'VLMULTA'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvVLJURO: TcxGridDBBandedColumn
        Caption = 'Juro'
        DataBinding.FieldName = 'VLJURO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvVLBAIXA: TcxGridDBBandedColumn
        Caption = 'Baixa'
        DataBinding.FieldName = 'VLBAIXA'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvVLDESCONTO: TcxGridDBBandedColumn
        Caption = 'Desconto'
        DataBinding.FieldName = 'VLDESCONTO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvVLABATIMENTO: TcxGridDBBandedColumn
        Caption = 'Abatimento'
        DataBinding.FieldName = 'VLABATIMENTO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvVLDEVOLUCAO: TcxGridDBBandedColumn
        Caption = 'Devolu'#231#227'o'
        DataBinding.FieldName = 'VLDEVOLUCAO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvVLLIQUIDO: TcxGridDBBandedColumn
        Caption = 'Recebido'
        DataBinding.FieldName = 'VLLIQUIDO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Properties.ReadOnly = True
        Options.Focusing = False
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvNUENTRADA: TcxGridDBBandedColumn
        Caption = 'Compra'
        DataBinding.FieldName = 'NUENTRADA'
        Visible = False
        Options.Focusing = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvRZSOCIALAUTPAGTO: TcxGridDBBandedColumn
        Caption = 'Fornecedor'
        DataBinding.FieldName = 'RZSOCIALAUTPAGTO'
        Visible = False
        Options.Focusing = False
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvNMTPCOBRANCAAUTPAGTO: TcxGridDBBandedColumn
        Caption = 'Tipo Cobran'#231'a'
        DataBinding.FieldName = 'NMTPCOBRANCAAUTPAGTO'
        Visible = False
        Options.Focusing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tbvNUSAIDA: TcxGridDBBandedColumn
        Caption = 'Nota Fiscal'
        DataBinding.FieldName = 'NUSAIDA'
        Visible = False
        Options.Focusing = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvRZSOCIALDUPLICATA: TcxGridDBBandedColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'RZSOCIALDUPLICATA'
        Visible = False
        Options.Focusing = False
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tbvNMTPCOBRANCADUPLICATA: TcxGridDBBandedColumn
        Caption = 'Tipo Cobran'#231'a'
        DataBinding.FieldName = 'NMTPCOBRANCADUPLICATA'
        Visible = False
        Options.Focusing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
    end
  end
  object gbxextrato: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Extrato'
    TabOrder = 4
    Height = 53
    Width = 1093
    object lblNMTPEXTRATO: TLabel
      Left = 95
      Top = 31
      Width = 202
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblemissaoextrato: TLabel
      Left = 8
      Top = 18
      Width = 47
      Height = 13
      Caption = 'Emiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblTPEXTRATO: TLabel
      Left = 95
      Top = 18
      Width = 26
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblCATEXTRATO: TLabel
      Left = 303
      Top = 18
      Width = 55
      Height = 13
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblEXTRATO: TLabel
      Left = 512
      Top = 18
      Width = 44
      Height = 13
      Caption = 'N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblvlextrato: TLabel
      Left = 730
      Top = 5
      Width = 82
      Height = 42
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbldtemissaoextrato: TLabel
      Left = 8
      Top = 31
      Width = 84
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblNMCATEXTRATO: TLabel
      Left = 303
      Top = 31
      Width = 210
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblNUEXTRATO: TLabel
      Left = 512
      Top = 31
      Width = 121
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtVLEXTRATO: TcxCurrencyEdit
      Left = 814
      Top = 2
      Enabled = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -37
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.TextColor = clHotLight
      TabOrder = 0
      Width = 248
    end
  end
  object pnl: TPanel
    Left = 0
    Top = 53
    Width = 1093
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lbl2: TLabel
      Left = 240
      Top = 2
      Width = 83
      Height = 13
      Caption = 'Movimenta'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblnumovbancario: TLabel
      Left = 440
      Top = 2
      Width = 44
      Height = 13
      Caption = 'N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lbldshistorico: TLabel
      Left = 520
      Top = 2
      Width = 51
      Height = 13
      Caption = 'Hist'#243'rico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lbl1: TLabel
      Left = 155
      Top = 2
      Width = 47
      Height = 13
      Caption = 'Emiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblcdconta: TLabel
      Left = 5
      Top = 2
      Width = 34
      Height = 13
      Caption = 'Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lbldsnominal: TLabel
      Left = 770
      Top = 2
      Width = 37
      Height = 13
      Caption = 'Nominal'
      Transparent = True
      Layout = tlBottom
      Visible = False
    end
    object lblplconta: TLabel
      Left = 5
      Top = 41
      Width = 76
      Height = 13
      Caption = 'Plano Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object cbxcdmovimentacao: TcxDBLookupComboBox
      Left = 240
      Top = 16
      DataBinding.DataField = 'CDMOVIMENTACAO'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDMOVIMENTACAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMMOVIMENTACAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = cbxcdmovimentacaoEnter
      OnExit = colorexit
      Width = 200
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 155
      Top = 16
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 85
    end
    object edtnumovbancario: TcxDBTextEdit
      Left = 440
      Top = 16
      DataBinding.DataField = 'NUMOVBANCARIO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Visible = False
      OnEnter = colorenter
      OnExit = colorexit
      Width = 80
    end
    object edtdshistorico: TcxDBTextEdit
      Left = 520
      Top = 16
      DataBinding.DataField = 'DSHISTORICO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Visible = False
      OnEnter = colorenter
      OnExit = colorexit
      Width = 250
    end
    object cbxcdconta: TcxDBLookupComboBox
      Left = 5
      Top = 16
      DataBinding.DataField = 'CDCONTA'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDCONTA'
      Properties.ListColumns = <
        item
          FieldName = 'NMCONTA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = cbxcdcontaEnter
      OnExit = colorexit
      Width = 150
    end
    object edtDSNOMINAL: TcxDBTextEdit
      Left = 770
      Top = 16
      DataBinding.DataField = 'DSNOMINAL'
      DataBinding.DataSource = dts
      TabOrder = 5
      Visible = False
      Width = 250
    end
    object ckbboconciliado: TcxDBCheckBox
      Left = 1020
      Top = 16
      Caption = 'Conciliado'
      DataBinding.DataField = 'BOCONCILIADO'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
    end
    object edtnuplconta: TcxDBButtonEdit
      Left = 5
      Top = 56
      DataBinding.DataField = 'NUPLCONTA'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtnuplcontaPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Visible = False
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtnuplcontaKeyDown
      Width = 112
    end
    object txtnmplconta: TcxDBLabel
      Left = 119
      Top = 56
      DataBinding.DataField = 'NMPLCONTA'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
      Height = 21
      Width = 210
    end
  end
  object pnlbottom: TPanel
    Left = 0
    Top = 446
    Width = 1093
    Height = 48
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object lblvllancamento: TLabel
      Left = 730
      Top = 5
      Width = 82
      Height = 42
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblDSEXTRATO: TLabel
      Left = 88
      Top = 4
      Width = 27
      Height = 13
      Caption = 'Nome'
      Visible = False
    end
    object btnok: TButton
      Left = 469
      Top = 16
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnokClick
    end
    object CancelBtn: TButton
      Left = 549
      Top = 16
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object edtvllancamento: TcxDBCurrencyEdit
      Left = 814
      Top = 2
      DataBinding.DataField = 'VLLANCAMENTO'
      DataBinding.DataSource = dts
      Enabled = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -37
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.TextColor = clHotLight
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 248
    end
    object btnlink: TcxButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Link'
      LookAndFeel.NativeStyle = False
      TabOrder = 3
      Visible = False
      OnClick = btnlinkClick
    end
    object edtdsextrato: TcxTextEdit
      Left = 88
      Top = 20
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Visible = False
      OnEnter = colorenter
      OnExit = colorexit
      Width = 369
    end
  end
  object gbxdsobservacao: TcxGroupBox
    Left = 0
    Top = 133
    Align = alTop
    Caption = 'Observa'#231#227'o'
    TabOrder = 1
    Visible = False
    Height = 60
    Width = 1093
    object memdsobservacao: TcxDBMemo
      Left = 2
      Top = 18
      Align = alClient
      DataBinding.DataField = 'DSOBSERVACAO'
      DataBinding.DataSource = dts
      TabOrder = 0
      Height = 40
      Width = 1089
    end
  end
  object cdsbaixa: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'sumvlliquido'
        Expression = 'sum(vlliquido)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdssdsbaixa
    Params = <>
    BeforePost = cdsbaixaBeforePost
    AfterPost = cdsbaixaAfterPost
    AfterDelete = cdsbaixaAfterDelete
    OnNewRecord = cdsbaixaNewRecord
    Left = 901
    Top = 54
    object cdsbaixaCDBAIXA: TIntegerField
      FieldName = 'CDBAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsbaixaCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaCDTPBAIXA: TIntegerField
      FieldName = 'CDTPBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaCDADNTCLIENTE: TIntegerField
      FieldName = 'CDADNTCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsbaixaCDAUTPAGTOValidate
    end
    object cdsbaixaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsbaixaCDDUPLICATAValidate
    end
    object cdsbaixaCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaCDCHEQUE: TIntegerField
      FieldName = 'CDCHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaNUBAIXA: TStringField
      FieldName = 'NUBAIXA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsbaixaNUBAIXAValidate
      Size = 10
    end
    object cdsbaixaDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_vlliquido
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_vlliquido
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsbaixaVLBAIXAValidate
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_vlliquido
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_vlliquido
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_vlliquido
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLJURONRECEBIDO: TFMTBCDField
      FieldName = 'VLJURONRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsbaixaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaCDADNTCLIENTEDESTINO: TIntegerField
      FieldName = 'CDADNTCLIENTEDESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsbaixaPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaRZSOCIALAUTPAGTO: TStringField
      FieldName = 'RZSOCIALAUTPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaRZSOCIALDUPLICATA: TStringField
      FieldName = 'RZSOCIALDUPLICATA'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
    end
    object cdsbaixaNMTPCOBRANCADUPLICATA: TStringField
      FieldName = 'NMTPCOBRANCADUPLICATA'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = []
    end
    object cdsbaixaNMTPCOBRANCAAUTPAGTO: TStringField
      FieldName = 'NMTPCOBRANCAAUTPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsbaixaVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dtsbaixa: TDataSource
    DataSet = cdsbaixa
    Left = 929
    Top = 54
  end
  object sdsbaixa: TSQLDataSet
    CommandText = 
      'SELECT BAIXA.*'#13#10',FORNECEDOR.RZSOCIAL RZSOCIALAUTPAGTO'#13#10',CLIENTE.' +
      'RZSOCIAL RZSOCIALDUPLICATA'#13#10',SAIDA.NUSAIDA'#13#10',TPCOBRANCA.NMTPCOBR' +
      'ANCA NMTPCOBRANCADUPLICATA'#13#10',ENTRADA.NUENTRADA'#13#10',TPCOBRANCAAUTPA' +
      'GTO.NMTPCOBRANCA NMTPCOBRANCAAUTPAGTO'#13#10'FROM BAIXA'#13#10'LEFT JOIN DUP' +
      'LICATA ON DUPLICATA.CDEMPRESA=BAIXA.CDEMPRESA AND BAIXA.CDDUPLIC' +
      'ATA=DUPLICATA.CDDUPLICATA'#13#10'LEFT JOIN SAIDA ON SAIDA.CDEMPRESA=DU' +
      'PLICATA.CDEMPRESA AND SAIDA.CDSAIDA=DUPLICATA.CDSAIDA'#13#10'LEFT JOIN' +
      ' CLIENTE ON CLIENTE.CDEMPRESA=DUPLICATA.CDEMPRESA AND CLIENTE.CD' +
      'CLIENTE=DUPLICATA.CDCLIENTE'#13#10'LEFT JOIN TPCOBRANCA ON TPCOBRANCA.' +
      'CDEMPRESA=DUPLICATA.CDEMPRESA AND TPCOBRANCA.CDTPCOBRANCA=DUPLIC' +
      'ATA.CDTPCOBRANCA'#13#10'LEFT JOIN AUTPAGTO ON AUTPAGTO.CDEMPRESA=BAIXA' +
      '.CDEMPRESA AND AUTPAGTO.CDAUTPAGTO=BAIXA.CDAUTPAGTO'#13#10'LEFT JOIN E' +
      'NTRADA ON ENTRADA.CDEMPRESA=AUTPAGTO.CDEMPRESA AND ENTRADA.CDENT' +
      'RADA=AUTPAGTO.CDENTRADA'#13#10'LEFT JOIN TPCOBRANCA TPCOBRANCAAUTPAGTO' +
      ' ON TPCOBRANCAAUTPAGTO.CDEMPRESA=AUTPAGTO.CDEMPRESA AND TPCOBRAN' +
      'CAAUTPAGTO.CDTPCOBRANCA=AUTPAGTO.CDTPCOBRANCA'#13#10'LEFT JOIN FORNECE' +
      'DOR ON FORNECEDOR.CDEMPRESA=AUTPAGTO.CDEMPRESA AND FORNECEDOR.CD' +
      'FORNECEDOR=AUTPAGTO.CDFORNECEDOR'#13#10'WHERE BAIXA.CDEMPRESA=:CDEMPRE' +
      'SA AND BAIXA.CDMOVBANCARIO=:CDMOVBANCARIO'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDMOVBANCARIO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 841
    Top = 54
    object sdsbaixaCDBAIXA: TIntegerField
      FieldName = 'CDBAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsbaixaCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDTPBAIXA: TIntegerField
      FieldName = 'CDTPBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDADNTCLIENTE: TIntegerField
      FieldName = 'CDADNTCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDCHEQUE: TIntegerField
      FieldName = 'CDCHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaNUBAIXA: TStringField
      FieldName = 'NUBAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsbaixaDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLJURONRECEBIDO: TFMTBCDField
      FieldName = 'VLJURONRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsbaixaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDADNTCLIENTEDESTINO: TIntegerField
      FieldName = 'CDADNTCLIENTEDESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsbaixaPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaRZSOCIALAUTPAGTO: TStringField
      FieldName = 'RZSOCIALAUTPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaRZSOCIALDUPLICATA: TStringField
      FieldName = 'RZSOCIALDUPLICATA'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
    end
    object sdsbaixaNMTPCOBRANCADUPLICATA: TStringField
      FieldName = 'NMTPCOBRANCADUPLICATA'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = []
    end
    object sdsbaixaNMTPCOBRANCAAUTPAGTO: TStringField
      FieldName = 'NMTPCOBRANCAAUTPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsbaixaVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 872
    Top = 5
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    AfterOpen = cdsAfterOpen
    BeforePost = cdsBeforePost
    OnNewRecord = cdsNewRecord
    Left = 901
    Top = 5
    object cdsCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDEXTRATO: TIntegerField
      FieldName = 'CDEXTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDCONTAValidate
    end
    object cdsCDMOVIMENTACAO: TIntegerField
      FieldName = 'CDMOVIMENTACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDMOVIMENTACAOValidate
    end
    object cdsNUMOVBANCARIO: TStringField
      FieldName = 'NUMOVBANCARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUMOVBANCARIOValidate
      Size = 10
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsDTEMISSAOValidate
    end
    object cdsVLLANCAMENTO: TFMTBCDField
      FieldName = 'VLLANCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsVLLANCAMENTOValidate
      Precision = 15
      Size = 2
    end
    object cdsCDNATUREZA: TStringField
      FieldName = 'CDNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDSNOMINAL: TStringField
      FieldName = 'DSNOMINAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsBOCONCILIADO: TStringField
      FieldName = 'BOCONCILIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsVLDEPOSITO: TFMTBCDField
      FieldName = 'VLDEPOSITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLPAGAMENTO: TFMTBCDField
      FieldName = 'VLPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdssdsbaixa: TDataSetField
      FieldName = 'sdsbaixa'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMOVBANCARIODESTINO: TIntegerField
      FieldName = 'CDMOVBANCARIODESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCONTADESTINO: TIntegerField
      FieldName = 'CDCONTADESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUPLCONTAValidate
      Size = 100
    end
    object cdsARQUIVORETORNO: TBlobField
      FieldName = 'ARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dts: TDataSource
    DataSet = cds
    Left = 929
    Top = 5
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT M.*,P.NMPLCONTA FROM MOVBANCARIO M LEFT JOIN PLCONTA P ON' +
      ' P.CDEMPRESA=M.CDEMPRESA AND P.CDPLCONTA=M.CDPLCONTA WHERE M.CDE' +
      'MPRESA=:CDEMPRESA AND M.CDMOVBANCARIO=:CDMOVBANCARIO'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'CDMOVBANCARIO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 842
    Top = 5
    object sdsCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDEXTRATO: TIntegerField
      FieldName = 'CDEXTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDMOVIMENTACAO: TIntegerField
      FieldName = 'CDMOVIMENTACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNUMOVBANCARIO: TStringField
      FieldName = 'NUMOVBANCARIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsVLLANCAMENTO: TFMTBCDField
      FieldName = 'VLLANCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsCDNATUREZA: TStringField
      FieldName = 'CDNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSNOMINAL: TStringField
      FieldName = 'DSNOMINAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsBOCONCILIADO: TStringField
      FieldName = 'BOCONCILIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsVLDEPOSITO: TFMTBCDField
      FieldName = 'VLDEPOSITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPAGAMENTO: TFMTBCDField
      FieldName = 'VLPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMOVBANCARIODESTINO: TIntegerField
      FieldName = 'CDMOVBANCARIODESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONTADESTINO: TIntegerField
      FieldName = 'CDCONTADESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsARQUIVORETORNO: TBlobField
      FieldName = 'ARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 959
    Top = 10
  end
end

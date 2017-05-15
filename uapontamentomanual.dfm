object frmApontamentoManual: TfrmApontamentoManual
  Left = 431
  Top = 96
  ClientHeight = 512
  ClientWidth = 1186
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl: TcxLabel
    Left = 0
    Top = 63
    Align = alTop
    ParentFont = False
    Style.BorderStyle = ebsSingle
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object pnltop: TPanel
    Left = 0
    Top = 86
    Width = 1186
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 0
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lblcdfuncionario: TLabel
      Left = 448
      Top = 0
      Width = 67
      Height = 13
      Caption = 'Funcion'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcdfuncionarioDblClick
    end
    object lbldtemissao: TLabel
      Left = 64
      Top = 0
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object lblcdtpapontamentomanual: TLabel
      Left = 248
      Top = 0
      Width = 26
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcdtpapontamentomanualDblClick
    end
    object lbltpequipamento: TLabel
      Left = 697
      Top = 0
      Width = 121
      Height = 13
      Caption = 'Tipo de Equipamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lbltpequipamentoDblClick
    end
    object lbldtlancamento: TLabel
      Left = 157
      Top = 0
      Width = 59
      Height = 13
      Caption = 'Lan'#231'amento'
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 6
      Top = 14
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 59
    end
    object cbxcdfuncionario: TcxDBLookupComboBox
      Left = 448
      Top = 14
      DataBinding.DataField = 'CDFUNCIONARIO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 350
      Properties.KeyFieldNames = 'CDFUNCIONARIO'
      Properties.ListColumns = <
        item
          FieldName = 'NMFUNCIONARIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = cbxcdfuncionarioEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 250
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 65
      Top = 14
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 92
    end
    object cbxcdtpapontamentomanual: TcxDBLookupComboBox
      Left = 248
      Top = 14
      DataBinding.DataField = 'CDTPAPONTAMENTOMANUAL'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDTPAPONTAMENTOMANUAL'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPAPONTAMENTOMANUAL'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = cbxcdtpapontamentomanualPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = cbxcdtpapontamentomanualEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 200
    end
    object cbxcdtpequipamento: TcxDBLookupComboBox
      Left = 697
      Top = 14
      DataBinding.DataField = 'CDTPEQUIPAMENTO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDTPEQUIPAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPEQUIPAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = cbxcdtpequipamentoEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 200
    end
    object edtdtlancamento: TcxDBDateEdit
      Left = 157
      Top = 14
      DataBinding.DataField = 'DTLANCAMENTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 92
    end
  end
  object grd: TcxGrid
    Left = 0
    Top = 181
    Width = 1186
    Height = 331
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
      OnKeyDown = exportarGradeExcel
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
      OnCellDblClick = tbvCellDblClick
      DataController.DataSource = dtsdetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tbvHRINICIO: TcxGridDBColumn
        Caption = 'In'#237'cio'
        DataBinding.FieldName = 'HRINICIO'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 70
      end
      object tbvCDDIGITADO: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'CDDIGITADO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 130
      end
      object tbvNUESTRUTURAL: TcxGridDBColumn
        Caption = 'N'#186' Estrutural'
        DataBinding.FieldName = 'NUESTRUTURAL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 100
      end
      object tbvNUESTUTURALANTIGO: TcxGridDBColumn
        Caption = 'N'#186' Estutural Antigo'
        Width = 100
      end
      object tbvBOESTANQUEIDADE: TcxGridDBColumn
        Caption = 'Estanqueidade'
        DataBinding.FieldName = 'BOESTANQUEIDADE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 80
      end
      object tbvTPESTADO: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'TPESTADO'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Nova'
          'Recuperada')
        Width = 100
      end
      object tbvCDFUNCIONARIO: TcxGridDBColumn
        Caption = 'Respons'#225'vel'
        DataBinding.FieldName = 'CDFUNCIONARIO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 400
        Properties.KeyFieldNames = 'CDFUNCIONARIO'
        Properties.ListColumns = <
          item
            FieldName = 'NMFUNCIONARIO'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 150
      end
      object tbvBOROSCA: TcxGridDBColumn
        Caption = 'Rosca'
        DataBinding.FieldName = 'BOROSCA'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 60
      end
      object tbvDSOBSERVACAO: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'DSOBSERVACAO'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.MaxLength = 500
        Properties.WantReturns = False
        Properties.WordWrap = False
        Width = 150
      end
      object tbvHRFIM: TcxGridDBColumn
        Caption = 'Final'
        DataBinding.FieldName = 'HRFIM'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 70
      end
      object tbvHRRETRABALHO: TcxGridDBColumn
        Caption = 'Horas Retrabalho'
        DataBinding.FieldName = 'HRRETRABALHO'
        PropertiesClassName = 'TcxTimeEditProperties'
        Width = 90
      end
      object tbvNUCURVA: TcxGridDBColumn
        Caption = 'N'#186' Curva'
        DataBinding.FieldName = 'NUCURVA'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 177
      end
      object tbvCDORDPRODUCAO: TcxGridDBColumn
        Caption = 'Ord Produ'#231#227'o'
        DataBinding.FieldName = 'CDORDPRODUCAO'
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle1
        Width = 75
      end
    end
    object tbvlanca: TcxGridDBBandedTableView
      OnKeyDown = exportarGradeExcel
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
      OnCellDblClick = tbvlancaCellDblClick
      DataController.DataSource = dtsdetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'In'#237'cio'
        end
        item
          Caption = 'Linha de Ar'
        end
        item
          Caption = 'Linha de Esc'#243'ria'
        end
        item
          Caption = 'Linha de Metal/Toda Pe'#231'a'
        end
        item
          Caption = 'Fim'
        end
        item
          Caption = 'Ord Produ'#231#227'o'
          Width = 75
        end>
      object tbvlancaCDDIGITADO: TcxGridDBBandedColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'CDDIGITADO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvlancaNUESTRUTURAL: TcxGridDBBandedColumn
        Caption = 'N'#186' Estrutural'
        DataBinding.FieldName = 'NUESTRUTURAL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvlancaCDEQUIPAMENTO: TcxGridDBBandedColumn
        Caption = 'Equipamento'
        DataBinding.FieldName = 'CDEQUIPAMENTO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 400
        Properties.KeyFieldNames = 'CDEQUIPAMENTO'
        Properties.ListColumns = <
          item
            FieldName = 'NMEQUIPAMENTO'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvlancaHRINICIO: TcxGridDBBandedColumn
        Caption = 'In'#237'cio'
        DataBinding.FieldName = 'HRINICIO'
        PropertiesClassName = 'TcxTextEditProperties'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tbvlancaQTTEMPERATURA: TcxGridDBBandedColumn
        Caption = 'Temperatura'
        DataBinding.FieldName = 'QTTEMPERATURA'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvlancaCDORDPRODUCAO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDORDPRODUCAO'
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle1
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvlancaQTAPROVEITAMENTO: TcxGridDBBandedColumn
        Caption = 'Aproveitamento (Kg)'
        DataBinding.FieldName = 'QTAPROVEITAMENTO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 105
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvlancaQTPESO: TcxGridDBBandedColumn
        Caption = 'Qtd (KG)'
        DataBinding.FieldName = 'QTPESO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvlancaQTAGUA: TcxGridDBBandedColumn
        Caption = #193'gua (L)'
        DataBinding.FieldName = 'QTAGUA'
        PropertiesClassName = 'TcxCalcEditProperties'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvlancaCDFORMULACAO1: TcxGridDBBandedColumn
        Caption = 'Formula'#231#227'o'
        DataBinding.FieldName = 'CDFORMULACAO1'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 400
        Properties.KeyFieldNames = 'CDFORMULACAO'
        Properties.ListColumns = <
          item
            FieldName = 'NMFORMULACAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvlancaCDPESAGEM1: TcxGridDBBandedColumn
        Caption = 'C'#243'd Pesagem'
        DataBinding.FieldName = 'CDPESAGEM1'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvlancaQTPESO1: TcxGridDBBandedColumn
        Caption = 'Qtd (KG)'
        DataBinding.FieldName = 'QTPESO1'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvlancaQTAGUA1: TcxGridDBBandedColumn
        Caption = #193'gua (L)'
        DataBinding.FieldName = 'QTAGUA1'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvlancaQTSOBRA1: TcxGridDBBandedColumn
        Caption = 'Sobra (KG)'
        DataBinding.FieldName = 'QTSOBRA1'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tbvlancaCDPESAGEM2: TcxGridDBBandedColumn
        Caption = 'C'#243'd Pesagem'
        DataBinding.FieldName = 'CDPESAGEM2'
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvlancaCDFORMULACAO2: TcxGridDBBandedColumn
        Caption = 'Formula'#231#227'o'
        DataBinding.FieldName = 'CDFORMULACAO2'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 400
        Properties.KeyFieldNames = 'CDFORMULACAO'
        Properties.ListColumns = <
          item
            FieldName = 'NMFORMULACAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvlancaQTPESO2: TcxGridDBBandedColumn
        Caption = 'Qtd (KG)'
        DataBinding.FieldName = 'QTPESO2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvlancaQTAGUA2: TcxGridDBBandedColumn
        Caption = #193'gua (L)'
        DataBinding.FieldName = 'QTAGUA2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvlancaQTSOBRA2: TcxGridDBBandedColumn
        Caption = 'Sobra (KG)'
        DataBinding.FieldName = 'QTSOBRA2'
        PropertiesClassName = 'TcxCalcEditProperties'
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tbvlancaHRFIM: TcxGridDBBandedColumn
        Caption = 'Fim'
        DataBinding.FieldName = 'HRFIM'
        PropertiesClassName = 'TcxTextEditProperties'
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object tbvmoldagem: TcxGridDBTableView
      OnKeyDown = exportarGradeExcel
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
      OnCellDblClick = tbvmoldagemCellDblClick
      DataController.DataSource = dtsdetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tbvmoldagemQTPRODUCAO: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'QTPRODUCAO'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object tbvmoldagemCDDIGITADO: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'CDDIGITADO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 80
      end
      object tbvmoldagemNUESTRUTURAL: TcxGridDBColumn
        Caption = 'N'#186' Estrutural'
        DataBinding.FieldName = 'NUESTRUTURAL'
        Width = 80
      end
      object tbvmoldagemHRINICIO: TcxGridDBColumn
        Caption = 'In'#237'cio'
        DataBinding.FieldName = 'HRINICIO'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object tbvmoldagemQTTEMPERATURA: TcxGridDBColumn
        Caption = 'Temperatura'
        DataBinding.FieldName = 'QTTEMPERATURA'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 70
      end
      object tbvmoldagemCDFORMULACAO: TcxGridDBColumn
        Caption = 'Formula'#231#227'o'
        DataBinding.FieldName = 'CDFORMULACAO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 400
        Properties.KeyFieldNames = 'CDFORMULACAO'
        Properties.ListColumns = <
          item
            FieldName = 'NMFORMULACAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 100
      end
      object tbvmoldagemCDPESAGEM: TcxGridDBColumn
        Caption = 'C'#243'd Pesagem'
        DataBinding.FieldName = 'CDPESAGEM'
        Width = 100
      end
      object tbvmoldagemQTPESO: TcxGridDBColumn
        Caption = 'Qtd (KG)'
        DataBinding.FieldName = 'QTPESO'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object tbvmoldagemQTAGUA: TcxGridDBColumn
        Caption = #193'gua (L)'
        DataBinding.FieldName = 'QTAGUA'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object tbvmoldagemHRFIM: TcxGridDBColumn
        Caption = 'Fim'
        DataBinding.FieldName = 'HRFIM'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object tbvmoldagemQTSOBRA: TcxGridDBColumn
        Caption = 'Qtd Sobra'
        DataBinding.FieldName = 'QTSOBRA'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object tbvmoldagemDSOBSERVACAO: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'DSOBSERVACAO'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.WantReturns = False
        Properties.WordWrap = False
        Width = 150
      end
      object tbvmoldagemCDORDPRODUCAO: TcxGridDBColumn
        Caption = 'Ord Produ'#231#227'o'
        DataBinding.FieldName = 'CDORDPRODUCAO'
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle1
        Width = 75
      end
    end
    object tbvdesmoldagem: TcxGridDBBandedTableView
      OnKeyDown = exportarGradeExcel
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
      OnCellDblClick = tbvdesmoldagemCellDblClick
      DataController.DataSource = dtsdetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'Produto'
          Width = 70
        end
        item
          Caption = 'N'#186' Estrutural'
          Width = 80
        end
        item
          Caption = 'Hor'#225'rio'
        end
        item
          Caption = 'Aprovado'
          Width = 60
        end
        item
          Caption = 'Observa'#231#227'o'
          Width = 80
        end
        item
          Caption = 'Item n'#227'o Conforme'
        end
        item
          Caption = 'Regi'#227'o Afetada'
          Width = 90
        end
        item
          Caption = 'Corre'#231#227'o'
          Width = 60
        end
        item
          Caption = 'Corre'#231#227'o Eficaz'
          Width = 85
        end
        item
          Caption = 'Observa'#231#245'es'
          Width = 75
        end
        item
          Caption = 'Ord Produ'#231#227'o'
          Width = 75
        end>
      object tbvdesmoldagemCDDIGITADO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDDIGITADO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvdesmoldagemCDORDPRODUCAO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDORDPRODUCAO'
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle1
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvdesmoldagemNUESTRUTURAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NUESTRUTURAL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvdesmoldagemHRINICIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HRINICIO'
        PropertiesClassName = 'TcxTextEditProperties'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvdesmoldagemBOAPROVADO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOAPROVADO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvdesmoldagemDSOBSERVACAO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DSOBSERVACAO'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.MaxLength = 500
        Properties.WantReturns = False
        Properties.WordWrap = False
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvdesmoldagembosobreposicaomaterial: TcxGridDBBandedColumn
        Caption = '01'
        DataBinding.FieldName = 'bosobreposicaomaterial'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvdesmoldagemcdregiaoafetada: TcxGridDBBandedColumn
        DataBinding.FieldName = 'cdregiaoafetada'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Toda pe'#231'a'
          'Esc'#243'ria'
          'Metal'
          'Linha de Ar')
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvdesmoldagemcdcorrecao: TcxGridDBBandedColumn
        DataBinding.FieldName = 'cdcorrecao'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Retrabalho'
          'Descarte')
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvdesmoldagembocorrecaoeficaz: TcxGridDBBandedColumn
        DataBinding.FieldName = 'bocorrecaoeficaz'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvdesmoldagemDSOBSERVACAO2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DSOBSERVACAO2'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.MaxLength = 0
        Properties.WantReturns = False
        Properties.WordWrap = False
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvdesmoldagemboresistenciamecanica: TcxGridDBBandedColumn
        Caption = '02'
        DataBinding.FieldName = 'boresistenciamecanica'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvdesmoldagembobroca: TcxGridDBBandedColumn
        Caption = '03'
        DataBinding.FieldName = 'bobroca'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvdesmoldagembotrinca: TcxGridDBBandedColumn
        Caption = '04'
        DataBinding.FieldName = 'botrinca'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 5
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvdesmoldagembobolha: TcxGridDBBandedColumn
        Caption = '05'
        DataBinding.FieldName = 'bobolha'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 5
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tbvdesmoldagemborebarba: TcxGridDBBandedColumn
        Caption = '06'
        DataBinding.FieldName = 'borebarba'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 5
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tbvdesmoldagembopontachumbador: TcxGridDBBandedColumn
        Caption = '07'
        DataBinding.FieldName = 'bopontachumbador'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 5
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tbvdesmoldagemboacabamento: TcxGridDBBandedColumn
        Caption = '08'
        DataBinding.FieldName = 'boacabamento'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 5
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tbvdesmoldagembodimensional: TcxGridDBBandedColumn
        Caption = '09'
        DataBinding.FieldName = 'bodimensional'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 5
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tbvdesmoldagemboexsudacao: TcxGridDBBandedColumn
        Caption = '10'
        DataBinding.FieldName = 'boexsudacao'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 5
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object tbvexpedicao: TcxGridDBBandedTableView
      OnKeyDown = exportarGradeExcel
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
      OnCellDblClick = tbvexpedicaoCellDblClick
      DataController.DataSource = dtsdetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'Produto'
          Width = 70
        end
        item
          Caption = 'N'#186' Estrutural'
          Width = 80
        end
        item
          Caption = 'Aprovado'
          Width = 60
        end
        item
          Caption = 'Item n'#227'o Conforme'
        end
        item
          Caption = 'Corre'#231#227'o'
          Width = 70
        end
        item
          Caption = 'Respons'#225'vel por concess'#227'o'
          Width = 145
        end
        item
          Caption = 'Reavalia'#231#227'o'
          Width = 80
        end
        item
          Caption = 'Conferido por'
          Width = 150
        end
        item
          Width = 300
        end
        item
          Caption = 'Ord Produ'#231#227'o'
          Width = 75
        end>
      object tbvexpedicaoCDDIGITADO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDDIGITADO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvexpedicaoCDORDPRODUCAO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDORDPRODUCAO'
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle1
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvexpedicaonuestrutural: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NUESTRUTURAL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvexpedicaoBOAPROVADO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOAPROVADO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvexpedicaoboacabamento: TcxGridDBBandedColumn
        Caption = '01'
        DataBinding.FieldName = 'boacabamento'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvexpedicaobopintura: TcxGridDBBandedColumn
        Caption = '02'
        DataBinding.FieldName = 'bopintura'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvexpedicaoboembalagem: TcxGridDBBandedColumn
        Caption = '03'
        DataBinding.FieldName = 'BOEMBALAGEM'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvexpedicaoboidentificacao: TcxGridDBBandedColumn
        Caption = '04'
        DataBinding.FieldName = 'BOIDENTIFICACAO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvexpedicaoboempeno: TcxGridDBBandedColumn
        Caption = '05'
        DataBinding.FieldName = 'boempeno'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tbvexpedicaoBOREBARBA: TcxGridDBBandedColumn
        Caption = '06'
        DataBinding.FieldName = 'BOREBARBA'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tbvexpedicaobopontachumbador: TcxGridDBBandedColumn
        Caption = '07'
        DataBinding.FieldName = 'bopontachumbador'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tbvexpedicaoborefratariodanificado: TcxGridDBBandedColumn
        Caption = '08'
        DataBinding.FieldName = 'borefratariodanificado'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tbvexpedicaobodimensional: TcxGridDBBandedColumn
        Caption = '09'
        DataBinding.FieldName = 'bodimensional'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tbvexpedicaoboroscaporcaparafuso: TcxGridDBBandedColumn
        Caption = '10'
        DataBinding.FieldName = 'boroscaporcaparafuso'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 30
        Position.BandIndex = 3
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tbvexpedicaocdcorrecao: TcxGridDBBandedColumn
        DataBinding.FieldName = 'cdcorrecao'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Retrabalhar'
          'Aceite sob concess'#227'o'
          'Descartar')
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvexpedicaoCDFUNCIONARIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDFUNCIONARIO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 400
        Properties.KeyFieldNames = 'CDFUNCIONARIO'
        Properties.ListColumns = <
          item
            FieldName = 'NMFUNCIONARIO'
          end>
        Properties.ListOptions.ShowHeader = False
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvexpedicaocdreavaliacao: TcxGridDBBandedColumn
        DataBinding.FieldName = 'cdreavaliacao'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Aprovado'
          'Reprovado')
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvexpedicaodsobservacao: TcxGridDBBandedColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'dsobservacao'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.MaxLength = 500
        Properties.WantReturns = False
        Properties.WordWrap = False
        Width = 120
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvexpedicaoDSOUTROS: TcxGridDBBandedColumn
        Caption = 'Outros'
        DataBinding.FieldName = 'DSOUTROS'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 100
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvexpedicaoHRRETRABALHO: TcxGridDBBandedColumn
        Caption = 'Horas Retrabalho'
        DataBinding.FieldName = 'HRRETRABALHO'
        PropertiesClassName = 'TcxTimeEditProperties'
        Visible = False
        Width = 90
        Position.BandIndex = 8
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvexpedicaoCDFUNCIONARIOCONFERIDO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDFUNCIONARIOCONFERIDO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 250
        Properties.KeyFieldNames = 'CDFUNCIONARIO'
        Properties.ListColumns = <
          item
            FieldName = 'NMFUNCIONARIO'
          end>
        Properties.ListOptions.ShowHeader = False
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
    end
    object tbvenformagem: TcxGridDBBandedTableView
      OnKeyDown = exportarGradeExcel
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
      OnCellDblClick = tbvenformagemCellDblClick
      DataController.DataSource = dtsdetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'Produto'
          Width = 60
        end
        item
          Caption = 'N'#186' Estrutural'
          Width = 70
        end
        item
          Caption = 'Recebimento'
          Width = 70
        end
        item
          Caption = 'Item N'#227'o Conforme'
        end
        item
          Caption = 'Aprovado'
          Width = 70
        end
        item
          Caption = 'Descri'#231#227'o N'#227'o Conformidade'
          Width = 145
        end
        item
          Caption = 'Retorno ap'#243's Retrabalho'
          Width = 130
        end
        item
          Caption = 'Reavalia'#231#227'o'
          Width = 70
        end
        item
          Caption = 'Observa'#231#227'o'
          Width = 105
        end
        item
          Caption = 'Ord Produ'#231#227'o'
          Width = 75
        end>
      object tbvenformagemcddigitado: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDDIGITADO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvenformagemCDORDPRODUCAO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDORDPRODUCAO'
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle1
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvenformagemNUESTRUTURAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NUESTRUTURAL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvenformagemHRINICIO: TcxGridDBBandedColumn
        AlternateCaption = 'tbvenformagemHRINICIO'
        DataBinding.FieldName = 'HRINICIO'
        PropertiesClassName = 'TcxTextEditProperties'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvenformagemBODIMENSIONAL: TcxGridDBBandedColumn
        Caption = '01'
        DataBinding.FieldName = 'BODIMENSIONAL'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvenformagembocentralizador: TcxGridDBBandedColumn
        Caption = '02'
        DataBinding.FieldName = 'bocentralizador'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvenformagemBOEMPENO: TcxGridDBBandedColumn
        Caption = '03'
        DataBinding.FieldName = 'BOEMPENO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvenformagembofurosaida: TcxGridDBBandedColumn
        Caption = '04'
        DataBinding.FieldName = 'bofurosaida'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvenformagemBOLINHAAR: TcxGridDBBandedColumn
        Caption = '05'
        DataBinding.FieldName = 'BOLINHAAR'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tbvenformagemBOFLANGE: TcxGridDBBandedColumn
        Caption = '06'
        DataBinding.FieldName = 'BOFLANGE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tbvenformagemboavariatransporte: TcxGridDBBandedColumn
        Caption = '07'
        DataBinding.FieldName = 'boavariatransporte'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tbvenformagemBOIDENTIFICACAO: TcxGridDBBandedColumn
        Caption = '08'
        DataBinding.FieldName = 'BOIDENTIFICACAO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tbvenformagemboroscaporcaparafuso: TcxGridDBBandedColumn
        Caption = '09'
        DataBinding.FieldName = 'boroscaporcaparafuso'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tbvenformagemColumn13: TcxGridDBBandedColumn
        Caption = '10'
        DataBinding.FieldName = 'BOLINHAAR'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 25
        Position.BandIndex = 3
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tbvenformagemBOAPROVADO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOAPROVADO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvenformagemDSOBSERVACAO2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DSOBSERVACAO2'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.MaxLength = 500
        Properties.WantReturns = False
        Properties.WordWrap = False
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvenformagemHRRETORNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HRRETORNO'
        PropertiesClassName = 'TcxTextEditProperties'
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvenformagemcdreavaliacao: TcxGridDBBandedColumn
        DataBinding.FieldName = 'cdreavaliacao'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Aprovado'
          'Reprovado')
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvenformagemDSOBSERVACAO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DSOBSERVACAO'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.MaxLength = 500
        Properties.WantReturns = False
        Properties.WordWrap = False
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
    end
    object lvl: TcxGridLevel
      GridView = tbv
    end
  end
  object gbxdatahora: TcxGroupBox
    Left = 0
    Top = 121
    Align = alTop
    Caption = 'Data e Hora'
    TabOrder = 6
    Height = 60
    Width = 1186
    object lblhrinicio: TLabel
      Left = 8
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Inicio'
      Transparent = True
    end
    object lbldttermino: TLabel
      Left = 100
      Top = 16
      Width = 64
      Height = 13
      Caption = 'Data T'#233'rmino'
      Transparent = True
    end
    object lblhrtermino: TLabel
      Left = 192
      Top = 16
      Width = 64
      Height = 13
      Caption = 'Hora T'#233'rmino'
      Transparent = True
    end
    object lblFUNCIONARIORESPONSAVEL: TLabel
      Left = 284
      Top = 18
      Width = 74
      Height = 13
      Caption = 'Respons'#225'vel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcdfuncionarioDblClick
    end
    object edthrinicio: TcxDBTimeEdit
      Left = 8
      Top = 32
      DataBinding.DataField = 'HRINICIO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 92
    end
    object edtdttermino: TcxDBDateEdit
      Left = 100
      Top = 32
      DataBinding.DataField = 'DTTERMINO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 92
    end
    object edthrtermino: TcxDBTimeEdit
      Left = 192
      Top = 32
      DataBinding.DataField = 'HRTERMINO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 92
    end
    object cbxCDFUNCIONARIORESPONSAVEL: TcxDBLookupComboBox
      Left = 284
      Top = 32
      DataBinding.DataField = 'CDFUNCIONARIORESPONSAVEL'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 350
      Properties.KeyFieldNames = 'CDFUNCIONARIO'
      Properties.ListColumns = <
        item
          FieldName = 'NMFUNCIONARIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = cbxcdfuncionarioEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 250
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 728
    Top = 321
    object actNovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actNovoExecute
    end
    object actAbrir: TAction
      Caption = 'Abrir'
      Hint = 'Abrir'
      ImageIndex = 1
      ShortCut = 16449
      OnExecute = actAbrirExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      Enabled = False
      Hint = 'Editar'
      ImageIndex = 7
      ShortCut = 16453
      OnExecute = actEditarExecute
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      Enabled = False
      Hint = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvarExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      Enabled = False
      Hint = 'Imprimir'
      ImageIndex = 3
      ShortCut = 16457
      OnExecute = actImprimirExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      Enabled = False
      Hint = 'Excluir'
      ImageIndex = 5
      ShortCut = 16472
      OnExecute = actExcluirExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelarExecute
    end
    object actPrimeiro: TAction
      Caption = 'Primeiro'
      Hint = 'Primeiro'
      ImageIndex = 8
      ShortCut = 16454
      OnExecute = actPrimeiroExecute
    end
    object actAnterior: TAction
      Caption = 'Anterior'
      Enabled = False
      Hint = 'Anterior'
      ImageIndex = 9
      ShortCut = 16468
      OnExecute = actAnteriorExecute
    end
    object actProximo: TAction
      Caption = 'Pr'#243'ximo'
      Enabled = False
      Hint = 'Pr'#243'ximo'
      ImageIndex = 10
      ShortCut = 16464
      OnExecute = actProximoExecute
    end
    object actUltimo: TAction
      Caption = #218'ltimo'
      Hint = #218'ltimo'
      ImageIndex = 11
      ShortCut = 16469
      OnExecute = actUltimoExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actabrirtpapontamentomanual: TAction
      Hint = 'tpapontamentomanual'
      OnExecute = actabrirtpapontamentomanualExecute
    end
    object actabrirfuncionario: TAction
      Hint = 'funcionario'
      OnExecute = actabrirfuncionarioExecute
    end
    object actabrirtpequipamento: TAction
      Hint = 'tpequipamento'
      OnExecute = actabrirtpequipamentoExecute
    end
    object actaplicarcodigoordproducao: TAction
      Caption = 'Aplicar C'#243'digo da Ordem de Produ'#231#227'o'
      OnExecute = actaplicarcodigoordproducaoExecute
    end
    object actabrirordproducao: TAction
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
    end
    object actremovercodigoordproducao: TAction
      Caption = 'Remover C'#243'digo de Ordem de Produ'#231#227'o'
      OnExecute = actremovercodigoordproducaoExecute
    end
    object actinsertgride: TAction
      ShortCut = 16429
      OnExecute = actinsertgrideExecute
    end
  end
  object bmg1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dtmmain.imlMain
    ImageOptions.LargeImages = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 696
    Top = 320
    DockControlHeights = (
      0
      0
      63
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'contrato1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 392
      FloatTop = 299
      FloatClientWidth = 62
      FloatClientHeight = 494
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnAbrir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnsalvar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtncancelar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnexcluir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnprimeiro'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnanterior'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnproximo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnultimo'
        end
        item
          Visible = True
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'btnopcoes'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrManager1Bar1: TdxBar
      Caption = 'menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 27
      FloatTop = 131
      FloatClientWidth = 55
      FloatClientHeight = 21
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrsbtmRegistro'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxbrsbtmRegistro: TdxBarSubItem
      Caption = '&Registro'
      Category = 0
      MergeOrder = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnAbrir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnsalvar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtncancelar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnexcluir'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnprimeiro'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnanterior'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnproximo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnultimo'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr2'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr3'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
    end
    object dxbrlrgbtnNovo: TdxBarLargeButton
      Action = actNovo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnEditar: TdxBarLargeButton
      Action = actEditar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnAbrir: TdxBarLargeButton
      Action = actAbrir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnsalvar: TdxBarLargeButton
      Action = actSalvar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtncancelar: TdxBarLargeButton
      Action = actCancelar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnexcluir: TdxBarLargeButton
      Action = actExcluir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnprimeiro: TdxBarLargeButton
      Action = actPrimeiro
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnanterior: TdxBarLargeButton
      Action = actAnterior
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnproximo: TdxBarLargeButton
      Action = actProximo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnultimo: TdxBarLargeButton
      Action = actUltimo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr2: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrsprtr3: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton1: TdxBarButton
      Action = actaplicarcodigoordproducao
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actremovercodigoordproducao
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM APONTAMENTOMANUAL WHERE CDEMPRESA=:CDEMPRESA AND C' +
      'DAPONTAMENTOMANUAL=:CDAPONTAMENTOMANUAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDAPONTAMENTOMANUAL'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 632
    Top = 259
    object sdsCDAPONTAMENTOMANUAL: TIntegerField
      FieldName = 'CDAPONTAMENTOMANUAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDTPAPONTAMENTOMANUAL: TIntegerField
      FieldName = 'CDTPAPONTAMENTOMANUAL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
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
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRTERMINO: TTimeField
      FieldName = 'HRTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTAPONTAMENTOMANUAL: TIntegerField
      FieldName = 'CDSTAPONTAMENTOMANUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDFUNCIONARIORESPONSAVEL: TIntegerField
      FieldName = 'CDFUNCIONARIORESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT * FROM APONTAMENTO WHERE CDEMPRESA=:CDEMPRESA AND CDAPONT' +
      'AMENTOMANUAL=:CDAPONTAMENTOMANUAL'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDAPONTAMENTOMANUAL'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 634
    Top = 289
    object sdsdetailCDAPONTAMENTO: TIntegerField
      FieldName = 'CDAPONTAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDSTAPONTAMENTO: TIntegerField
      FieldName = 'CDSTAPONTAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDITORDPRODUCAORECURSO: TIntegerField
      FieldName = 'CDITORDPRODUCAORECURSO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDTPHORAEXTRA: TIntegerField
      FieldName = 'CDTPHORAEXTRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDTPPARADA: TIntegerField
      FieldName = 'CDTPPARADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDAPONTAMENTOMANUAL: TIntegerField
      FieldName = 'CDAPONTAMENTOMANUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDFORMULACAO1: TIntegerField
      FieldName = 'CDFORMULACAO1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDFORMULACAO2: TIntegerField
      FieldName = 'CDFORMULACAO2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailTSFIM: TSQLTimeStampField
      FieldName = 'TSFIM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailTSINICIO: TSQLTimeStampField
      FieldName = 'TSINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailHRFIM: TTimeField
      FieldName = 'HRFIM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailHRDURACAO: TTimeField
      FieldName = 'HRDURACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTDURACAO: TFloatField
      FieldName = 'QTDURACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTREFUGO: TFloatField
      FieldName = 'QTREFUGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsdetailVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailQTRETRABALHO: TFloatField
      FieldName = 'QTRETRABALHO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDEQUIPAMENTOAPONTAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTOAPONTAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTVIBRACAO: TFloatField
      FieldName = 'QTVIBRACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTTEMPERATURA: TFloatField
      FieldName = 'QTTEMPERATURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDPESAGEM: TStringField
      FieldName = 'CDPESAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailBOREAPROVEITAR: TStringField
      FieldName = 'BOREAPROVEITAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailQTCOMPRIMENTO: TStringField
      FieldName = 'QTCOMPRIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTMISTURA: TFloatField
      FieldName = 'QTMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailPSMISTURA: TFloatField
      FieldName = 'PSMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUHORIMETROINICIAL: TIntegerField
      FieldName = 'NUHORIMETROINICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUHORIMETROFINAL: TIntegerField
      FieldName = 'NUHORIMETROFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailHRINICIALHORIMETRO: TSQLTimeStampField
      FieldName = 'HRINICIALHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailHRFINALHORIMETRO: TSQLTimeStampField
      FieldName = 'HRFINALHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailHRDURACAOHORIMETRO: TTimeField
      FieldName = 'HRDURACAOHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTDURACAOHORIMETRO: TFloatField
      FieldName = 'QTDURACAOHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailHROCIOSA: TTimeField
      FieldName = 'HROCIOSA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTOCIOSA: TFloatField
      FieldName = 'QTOCIOSA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTPESO: TFloatField
      FieldName = 'QTPESO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTAGUA: TFloatField
      FieldName = 'QTAGUA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTSOBRA: TFloatField
      FieldName = 'QTSOBRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUFORMA: TStringField
      FieldName = 'NUFORMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailCDPESAGEM1: TStringField
      FieldName = 'CDPESAGEM1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailCDPESAGEM2: TStringField
      FieldName = 'CDPESAGEM2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailQTPESO1: TFloatField
      FieldName = 'QTPESO1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTPESO2: TFloatField
      FieldName = 'QTPESO2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTAGUA1: TFloatField
      FieldName = 'QTAGUA1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTAGUA2: TFloatField
      FieldName = 'QTAGUA2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTSOBRA1: TFloatField
      FieldName = 'QTSOBRA1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTSOBRA2: TFloatField
      FieldName = 'QTSOBRA2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTAPROVEITAMENTO: TFloatField
      FieldName = 'QTAPROVEITAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailBOROSCA: TStringField
      FieldName = 'BOROSCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailTPESTADO: TStringField
      FieldName = 'TPESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOESTANQUEIDADE: TStringField
      FieldName = 'BOESTANQUEIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOACABAMENTO: TStringField
      FieldName = 'BOACABAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOPINTURA: TStringField
      FieldName = 'BOPINTURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOEMBALAGEM: TStringField
      FieldName = 'BOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOIDENTIFICACAO: TStringField
      FieldName = 'BOIDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOEMPENO: TStringField
      FieldName = 'BOEMPENO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOREBARBA: TStringField
      FieldName = 'BOREBARBA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOPONTACHUMBADOR: TStringField
      FieldName = 'BOPONTACHUMBADOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOREFRATARIODANIFICADO: TStringField
      FieldName = 'BOREFRATARIODANIFICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBODIMENSIONAL: TStringField
      FieldName = 'BODIMENSIONAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOROSCAPORCAPARAFUSO: TStringField
      FieldName = 'BOROSCAPORCAPARAFUSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOSOBREPOSICAOMATERIAL: TStringField
      FieldName = 'BOSOBREPOSICAOMATERIAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBORESISTENCIAMECANICA: TStringField
      FieldName = 'BORESISTENCIAMECANICA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOBROCA: TStringField
      FieldName = 'BOBROCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOTRINCA: TStringField
      FieldName = 'BOTRINCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOBOLHA: TStringField
      FieldName = 'BOBOLHA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOEXSUDACAO: TStringField
      FieldName = 'BOEXSUDACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOCENTRALIZADOR: TStringField
      FieldName = 'BOCENTRALIZADOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOFUROSAIDA: TStringField
      FieldName = 'BOFUROSAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOLINHAAR: TStringField
      FieldName = 'BOLINHAAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOFLANGE: TStringField
      FieldName = 'BOFLANGE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOAVARIATRANSPORTE: TStringField
      FieldName = 'BOAVARIATRANSPORTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailCDREAVALIACAO: TStringField
      FieldName = 'CDREAVALIACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOAPROVADO: TStringField
      FieldName = 'BOAPROVADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailCDCORRECAO: TStringField
      FieldName = 'CDCORRECAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailCDREGIAOAFETADA: TStringField
      FieldName = 'CDREGIAOAFETADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOCORRECAOEFICAZ: TStringField
      FieldName = 'BOCORRECAOEFICAZ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailDSOBSERVACAO2: TBlobField
      FieldName = 'DSOBSERVACAO2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsdetailQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailDSOUTROS: TStringField
      FieldName = 'DSOUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsdetailHRRETRABALHO: TTimeField
      FieldName = 'HRRETRABALHO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUCURVA: TStringField
      FieldName = 'NUCURVA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailNUESTRUTURALANTIGO: TStringField
      FieldName = 'NUESTRUTURALANTIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDFUNCIONARIOCONFERIDO: TIntegerField
      FieldName = 'CDFUNCIONARIOCONFERIDO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 664
    Top = 259
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 696
    Top = 259
    object cdsCDAPONTAMENTOMANUAL: TIntegerField
      FieldName = 'CDAPONTAMENTOMANUAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDTPAPONTAMENTOMANUAL: TIntegerField
      FieldName = 'CDTPAPONTAMENTOMANUAL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
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
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRTERMINO: TTimeField
      FieldName = 'HRTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSTAPONTAMENTOMANUAL: TIntegerField
      FieldName = 'CDSTAPONTAMENTOMANUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDFUNCIONARIORESPONSAVEL: TIntegerField
      FieldName = 'CDFUNCIONARIORESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 728
    Top = 259
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 760
    Top = 259
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    OnNewRecord = cdsdetailNewRecord
    Left = 694
    Top = 288
    object cdsdetailCDAPONTAMENTO: TIntegerField
      FieldName = 'CDAPONTAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDSTAPONTAMENTO: TIntegerField
      FieldName = 'CDSTAPONTAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDITORDPRODUCAORECURSO: TIntegerField
      FieldName = 'CDITORDPRODUCAORECURSO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDFUNCIONARIOValidate
    end
    object cdsdetailCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDTPHORAEXTRA: TIntegerField
      FieldName = 'CDTPHORAEXTRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDTPPARADA: TIntegerField
      FieldName = 'CDTPPARADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDAPONTAMENTOMANUAL: TIntegerField
      FieldName = 'CDAPONTAMENTOMANUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDFORMULACAO1: TIntegerField
      FieldName = 'CDFORMULACAO1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDFORMULACAO2: TIntegerField
      FieldName = 'CDFORMULACAO2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailTSFIM: TSQLTimeStampField
      FieldName = 'TSFIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailTSINICIO: TSQLTimeStampField
      FieldName = 'TSINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailHRINICIOValidate
    end
    object cdsdetailHRFIM: TTimeField
      FieldName = 'HRFIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailHRDURACAO: TTimeField
      FieldName = 'HRDURACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTDURACAO: TFloatField
      FieldName = 'QTDURACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTREFUGO: TFloatField
      FieldName = 'QTREFUGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsdetailVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailQTRETRABALHO: TFloatField
      FieldName = 'QTRETRABALHO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDEQUIPAMENTOAPONTAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTOAPONTAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTVIBRACAO: TFloatField
      FieldName = 'QTVIBRACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTTEMPERATURA: TFloatField
      FieldName = 'QTTEMPERATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDPESAGEM: TStringField
      FieldName = 'CDPESAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsdetailBOREAPROVEITAR: TStringField
      FieldName = 'BOREAPROVEITAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailQTCOMPRIMENTO: TStringField
      FieldName = 'QTCOMPRIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTMISTURA: TFloatField
      FieldName = 'QTMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailPSMISTURA: TFloatField
      FieldName = 'PSMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUHORIMETROINICIAL: TIntegerField
      FieldName = 'NUHORIMETROINICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUHORIMETROFINAL: TIntegerField
      FieldName = 'NUHORIMETROFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailHRINICIALHORIMETRO: TSQLTimeStampField
      FieldName = 'HRINICIALHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailHRFINALHORIMETRO: TSQLTimeStampField
      FieldName = 'HRFINALHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailHRDURACAOHORIMETRO: TTimeField
      FieldName = 'HRDURACAOHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTDURACAOHORIMETRO: TFloatField
      FieldName = 'QTDURACAOHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailHROCIOSA: TTimeField
      FieldName = 'HROCIOSA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTOCIOSA: TFloatField
      FieldName = 'QTOCIOSA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTPESO: TFloatField
      FieldName = 'QTPESO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTAGUA: TFloatField
      FieldName = 'QTAGUA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTSOBRA: TFloatField
      FieldName = 'QTSOBRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUFORMA: TStringField
      FieldName = 'NUFORMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsdetailCDPESAGEM1: TStringField
      FieldName = 'CDPESAGEM1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsdetailCDPESAGEM2: TStringField
      FieldName = 'CDPESAGEM2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsdetailQTPESO1: TFloatField
      FieldName = 'QTPESO1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTPESO2: TFloatField
      FieldName = 'QTPESO2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTAGUA1: TFloatField
      FieldName = 'QTAGUA1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTAGUA2: TFloatField
      FieldName = 'QTAGUA2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTSOBRA1: TFloatField
      FieldName = 'QTSOBRA1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTSOBRA2: TFloatField
      FieldName = 'QTSOBRA2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTAPROVEITAMENTO: TFloatField
      FieldName = 'QTAPROVEITAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailBOROSCA: TStringField
      FieldName = 'BOROSCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailTPESTADO: TStringField
      FieldName = 'TPESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOESTANQUEIDADE: TStringField
      FieldName = 'BOESTANQUEIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOACABAMENTO: TStringField
      FieldName = 'BOACABAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOPINTURA: TStringField
      FieldName = 'BOPINTURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOEMBALAGEM: TStringField
      FieldName = 'BOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOIDENTIFICACAO: TStringField
      FieldName = 'BOIDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOEMPENO: TStringField
      FieldName = 'BOEMPENO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOREBARBA: TStringField
      FieldName = 'BOREBARBA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOPONTACHUMBADOR: TStringField
      FieldName = 'BOPONTACHUMBADOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOREFRATARIODANIFICADO: TStringField
      FieldName = 'BOREFRATARIODANIFICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBODIMENSIONAL: TStringField
      FieldName = 'BODIMENSIONAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOROSCAPORCAPARAFUSO: TStringField
      FieldName = 'BOROSCAPORCAPARAFUSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOSOBREPOSICAOMATERIAL: TStringField
      FieldName = 'BOSOBREPOSICAOMATERIAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBORESISTENCIAMECANICA: TStringField
      FieldName = 'BORESISTENCIAMECANICA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOBROCA: TStringField
      FieldName = 'BOBROCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOTRINCA: TStringField
      FieldName = 'BOTRINCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOBOLHA: TStringField
      FieldName = 'BOBOLHA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOEXSUDACAO: TStringField
      FieldName = 'BOEXSUDACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOCENTRALIZADOR: TStringField
      FieldName = 'BOCENTRALIZADOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOFUROSAIDA: TStringField
      FieldName = 'BOFUROSAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOLINHAAR: TStringField
      FieldName = 'BOLINHAAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOFLANGE: TStringField
      FieldName = 'BOFLANGE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOAVARIATRANSPORTE: TStringField
      FieldName = 'BOAVARIATRANSPORTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailCDREAVALIACAO: TStringField
      FieldName = 'CDREAVALIACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOAPROVADO: TStringField
      FieldName = 'BOAPROVADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailCDCORRECAO: TStringField
      FieldName = 'CDCORRECAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailCDREGIAOAFETADA: TStringField
      FieldName = 'CDREGIAOAFETADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOCORRECAOEFICAZ: TStringField
      FieldName = 'BOCORRECAOEFICAZ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailDSOBSERVACAO2: TBlobField
      FieldName = 'DSOBSERVACAO2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsdetailQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDDIGITADOValidate
      Size = 30
    end
    object cdsdetailDSOUTROS: TStringField
      FieldName = 'DSOUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsdetailHRRETRABALHO: TTimeField
      FieldName = 'HRRETRABALHO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUCURVA: TStringField
      FieldName = 'NUCURVA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailNUESTRUTURALANTIGO: TStringField
      FieldName = 'NUESTRUTURALANTIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDFUNCIONARIOCONFERIDO: TIntegerField
      FieldName = 'CDFUNCIONARIOCONFERIDO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 723
    Top = 288
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <>
    UseOwnFont = False
    Left = 656
    Top = 325
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 624
    Top = 322
  end
end

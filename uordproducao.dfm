object frmordproducao: Tfrmordproducao
  Left = 390
  Top = 190
  ClientHeight = 644
  ClientWidth = 1414
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
  object pgc: TcxPageControl
    Left = 0
    Top = 235
    Width = 1414
    Height = 409
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Properties.ActivePage = tbsitproducao
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    Properties.NavigatorPosition = npLeftTop
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 409
    ClientRectRight = 1414
    ClientRectTop = 25
    object tbspedido: TcxTabSheet
      Caption = 'Ca&dastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblnupedido: TLabel
        Left = 10
        Top = 10
        Width = 40
        Height = 13
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lblnupedidoDblClick
      end
      object lblcdorcamento: TLabel
        Left = 10
        Top = 25
        Width = 62
        Height = 13
        Caption = 'Or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lblcdorcamentoDblClick
      end
      object lblnmcliente: TLabel
        Left = 10
        Top = 45
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Transparent = True
      end
      object lblnucotacao: TLabel
        Left = 10
        Top = 60
        Width = 70
        Height = 13
        Caption = 'Ordem Compra'
        Transparent = True
      end
      object lblnuitem: TLabel
        Left = 10
        Top = 75
        Width = 20
        Height = 13
        Caption = 'Item'
        Transparent = True
      end
      object txtNMCLIENTE: TDBText
        Left = 122
        Top = 45
        Width = 419
        Height = 17
        DataField = 'NMCLIENTE'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = txtNMCLIENTEDblClick
      end
      object txtNUCOTACAO: TDBText
        Left = 122
        Top = 60
        Width = 84
        Height = 17
        DataField = 'NUCOTACAO'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object txtNUITEM: TDBText
        Left = 122
        Top = 75
        Width = 84
        Height = 17
        DataField = 'NUITEM'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblCDREQUISICAOPRODUCAO: TLabel
        Left = 10
        Top = 91
        Width = 102
        Height = 13
        Caption = 'Requisi'#231#227'o Produ'#231#227'o'
        Transparent = True
      end
      object txtCDREQUISICAOPRODUCAO: TDBText
        Left = 122
        Top = 91
        Width = 84
        Height = 17
        DataField = 'CDREQUISICAOPRODUCAO'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = txtCDREQUISICAOPRODUCAODblClick
      end
      object lblnuentrada: TLabel
        Left = 10
        Top = 114
        Width = 111
        Height = 13
        Caption = 'Nota Fiscal Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lblnuentradaDblClick
      end
      object lbl2: TLabel
        Left = 245
        Top = 27
        Width = 80
        Height = 13
        Caption = 'Produto Principal'
        Transparent = True
      end
      object dbtxtNMPRODUTOPRINCIPAL: TDBText
        Left = 329
        Top = 27
        Width = 419
        Height = 17
        DataField = 'NMPRODUTOPRINCIPAL'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object txtDSPRODUTO: TDBText
        Left = 122
        Top = 131
        Width = 93
        Height = 13
        AutoSize = True
        DataField = 'DSPRODUTO'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbldsproduto: TLabel
        Left = 10
        Top = 131
        Width = 88
        Height = 13
        Caption = 'Descri'#231#227'o Produto'
        Transparent = True
      end
      object edtnupedido: TcxDBButtonEdit
        Left = 122
        Top = 2
        DataBinding.DataField = 'NUPEDIDO'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtnupedidoPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Width = 121
      end
      object edtnuentrada: TcxDBButtonEdit
        Left = 122
        Top = 108
        DataBinding.DataField = 'NUENTRADA'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtnuentradaPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyPress = edtnuentradaKeyPress
        Width = 121
      end
      object edtcdorcamento: TcxDBButtonEdit
        Left = 122
        Top = 23
        DataBinding.DataField = 'CDORCAMENTO'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdorcamentoPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = colorenter
        OnExit = colorexit
        Width = 121
      end
    end
    object tbsitproducao: TcxTabSheet
      Caption = 'Produto Acabado'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditordproducao: TcxGrid
        Left = 0
        Top = 0
        Width = 1414
        Height = 384
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvitordproducao: TcxGridDBTableView
          OnKeyDown = tbvitordproducaoKeyDown
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
          OnCellDblClick = tbvitordproducaoCellDblClick
          DataController.DataSource = dtsitordproducao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTPRODUCAO'
              Column = tbvitordproducaoQTPRODUCAO
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvitordproducaoQTITEM
            end
            item
              Kind = skSum
              FieldName = 'QTCOMPRIMENTO'
              Column = tbvitordproducaoQTCOMPRIMENTO
            end
            item
              Kind = skSum
              FieldName = 'QTESPESSURA'
              Column = tbvitordproducaoQTESPESSURA
            end
            item
              Kind = skSum
              FieldName = 'QTLARGURA'
              Column = tbvitordproducaoQTLARGURA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvitordproducaoCDDIGITADOMATERIAPRIMA: TcxGridDBColumn
            Caption = 'C'#243'digo Mat'#233'ria-Prima'
            DataBinding.FieldName = 'CDDIGITADOMATERIAPRIMA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = tbvitordproducaoCDDIGITADOMATERIAPRIMAPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 100
          end
          object tbvitordproducaoNMPRODUTOMATERIAPRIMA: TcxGridDBColumn
            Caption = 'Mat'#233'ria-Prima'
            DataBinding.FieldName = 'NMPRODUTOMATERIAPRIMA'
            Options.Focusing = False
            Width = 300
          end
          object tbvitordproducaoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = tbvitordproducaoCDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 100
          end
          object tbvitordproducaoNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Focusing = False
            Width = 300
          end
          object tbvitordproducaoNMUNIDADE: TcxGridDBColumn
            Caption = 'Unid'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Focusing = False
            Width = 30
          end
          object tbvitordproducaoNUCLFISCAL: TcxGridDBColumn
            Caption = 'NCM'
            DataBinding.FieldName = 'NUCLFISCAL'
            Options.Focusing = False
            Width = 80
          end
          object tbvitordproducaoNULOTE: TcxGridDBColumn
            Caption = 'Lote'
            DataBinding.FieldName = 'NULOTE'
          end
          object tbvitordproducaoNUBAG: TcxGridDBColumn
            Caption = 'Bag'
            DataBinding.FieldName = 'NUBAG'
            Width = 100
          end
          object tbvitordproducaoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
          end
          object tbvitordproducaoQTPRODUCAO: TcxGridDBColumn
            Caption = 'Produ'#231#227'o'
            DataBinding.FieldName = 'QTPRODUCAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
          end
          object tbvitordproducaoHRINICIO: TcxGridDBColumn
            Caption = 'In'#237'cio'
            DataBinding.FieldName = 'HRINICIO'
            PropertiesClassName = 'TcxTimeEditProperties'
          end
          object tbvitordproducaoHRFIM: TcxGridDBColumn
            Caption = 'Fim'
            DataBinding.FieldName = 'HRFIM'
            PropertiesClassName = 'TcxTimeEditProperties'
          end
          object tbvitordproducaoDSOBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
          end
          object tbvitordproducaoCDSTITORDPRODUCAO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'CDSTITORDPRODUCAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDSTITORDPRODUCAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTITORDPRODUCAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Options.Focusing = False
            Width = 138
          end
          object tbvitordproducaoQTESPESSURA: TcxGridDBColumn
            Caption = 'Espessura'
            DataBinding.FieldName = 'QTESPESSURA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 80
          end
          object tbvitordproducaoQTLARGURA: TcxGridDBColumn
            Caption = 'Largura'
            DataBinding.FieldName = 'QTLARGURA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 80
          end
          object tbvitordproducaoQTCOMPRIMENTO: TcxGridDBColumn
            Caption = 'Comprimento'
            DataBinding.FieldName = 'QTCOMPRIMENTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 80
          end
        end
        object grditordproducaoLevel1: TcxGridLevel
          GridView = tbvitordproducao
        end
      end
    end
    object tbsmaterial: TcxTabSheet
      Caption = '&Mat'#233'ria-Prima'
      ImageIndex = 24
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdmaterial: TcxGrid
        Left = 0
        Top = 0
        Width = 1414
        Height = 384
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
        end
        object tbvmaterial: TcxGridDBBandedTableView
          OnKeyDown = tbvmaterialKeyDown
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Append.Enabled = False
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
          OnCellDblClick = tbvmaterialCellDblClick
          OnCustomDrawCell = tbvmaterialCustomDrawCell
          DataController.DataSource = dtsitordproducaomaterial
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTPECA'
              Column = tbvmaterialQTPECA
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvmaterialQTITEM
            end
            item
              Kind = skSum
              FieldName = 'QTPESOUNITARIO'
              Column = tbvmaterialQTPESOUNITARIO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvmaterialVLTOTAL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLFRETE'
              Column = tbvmaterialVLFRETE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMS'
              Column = tbvmaterialVLICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPI'
              Column = tbvmaterialVLIPI
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLFINAL'
              Column = tbvmaterialVLFINAL
            end
            item
              Kind = skSum
              FieldName = 'QTCONSUMO'
              Column = tbvmaterialQTCONSUMO
            end
            item
              Kind = skSum
              FieldName = 'QTESTOQUE'
              Column = tbvmaterialQTESTOQUE
            end
            item
              Kind = skSum
              FieldName = 'QTITEM2'
              Column = tbvmaterialQTITEM2
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
          Styles.Selection = dtmmain.cxStyle5
          Bands = <
            item
              Caption = 'Produto'
              Width = 459
            end
            item
              Caption = 'Identifica'#231#227'o'
            end
            item
              Caption = 'Quantidade'
            end
            item
              Caption = 'Faixa'
            end
            item
              Caption = 'Valor'
            end
            item
              Caption = 'ICMS'
            end
            item
              Caption = 'IPI'
            end
            item
              Caption = 'PIS'
            end
            item
              Caption = 'COFINS'
            end
            item
              Caption = 'Valor Final'
            end
            item
              Caption = 'Outros'
            end
            item
              Caption = 'Observa'#231#227'o'
            end>
          object tbvmaterialCDDIGITADO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = tbvmaterialCDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 97
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialNMPRODUTO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Focusing = False
            Width = 219
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvmaterialDSPOSICAO: TcxGridDBBandedColumn
            Caption = 'Posi'#231#227'o'
            DataBinding.FieldName = 'DSPOSICAO'
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvmaterialNUCLFISCAL: TcxGridDBBandedColumn
            Caption = 'NCM'
            DataBinding.FieldName = 'NUCLFISCAL'
            Options.Focusing = False
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvmaterialNMUNIDADE: TcxGridDBBandedColumn
            Caption = 'Unid'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Focusing = False
            Width = 30
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvmaterialDTPREVENTREGA: TcxGridDBBandedColumn
            Caption = 'Previs'#227'o'
            DataBinding.FieldName = 'DTPREVENTREGA'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvmaterialNMUNIDADE2: TcxGridDBBandedColumn
            Caption = 'Unid 2'
            DataBinding.FieldName = 'NMUNIDADE2'
            Options.Focusing = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tbvmaterialNUESTRUTURAL: TcxGridDBBandedColumn
            Caption = 'N'#186' Estrutural'
            DataBinding.FieldName = 'NUESTRUTURAL'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvmaterialNUBAG: TcxGridDBBandedColumn
            Caption = 'Bag'
            DataBinding.FieldName = 'NUBAG'
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialNULOTE: TcxGridDBBandedColumn
            Caption = 'Lote'
            DataBinding.FieldName = 'NULOTE'
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvmaterialQTPECA: TcxGridDBBandedColumn
            Caption = 'Qt Pe'#231'a'
            DataBinding.FieldName = 'QTPECA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialQTPESOUNITARIO: TcxGridDBBandedColumn
            Caption = 'Peso Unit'#225'rio'
            DataBinding.FieldName = 'QTPESOUNITARIO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvmaterialQTPESOUNITARIOPropertiesButtonClick
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvmaterialQTITEM: TcxGridDBBandedColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvmaterialDSFORMULA: TcxGridDBBandedColumn
            Caption = 'Medidas'
            DataBinding.FieldName = 'DSFORMULA'
            Width = 104
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvmaterialQTCONSUMO: TcxGridDBBandedColumn
            Caption = 'Consumo'
            DataBinding.FieldName = 'QTCONSUMO'
            Options.Focusing = False
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvmaterialQTESTOQUE: TcxGridDBBandedColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'QTESTOQUE'
            Options.Focusing = False
            Position.BandIndex = 2
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tbvmaterialNUMISTURA: TcxGridDBBandedColumn
            Caption = 'N'#186' Mistura'
            DataBinding.FieldName = 'NUMISTURA'
            Options.Focusing = False
            Position.BandIndex = 2
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tbvmaterialQTITEM2: TcxGridDBBandedColumn
            Caption = 'Quantidade 2'
            DataBinding.FieldName = 'QTITEM2'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 72
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvmaterialQTFAIXAI: TcxGridDBBandedColumn
            Caption = 'Inicial'
            DataBinding.FieldName = 'QTFAIXAI'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialQTFAIXAF: TcxGridDBBandedColumn
            Caption = 'Final'
            DataBinding.FieldName = 'QTFAIXAF'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvmaterialVLUNITARIO: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialVLTOTAL: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvmaterialVLFRETE: TcxGridDBBandedColumn
            Caption = 'Frete'
            DataBinding.FieldName = 'VLFRETE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvmaterialALICMS: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'ALICMS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 37
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialBORECUPERAICMS: TcxGridDBBandedColumn
            Caption = 'Recupera'
            DataBinding.FieldName = 'BORECUPERAICMS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 60
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvmaterialVLICMS: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLICMS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvmaterialALIPI: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'ALIPI'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 37
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialBORECUPERAIPI: TcxGridDBBandedColumn
            Caption = 'Recupera'
            DataBinding.FieldName = 'BORECUPERAIPI'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 60
            Position.BandIndex = 6
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvmaterialVLIPI: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLIPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvmaterialALPIS: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'ALPIS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 25
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialVLPIS: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLPIS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 100
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvmaterialBORECUPERAPIS: TcxGridDBBandedColumn
            Caption = 'Recupera'
            DataBinding.FieldName = 'BORECUPERAPIS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 60
            Position.BandIndex = 7
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvmaterialVLCOFINS: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLCOFINS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 8
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvmaterialBORECUPERACOFINS: TcxGridDBBandedColumn
            Caption = 'Recupera'
            DataBinding.FieldName = 'BORECUPERACOFINS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 60
            Position.BandIndex = 8
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvmaterialALCOFINS: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'ALCOFINS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 25
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialVLFINAL: TcxGridDBBandedColumn
            Caption = 'Valor Final'
            DataBinding.FieldName = 'VLFINAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Position.BandIndex = 9
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialCDFORMULACAO: TcxGridDBBandedColumn
            Caption = 'Formula'#231#227'o'
            DataBinding.FieldName = 'CDFORMULACAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 350
            Properties.KeyFieldNames = 'CDFORMULACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMFORMULACAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 120
            Position.BandIndex = 10
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvmaterialCDTPEQUIPAMENTO: TcxGridDBBandedColumn
            Caption = 'Tipo Equipamento'
            DataBinding.FieldName = 'CDTPEQUIPAMENTO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 350
            Properties.KeyFieldNames = 'CDTPEQUIPAMENTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPEQUIPAMENTO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 120
            Position.BandIndex = 10
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvmaterialDSOBSERVACAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Position.BandIndex = 11
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = tbvmaterial
        end
      end
    end
    object tbscusto: TcxTabSheet
      Caption = '&Servi'#231'o Terceirizado'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdcusto: TcxGrid
        Left = 0
        Top = 0
        Width = 1414
        Height = 384
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
        end
        object tbvcusto: TcxGridDBTableView
          OnKeyDown = tbvcustoKeyDown
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
          DataController.DataSource = dtsitordproducaocusto
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvcustoVLTOTAL
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvcustoQTITEM
            end
            item
              Kind = skSum
              FieldName = 'QTDIAS'
              Column = tbvcustoQTDIAS
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
          Styles.Selection = dtmmain.cxStyle5
          object tbvcustoNUSEQUENCIA: TcxGridDBColumn
            Caption = 'N'#176
            DataBinding.FieldName = 'NUSEQUENCIA'
            Width = 31
          end
          object tbvcustoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = grdcustoDBTableView1CDDIGITADOPropertiesButtonClick
            Width = 111
          end
          object tbvcustoNMPRODUTO: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Editing = False
            Options.Focusing = False
            Width = 320
          end
          object tbvcustoQTDIAS: TcxGridDBColumn
            Caption = 'Qtd Dias'
            DataBinding.FieldName = 'QTDIAS'
          end
          object tbvcustoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
          end
          object tbvcustoVLUNITARIO: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object tbvcustoVLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Options.Editing = False
            Options.Focusing = False
            Width = 151
          end
          object tbvcustoDSOBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Width = 360
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = tbvcusto
        end
      end
    end
    object tbsrecurso: TcxTabSheet
      Caption = 'R&ecurso'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdrecurso: TcxGrid
        Left = 0
        Top = 0
        Width = 1414
        Height = 384
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
        end
        object tbvrecurso: TcxGridDBBandedTableView
          OnKeyDown = tbvrecursoKeyDown
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Append.Enabled = False
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
          OnCellDblClick = tbvrecursoCellDblClick
          OnCustomDrawCell = tbvrecursoCustomDrawCell
          DataController.DataSource = dtsitordproducaorecurso
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTALOPERACAO'
              Column = tbvrecursoVLTOTALOPERACAO
            end
            item
              Kind = skSum
              FieldName = 'QTOPERACAO'
              Column = tbvrecursoQTOPERACAO
            end
            item
              Kind = skSum
              FieldName = 'QTPREPARACAO'
              Column = tbvrecursoQTPREPARACAO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTALPREPARACAO'
              Column = tbvrecursoVLTOTALPREPARACAO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvrecursoVLTOTAL
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
          Styles.Selection = dtmmain.cxStyle5
          Bands = <
            item
              Caption = 'Recurso'
              Width = 353
            end
            item
              Caption = 'Formula'#231#227'o'
              Width = 157
            end
            item
              Caption = 'Opera'#231#227'o'
            end
            item
              Caption = 'Prepara'#231#227'o'
            end
            item
              Caption = 'Total'
            end
            item
              Caption = 'Observa'#231#227'o'
              Width = 207
            end
            item
              Caption = 'Previs'#227'o de In'#237'cio'
            end
            item
              Caption = 'Previs'#227'o de T'#233'rmino'
            end
            item
              Caption = 'Tempo Libera'#231#227'o'
            end
            item
              Caption = 'In'#237'cio'
            end
            item
              Caption = 'T'#233'rmino'
            end>
          object tbvrecursoNUCOR: TcxGridDBBandedColumn
            Caption = 'Cor'
            DataBinding.FieldName = 'NUCOR'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvrecursoNUSEQUENCIA: TcxGridDBBandedColumn
            Caption = 'N'#176
            DataBinding.FieldName = 'NUSEQUENCIA'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.MinValue = 1.000000000000000000
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrecursoCDTPEQUIPAMENTO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'CDTPEQUIPAMENTO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 350
            Properties.KeyFieldNames = 'CDTPEQUIPAMENTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPEQUIPAMENTO'
              end>
            Properties.ListOptions.ShowHeader = False
            Styles.Content = dtmmain.cxStyle1
            Width = 177
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvrecursoCDSTITORDPRODUCAORECURSO: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'CDSTITORDPRODUCAORECURSO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'CDSTITORDPRODUCAORECURSO'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTITORDPRODUCAORECURSO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 64
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrecursoCDTPDURACAO: TcxGridDBBandedColumn
            Caption = 'Tipo Dura'#231#227'o'
            DataBinding.FieldName = 'CDTPDURACAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 150
            Properties.KeyFieldNames = 'CDTPDURACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPDURACAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvrecursoCDFORMULACAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CDFORMULACAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDFORMULACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMFORMULACAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object tbvrecursoQTOPERACAO: TcxGridDBBandedColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTOPERACAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrecursoVLOPERACAO: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLOPERACAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 81
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrecursoVLTOTALOPERACAO: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTALOPERACAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvrecursoQTPREPARACAO: TcxGridDBBandedColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTPREPARACAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrecursoVLPREPARACAO: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLPREPARACAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 81
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrecursoVLTOTALPREPARACAO: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTALPREPARACAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Options.Editing = False
            Options.Focusing = False
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvrecursoVLTOTAL: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrecursoDSOBSERVACAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object tbvrecursoHRINICIOPREVISTA: TcxGridDBBandedColumn
            Caption = 'Hora'
            DataBinding.FieldName = 'HRINICIOPREVISTA'
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrecursoDTINICIOPREVISTA: TcxGridDBBandedColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTINICIOPREVISTA'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrecursoHRTERMINOPREVISTA: TcxGridDBBandedColumn
            Caption = 'Hora'
            DataBinding.FieldName = 'HRTERMINOPREVISTA'
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrecursoDTTERMINOPREVISTA: TcxGridDBBandedColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTTERMINOPREVISTA'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrecursoQTLIBERACAO: TcxGridDBBandedColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTLIBERACAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrecursoCDTPDURACAOLIBERACAO: TcxGridDBBandedColumn
            Caption = 'Dura'#231#227'o'
            DataBinding.FieldName = 'CDTPDURACAOLIBERACAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPDURACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPDURACAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Position.BandIndex = 8
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrecursoDTINICIO: TcxGridDBBandedColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTINICIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 9
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrecursoHRINICIO: TcxGridDBBandedColumn
            Caption = 'Hora'
            DataBinding.FieldName = 'HRINICIO'
            Position.BandIndex = 9
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrecursoDTTERMINO: TcxGridDBBandedColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTTERMINO'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 10
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrecursoHRTERMINO: TcxGridDBBandedColumn
            Caption = 'Hora'
            DataBinding.FieldName = 'HRTERMINO'
            PropertiesClassName = 'TcxTimeEditProperties'
            Position.BandIndex = 10
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = tbvrecurso
        end
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = '&Observa'#231#227'o'
      ImageIndex = 62
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memdsobservacao: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 384
        Width = 1414
      end
    end
    object tbsapontamento: TcxTabSheet
      Caption = '&Apontamento'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdapontamento: TcxGrid
        Left = 0
        Top = 0
        Width = 1414
        Height = 384
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvapontamento: TcxGridDBBandedTableView
          OnKeyDown = tbvapontamentoKeyDown
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
          OnCellDblClick = tbvapontamentoCellDblClick
          DataController.DataSource = dtsapontamento
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              OnGetText = exibir_total_horas_rodape
              FieldName = 'HRDURACAO'
              Column = tbvapontamentoHRDURACAO
            end
            item
              Kind = skSum
              FieldName = 'QTDURACAO'
              Column = tbvapontamentoQTDURACAO
            end
            item
              Kind = skSum
              FieldName = 'QTPRODUCAO'
              Column = tbvapontamentoQTPRODUCAO
            end
            item
              Kind = skSum
              FieldName = 'QTREFUGO'
              Column = tbvapontamentoQTREFUGO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvapontamentoVLTOTAL
            end
            item
              Kind = skSum
              FieldName = 'QTRETRABALHO'
              Column = tbvapontamentoQTRETRABALHO
            end
            item
              Kind = skSum
              OnGetText = exibir_total_horas_rodape
              FieldName = 'HRDURACAOHORIMETRO'
              Column = tbvapontamentoHRDURACAOHORIMETRO
            end
            item
              Kind = skSum
              OnGetText = exibir_total_horas_rodape
              FieldName = 'HROCIOSA'
              Column = tbvapontamentoHROCIOSA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Funcion'#225'rio'
              Width = 223
            end
            item
              Caption = 'Equipamento'
              Width = 300
            end
            item
              Caption = 'Tempo'
            end
            item
              Caption = 'Hor'#237'metro'
            end
            item
              Caption = 'Produ'#231#227'o'
            end
            item
              Caption = 'Outros'
              Width = 300
            end>
          object tbvapontamentoCDFUNCIONARIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CDFUNCIONARIO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'CDFUNCIONARIO'
            Properties.ListColumns = <
              item
                FieldName = 'NMFUNCIONARIO'
              end>
            Properties.ListOptions.ShowHeader = False
            Styles.Content = dtmmain.cxStyle1
            Width = 44
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object tbvapontamentoCDEQUIPAMENTO: TcxGridDBBandedColumn
            Caption = 'C'#243'd Equipamento'
            DataBinding.FieldName = 'CDEQUIPAMENTO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'CDEQUIPAMENTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMEQUIPAMENTO'
              end>
            Properties.ListOptions.ShowHeader = False
            Styles.Content = dtmmain.cxStyle1
            Width = 136
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvapontamentoHRINICIO: TcxGridDBBandedColumn
            Caption = 'In'#237'cio'
            DataBinding.FieldName = 'HRINICIO'
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvapontamentoHRFIM: TcxGridDBBandedColumn
            Caption = 'Fim'
            DataBinding.FieldName = 'HRFIM'
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvapontamentoHRDURACAO: TcxGridDBBandedColumn
            Caption = 'Duracao'
            DataBinding.FieldName = 'HRDURACAO'
            Options.Focusing = False
            Position.BandIndex = 2
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tbvapontamentoQTDURACAO: TcxGridDBBandedColumn
            Caption = 'Qt em Horas'
            DataBinding.FieldName = 'QTDURACAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
            Options.Focusing = False
            Position.BandIndex = 2
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tbvapontamentoCDSTAPONTAMENTO: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'CDSTAPONTAMENTO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'CDSTAPONTAMENTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTAPONTAMENTO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvapontamentoDTEMISSAO: TcxGridDBBandedColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTEMISSAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 65
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvapontamentoQTPRODUCAO: TcxGridDBBandedColumn
            Caption = 'Qtd Produzida'
            DataBinding.FieldName = 'QTPRODUCAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvapontamentoQTREFUGO: TcxGridDBBandedColumn
            Caption = 'Qtd Refugo'
            DataBinding.FieldName = 'QTREFUGO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvapontamentoQTRETRABALHO: TcxGridDBBandedColumn
            Caption = 'Qtd Retrabalho'
            DataBinding.FieldName = 'QTRETRABALHO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvapontamentoDSOBSERVACAO: TcxGridDBBandedColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Width = 100
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvapontamentoVLUNITARIO: TcxGridDBBandedColumn
            Caption = 'Valor Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Options.Focusing = False
            Position.BandIndex = 2
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tbvapontamentoVLTOTAL: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Focusing = False
            Position.BandIndex = 2
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object tbvapontamentoCDTPHORAEXTRA: TcxGridDBBandedColumn
            Caption = 'Tipo Hora Extra'
            DataBinding.FieldName = 'CDTPHORAEXTRA'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'CDTPHORAEXTRA'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPHORAEXTRA'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.OnInitPopup = tbvapontamentoCDTPHORAEXTRAPropertiesInitPopup
            Width = 110
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvapontamentoCDTPPARADA: TcxGridDBBandedColumn
            Caption = 'Tipo Parada'
            DataBinding.FieldName = 'CDTPPARADA'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'CDTPPARADA'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPPARADA'
              end>
            Properties.ListOptions.ShowHeader = False
            Position.BandIndex = 4
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvapontamentoNUESTRUTURAL: TcxGridDBBandedColumn
            Caption = 'N'#186' Estrutural'
            DataBinding.FieldName = 'NUESTRUTURAL'
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvapontamentoNUHORIMETROINICIAL: TcxGridDBBandedColumn
            Caption = 'Inicial'
            DataBinding.FieldName = 'NUHORIMETROINICIAL'
            Width = 65
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvapontamentoNUHORIMETROFINAL: TcxGridDBBandedColumn
            Caption = 'Final'
            DataBinding.FieldName = 'NUHORIMETROFINAL'
            Width = 65
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvapontamentoHRINICIALHORIMETRO: TcxGridDBBandedColumn
            Caption = 'Hora Inicial'
            DataBinding.FieldName = 'HRINICIALHORIMETRO'
            PropertiesClassName = 'TcxTimeEditProperties'
            Options.Focusing = False
            Width = 65
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvapontamentoHRFINALHORIMETRO: TcxGridDBBandedColumn
            Caption = 'Hora Final'
            DataBinding.FieldName = 'HRFINALHORIMETRO'
            PropertiesClassName = 'TcxTimeEditProperties'
            Options.Focusing = False
            Width = 65
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvapontamentoHRDURACAOHORIMETRO: TcxGridDBBandedColumn
            Caption = 'Dura'#231#227'o'
            DataBinding.FieldName = 'HRDURACAOHORIMETRO'
            Options.Focusing = False
            Width = 65
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvapontamentoHROCIOSA: TcxGridDBBandedColumn
            Caption = 'Ociosa'
            DataBinding.FieldName = 'HROCIOSA'
            Options.Focusing = False
            Width = 65
            Position.BandIndex = 3
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvapontamentoNMTPEQUIPAMENTO: TcxGridDBBandedColumn
            Caption = 'Recurso'
            DataBinding.FieldName = 'NMTPEQUIPAMENTO'
            Width = 164
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvapontamentoQTPECA: TcxGridDBBandedColumn
            Caption = 'Qt Pe'#231'a'
            DataBinding.FieldName = 'QTPECA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvapontamentoCDAPONTAMENTOMANUAL: TcxGridDBBandedColumn
            Caption = 'Apontamento Manual'
            DataBinding.FieldName = 'CDAPONTAMENTOMANUAL'
            Options.Focusing = False
            Styles.Content = dtmmain.cxStyle1
            Width = 120
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvapontamentoTSINICIO: TcxGridDBBandedColumn
            Caption = 'In'#237'cio'
            DataBinding.FieldName = 'TSINICIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Width = 120
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvapontamentoTSFIM: TcxGridDBBandedColumn
            Caption = 'Fim'
            DataBinding.FieldName = 'TSFIM'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Width = 120
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object grdapontamentoLevel1: TcxGridLevel
          GridView = tbvapontamento
        end
      end
    end
    object tbshstordproducao: TcxTabSheet
      Caption = '&Hist'#243'rio Status'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdhstordproducao: TcxGrid
        Left = 0
        Top = 0
        Width = 1414
        Height = 384
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvhstordproducao: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Enabled = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
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
          DataController.DataSource = dtshstordproducao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          object tbvhstordproducaoCDSTORDPRODUCAO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'CDSTORDPRODUCAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'CDSTORDPRODUCAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTORDPRODUCAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Options.Editing = False
            Options.Focusing = False
            Width = 171
          end
          object tbvhstordproducaoCDUSUARIOI: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'CDUSUARIOI'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'CDUSUARIO'
            Properties.ListColumns = <
              item
                FieldName = 'NMUSUARIO'
              end>
            Properties.ListOptions.ShowHeader = False
            Options.Editing = False
            Options.Focusing = False
            Width = 172
          end
          object tbvhstordproducaoNMCOMPUTADOR: TcxGridDBColumn
            Caption = 'Computador'
            DataBinding.FieldName = 'NMCOMPUTADOR'
            Options.Editing = False
            Options.Focusing = False
            Width = 165
          end
          object tbvhstordproducaoTSHISTORICO: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'TSINCLUSAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DateButtons = [btnClear, btnNow, btnToday]
            Properties.Kind = ckDateTime
            Options.Editing = False
            Options.Focusing = False
            Width = 144
          end
          object tbvhstordproducaoDSJUSTIFICATIVA: TcxGridDBColumn
            Caption = 'Justificativa'
            DataBinding.FieldName = 'DSJUSTIFICATIVA'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Options.Editing = False
            Width = 327
          end
        end
        object grdhstordproducaoLevel1: TcxGridLevel
          GridView = tbvhstordproducao
        end
      end
    end
    object tbsoutros: TcxTabSheet
      Caption = 'O&utros'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblcdfuncionario: TLabel
        Left = 3
        Top = 29
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
      object lblcdmunicipio: TLabel
        Left = 3
        Top = 51
        Width = 47
        Height = 13
        Caption = 'Munic'#237'pio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbldtprvinstalacao: TLabel
        Left = 3
        Top = 77
        Width = 74
        Height = 13
        Caption = 'Prev Instala'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbltpmotivorevisao: TLabel
        Left = 3
        Top = 97
        Width = 98
        Height = 13
        Caption = 'Tipo Motivo Revis'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblCDEQUIPAMENTO: TLabel
        Left = 386
        Top = 29
        Width = 74
        Height = 13
        Caption = 'Equipamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lblCDEQUIPAMENTODblClick
      end
      object lblcdfuncionariosolicitante: TLabel
        Left = 3
        Top = 6
        Width = 61
        Height = 13
        Caption = 'Solicitante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lblcdfuncionarioDblClick
      end
      object lblcdequipamento2: TLabel
        Left = 386
        Top = 51
        Width = 71
        Height = 13
        Caption = 'Equipamento 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        OnDblClick = lblCDEQUIPAMENTODblClick
      end
      object cbxcdfuncionario: TcxDBLookupComboBox
        Left = 102
        Top = 24
        DataBinding.DataField = 'CDFUNCIONARIO'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 300
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
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 275
      end
      object cbxcdmunicipio: TcxDBLookupComboBox
        Left = 102
        Top = 46
        DataBinding.DataField = 'CDMUNICIPIO'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'CDMUNICIPIO'
        Properties.ListColumns = <
          item
            FieldName = 'NMMUNICIPIO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 275
      end
      object edtdtprvinstalacao: TcxDBDateEdit
        Left = 102
        Top = 69
        DataBinding.DataField = 'DTPRVINSTALACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 275
      end
      object cbxcdtpmotivorevisao: TcxDBLookupComboBox
        Left = 102
        Top = 92
        DataBinding.DataField = 'CDTPMOTIVOREVISAO'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'CDTPMOTIVOREVISAO'
        Properties.ListColumns = <
          item
            FieldName = 'NMTPMOTIVOREVISAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 275
      end
      object cbxcdequipamento: TcxDBLookupComboBox
        Left = 506
        Top = 24
        DataBinding.DataField = 'CDEQUIPAMENTO'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'CDEQUIPAMENTO'
        Properties.ListColumns = <
          item
            FieldName = 'NMEQUIPAMENTO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 275
      end
      object cbxcdfuncionariosolicitante: TcxDBLookupComboBox
        Left = 102
        Top = 1
        DataBinding.DataField = 'CDFUNCIONARIOSOLICITANTE'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 300
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
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 275
      end
      object cbxcdequipamento2: TcxDBLookupComboBox
        Left = 506
        Top = 46
        DataBinding.DataField = 'CDEQUIPAMENTO2'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'CDEQUIPAMENTO'
        Properties.ListColumns = <
          item
            FieldName = 'NMEQUIPAMENTO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 275
      end
    end
    object tbsconsulta: TcxTabSheet
      Caption = '&Consulta'
      ImageIndex = 41
      ExplicitHeight = 343
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1414
        Height = 38
        Align = dalTop
        BarManager = bmg1
      end
      object grdconsulta: TcxGrid
        Left = 0
        Top = 38
        Width = 1414
        Height = 346
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbvordcompra: TcxGridDBBandedTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Enabled = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Enabled = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Enabled = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Enabled = False
          Navigator.Buttons.Cancel.Visible = False
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
          OnCellDblClick = tbvordcompraCellDblClick
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTATENDIDA'
              Column = tbvordcompraqtatendida
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvordcompraQTITEM
            end
            item
              Kind = skSum
              FieldName = 'QTPECA'
              Column = tbvordcompraqtpeca
            end
            item
              Kind = skSum
              FieldName = 'QTPESOUNITARIO'
              Column = tbvordcompraqtpesounitario
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvordcompraVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'Ordem Compra'
              Width = 125
            end
            item
              Caption = 'Fornecedor'
              Width = 178
            end
            item
              Caption = 'Produto'
              Width = 253
            end
            item
              Caption = 'Quantidade'
              Width = 234
            end
            item
              Caption = 'Valores'
              Width = 280
            end>
          object tbvordcompraCDORDCOMPRA: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDORDCOMPRA'
            Styles.Content = dtmmain.cxStyle1
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvordcompraDTEMISSAO: TcxGridDBBandedColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvordcompraCDFORNECEDOR: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDFORNECEDOR'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvordcompraNMFORNECEDOR: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMFORNECEDOR'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvordcompraCDDIGITADO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvordcompraNMPRODUTO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvordcompraNUCLFISCAL: TcxGridDBBandedColumn
            Caption = 'NCM'
            DataBinding.FieldName = 'NUCLFISCAL'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvordcompraQTITEM: TcxGridDBBandedColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'QTITEM'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvordcompraqtatendida: TcxGridDBBandedColumn
            Caption = 'Atendido'
            DataBinding.FieldName = 'QTATENDIDA'
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvordcompraqtpeca: TcxGridDBBandedColumn
            Caption = 'Pe'#231'a'
            DataBinding.FieldName = 'QTPECA'
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvordcompraqtpesounitario: TcxGridDBBandedColumn
            Caption = 'Peso Unit'#225'rio'
            DataBinding.FieldName = 'QTPESOUNITARIO'
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvordcompraVLPECA: TcxGridDBBandedColumn
            Caption = 'Pe'#231'a'
            DataBinding.FieldName = 'VLPECA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvordcompraVLUNITARIO: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvordcompraVLTOTAL: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object tbvrim: TcxGridDBBandedTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Enabled = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Enabled = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Enabled = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Enabled = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Enabled = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          OnCellDblClick = tbvrimCellDblClick
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvrimqtitem
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvrimvltotal
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'Requisi'#231#227'o'
              Width = 211
            end
            item
              Caption = 'Centro Custo'
              Width = 171
            end
            item
              Caption = 'Funcion'#225'rio'
              Width = 162
            end
            item
              Caption = 'Produto'
              Width = 253
            end
            item
              Caption = 'Quantidade'
              Width = 84
            end
            item
              Caption = 'Valores'
              Width = 244
            end>
          object tbvrimcdrim: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDRIM'
            Styles.Content = dtmmain.cxStyle1
            Width = 78
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrimdtemissao: TcxGridDBBandedColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrimdtbaixa: TcxGridDBBandedColumn
            Caption = 'Baixa'
            DataBinding.FieldName = 'DTBAIXA'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvrimnunivel: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'NUNIVEL'
            Width = 97
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrimnmcntcusto: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMCNTCUSTO'
            Width = 232
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrimcdfuncionario: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDFUNCIONARIO'
            Styles.Content = dtmmain.cxStyle1
            Width = 77
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrimnmfuncionario: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMFUNCIONARIO'
            Width = 232
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrimcddigitado: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            Styles.Content = dtmmain.cxStyle1
            Width = 99
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrimnmproduto: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 259
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvrimnuclfiscal: TcxGridDBBandedColumn
            Caption = 'NCM'
            DataBinding.FieldName = 'NUCLFISCAL'
            Width = 110
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvrimqtitem: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QTITEM'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object tbvrimvlunitario: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 140
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvrimvltotal: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            Width = 103
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object tbvsaida: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Enabled = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Enabled = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Enabled = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Enabled = False
          Navigator.Buttons.Cancel.Visible = False
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
          OnCellDblClick = tbvrimCellDblClick
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object tbvsaidaNUSAIDA: TcxGridDBColumn
            Caption = 'Nota Fiscal'
            DataBinding.FieldName = 'NUSAIDA'
            Styles.Content = dtmmain.cxStyle1
            Width = 79
          end
          object tbvsaidaDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 98
          end
        end
        object tbvmovto: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Enabled = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Enabled = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Enabled = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Enabled = False
          Navigator.Buttons.Cancel.Visible = False
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
          OnCellDblClick = tbvmovtoCellDblClick
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvmovtoQTITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvmovtoVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object tbvmovtoCDMOVTO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDMOVTO'
            Styles.Content = dtmmain.cxStyle1
          end
          object tbvmovtoDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object tbvmovtoNMTPMOVTO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'NMTPMOVTO'
            Width = 120
          end
          object tbvmovtoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo Produto'
            DataBinding.FieldName = 'CDDIGITADO'
            Styles.Content = dtmmain.cxStyle1
            Width = 80
          end
          object tbvmovtoNMPRODUTO: TcxGridDBColumn
            Caption = 'Nome Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 250
          end
          object tbvmovtoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
          end
          object tbvmovtoVLUNITARIO: TcxGridDBColumn
            Caption = 'Vl Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvmovtoVLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdconsultaLevel1: TcxGridLevel
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 59
    Width = 1414
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lbldtentrega: TLabel
      Left = 429
      Top = 25
      Width = 37
      Height = 13
      Caption = 'Entrega'
      Transparent = True
    end
    object lbldtprventrega: TLabel
      Left = 343
      Top = 25
      Width = 41
      Height = 13
      Caption = 'Previs'#227'o'
      Transparent = True
    end
    object Label2: TLabel
      Left = 255
      Top = 25
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object Label1: TLabel
      Left = 3
      Top = 25
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label14: TLabel
      Left = 515
      Top = 25
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lbltpordproducao: TLabel
      Left = 72
      Top = 25
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
      OnDblClick = lbltpordproducaoDblClick
    end
    object lblcdtprequipamento: TLabel
      Left = 618
      Top = 25
      Width = 40
      Height = 13
      Caption = 'Recurso'
      Transparent = True
    end
    object lblDSTAG: TLabel
      Left = 722
      Top = 25
      Width = 19
      Height = 13
      Caption = 'Tag'
      Transparent = True
    end
    object cbxcdtpordproducao: TcxDBLookupComboBox
      Left = 72
      Top = 39
      DataBinding.DataField = 'CDTPORDPRODUCAO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDTPORDPRODUCAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPORDPRODUCAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = cbxcdtpordproducaoEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 181
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 39
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtcodigoEnter
      OnKeyDown = edtcodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 70
    end
    object edtdtprventrega: TcxDBDateEdit
      Left = 343
      Top = 39
      DataBinding.DataField = 'DTPRVENTREGA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 86
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 255
      Top = 39
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 88
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cbxcdstordproducao: TcxDBLookupComboBox
      Left = 515
      Top = 39
      DataBinding.DataField = 'CDSTORDPRODUCAO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDSTORDPRODUCAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTORDPRODUCAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 104
    end
    object edtdtentrega: TcxDBDateEdit
      Left = 429
      Top = 39
      DataBinding.DataField = 'DTENTREGA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 86
    end
    object cbxcdtpequipamento: TcxDBLookupComboBox
      Left = 618
      Top = 39
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
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 104
    end
    object edtDSTAG: TcxDBTextEdit
      Left = 722
      Top = 39
      DataBinding.DataField = 'DSTAG'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      Width = 209
    end
  end
  object gbxproduto: TcxGroupBox
    Left = 0
    Top = 119
    Align = alTop
    Caption = 'Produto'
    TabOrder = 1
    Height = 56
    Width = 1414
    object lblcddigitado: TLabel
      Left = 5
      Top = 14
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcddigitadoDblClick
    end
    object Label8: TLabel
      Left = 127
      Top = 14
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object Label3: TLabel
      Left = 377
      Top = 14
      Width = 22
      Height = 13
      Caption = 'Unid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object txtnmunidade: TDBText
      Left = 377
      Top = 31
      Width = 22
      Height = 17
      Color = clBtnFace
      DataField = 'NMUNIDADE'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 402
      Top = 14
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      Transparent = True
    end
    object lblqtproducao: TLabel
      Left = 476
      Top = 15
      Width = 60
      Height = 13
      Caption = 'Qt Produ'#231#227'o'
      Transparent = True
    end
    object lbldsdesenho: TLabel
      Left = 700
      Top = 14
      Width = 43
      Height = 13
      Caption = 'Desenho'
      Transparent = True
    end
    object lblnuestrutural: TLabel
      Left = 878
      Top = 14
      Width = 59
      Height = 13
      Caption = 'N'#186' Estrutural'
      Transparent = True
    end
    object lblqtpeca: TLabel
      Left = 550
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Qt Pe'#231'a'
      Transparent = True
    end
    object lblqtpecaproducao: TLabel
      Left = 625
      Top = 17
      Width = 67
      Height = 13
      Caption = 'Qt Pe'#231'a Prod.'
      Transparent = True
    end
    object txtnmproduto: TDBText
      Left = 129
      Top = 31
      Width = 242
      Height = 17
      Color = clBtnFace
      DataField = 'NMPRODUTO'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object edtcddigitado: TcxDBButtonEdit
      Left = 5
      Top = 28
      DataBinding.DataField = 'CDDIGITADO'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.OnButtonClick = edtcddigitadoPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcddigitadoKeyDown
      Width = 121
    end
    object edtqtitem: TcxDBCalcEdit
      Left = 402
      Top = 28
      DataBinding.DataField = 'QTITEM'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 75
    end
    object edtqtproducao: TcxDBCalcEdit
      Left = 476
      Top = 28
      DataBinding.DataField = 'QTPRODUCAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 75
    end
    object edtdsdesenho: TcxDBTextEdit
      Left = 700
      Top = 28
      DataBinding.DataField = 'DSDESENHO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      Width = 180
    end
    object edtnuestrutural: TcxDBTextEdit
      Left = 878
      Top = 28
      DataBinding.DataField = 'NUESTRUTURAL'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      Width = 180
    end
    object edtqtpeca: TcxDBCalcEdit
      Left = 550
      Top = 28
      DataBinding.DataField = 'QTPECA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      Width = 75
    end
    object edtqtpecaproducao: TcxDBCalcEdit
      Left = 625
      Top = 28
      DataBinding.DataField = 'QTPECAPRODUCAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      Width = 75
    end
  end
  object gbxformulacao: TcxGroupBox
    Left = 0
    Top = 175
    Align = alTop
    Caption = 'Pesagem'
    TabOrder = 2
    Visible = False
    Height = 60
    Width = 1414
    object lblcdformulacao: TLabel
      Left = 6
      Top = 17
      Width = 66
      Height = 13
      Caption = 'Formula'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcdformulacaoDblClick
    end
    object lbl1: TLabel
      Left = 302
      Top = 17
      Width = 49
      Height = 13
      Caption = 'N'#186' Mistura'
      Transparent = True
    end
    object lblCDPESAGEM: TLabel
      Left = 552
      Top = 17
      Width = 80
      Height = 13
      Caption = 'C'#243'digo Pesagem'
      Transparent = True
    end
    object lblqtpesomistura: TLabel
      Left = 427
      Top = 17
      Width = 85
      Height = 13
      Caption = 'Peso Mistura (KG)'
      Transparent = True
    end
    object lblnurevisao: TLabel
      Left = 208
      Top = 17
      Width = 54
      Height = 13
      Caption = 'N'#186' Revis'#227'o'
      Transparent = True
    end
    object cbxcdformulacao: TcxDBLookupComboBox
      Left = 6
      Top = 31
      DataBinding.DataField = 'CDFORMULACAO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDFORMULACAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMFORMULACAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = cbxcdformulacaoEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 200
    end
    object edtnumistura: TcxDBSpinEdit
      Left = 302
      Top = 31
      DataBinding.DataField = 'NUMISTURA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 121
    end
    object edtcdpesagem: TcxDBTextEdit
      Left = 552
      Top = 31
      DataBinding.DataField = 'CDPESAGEM'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      Width = 121
    end
    object edtqtpesomistura: TcxDBCalcEdit
      Left = 427
      Top = 31
      DataBinding.DataField = 'QTPESOMISTURA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      Width = 121
    end
    object edtnurevisao: TcxDBTextEdit
      Left = 208
      Top = 31
      DataBinding.DataField = 'NUREVISAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 93
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 968
    Top = 374
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
      Caption = 'Opcoes'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actajustardados: TAction
      Caption = 'Ajustar Dados'
      OnExecute = actajustardadosExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      ImageIndex = 24
      OnExecute = actabrirprodutoExecute
    end
    object actabrirpedido: TAction
      Hint = 'pedido'
      OnExecute = actabrirpedidoExecute
    end
    object actabrirorcamento: TAction
      Hint = 'orcamento'
      OnExecute = actabrirorcamentoExecute
    end
    object actabrircliente: TAction
      Hint = 'cliente'
      OnExecute = actabrirclienteExecute
    end
    object actabrirsaida: TAction
      Hint = 'saida'
      OnExecute = actabrirsaidaExecute
    end
    object actimprimirordproducao: TAction
      Caption = '503 - Ordem Produ'#231#227'o'
      OnExecute = actimprimirordproducaoExecute
    end
    object actabrircntcusto: TAction
      Hint = 'cntcusto'
      OnExecute = actabrircntcustoExecute
    end
    object actabrirrim: TAction
      Hint = 'rim'
      OnExecute = actabrirrimExecute
    end
    object actabrirfuncionario: TAction
      Hint = 'funcionario'
      OnExecute = actabrirfuncionarioExecute
    end
    object actabrirprodutoitrim: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutoitrimExecute
    end
    object actabrirordcompra: TAction
      Hint = 'ordcompra'
      OnExecute = actabrirordcompraExecute
    end
    object actabrirprodutomateriaprima: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutomateriaprimaExecute
    end
    object actabrirfuncionarioapontamento: TAction
      Hint = 'funcionario'
      OnExecute = actabrirfuncionarioapontamentoExecute
    end
    object actabrirequipamento: TAction
      Hint = 'equipamento'
      OnExecute = actabrirequipamentoExecute
    end
    object actgerarrim: TAction
      Caption = 'Gerar Requisi'#231#227'o Material'
      OnExecute = actgerarrimExecute
    end
    object actcopiarde: TAction
      Caption = 'Copiar de'
      OnExecute = actcopiardeExecute
    end
    object actabrirtpordproducao: TAction
      Hint = 'tpordproducao'
      OnExecute = actabrirtpordproducaoExecute
    end
    object actconsultaordcompra: TAction
      AutoCheck = True
      Caption = 'Ordem Compra'
      GroupIndex = 1
      ImageIndex = 77
      OnExecute = actconsultaordcompraExecute
    end
    object actconsultarim: TAction
      AutoCheck = True
      Caption = 'Requisi'#231#227'o Material'
      GroupIndex = 1
      ImageIndex = 50
      OnExecute = actconsultarimExecute
    end
    object actconsultamovto: TAction
      AutoCheck = True
      Caption = 'Movimenta'#231#227'o Estoque'
      GroupIndex = 1
      ImageIndex = 45
      OnExecute = actconsultamovtoExecute
    end
    object actconsultasaida: TAction
      AutoCheck = True
      Caption = 'Nota Fiscal'
      GroupIndex = 1
      ImageIndex = 19
      OnExecute = actconsultasaidaExecute
    end
    object actabrirtpequipamento: TAction
      Hint = 'tpequipamento'
      OnExecute = actabrirtpequipamentoExecute
    end
    object actcalcularprevisao: TAction
      Caption = 'Calcular Previs'#227'o'
      OnExecute = actcalcularprevisaoExecute
    end
    object actabrirprodutoacabado: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutoacabadoExecute
    end
    object actabrirequipamento1: TAction
      Hint = 'equipamento'
      OnExecute = actabrirequipamento1Execute
    end
    object actabrirfuncionario1: TAction
      Hint = 'funcionario'
      OnExecute = actabrirfuncionario1Execute
    end
    object actabrirrequisicaoproducao: TAction
      Hint = 'requisicaoproducao'
      OnExecute = actabrirrequisicaoproducaoExecute
    end
    object actabrirentrada: TAction
      Hint = 'entrada'
      OnExecute = actabrirentradaExecute
    end
    object actabrirprodutomateriaprimaacabado: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutomateriaprimaacabadoExecute
    end
    object actpesagem: TAction
      Caption = 'Pesagem'
      OnExecute = actpesagemExecute
    end
    object actabrirformulacao: TAction
      Hint = 'formulacao'
      OnExecute = actabrirformulacaoExecute
    end
    object actapontamento: TAction
      Caption = 'Apontamento'
      Visible = False
      OnExecute = actapontamentoExecute
    end
    object actgerarcorte: TAction
      Caption = 'Gerar Corte'
      Visible = False
      OnExecute = actgerarcorteExecute
    end
    object actarquivo: TAction
      Caption = 'Arquivo(s)'
      OnExecute = actarquivoExecute
    end
    object actGerarCotacao: TAction
      Caption = 'Gerar Cota'#231#227'o'
      OnExecute = actGerarCotacaoExecute
    end
    object actabrirmovto: TAction
      Hint = 'movto'
      OnExecute = actabrirmovtoExecute
    end
    object actabrirprodutoitmovto: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutoitmovtoExecute
    end
    object actGerarEntradaProdutoAcabado: TAction
      Caption = 'Gerar Movimenta'#231#227'o de Estoque do Produto da OP'
      OnExecute = actGerarEntradaProdutoAcabadoExecute
    end
    object actgerarbaixaMateriaPrima: TAction
      Caption = 'Gerar Movimenta'#231#227'o de Estoque de Mat'#233'ria-Prima'
      OnExecute = actgerarbaixaMateriaPrimaExecute
    end
    object actgerarmaterialmetodoprocesso: TAction
      Caption = 'Gerar Material do M'#233'todo Processo'
      OnExecute = actgerarmaterialmetodoprocessoExecute
    end
    object actabrirapontamentomanual: TAction
      Hint = 'apontamentomanual'
      OnExecute = actabrirapontamentomanualExecute
    end
    object actgerarestoqueprodutoacabado: TAction
      Caption = 'Gerar Movimenta'#231#227'o de Estoque de Produto Acabado'
      OnExecute = actgerarestoqueprodutoacabadoExecute
    end
    object actajustarduracao: TAction
      Caption = 'Ajustar dura'#231#227'o do apontamento'
      OnExecute = actajustarduracaoExecute
    end
    object actacabamentoconcluido: TAction
      Caption = 'Mudar status para conclu'#237'do quando Acabamento estiver conclu'#237'do'
      OnExecute = actacabamentoconcluidoExecute
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
    Left = 920
    Top = 385
    DockControlHeights = (
      0
      0
      59
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'ordproducao'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
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
      BorderStyle = bbsNone
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
    object bmg1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'consulta'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 428
      FloatTop = 93
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
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
    object dxBarSubItem1: TdxBarSubItem
      Action = actImprimir
      Category = 0
      ItemLinks = <>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Or'#231'amento'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Action = actajustardados
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actimprimirordproducao
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object dxBarButton2: TdxBarButton
      Action = actgerarrim
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = actcopiarde
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actconsultaordcompra
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actconsultarim
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actconsultasaida
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton19: TdxBarButton
      Action = actcalcularprevisao
      Category = 0
    end
    object dxBarButton20: TdxBarButton
      Caption = 'Gerar estoque'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton21: TdxBarButton
      Action = actpesagem
      Category = 0
    end
    object dxBarSubItem2: TdxBarSubItem
      Action = actapontamento
      Category = 0
      ItemLinks = <>
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Aplica'#231#227'o de Chumbador'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Action = actapontamento
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actgerarcorte
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actarquivo
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actGerarCotacao
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actconsultamovto
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton10: TdxBarButton
      Action = actGerarEntradaProdutoAcabado
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actgerarbaixaMateriaPrima
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = actgerarmaterialmetodoprocesso
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = actgerarestoqueprodutoacabado
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actajustarduracao
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = actacabamentoconcluido
      Category = 0
    end
  end
  object sds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 665
    Top = 305
    object sdsCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object sdsCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTORDPRODUCAO: TIntegerField
      FieldName = 'CDSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      ProviderFlags = [pfInUpdate]
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
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNMSTORDPRODUCAO: TStringField
      FieldName = 'NMSTORDPRODUCAO'
      ProviderFlags = []
      Size = 100
    end
    object sdsDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTHORAORCADA: TFloatField
      FieldName = 'QTHORAORCADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsQTHORAPRODUCAO: TFloatField
      FieldName = 'QTHORAPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = []
      Size = 10
    end
    object sdsCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = []
    end
    object sdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLOPERACAOP: TFMTBCDField
      FieldName = 'VLOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPREPARACAOP: TFMTBCDField
      FieldName = 'VLPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLRECURSO: TFMTBCDField
      FieldName = 'VLRECURSO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLRECURSOP: TFMTBCDField
      FieldName = 'VLRECURSOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTOPERACAOP: TFMTBCDField
      FieldName = 'QTOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTPREPARACAOP: TFMTBCDField
      FieldName = 'QTPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsQTHORA: TFloatField
      FieldName = 'QTHORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTHORAP: TFloatField
      FieldName = 'QTHORAP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLMATERIAL: TFMTBCDField
      FieldName = 'VLMATERIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLMATERIALP: TFMTBCDField
      FieldName = 'VLMATERIALP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPRODUCAO: TFMTBCDField
      FieldName = 'VLPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPRODUCAOP: TFMTBCDField
      FieldName = 'VLPRODUCAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCUSTOP: TFMTBCDField
      FieldName = 'VLCUSTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDSDESENHO: TStringField
      FieldName = 'DSDESENHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSDESENHOPOSICAO: TStringField
      FieldName = 'DSDESENHOPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSDESENHOREVISAO: TStringField
      FieldName = 'DSDESENHOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCOTACAO: TStringField
      FieldName = 'NUCOTACAO'
      ProviderFlags = []
    end
    object sdsCDTPORDPRODUCAO: TIntegerField
      FieldName = 'CDTPORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTPRVINSTALACAO: TDateField
      FieldName = 'DTPRVINSTALACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDIASCUSTO: TIntegerField
      FieldName = 'NUDIASCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPMOTIVOREVISAO: TIntegerField
      FieldName = 'CDTPMOTIVOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTQUOCIENTE: TIntegerField
      FieldName = 'QTQUOCIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUMISTURA: TIntegerField
      FieldName = 'NUMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPESAGEM: TStringField
      FieldName = 'CDPESAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsQTPESOMISTURA: TFloatField
      FieldName = 'QTPESOMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDREQUISICAOPRODUCAO'
      ProviderFlags = []
    end
    object sdsCDFUNCIONARIOSOLICITANTE: TIntegerField
      FieldName = 'CDFUNCIONARIOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSTAG: TStringField
      FieldName = 'DSTAG'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsCDEQUIPAMENTO2: TIntegerField
      FieldName = 'CDEQUIPAMENTO2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTPECAPRODUCAO: TFloatField
      FieldName = 'QTPECAPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMPRODUTOPRINCIPAL: TStringField
      FieldName = 'NMPRODUTOPRINCIPAL'
      ProviderFlags = []
      Size = 250
    end
    object sdsDSPRODUTO: TStringField
      FieldName = 'DSPRODUTO'
      ProviderFlags = []
      Size = 255
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUREVISAO: TStringField
      FieldName = 'NUREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUITEM: TStringField
      FieldName = 'NUITEM'
      ProviderFlags = []
      Size = 10
    end
    object sdsBOIMPRESSO: TStringField
      FieldName = 'BOIMPRESSO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 693
    Top = 305
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 721
    Top = 305
    object cdsCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object cdsCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSTORDPRODUCAO: TIntegerField
      FieldName = 'CDSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsDTEMISSAOValidate
    end
    object cdsDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      ProviderFlags = [pfInUpdate]
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
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNMSTORDPRODUCAO: TStringField
      FieldName = 'NMSTORDPRODUCAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitordproducaocusto: TDataSetField
      FieldName = 'sdsitordproducaocusto'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitordproducaomaterial: TDataSetField
      FieldName = 'sdsitordproducaomaterial'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitordproducaorecurso: TDataSetField
      FieldName = 'sdsitordproducaorecurso'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsapontamento: TDataSetField
      FieldName = 'sdsapontamento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTHORAORCADA: TFloatField
      FieldName = 'QTHORAORCADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsQTHORAPRODUCAO: TFloatField
      FieldName = 'QTHORAPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = []
      Size = 10
    end
    object cdsCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = []
    end
    object cdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsQTITEMValidate
    end
    object cdsCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDDIGITADOValidate
      Size = 30
    end
    object cdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLOPERACAOP: TFMTBCDField
      FieldName = 'VLOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLPREPARACAOP: TFMTBCDField
      FieldName = 'VLPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLRECURSO: TFMTBCDField
      FieldName = 'VLRECURSO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLRECURSOP: TFMTBCDField
      FieldName = 'VLRECURSOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTOPERACAOP: TFMTBCDField
      FieldName = 'QTOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTPREPARACAOP: TFMTBCDField
      FieldName = 'QTPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsQTHORA: TFloatField
      FieldName = 'QTHORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTHORAP: TFloatField
      FieldName = 'QTHORAP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLMATERIAL: TFMTBCDField
      FieldName = 'VLMATERIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLMATERIALP: TFMTBCDField
      FieldName = 'VLMATERIALP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLPRODUCAO: TFMTBCDField
      FieldName = 'VLPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLPRODUCAOP: TFMTBCDField
      FieldName = 'VLPRODUCAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCUSTOP: TFMTBCDField
      FieldName = 'VLCUSTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDSDESENHO: TStringField
      FieldName = 'DSDESENHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDSDESENHOPOSICAO: TStringField
      FieldName = 'DSDESENHOPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSDESENHOREVISAO: TStringField
      FieldName = 'DSDESENHOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCOTACAO: TStringField
      FieldName = 'NUCOTACAO'
      ProviderFlags = []
    end
    object cdssdshstordproducao: TDataSetField
      FieldName = 'sdshstordproducao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPORDPRODUCAO: TIntegerField
      FieldName = 'CDTPORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPORDPRODUCAOValidate
    end
    object cdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPRVINSTALACAO: TDateField
      FieldName = 'DTPRVINSTALACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUDIASCUSTO: TIntegerField
      FieldName = 'NUDIASCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPMOTIVOREVISAO: TIntegerField
      FieldName = 'CDTPMOTIVOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTQUOCIENTE: TIntegerField
      FieldName = 'QTQUOCIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitordproducao: TDataSetField
      FieldName = 'sdsitordproducao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFORMULACAOValidate
    end
    object cdsNUMISTURA: TIntegerField
      FieldName = 'NUMISTURA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUMISTURAValidate
    end
    object cdsCDPESAGEM: TStringField
      FieldName = 'CDPESAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsQTPESOMISTURA: TFloatField
      FieldName = 'QTPESOMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDREQUISICAOPRODUCAO'
      ProviderFlags = []
    end
    object cdsCDFUNCIONARIOSOLICITANTE: TIntegerField
      FieldName = 'CDFUNCIONARIOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSTAG: TStringField
      FieldName = 'DSTAG'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsCDEQUIPAMENTO2: TIntegerField
      FieldName = 'CDEQUIPAMENTO2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTPECAPRODUCAO: TFloatField
      FieldName = 'QTPECAPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDORCAMENTOValidate
    end
    object cdsNMPRODUTOPRINCIPAL: TStringField
      FieldName = 'NMPRODUTOPRINCIPAL'
      Size = 250
    end
    object cdsDSPRODUTO: TStringField
      FieldName = 'DSPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUREVISAO: TStringField
      FieldName = 'NUREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUITEM: TStringField
      FieldName = 'NUITEM'
      ProviderFlags = []
      Size = 10
    end
    object cdsBOIMPRESSO: TStringField
      FieldName = 'BOIMPRESSO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 749
    Top = 305
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 777
    Top = 305
  end
  object sdsitordproducaorecurso: TSQLDataSet
    CommandText = 
      'SELECT I.*,S.NUCOR '#13#10'FROM ITORDPRODUCAORECURSO I'#13#10'LEFT JOIN STIT' +
      'ORDPRODUCAORECURSO S ON S.CDSTITORDPRODUCAORECURSO=I.CDSTITORDPR' +
      'ODUCAORECURSO'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDORDPRODUCAO=' +
      ':CDORDPRODUCAO'#13#10'ORDER BY I.NUSEQUENCIA'
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
        Name = 'CDORDPRODUCAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 664
    Top = 333
    object sdsitordproducaorecursoCDITORDPRODUCAORECURSO: TIntegerField
      FieldName = 'CDITORDPRODUCAORECURSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitordproducaorecursoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitordproducaorecursoVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitordproducaorecursoVLTOTALOPERACAO: TFMTBCDField
      FieldName = 'VLTOTALOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitordproducaorecursoCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoVLTOTALPREPARACAO: TFMTBCDField
      FieldName = 'VLTOTALPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitordproducaorecursoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitordproducaorecursoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitordproducaorecursoNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoHRINICIOPREVISTA: TTimeField
      FieldName = 'HRINICIOPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoHRTERMINOPREVISTA: TTimeField
      FieldName = 'HRTERMINOPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoDTINICIOPREVISTA: TDateField
      FieldName = 'DTINICIOPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoDTTERMINOPREVISTA: TDateField
      FieldName = 'DTTERMINOPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoHRTERMINO: TTimeField
      FieldName = 'HRTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoCDTPDURACAO: TIntegerField
      FieldName = 'CDTPDURACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaorecursoCDSTITORDPRODUCAORECURSO: TIntegerField
      FieldName = 'CDSTITORDPRODUCAORECURSO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoNUCOR: TIntegerField
      FieldName = 'NUCOR'
      ProviderFlags = []
    end
    object sdsitordproducaorecursoCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoNUQUOCIENTE: TIntegerField
      FieldName = 'NUQUOCIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoCDTPDURACAOLIBERACAO: TIntegerField
      FieldName = 'CDTPDURACAOLIBERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoQTLIBERACAO: TFloatField
      FieldName = 'QTLIBERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaorecursoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsitordproducaorecurso: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitordproducaorecurso
    Params = <>
    BeforePost = cdsitordproducaorecursoBeforePost
    AfterPost = cdsitordproducaorecursoAfterPost
    AfterDelete = cdsitordproducaorecursoAfterDelete
    OnNewRecord = cdsitordproducaorecursoNewRecord
    Left = 720
    Top = 333
    object cdsitordproducaorecursoCDITORDPRODUCAORECURSO: TIntegerField
      FieldName = 'CDITORDPRODUCAORECURSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitordproducaorecursoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaorecursoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaorecursoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaorecursoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaorecursoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaorecursoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaorecursoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaorecursoQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaorecursoQTPREPARACAOValidate
    end
    object cdsitordproducaorecursoQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaorecursoQTOPERACAOValidate
    end
    object cdsitordproducaorecursoVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaorecursoVLPREPARACAOValidate
      Precision = 15
      Size = 2
    end
    object cdsitordproducaorecursoVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaorecursoVLOPERACAOValidate
      Precision = 15
      Size = 2
    end
    object cdsitordproducaorecursoVLTOTALOPERACAO: TFMTBCDField
      FieldName = 'VLTOTALOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitordproducaorecursoCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaorecursoCDTPEQUIPAMENTOValidate
    end
    object cdsitordproducaorecursoVLTOTALPREPARACAO: TFMTBCDField
      FieldName = 'VLTOTALPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitordproducaorecursoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitordproducaorecursoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitordproducaorecursoNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoHRINICIOPREVISTA: TTimeField
      FieldName = 'HRINICIOPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoHRTERMINOPREVISTA: TTimeField
      FieldName = 'HRTERMINOPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoDTINICIOPREVISTA: TDateField
      FieldName = 'DTINICIOPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoDTTERMINOPREVISTA: TDateField
      FieldName = 'DTTERMINOPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoHRTERMINO: TTimeField
      FieldName = 'HRTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoCDTPDURACAO: TIntegerField
      FieldName = 'CDTPDURACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaorecursoCDSTITORDPRODUCAORECURSO: TIntegerField
      FieldName = 'CDSTITORDPRODUCAORECURSO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoNUCOR: TIntegerField
      FieldName = 'NUCOR'
      ProviderFlags = []
    end
    object cdsitordproducaorecursoCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoNUQUOCIENTE: TIntegerField
      FieldName = 'NUQUOCIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoCDTPDURACAOLIBERACAO: TIntegerField
      FieldName = 'CDTPDURACAOLIBERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoQTLIBERACAO: TFloatField
      FieldName = 'QTLIBERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaorecursoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dtsitordproducaorecurso: TDataSource
    DataSet = cdsitordproducaorecurso
    Left = 748
    Top = 333
  end
  object sdsitordproducaomaterial: TSQLDataSet
    CommandText = 
      'SELECT I.*'#13#10',U.NMUNIDADE'#13#10',U2.NMUNIDADE NMUNIDADE2'#13#10',P.PRUNIDADE' +
      #13#10',P.NMPRODUTO'#13#10',P.NUCLFISCAL '#13#10'FROM ITORDPRODUCAOMATERIAL I '#13#10'L' +
      'EFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND I.CDEMPRESA=P.' +
      'CDEMPRESA'#13#10'LEFT JOIN UNIDADE U ON U.CDUNIDADE=P.CDUNIDADE AND U.' +
      'CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOIN UNIDADE U2 ON U2.CDUNIDADE=P.CD' +
      'UNIDADE2 AND U.CDEMPRESA=P.CDEMPRESA'#13#10'WHERE I.CDEMPRESA=:CDEMPRE' +
      'SA AND I.CDORDPRODUCAO=:CDORDPRODUCAO'
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
        Name = 'CDORDPRODUCAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 664
    Top = 361
    object sdsitordproducaomaterialCDITORDPRODUCAOMATERIAL: TIntegerField
      FieldName = 'CDITORDPRODUCAOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitordproducaomaterialCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      Required = True
    end
    object sdsitordproducaomaterialCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Required = True
    end
    object sdsitordproducaomaterialCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Required = True
    end
    object sdsitordproducaomaterialCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Required = True
    end
    object sdsitordproducaomaterialCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      Required = True
    end
    object sdsitordproducaomaterialCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      Required = True
    end
    object sdsitordproducaomaterialCDforma: TIntegerField
      FieldName = 'CDforma'
    end
    object sdsitordproducaomaterialCDMATERIAL: TIntegerField
      FieldName = 'CDMATERIAL'
    end
    object sdsitordproducaomaterialTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Required = True
    end
    object sdsitordproducaomaterialTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Required = True
    end
    object sdsitordproducaomaterialQTITEM: TFloatField
      FieldName = 'QTITEM'
      Required = True
    end
    object sdsitordproducaomaterialQTPESOUNITARIO: TFloatField
      FieldName = 'QTPESOUNITARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitordproducaomaterialVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitordproducaomaterialCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsitordproducaomaterialDSPOSICAO: TStringField
      FieldName = 'DSPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitordproducaomaterialBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitordproducaomaterialVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitordproducaomaterialVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitordproducaomaterialVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitordproducaomaterialVLFINAL: TFMTBCDField
      FieldName = 'VLFINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitordproducaomaterialALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitordproducaomaterialVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitordproducaomaterialBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitordproducaomaterialBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitordproducaomaterialDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsitordproducaomaterialNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsitordproducaomaterialNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object sdsitordproducaomaterialNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsitordproducaomaterialDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitordproducaomaterialQTCONSUMO: TFloatField
      FieldName = 'QTCONSUMO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialNUBAG: TStringField
      FieldName = 'NUBAG'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialNULOTE: TStringField
      FieldName = 'NULOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialQTESTOQUE: TFloatField
      FieldName = 'QTESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialNUMISTURA: TIntegerField
      FieldName = 'NUMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialQTITEM2: TFloatField
      FieldName = 'QTITEM2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialNMUNIDADE2: TStringField
      FieldName = 'NMUNIDADE2'
      ProviderFlags = []
      Size = 100
    end
    object sdsitordproducaomaterialPRUNIDADE: TFloatField
      FieldName = 'PRUNIDADE'
      ProviderFlags = []
    end
    object sdsitordproducaomaterialNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaomaterialCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsitordproducaomaterial: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitordproducaomaterial
    Params = <>
    BeforePost = cdsitordproducaomaterialBeforePost
    AfterPost = cdsitordproducaomaterialAfterPost
    AfterDelete = cdsitordproducaomaterialAfterDelete
    AfterScroll = cdsitordproducaomaterialAfterScroll
    OnNewRecord = cdsitordproducaomaterialNewRecord
    Left = 720
    Top = 361
    object cdsitordproducaomaterialCDITORDPRODUCAOMATERIAL: TIntegerField
      FieldName = 'CDITORDPRODUCAOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitordproducaomaterialCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaomaterialCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaomaterialCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaomaterialCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaomaterialCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaomaterialCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaomaterialCDforma: TIntegerField
      FieldName = 'CDforma'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialCDMATERIAL: TIntegerField
      FieldName = 'CDMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaomaterialTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaomaterialQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaomaterialQTITEMValidate
    end
    object cdsitordproducaomaterialQTPESOUNITARIO: TFloatField
      FieldName = 'QTPESOUNITARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitordproducaomaterialQTPESOUNITARIOValidate
    end
    object cdsitordproducaomaterialQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitordproducaomaterialQTPECAValidate
    end
    object cdsitordproducaomaterialVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaomaterialQTITEMValidate
      Precision = 15
      Size = 2
    end
    object cdsitordproducaomaterialVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = setvalorfinal
      Precision = 15
      Size = 2
    end
    object cdsitordproducaomaterialCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaomaterialCDDIGITADOValidate
      Size = 30
    end
    object cdsitordproducaomaterialDSPOSICAO: TStringField
      FieldName = 'DSPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
    end
    object cdsitordproducaomaterialALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
    end
    object cdsitordproducaomaterialBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
      FixedChar = True
      Size = 1
    end
    object cdsitordproducaomaterialBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
      FixedChar = True
      Size = 1
    end
    object cdsitordproducaomaterialVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitordproducaomaterialVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitordproducaomaterialVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
      Precision = 15
      Size = 2
    end
    object cdsitordproducaomaterialVLFINAL: TFMTBCDField
      FieldName = 'VLFINAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalormaterial
      Precision = 15
      Size = 2
    end
    object cdsitordproducaomaterialALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
    end
    object cdsitordproducaomaterialALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
    end
    object cdsitordproducaomaterialVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitordproducaomaterialVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitordproducaomaterialBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
      FixedChar = True
      Size = 1
    end
    object cdsitordproducaomaterialBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
      FixedChar = True
      Size = 1
    end
    object cdsitordproducaomaterialDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsitordproducaomaterialNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsitordproducaomaterialNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object cdsitordproducaomaterialNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsitordproducaomaterialDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialQTCONSUMO: TFloatField
      FieldName = 'QTCONSUMO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialNUBAG: TStringField
      FieldName = 'NUBAG'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialNULOTE: TStringField
      FieldName = 'NULOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialQTESTOQUE: TFloatField
      FieldName = 'QTESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialNUMISTURA: TIntegerField
      FieldName = 'NUMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialQTITEM2: TFloatField
      FieldName = 'QTITEM2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitordproducaomaterialQTITEM2Validate
    end
    object cdsitordproducaomaterialNMUNIDADE2: TStringField
      FieldName = 'NMUNIDADE2'
      ProviderFlags = []
      Size = 100
    end
    object cdsitordproducaomaterialPRUNIDADE: TFloatField
      FieldName = 'PRUNIDADE'
      ProviderFlags = []
    end
    object cdsitordproducaomaterialNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaomaterialCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dtsitordproducaomaterial: TDataSource
    DataSet = cdsitordproducaomaterial
    Left = 748
    Top = 361
  end
  object sdsitordproducaocusto: TSQLDataSet
    CommandText = 
      'SELECT I.*'#13#10',P.NMPRODUTO '#13#10'FROM ITORDPRODUCAOCUSTO I '#13#10'LEFT JOIN' +
      ' PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND I.CDEMPRESA=P.CDEMPRES' +
      'A'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDORDPRODUCAO=:CDORDPRODUC' +
      'AO'
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
        Name = 'CDORDPRODUCAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 664
    Top = 389
    object sdsitordproducaocustoCDITORDPRODUCAOCUSTO: TIntegerField
      FieldName = 'CDITORDPRODUCAOCUSTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitordproducaocustoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaocustoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaocustoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaocustoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaocustoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaocustoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaocustoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaocustoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaocustoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitordproducaocustoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsitordproducaocustoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaocustoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitordproducaocustoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsitordproducaocustoQTDIAS: TIntegerField
      FieldName = 'QTDIAS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaocustoNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaocustodsobservacao: TBlobField
      FieldName = 'dsobservacao'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitordproducaocustoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsitordproducaocusto: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitordproducaocusto
    Params = <>
    BeforePost = cdsitordproducaocustoBeforePost
    AfterPost = cdsitordproducaocustoAfterPost
    AfterDelete = cdsitordproducaocustoAfterDelete
    OnNewRecord = cdsitordproducaocustoNewRecord
    Left = 720
    Top = 389
    object cdsitordproducaocustoCDITORDPRODUCAOCUSTO: TIntegerField
      FieldName = 'CDITORDPRODUCAOCUSTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitordproducaocustoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaocustoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaocustoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaocustoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaocustoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaocustoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaocustoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaocustoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaocustoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitordproducaocustoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaocustoCDDIGITADOValidate
      Size = 30
    end
    object cdsitordproducaocustoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaocustoQTITEMValidate
    end
    object cdsitordproducaocustoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitordproducaocustoQTITEMValidate
      Precision = 15
      Size = 2
    end
    object cdsitordproducaocustoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsitordproducaocustoQTDIAS: TIntegerField
      FieldName = 'QTDIAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaocustoNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaocustoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitordproducaocustoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dtsitordproducaocusto: TDataSource
    DataSet = cdsitordproducaocusto
    Left = 748
    Top = 389
  end
  object sdsapontamento: TSQLDataSet
    DataSource = dts1
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 664
    Top = 417
    object sdsapontamentoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoHRFIM: TTimeField
      FieldName = 'HRFIM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoHRDURACAO: TTimeField
      FieldName = 'HRDURACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTDURACAO: TFloatField
      FieldName = 'QTDURACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoTSINICIO: TSQLTimeStampField
      FieldName = 'TSINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDAPONTAMENTO: TIntegerField
      FieldName = 'CDAPONTAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsapontamentoTSFIM: TSQLTimeStampField
      FieldName = 'TSFIM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDITORDPRODUCAORECURSO: TIntegerField
      FieldName = 'CDITORDPRODUCAORECURSO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDSTAPONTAMENTO: TIntegerField
      FieldName = 'CDSTAPONTAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsapontamentoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsapontamentoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsapontamentoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsapontamentoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsapontamentoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsapontamentoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsapontamentoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsapontamentoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsapontamentoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsapontamentoCDTPHORAEXTRA: TIntegerField
      FieldName = 'CDTPHORAEXTRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDTPPARADA: TIntegerField
      FieldName = 'CDTPPARADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTREFUGO: TFloatField
      FieldName = 'QTREFUGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTRETRABALHO: TFloatField
      FieldName = 'QTRETRABALHO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoNUHORIMETROINICIAL: TIntegerField
      FieldName = 'NUHORIMETROINICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoNUHORIMETROFINAL: TIntegerField
      FieldName = 'NUHORIMETROFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoHRINICIALHORIMETRO: TSQLTimeStampField
      FieldName = 'HRINICIALHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoHRFINALHORIMETRO: TSQLTimeStampField
      FieldName = 'HRFINALHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoHRDURACAOHORIMETRO: TTimeField
      FieldName = 'HRDURACAOHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTDURACAOHORIMETRO: TFloatField
      FieldName = 'QTDURACAOHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoHROCIOSA: TTimeField
      FieldName = 'HROCIOSA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTOCIOSA: TFloatField
      FieldName = 'QTOCIOSA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTPESO: TFloatField
      FieldName = 'QTPESO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTAGUA: TFloatField
      FieldName = 'QTAGUA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTSOBRA: TFloatField
      FieldName = 'QTSOBRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTTEMPERATURA: TFloatField
      FieldName = 'QTTEMPERATURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDPESAGEM: TStringField
      FieldName = 'CDPESAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsapontamentoNUFORMA: TStringField
      FieldName = 'NUFORMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsapontamentoCDFORMULACAO1: TIntegerField
      FieldName = 'CDFORMULACAO1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDFORMULACAO2: TIntegerField
      FieldName = 'CDFORMULACAO2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDPESAGEM1: TStringField
      FieldName = 'CDPESAGEM1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsapontamentoCDPESAGEM2: TStringField
      FieldName = 'CDPESAGEM2'
      Size = 30
    end
    object sdsapontamentoQTPESO1: TFloatField
      FieldName = 'QTPESO1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTPESO2: TFloatField
      FieldName = 'QTPESO2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTAGUA1: TFloatField
      FieldName = 'QTAGUA1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTAGUA2: TFloatField
      FieldName = 'QTAGUA2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTSOBRA1: TFloatField
      FieldName = 'QTSOBRA1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTSOBRA2: TFloatField
      FieldName = 'QTSOBRA2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoQTAPROVEITAMENTO: TFloatField
      FieldName = 'QTAPROVEITAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoNMTPEQUIPAMENTO: TStringField
      FieldName = 'NMTPEQUIPAMENTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsapontamentoQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsapontamentoCDAPONTAMENTOMANUAL: TIntegerField
      FieldName = 'CDAPONTAMENTOMANUAL'
      ProviderFlags = []
    end
    object sdsapontamentoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsapontamento: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsapontamento
    Params = <>
    BeforePost = cdsapontamentoBeforePost
    OnNewRecord = cdsapontamentoNewRecord
    Left = 720
    Top = 417
    object cdsapontamentoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsapontamentoCDFUNCIONARIOValidate
    end
    object cdsapontamentoCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsapontamentoCDEQUIPAMENTOValidate
    end
    object cdsapontamentoHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = calcular_duracao
    end
    object cdsapontamentoHRFIM: TTimeField
      FieldName = 'HRFIM'
      ProviderFlags = [pfInUpdate]
      OnValidate = calcular_duracao
    end
    object cdsapontamentoHRDURACAO: TTimeField
      FieldName = 'HRDURACAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsapontamentoHRDURACAOValidate
    end
    object cdsapontamentoQTDURACAO: TFloatField
      FieldName = 'QTDURACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoTSINICIO: TSQLTimeStampField
      FieldName = 'TSINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoCDAPONTAMENTO: TIntegerField
      FieldName = 'CDAPONTAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsapontamentoTSFIM: TSQLTimeStampField
      FieldName = 'TSFIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoCDITORDPRODUCAORECURSO: TIntegerField
      FieldName = 'CDITORDPRODUCAORECURSO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoCDSTAPONTAMENTO: TIntegerField
      FieldName = 'CDSTAPONTAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsapontamentoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsapontamentoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsapontamentoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsapontamentoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsapontamentoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsapontamentoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsapontamentoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsapontamentoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsapontamentoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsapontamentoCDTPHORAEXTRA: TIntegerField
      FieldName = 'CDTPHORAEXTRA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsapontamentoCDTPHORAEXTRAValidate
    end
    object cdsapontamentoCDTPPARADA: TIntegerField
      FieldName = 'CDTPPARADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTREFUGO: TFloatField
      FieldName = 'QTREFUGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTRETRABALHO: TFloatField
      FieldName = 'QTRETRABALHO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoNUHORIMETROINICIAL: TIntegerField
      FieldName = 'NUHORIMETROINICIAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = calcular_horimetro
    end
    object cdsapontamentoNUHORIMETROFINAL: TIntegerField
      FieldName = 'NUHORIMETROFINAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = calcular_horimetro
    end
    object cdsapontamentoHRINICIALHORIMETRO: TSQLTimeStampField
      FieldName = 'HRINICIALHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoHRFINALHORIMETRO: TSQLTimeStampField
      FieldName = 'HRFINALHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoHRDURACAOHORIMETRO: TTimeField
      FieldName = 'HRDURACAOHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTDURACAOHORIMETRO: TFloatField
      FieldName = 'QTDURACAOHORIMETRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoHROCIOSA: TTimeField
      FieldName = 'HROCIOSA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTOCIOSA: TFloatField
      FieldName = 'QTOCIOSA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTPESO: TFloatField
      FieldName = 'QTPESO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTAGUA: TFloatField
      FieldName = 'QTAGUA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTSOBRA: TFloatField
      FieldName = 'QTSOBRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTTEMPERATURA: TFloatField
      FieldName = 'QTTEMPERATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoCDPESAGEM: TStringField
      FieldName = 'CDPESAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsapontamentoNUFORMA: TStringField
      FieldName = 'NUFORMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsapontamentoCDFORMULACAO1: TIntegerField
      FieldName = 'CDFORMULACAO1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoCDFORMULACAO2: TIntegerField
      FieldName = 'CDFORMULACAO2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoCDPESAGEM1: TStringField
      FieldName = 'CDPESAGEM1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsapontamentoCDPESAGEM2: TStringField
      FieldName = 'CDPESAGEM2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsapontamentoQTPESO1: TFloatField
      FieldName = 'QTPESO1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTPESO2: TFloatField
      FieldName = 'QTPESO2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTAGUA1: TFloatField
      FieldName = 'QTAGUA1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTAGUA2: TFloatField
      FieldName = 'QTAGUA2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTSOBRA1: TFloatField
      FieldName = 'QTSOBRA1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTSOBRA2: TFloatField
      FieldName = 'QTSOBRA2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoQTAPROVEITAMENTO: TFloatField
      FieldName = 'QTAPROVEITAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoNMTPEQUIPAMENTO: TStringField
      FieldName = 'NMTPEQUIPAMENTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsapontamentoQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsapontamentoCDAPONTAMENTOMANUAL: TIntegerField
      FieldName = 'CDAPONTAMENTOMANUAL'
      ProviderFlags = []
    end
    object cdsapontamentoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dtsapontamento: TDataSource
    DataSet = cdsapontamento
    Left = 748
    Top = 417
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end>
    UseOwnFont = False
    Left = 952
    Top = 124
  end
  object sdshstordproducao: TSQLDataSet
    CommandText = 
      'SELECT H.*,C.NMCOMPUTADOR'#13#10'FROM HSTORDPRODUCAO H '#13#10'LEFT JOIN COM' +
      'PUTADOR C ON C.CDCOMPUTADOR=H.CDCOMPUTADORI '#13#10'WHERE H.CDEMPRESA=' +
      ':CDEMPRESA AND H.CDORDPRODUCAO=:CDORDPRODUCAO'
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
        Name = 'CDORDPRODUCAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 664
    Top = 445
    object sdshstordproducaoNMCOMPUTADOR: TStringField
      FieldName = 'NMCOMPUTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sdshstordproducaoDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdshstordproducaoCDHSTORDPRODUCAO: TIntegerField
      FieldName = 'CDHSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdshstordproducaoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstordproducaoCDSTORDPRODUCAO: TIntegerField
      FieldName = 'CDSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstordproducaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstordproducaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstordproducaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstordproducaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstordproducaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstordproducaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstordproducaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdshstordproducao: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdshstordproducao
    Params = <>
    BeforePost = cdshstordproducaoBeforePost
    OnNewRecord = cdshstordproducaoNewRecord
    Left = 720
    Top = 445
    object cdshstordproducaoNMCOMPUTADOR: TStringField
      FieldName = 'NMCOMPUTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdshstordproducaoDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdshstordproducaoCDHSTORDPRODUCAO: TIntegerField
      FieldName = 'CDHSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdshstordproducaoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstordproducaoCDSTORDPRODUCAO: TIntegerField
      FieldName = 'CDSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstordproducaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstordproducaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstordproducaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstordproducaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstordproducaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstordproducaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstordproducaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dtshstordproducao: TDataSource
    DataSet = cdshstordproducao
    Left = 748
    Top = 445
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 952
    Top = 156
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 952
    Top = 187
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object dtsconsulta: TDataSource
    Left = 817
    Top = 367
  end
  object sdsitordproducao: TSQLDataSet
    DataSource = dts1
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 664
    Top = 473
    object sdsitordproducaoCDITORDPRODUCAO: TIntegerField
      FieldName = 'CDITORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitordproducaoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaoCDSTITORDPRODUCAO: TIntegerField
      FieldName = 'CDSTITORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaoQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordproducaoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsitordproducaoNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsitordproducaoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsitordproducaoNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object sdsitordproducaoNUBAG: TStringField
      FieldName = 'NUBAG'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaoNULOTE: TStringField
      FieldName = 'NULOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaoHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaoHRFIM: TTimeField
      FieldName = 'HRFIM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitordproducaoCDPRODUTOMATERIAPRIMA: TIntegerField
      FieldName = 'CDPRODUTOMATERIAPRIMA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaoCDDIGITADOMATERIAPRIMA: TStringField
      FieldName = 'CDDIGITADOMATERIAPRIMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsitordproducaoNMPRODUTOMATERIAPRIMA: TStringField
      DisplayWidth = 250
      FieldName = 'NMPRODUTOMATERIAPRIMA'
      ProviderFlags = []
      Size = 250
    end
    object sdsitordproducaoQTLARGURA: TFloatField
      FieldName = 'QTLARGURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaoQTCOMPRIMENTO: TFloatField
      FieldName = 'QTCOMPRIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaoQTESPESSURA: TFloatField
      FieldName = 'QTESPESSURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordproducaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsitordproducao: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'sum_qtproducao'
        Expression = 'sum(qtproducao)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdssdsitordproducao
    Params = <>
    BeforePost = cdsitordproducaoBeforePost
    AfterPost = cdsitordproducaoAfterPost
    AfterScroll = cdsitordproducaoAfterScroll
    OnNewRecord = cdsitordproducaoNewRecord
    Left = 720
    Top = 473
    object cdsitordproducaoCDITORDPRODUCAO: TIntegerField
      FieldName = 'CDITORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitordproducaoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaoCDSTITORDPRODUCAO: TIntegerField
      FieldName = 'CDSTITORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaoQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordproducaoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitordproducaoCDDIGITADOValidate
      Size = 30
    end
    object cdsitordproducaoNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsitordproducaoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsitordproducaoNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object cdsitordproducaoNUBAG: TStringField
      FieldName = 'NUBAG'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaoNULOTE: TStringField
      FieldName = 'NULOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaoHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaoHRFIM: TTimeField
      FieldName = 'HRFIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaoCDPRODUTOMATERIAPRIMA: TIntegerField
      FieldName = 'CDPRODUTOMATERIAPRIMA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordproducaoCDDIGITADOMATERIAPRIMA: TStringField
      FieldName = 'CDDIGITADOMATERIAPRIMA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitordproducaoCDDIGITADOMATERIAPRIMAValidate
      Size = 30
    end
    object cdsitordproducaoNMPRODUTOMATERIAPRIMA: TStringField
      FieldName = 'NMPRODUTOMATERIAPRIMA'
      ProviderFlags = []
      Size = 250
    end
    object cdsitordproducaoQTLARGURA: TFloatField
      FieldName = 'QTLARGURA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitordproducaoQTLARGURAValidate
    end
    object cdsitordproducaoQTCOMPRIMENTO: TFloatField
      FieldName = 'QTCOMPRIMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitordproducaoQTLARGURAValidate
    end
    object cdsitordproducaoQTESPESSURA: TFloatField
      FieldName = 'QTESPESSURA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitordproducaoQTLARGURAValidate
    end
    object cdsitordproducaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dtsitordproducao: TDataSource
    DataSet = cdsitordproducao
    Left = 748
    Top = 473
  end
end

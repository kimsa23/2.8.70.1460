object frmPedido: TfrmPedido
  Left = 308
  Top = 143
  Hint = 'Abrir'
  ClientHeight = 730
  ClientWidth = 1126
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
    Top = 306
    Width = 1126
    Height = 379
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = tbsproduto
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 379
    ClientRectRight = 1126
    ClientRectTop = 25
    object tbsproduto: TcxTabSheet
      Caption = 'Produto'
      ImageIndex = 24
      object grd: TcxGrid
        Left = 0
        Top = 22
        Width = 1126
        Height = 124
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbv: TcxGridDBBandedTableView
          OnKeyDown = tbvKeyDown
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Append.Visible = False
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
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CDDIGITADO'
              Column = tbvCDDIGITADO
            end
            item
              Kind = skSum
              FieldName = 'QTATENDIDA'
              Column = tbvQTATENDIDA
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvQTITEM
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
              FieldName = 'VLFRETE'
              Column = tbvVLFRETE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSSUBTRIB'
              Column = tbvVLICMSSUBTRIB
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPI'
              Column = tbvVLIPI
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvVLTOTAL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTALCIPI'
              Column = tbvVLTOTALCIPI
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMS'
              Column = tbvVLICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLISS'
              Column = tbvVLISS
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
              Caption = 'Or'#231'amento'
              Visible = False
            end
            item
              Caption = 'Produto'
              Width = 509
            end
            item
              Caption = 'Ordem Compra'
              Visible = False
            end
            item
              Caption = 'Madeira'
              Visible = False
              Width = 310
            end
            item
              Caption = 'Quantidade'
              Width = 109
            end
            item
              Caption = 'Fornecedor'
              Visible = False
            end
            item
              Caption = 'Embalagem'
              Visible = False
              Width = 300
            end
            item
              Caption = 'Valor'
              Width = 312
            end
            item
              Caption = 'ICMS'
              Visible = False
              Width = 118
            end
            item
              Caption = 'ICMS Sub Trib'
              Visible = False
              Width = 155
            end
            item
              Caption = 'IPI'
              Visible = False
              Width = 308
            end
            item
              Caption = 'ISS'
            end
            item
              Caption = 'Status'
              Visible = False
              Width = 105
            end
            item
              Caption = 'Embarque'
              Visible = False
            end
            item
              Caption = 'Revis'#227'o'
              Visible = False
            end>
          object tbvCDORCAMENTO: TcxGridDBBandedColumn
            Caption = 'Or'#231'amento'
            DataBinding.FieldName = 'CDORCAMENTO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grddetail1DBBandedTableView1CDORCAMENTOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvCDDIGITADO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = tbvCDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 37
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvCDTPGRADEVALOR: TcxGridDBBandedColumn
            Caption = 'Grade Valor'
            DataBinding.FieldName = 'CDTPGRADEVALOR'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPGRADEVALOR'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPGRADEVALOR'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tbvNMPRODUTO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Editing = False
            Options.Focusing = False
            Width = 126
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvDSTAG2: TcxGridDBBandedColumn
            Caption = 'Tag 2'
            DataBinding.FieldName = 'DSTAG2'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object tbvDTPRVENTREGA: TcxGridDBBandedColumn
            Caption = 'Prev Entrega'
            DataBinding.FieldName = 'DTPRVENTREGA'
            Visible = False
            Width = 53
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvDSFORMULA: TcxGridDBBandedColumn
            Caption = 'Medida'
            DataBinding.FieldName = 'DSFORMULA'
            Visible = False
            Width = 43
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvDSDESENHO: TcxGridDBBandedColumn
            Caption = 'Desenho'
            DataBinding.FieldName = 'DSDESENHO'
            Visible = False
            Width = 52
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvDSOBSERVACAO1: TcxGridDBBandedColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Visible = False
            Width = 81
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tbvdsobservacaointerna: TcxGridDBBandedColumn
            Caption = 'Observa'#231#227'o Interna'
            DataBinding.FieldName = 'DSOBSERVACAOINTERNA'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Visible = False
            Width = 81
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tbvDSESTRUTURA: TcxGridDBBandedColumn
            Caption = 'Lista de Estrutura'
            DataBinding.FieldName = 'dsestrutura'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Visible = False
            Options.Editing = False
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object tbvNMUNIDADE: TcxGridDBBandedColumn
            Caption = 'UN'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Focusing = False
            Width = 30
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object tbvDSPRODUTO: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DSPRODUTO'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object tbvDTEMISSAO: TcxGridDBBandedColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object tbvCDTPITPEDIDO: TcxGridDBBandedColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'CDTPITPEDIDO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 250
            Properties.KeyFieldNames = 'CDTPITPEDIDO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPITPEDIDO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNUCOTACAO: TcxGridDBBandedColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUCOTACAO'
            Width = 111
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNUITEM: TcxGridDBBandedColumn
            Caption = 'N'#186' '#205'tem'
            DataBinding.FieldName = 'NUITEM'
            Width = 53
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvQTLARGURA1: TcxGridDBBandedColumn
            Caption = 'Largura'
            DataBinding.FieldName = 'QTLARGURA1'
            Width = 52
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvQTCOMPRIMENTO1: TcxGridDBBandedColumn
            Caption = 'Comprimento'
            DataBinding.FieldName = 'QTCOMPRIMENTO1'
            Width = 84
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvQTALTURA1: TcxGridDBBandedColumn
            Caption = 'Espessura'
            DataBinding.FieldName = 'QTALTURA1'
            Width = 67
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvQTPECA: TcxGridDBBandedColumn
            Caption = 'Qt Pe'#231'a'
            DataBinding.FieldName = 'QTPECA'
            Width = 58
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvQTPECAATENDIDA: TcxGridDBBandedColumn
            Caption = 'Qt Pe'#231'a Atendida'
            DataBinding.FieldName = 'QTPECAATENDIDA'
            Options.Focusing = False
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvDSOBSERVACAO: TcxGridDBBandedColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.WantReturns = False
            Width = 113
            Position.BandIndex = 3
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvQTITEM: TcxGridDBBandedColumn
            Caption = 'Qtd'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvQTATENDIDA: TcxGridDBBandedColumn
            Caption = 'Atendida'
            DataBinding.FieldName = 'QTATENDIDA'
            OnCustomDrawCell = tbvQTATENDIDACustomDrawCell
            Options.Editing = False
            Options.Focusing = False
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvQTCONFERENCIA: TcxGridDBBandedColumn
            Caption = 'Conferido'
            DataBinding.FieldName = 'QTCONFERENCIA'
            Visible = False
            Options.Focusing = False
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvCDFORNECEDOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CDFORNECEDOR'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvCDFORNECEDORPropertiesButtonClick
            Width = 100
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object tbvnmfornecedor: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMFORNECEDOR'
            Options.Focusing = False
            Width = 200
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvCDDIGITADOEMBALAGEM: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADOEMBALAGEM'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvCDDIGITADOEMBALAGEMPropertiesButtonClick
            Width = 81
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNMPRODUTOEMBALAGEM: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTOEMBALAGEM'
            Options.Focusing = False
            Width = 250
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvVLUNITARIO: TcxGridDBBandedColumn
            Caption = 'Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 63
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvVLTOTAL: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Width = 86
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvVLFRETE: TcxGridDBBandedColumn
            Caption = 'Frete'
            DataBinding.FieldName = 'VLFRETE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Width = 67
            Position.BandIndex = 7
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvVLDESCONTO: TcxGridDBBandedColumn
            Caption = 'Vl Desconto'
            DataBinding.FieldName = 'VLDESCONTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 104
            Position.BandIndex = 7
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvPRDESCONTO: TcxGridDBBandedColumn
            Caption = '% Desconto'
            DataBinding.FieldName = 'PRDESCONTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 7
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvALICMS: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'ALICMS'
            Width = 24
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvVLICMS: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLICMS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Position.BandIndex = 8
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvALMVA: TcxGridDBBandedColumn
            Caption = 'MVA'
            DataBinding.FieldName = 'ALMVA'
            Width = 38
            Position.BandIndex = 9
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvVLICMSSUBTRIB: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLICMSSUBTRIB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 103
            Position.BandIndex = 9
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvALICMSSUBTRIB: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'ALICMSSUBTRIB'
            Width = 28
            Position.BandIndex = 9
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvVLIPI: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLIPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Width = 80
            Position.BandIndex = 10
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvALIPI: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'ALIPI'
            Width = 39
            Position.BandIndex = 10
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvBOIPIBCICMS: TcxGridDBBandedColumn
            Caption = 'IPI base ICMS'
            DataBinding.FieldName = 'BOIPIBCICMS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 78
            Position.BandIndex = 10
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvVLTOTALCIPI: TcxGridDBBandedColumn
            Caption = 'Total c IPI'
            DataBinding.FieldName = 'VLTOTALCIPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 111
            Position.BandIndex = 10
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvCDSTITPEDIDO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDSTITPEDIDO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Position.BandIndex = 12
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvCDSTEMBARQUE: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'CDSTEMBARQUE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 250
            Properties.KeyFieldNames = 'CDSTEMBARQUE'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTEMBARQUE'
              end>
            Properties.ListOptions.ShowHeader = False
            OnCustomDrawCell = tbvCDSTEMBARQUECustomDrawCell
            Width = 80
            Position.BandIndex = 13
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvCDITPEDIDO: TcxGridDBBandedColumn
            Caption = 'N'#186' OPLF'
            DataBinding.FieldName = 'CDITPEDIDO'
            Options.Focusing = False
            Width = 106
            Position.BandIndex = 13
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tbvDTEMBARQUE: TcxGridDBBandedColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTEMBARQUE'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvDTEMBARQUEPropertiesButtonClick
            OnCustomDrawCell = tbvDTEMBARQUECustomDrawCell
            Position.BandIndex = 13
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvHREMBARQUE: TcxGridDBBandedColumn
            Caption = 'Hora'
            DataBinding.FieldName = 'HREMBARQUE'
            PropertiesClassName = 'TcxTimeEditProperties'
            Position.BandIndex = 13
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvDTDESEMBARQUE: TcxGridDBBandedColumn
            Caption = 'Dt Desemb'
            DataBinding.FieldName = 'DTDESEMBARQUE'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 13
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvCDTPVOLUME: TcxGridDBBandedColumn
            Caption = 'Tipo Volume'
            DataBinding.FieldName = 'CDTPVOLUME'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPVOLUME'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPVOLUME'
              end>
            Properties.ListOptions.ShowHeader = False
            Position.BandIndex = 13
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvQTVOLUME: TcxGridDBBandedColumn
            Caption = 'Qtd Volume'
            DataBinding.FieldName = 'QTVOLUME'
            PropertiesClassName = 'TcxSpinEditProperties'
            Position.BandIndex = 13
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvCDTRANSPORTADORA: TcxGridDBBandedColumn
            Caption = 'Transportadora'
            DataBinding.FieldName = 'CDTRANSPORTADORA'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 350
            Properties.KeyFieldNames = 'CDTRANSPORTADORA'
            Properties.ListColumns = <
              item
                FieldName = 'NMTRANSPORTADORA'
              end>
            Properties.ListOptions.ShowHeader = False
            Position.BandIndex = 13
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tbvDTREVISAO: TcxGridDBBandedColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTREVISAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 14
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNUREVISAO: TcxGridDBBandedColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUREVISAO'
            Position.BandIndex = 14
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvCDTPREVISAOCOMERCIAL: TcxGridDBBandedColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'CDTPREVISAOCOMERCIAL'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 250
            Properties.KeyFieldNames = 'CDTPREVISAOCOMERCIAL'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPREVISAOCOMERCIAL'
              end>
            Properties.ListOptions.ShowHeader = False
            Position.BandIndex = 14
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvnucordtembarque: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUCORDTEMBARQUE'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object tbvNUCORSTEMBARQUE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUCORSTEMBARQUE'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object tbvALISS: TcxGridDBBandedColumn
            Caption = '% ISS'
            DataBinding.FieldName = 'ALISS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 11
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvVLISS: TcxGridDBBandedColumn
            Caption = 'Valor ISS'
            DataBinding.FieldName = 'VLISS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Focusing = False
            Position.BandIndex = 11
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object grlgrddetail1Level1: TcxGridLevel
          GridView = tbv
        end
      end
      object bdcitpedido: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1126
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object splordproducao: TcxSplitter
        Left = 0
        Top = 146
        Width = 1126
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = pgcsub
      end
      object pgcsub: TcxPageControl
        Left = 0
        Top = 154
        Width = 1126
        Height = 200
        Align = alBottom
        TabOrder = 3
        Properties.ActivePage = tbsordproducao
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 200
        ClientRectRight = 1126
        ClientRectTop = 24
        object tbsordproducao: TcxTabSheet
          Caption = 'Ordem de Produ'#231#227'o'
          ImageIndex = 0
          object grdordproducao: TcxGrid
            Left = 0
            Top = 0
            Width = 1126
            Height = 176
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object tbvordproducao: TcxGridDBTableView
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
              OnCellDblClick = tbvordproducaoCellDblClick
              DataController.DataSource = dtsordproducao
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'QTITEM'
                  Column = tbvordproducaoQTITEM
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object tbvordproducaoCDORDPRODUCAO: TcxGridDBColumn
                Caption = 'Ordem Produ'#231#227'o'
                DataBinding.FieldName = 'CDORDPRODUCAO'
                Options.Editing = False
                Styles.Content = dtmmain.cxStyle1
                Width = 90
              end
              object tbvordproducaoCDSTORDPRODUCAO: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'CDSTORDPRODUCAO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 300
                Properties.KeyFieldNames = 'CDSTORDPRODUCAO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMSTORDPRODUCAO'
                  end>
                Properties.ListOptions.ShowHeader = False
                Options.Focusing = False
                Width = 100
              end
              object tbvordproducaoCDTPORDPRODUCAO: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'CDTPORDPRODUCAO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDTPORDPRODUCAO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMTPORDPRODUCAO'
                  end>
                Properties.ListOptions.ShowHeader = False
                Width = 100
              end
              object tbvordproducaoDTEMISSAO: TcxGridDBColumn
                Caption = 'Emiss'#227'o'
                DataBinding.FieldName = 'DTEMISSAO'
                Width = 80
              end
              object tbvordproducaoDTENTREGA: TcxGridDBColumn
                Caption = 'Entrega'
                DataBinding.FieldName = 'DTENTREGA'
                Options.Focusing = False
                Width = 80
              end
              object tbvordproducaoDTPRVENTREGA: TcxGridDBColumn
                Caption = 'Previs'#227'o de Entrega'
                DataBinding.FieldName = 'DTPRVENTREGA'
                Width = 105
              end
              object tbvordproducaoDSOBSERVACAO: TcxGridDBColumn
                Caption = 'Observa'#231#227'o'
                DataBinding.FieldName = 'DSOBSERVACAO'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekMemo
                Properties.BlobPaintStyle = bpsText
                Width = 150
              end
              object tbvordproducaoQTITEM: TcxGridDBColumn
                Caption = 'Quantidade'
                DataBinding.FieldName = 'QTITEM'
                Options.Focusing = False
                Width = 80
              end
            end
            object grdordproducaoLevel1: TcxGridLevel
              GridView = tbvordproducao
            end
          end
        end
        object tbsestrutura: TcxTabSheet
          Caption = 'Estrutura'
          ImageIndex = 1
          object grdestrutura: TcxGrid
            Left = 0
            Top = 0
            Width = 1126
            Height = 176
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object tbvestrutura: TcxGridDBTableView
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
              DataController.DataSource = dtsitpedidoestrutura
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsView.GroupByBox = False
              object tbvestruturaNUESTRUTURAL: TcxGridDBColumn
                Caption = 'N'#186' Estrutural'
                DataBinding.FieldName = 'NUESTRUTURAL'
                Width = 160
              end
              object tbvestruturaBOFATURADO: TcxGridDBColumn
                Caption = 'Faturado'
                DataBinding.FieldName = 'BOFATURADO'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Width = 83
              end
            end
            object lvlestrutura: TcxGridLevel
              GridView = tbvestrutura
            end
          end
        end
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 62
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
        Height = 354
        Width = 1126
      end
    end
    object tbsobsinterna: TcxTabSheet
      Caption = 'Observa'#231#227'o Interna'
      ImageIndex = 62
      object memDSOBSINTERNA: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSOBSINTERNA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 354
        Width = 1126
      end
    end
    object tbsconsulta: TcxTabSheet
      Caption = 'Consulta'
      ImageIndex = 41
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1126
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object grdconsulta: TcxGrid
        Left = 0
        Top = 22
        Width = 1126
        Height = 332
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbvsaida: TcxGridDBBandedTableView
          OnDblClick = tbvsaidaDblClick
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Enabled = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Enabled = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Enabled = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Enabled = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsconsulta
          DataController.DetailKeyFieldNames = 'CDSAIDA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = colVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Nota Fiscal'
            end>
          object colNUSAIDA: TcxGridDBBandedColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUSAIDA'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object colDTEMISSAO: TcxGridDBBandedColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object colVLTOTAL: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvsaidaNMTPSAIDA: TcxGridDBBandedColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'NMTPSAIDA'
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvsaidaNMSERIE: TcxGridDBBandedColumn
            Caption = 'S'#233'rie'
            DataBinding.FieldName = 'NMSERIE'
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object tbvitsaida: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dtsitconsulta
          DataController.DetailKeyFieldNames = 'CDSAIDA'
          DataController.KeyFieldNames = 'CDSAIDA'
          DataController.MasterKeyFieldNames = 'CDSAIDA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CDDIGITADO'
              Column = colcddigitado
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = colqtitem
            end
            item
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = colvltotali
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'Produto'
            end
            item
              Caption = 'Valor'
            end>
          object colcddigitado: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object colnmproduto: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object colqtitem: TcxGridDBBandedColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object colvlunitario: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLUNITARIO'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object colvltotali: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object tbvtransporte: TcxGridDBBandedTableView
          OnDblClick = tbvtransporteDblClick
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
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Transporte'
              Width = 180
            end>
          object tbvtransporteColumn1: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDTRANSPORTE'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvtransporteColumn2: TcxGridDBBandedColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object grlsaida: TcxGridLevel
          GridView = tbvsaida
          object grlitsaida: TcxGridLevel
            GridView = tbvitsaida
          end
        end
        object grltransporte: TcxGridLevel
          GridView = tbvtransporte
        end
      end
    end
    object tbsentrega: TcxTabSheet
      Caption = 'Entrega'
      object lbldsreferencia: TLabel
        Left = 159
        Top = 9
        Width = 52
        Height = 13
        Caption = 'Refer'#234'ncia'
        Transparent = True
      end
      object gbxComercial: TcxGroupBox
        Left = 2
        Top = 31
        Caption = 'Endere'#231'o Entrega'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Transparent = True
        Height = 125
        Width = 778
        object Label10: TLabel
          Left = 3
          Top = 23
          Width = 21
          Height = 13
          Caption = 'CEP'
          Transparent = True
        end
        object Label7: TLabel
          Left = 3
          Top = 44
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          Transparent = True
        end
        object Label66: TLabel
          Left = 423
          Top = 42
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Transparent = True
        end
        object Label67: TLabel
          Left = 564
          Top = 40
          Width = 64
          Height = 13
          Caption = 'Complemento'
          Transparent = True
        end
        object Label9: TLabel
          Left = 3
          Top = 65
          Width = 27
          Height = 13
          Caption = 'Bairro'
          Transparent = True
        end
        object Label12: TLabel
          Left = 423
          Top = 65
          Width = 44
          Height = 13
          Caption = 'Cx Postal'
          Transparent = True
        end
        object Label13: TLabel
          Left = 6
          Top = 86
          Width = 14
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object Label15: TLabel
          Left = 423
          Top = 85
          Width = 33
          Height = 13
          Caption = 'Cidade'
          Transparent = True
        end
        object Label23: TLabel
          Left = 6
          Top = 104
          Width = 24
          Height = 13
          Caption = 'Fone'
          Transparent = True
        end
        object Label20: TLabel
          Left = 423
          Top = 104
          Width = 17
          Height = 13
          Caption = 'Fax'
          Transparent = True
        end
        object cbxcdmunicipio: TcxDBLookupComboBox
          Left = 475
          Top = 78
          DataBinding.DataField = 'CDMUNICIPIO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDMUNICIPIO'
          Properties.ListColumns = <
            item
              FieldName = 'NMMUNICIPIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 7
          OnEnter = colorenter
          Width = 371
        end
        object edtnufax: TcxDBMaskEdit
          Left = 475
          Top = 99
          DataBinding.DataField = 'NUFAX'
          DataBinding.DataSource = dts
          Properties.EditMask = '(99)9999-9999'
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 81
        end
        object edtnufone: TcxDBMaskEdit
          Left = 51
          Top = 99
          DataBinding.DataField = 'NUFONE'
          DataBinding.DataSource = dts
          Properties.EditMask = '(99)9999-9999'
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 81
        end
        object edtnucxpostal: TcxDBMaskEdit
          Left = 475
          Top = 57
          DataBinding.DataField = 'NUCXPOSTAL'
          DataBinding.DataSource = dts
          Properties.ReadOnly = False
          TabOrder = 5
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 85
        end
        object edtnucep: TcxDBMaskEdit
          Left = 51
          Top = 15
          DataBinding.DataField = 'NUCEP'
          DataBinding.DataSource = dts
          Properties.EditMask = '99999-999'
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 59
        end
        object edtNmbairro: TcxDBTextEdit
          Left = 51
          Top = 57
          DataBinding.DataField = 'NMBAIRRO'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 371
        end
        object edtdscomplemento: TcxDBTextEdit
          Left = 630
          Top = 34
          DataBinding.DataField = 'DSCOMPLEMENTO'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 148
        end
        object edtdsnumero: TcxDBTextEdit
          Left = 475
          Top = 34
          DataBinding.DataField = 'DSNUMERO'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 85
        end
        object edtDsEndereco: TcxDBTextEdit
          Left = 51
          Top = 36
          DataBinding.DataField = 'DSENDERECO'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 371
        end
        object cbxcduf: TcxDBLookupComboBox
          Left = 51
          Top = 78
          DataBinding.DataField = 'CDUF'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDUF'
          Properties.ListColumns = <
            item
              FieldName = 'NMUF'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 6
          OnEnter = colorenter
          OnExit = cbxcdufExit
          Width = 187
        end
      end
      object btnfindentrega: TcxButton
        Left = 2
        Top = 3
        Width = 75
        Height = 25
        Action = actlocalizarentrega
        LookAndFeel.Kind = lfUltraFlat
        TabOrder = 1
      end
      object btn1: TcxButton
        Left = 80
        Top = 3
        Width = 75
        Height = 25
        Action = actlimparentrega
        LookAndFeel.Kind = lfUltraFlat
        TabOrder = 2
      end
      object edtdsreferencia: TcxDBTextEdit
        Left = 217
        Top = 4
        DataBinding.DataField = 'DSREFERENCIA'
        DataBinding.DataSource = dts
        TabOrder = 3
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 335
      end
    end
    object tbsduplicata: TcxTabSheet
      Caption = 'Contas a Receber'
      object dxBevel1: TdxBevel
        Left = 0
        Top = 0
        Width = 1126
        Height = 25
        Align = alTop
        ExplicitWidth = 1112
      end
      object lblvlcredidotutilizado: TLabel
        Left = 76
        Top = 4
        Width = 3
        Height = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 4
        Top = 4
        Width = 67
        Height = 13
        Caption = 'Valor Utilizado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label55: TLabel
        Left = 178
        Top = 4
        Width = 42
        Height = 13
        Caption = 'Atrasado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblvlatrasado: TLabel
        Left = 227
        Top = 4
        Width = 3
        Height = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object grdpedidoduplicata: TcxGrid
        Left = 0
        Top = 25
        Width = 1126
        Height = 329
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object btvpedidoduplicata: TcxGridDBBandedTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtspedidoduplicata
          DataController.Filter.IgnoreOrigin = False
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLPEDIDODUPLICATA'
              Column = btvpedidoduplicataVLORDCOMPRAAUTPAGTO
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnMRUItemsList = False
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object btvpedidoduplicataVLORDCOMPRAAUTPAGTO: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLPEDIDODUPLICATA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 173
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvpedidoduplicataDTPRORROGACAO: TcxGridDBBandedColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'DTPRORROGACAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 94
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = btvpedidoduplicata
        end
      end
    end
    object tbsdsestrutura: TcxTabSheet
      Caption = 'Lista de Estrutura'
      object memdsestrutura: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSESTRUTURA'
        DataBinding.DataSource = dts
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 354
        Width = 1126
      end
    end
  end
  object gbxvalores2: TcxGroupBox
    Left = 0
    Top = 685
    Align = alBottom
    Caption = 'Valores'
    TabOrder = 6
    Height = 45
    Width = 1126
    object lbldesconto: TLabel
      Left = 4
      Top = 20
      Width = 46
      Height = 13
      Caption = 'Desconto'
      Transparent = True
    end
    object Label1: TLabel
      Left = 561
      Top = 5
      Width = 70
      Height = 42
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtprdesconto: TcxDBCalcEdit
      Left = 52
      Top = 17
      DataBinding.DataField = 'PRDESCONTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 85
    end
    object edtvldesconto: TcxDBCalcEdit
      Left = 143
      Top = 16
      DataBinding.DataField = 'VLDESCONTO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 108
    end
    object txtVLTOTAL: TcxDBLabel
      Left = 641
      Top = 3
      AutoSize = True
      DataBinding.DataField = 'VLTOTAL'
      DataBinding.DataSource = dts
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -35
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 59
    Width = 1126
    Height = 23
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
    object pnl: TcxLabel
      Left = 0
      Top = 0
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
  end
  object pnltop: TPanel
    Left = 0
    Top = 82
    Width = 1126
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblcodigo: TLabel
      Left = 3
      Top = -1
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 72
      Top = -1
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object Label3: TLabel
      Left = 160
      Top = -1
      Width = 37
      Height = 13
      Caption = 'Entrega'
      Transparent = True
    end
    object lblnudias: TLabel
      Left = 246
      Top = -1
      Width = 34
      Height = 13
      Caption = 'N'#186' dias'
      Transparent = True
    end
    object Label6: TLabel
      Left = 289
      Top = -1
      Width = 59
      Height = 13
      Caption = 'Fechamento'
      Transparent = True
    end
    object lblcondpagto: TLabel
      Left = 491
      Top = -1
      Width = 121
      Height = 13
      Caption = 'Condi'#231#227'o Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcondpagtoDblClick
    end
    object lbltpcobranca: TLabel
      Left = 620
      Top = -1
      Width = 46
      Height = 13
      Caption = 'Cobran'#231'a'
      Transparent = True
    end
    object Label14: TLabel
      Left = 748
      Top = -1
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 13
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtcodigoEnter
      OnExit = colorexit
      OnKeyDown = edtcodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 70
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 72
      Top = 13
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
      Width = 88
    end
    object edtdtprventrega: TcxDBDateEdit
      Left = 160
      Top = 13
      DataBinding.DataField = 'DTPRVENTREGA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = edtdtprventregaExit
      OnKeyDown = nextcontrol
      Width = 86
    end
    object edtnudias: TcxDBSpinEdit
      Left = 246
      Top = 13
      DataBinding.DataField = 'nudias'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = edtnudiasExit
      OnKeyDown = nextcontrol
      Width = 43
    end
    object lblDTFECHAMENTO: TcxDBLabel
      Left = 289
      Top = 15
      DataBinding.DataField = 'DTFECHAMENTO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 73
    end
    object lbltppedido: TcxLabel
      Left = 364
      Top = -3
      Caption = 'Tipo'
      FocusControl = cbxcdtppedido
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.IsFontAssigned = True
      Transparent = True
      OnDblClick = lbltppedidoDblClick
    end
    object cbxcdtppedido: TcxDBLookupComboBox
      Left = 364
      Top = 13
      DataBinding.DataField = 'CDTPPEDIDO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDTPPEDIDO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPPEDIDO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = cbxcdtppedidoEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 126
    end
    object cbxcdcondpagto: TcxDBLookupComboBox
      Left = 491
      Top = 13
      DataBinding.DataField = 'CDCONDPAGTO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDCONDPAGTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMCONDPAGTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = cbxcdcondpagtoEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 128
    end
    object cbxcdtpcobranca: TcxDBLookupComboBox
      Left = 620
      Top = 13
      DataBinding.DataField = 'CDTPCOBRANCA'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDTPCOBRANCA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPCOBRANCA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnEnter = cbxcdtpcobrancaEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 128
    end
    object cbxcdstpedido: TcxDBLookupComboBox
      Left = 748
      Top = 13
      DataBinding.DataField = 'CDSTPEDIDO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDSTPEDIDO'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTPEDIDO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnEnter = cbxcdstpedidoEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 145
    end
  end
  object gbxcliente: TcxGroupBox
    Left = 0
    Top = 121
    Align = alTop
    Caption = 'Cliente'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Height = 65
    Width = 1126
    object lblcdcliente: TLabel
      Left = 4
      Top = 17
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnDblClick = lblcdclienteDblClick
    end
    object lblcontato: TLabel
      Left = 392
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Contato'
      Transparent = True
    end
    object lblcdpaciente: TLabel
      Left = 392
      Top = 17
      Width = 42
      Height = 13
      Caption = 'Paciente'
      Transparent = True
      Visible = False
    end
    object txtnmpaciente: TDBText
      Left = 540
      Top = 18
      Width = 157
      Height = 13
      DataField = 'NMPACIENTE'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      Visible = False
      OnDblClick = txtnmpacienteDblClick
    end
    object txtnmprofissional: TDBText
      Left = 161
      Top = 44
      Width = 230
      Height = 13
      DataField = 'NMPROFISSIONAL'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      Visible = False
      OnDblClick = txtnmprofissionalDblClick
    end
    object lblcdprofissional: TLabel
      Left = 4
      Top = 43
      Width = 53
      Height = 13
      Caption = 'Profissional'
      Transparent = True
      Visible = False
    end
    object lblcdprofissionalcoordenador: TLabel
      Left = 392
      Top = 44
      Width = 31
      Height = 13
      Caption = 'Coord.'
      Transparent = True
      Visible = False
    end
    object txtnmprofissionalcoordenador: TDBText
      Left = 540
      Top = 45
      Width = 230
      Height = 13
      DataField = 'NMPROFISSIONALCOORDENADOR'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      Visible = False
      OnDblClick = txtnmprofissionalcoordenadorDblClick
    end
    object txtNMCLIENTE: TDBText
      Left = 164
      Top = 16
      Width = 224
      Height = 17
      DataField = 'NMCLIENTE'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnDblClick = txtNMCLIENTEDblClick
    end
    object edtCDCLIENTE: TcxDBButtonEdit
      Left = 59
      Top = 13
      DataBinding.DataField = 'CDCLIENTE'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdclientePropertiesButtonClick
      Properties.OnEditValueChanged = edtCDCLIENTEPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCDCLIENTEEnter
      OnExit = colorexit
      OnKeyDown = edtCDCLIENTEKeyDown
      OnKeyPress = eventokeypress
      Width = 101
    end
    object cbxcditcontcliente: TcxDBLookupComboBox
      Left = 436
      Top = 13
      DataBinding.DataField = 'CDITCONTCLIENTE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDITCONTCLIENTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMITCONTCLIENTE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dtsitcontcliente
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnKeyDown = nextcontrol
      Width = 168
    end
    object btninserircontato: TcxButton
      Left = 604
      Top = 13
      Width = 38
      Height = 21
      Action = actinserircontato
      LookAndFeel.NativeStyle = False
      TabOrder = 3
    end
    object edtcdpaciente: TcxDBButtonEdit
      Left = 436
      Top = 13
      DataBinding.DataField = 'CDPACIENTE'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdpacientePropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Visible = False
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdpacienteKeyDown
      OnKeyPress = eventokeypress
      Width = 101
    end
    object edtcdprofissional: TcxDBButtonEdit
      Left = 59
      Top = 37
      DataBinding.DataField = 'CDPROFISSIONAL'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdprofissionalPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Visible = False
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdprofissionalKeyDown
      OnKeyPress = eventokeypress
      Width = 101
    end
    object edtcdprofissionalcoordenador: TcxDBButtonEdit
      Left = 436
      Top = 37
      DataBinding.DataField = 'CDPROFISSIONALCOORDENADOR'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdprofissionalcoordenadorPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Visible = False
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdprofissionalcoordenadorKeyDown
      OnKeyPress = eventokeypress
      Width = 101
    end
    object rdgboapto: TcxDBRadioGroup
      Left = 784
      Top = 12
      Caption = 'Situa'#231#227'o'
      DataBinding.DataField = 'BOAPTO'
      DataBinding.DataSource = dts
      Properties.Columns = 3
      Properties.DefaultValue = 'I'
      Properties.Items = <
        item
          Caption = 'Apto'
          Value = 'S'
        end
        item
          Caption = 'Inapto'
          Value = 'N'
        end
        item
          Caption = 'N'#227'o informado'
          Value = 'I'
        end>
      TabOrder = 4
      Height = 34
      Width = 276
    end
  end
  object gbxfrete: TcxGroupBox
    Left = 0
    Top = 186
    Align = alTop
    Caption = 'Frete'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Height = 40
    Width = 1126
    object lbltransportadora: TLabel
      Left = 389
      Top = 18
      Width = 48
      Height = 13
      Caption = 'Transport.'
      Transparent = True
    end
    object lblvlfrete: TLabel
      Left = 228
      Top = 17
      Width = 24
      Height = 13
      Alignment = taCenter
      Caption = 'Valor'
      Transparent = True
    end
    object lbltpfrete: TLabel
      Left = 4
      Top = 18
      Width = 21
      Height = 13
      Caption = 'Tipo'
      Transparent = True
    end
    object lblnmtransportadora: TDBText
      Left = 549
      Top = 18
      Width = 158
      Height = 13
      DataField = 'NMTRANSPORTADORA'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblnmtransportadoraDblClick
    end
    object lblnmredespacho: TLabel
      Left = 709
      Top = 18
      Width = 61
      Height = 13
      Alignment = taCenter
      Caption = 'Redespacho'
      Transparent = True
    end
    object cbxcdtpfrete: TcxDBLookupComboBox
      Left = 42
      Top = 13
      DataBinding.DataField = 'CDTPFRETE'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDTPFRETE'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPFRETE'
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
      Width = 185
    end
    object edtcdtransportadora: TcxDBButtonEdit
      Left = 436
      Top = 13
      DataBinding.DataField = 'CDTRANSPORTADORA'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdtransportadoraPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdtransportadoraKeyDown
      Width = 110
    end
    object edtvlfrete: TcxDBCalcEdit
      Left = 256
      Top = 13
      DataBinding.DataField = 'VLFRETE'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 132
    end
    object edtnmredespacho: TcxDBTextEdit
      Left = 774
      Top = 13
      DataBinding.DataField = 'NMREDESPACHO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 161
    end
  end
  object gbxoutras: TcxGroupBox
    Left = 0
    Top = 226
    Align = alTop
    Caption = 'Outras informa'#231#245'es'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Height = 39
    Width = 1126
    object lblrepresentante: TLabel
      Left = 4
      Top = 19
      Width = 32
      Height = 13
      Caption = 'Repr.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblrepresentanteDblClick
    end
    object lblcomissao: TLabel
      Left = 227
      Top = 18
      Width = 45
      Height = 13
      Caption = 'Comiss'#227'o'
      Transparent = True
    end
    object lblcotacao: TLabel
      Left = 391
      Top = 18
      Width = 47
      Height = 13
      Alignment = taCenter
      Caption = 'Ord Comp'
      Transparent = True
    end
    object lblfuncioario: TLabel
      Left = 593
      Top = 18
      Width = 46
      Height = 13
      Caption = 'Vendedor'
      Transparent = True
    end
    object lblcdfaturista: TLabel
      Left = 792
      Top = 18
      Width = 40
      Height = 13
      Caption = 'Faturista'
      Transparent = True
    end
    object cbxCDFUNCIONARIO: TcxDBLookupComboBox
      Left = 641
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
      Width = 150
    end
    object cbxcdrepresentante: TcxDBLookupComboBox
      Left = 42
      Top = 14
      DataBinding.DataField = 'CDREPRESENTANTE'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDREPRESENTANTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMREPRESENTANTE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = cbxcdrepresentanteEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 185
    end
    object chkbocertificado: TcxDBCheckBox
      Left = 519
      Top = 14
      Caption = 'Certificado'
      DataBinding.DataField = 'bocertificado'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
    end
    object edtnucotacao: TcxDBTextEdit
      Left = 439
      Top = 14
      DataBinding.DataField = 'NUCOTACAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 83
    end
    object edtprcomissao: TcxDBCalcEdit
      Left = 273
      Top = 14
      DataBinding.DataField = 'PRCOMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 50
    end
    object txtvlcomissao: TcxDBLabel
      Left = 321
      Top = 16
      DataBinding.DataField = 'VLCOMISSAO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 68
    end
    object cbxcdfaturista: TcxDBLookupComboBox
      Left = 840
      Top = 14
      DataBinding.DataField = 'CDFATURISTA'
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
      TabOrder = 5
      Width = 150
    end
  end
  object gbxfornecedor: TcxGroupBox
    Left = 0
    Top = 265
    Align = alTop
    Caption = 'Fornecedor'
    TabOrder = 4
    Height = 41
    Width = 1126
    object lblcdfornecedor: TLabel
      Left = 4
      Top = 20
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object txtnmfornecedor: TDBText
      Left = 144
      Top = 21
      Width = 240
      Height = 13
      DataField = 'NMFORNECEDOR'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnDblClick = txtnmfornecedorDblClick
    end
    object edtcdfornecedor: TcxDBButtonEdit
      Left = 42
      Top = 16
      DataBinding.DataField = 'CDFORNECEDOR'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdfornecedorPropertiesButtonClick
      Properties.OnEditValueChanged = edtcdfornecedorPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdfornecedorKeyDown
      OnKeyPress = eventokeypress
      Width = 101
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 924
    Top = 120
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
    object actImprimirModoTexto: TAction
      Caption = 'Imprimir Modo Texto'
      Enabled = False
      Hint = 'Imprimir Modo Texto'
      OnExecute = actImprimirModoTextoExecute
    end
    object actimprimirorcamento: TAction
      Caption = 'Or'#231'amento'
      OnExecute = actimprimirorcamentoExecute
    end
    object actimprimirpedidovenda: TAction
      Caption = '309 - Venda'
      OnExecute = actimprimirpedidovendaExecute
    end
    object actimprimirVendasimples: TAction
      Caption = '312 - Venda Simples'
      OnExecute = actimprimirVendasimplesExecute
    end
    object actimprimirmodotexto2: TAction
      Caption = '550 - Modo Texto 2'
      Enabled = False
      OnExecute = actimprimirmodotexto2Execute
    end
    object actimprimirordemproducao: TAction
      Caption = '503 - Ordem Produ'#231#227'o'
      ImageIndex = 3
      Visible = False
      OnExecute = actimprimirordemproducaoExecute
    end
    object actAbrirCliente: TAction
      Hint = 'cliente'
      ImageIndex = 35
      OnExecute = actAbrirClienteExecute
    end
    object actAbrirCondpagto: TAction
      Hint = 'condpagto'
      ImageIndex = 47
      OnExecute = actAbrirCondpagtoExecute
    end
    object actAbrirRepresentante: TAction
      Hint = 'Representante'
      ImageIndex = 42
      OnExecute = actAbrirRepresentanteExecute
    end
    object actAbrirSaida: TAction
      Hint = 'saida'
      ImageIndex = 19
      OnExecute = actAbrirSaidaExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      ImageIndex = 24
      OnExecute = actabrirprodutoExecute
    end
    object actAbrirTransporte: TAction
      Hint = 'Transporte'
      ImageIndex = 113
      OnExecute = actAbrirTransporteExecute
    end
    object actconsultasaida: TAction
      AutoCheck = True
      Caption = 'Nota Fiscal'
      Hint = 'Consulta Sa'#237'da'
      ImageIndex = 19
      OnExecute = actconsultasaidaExecute
    end
    object actconsultaTransporte: TAction
      AutoCheck = True
      Caption = 'Transporte'
      Hint = 'Consulta Transporte'
      ImageIndex = 113
      OnExecute = actconsultaTransporteExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actabrirfuncionario: TAction
      Hint = 'funcionario'
      OnExecute = actabrirfuncionarioExecute
    end
    object actabrirtransportadora: TAction
      Hint = 'transportadora'
      OnExecute = actabrirtransportadoraExecute
    end
    object actGerarSaida: TAction
      Caption = 'Gerar Nota'
      Enabled = False
      ImageIndex = 19
      ShortCut = 16455
      OnExecute = actGerarSaidaExecute
    end
    object actlocalizarentrega: TAction
      Caption = 'Localizar'
      Enabled = False
      ImageIndex = 90
      OnExecute = actlocalizarentregaExecute
    end
    object actlimparentrega: TAction
      Caption = 'Limpar'
      Enabled = False
      OnExecute = actlimparentregaExecute
    end
    object actemail: TAction
      Caption = 'email'
      Enabled = False
      ImageIndex = 146
      OnExecute = actemailExecute
    end
    object actemailorcamento: TAction
      Caption = 'Or'#231'amento'
      OnExecute = actemailorcamentoExecute
    end
    object actemailpedidovenda: TAction
      Caption = 'Venda'
      OnExecute = actemailpedidovendaExecute
    end
    object actemailvendasimples: TAction
      Caption = 'Venda Simples'
      OnExecute = actemailvendasimplesExecute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
    object actabrirordproducao: TAction
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
    end
    object actabrirorcamento: TAction
      Hint = 'orcamento'
      OnExecute = actabrirorcamentoExecute
    end
    object actabrirtppedido: TAction
      Hint = 'tppedido'
      OnExecute = actabrirtppedidoExecute
    end
    object actinserircontato: TAction
      Caption = 'Inserir'
      Enabled = False
      OnExecute = actinserircontatoExecute
    end
    object actordproducao: TAction
      Caption = 'Ordem Produ'#231#227'o'
      ImageIndex = 157
      OnExecute = actordproducaoExecute
    end
    object actordproducaogerar: TAction
      Caption = 'Gerar Ordem Produ'#231#227'o'
      ImageIndex = 157
      OnExecute = actordproducaogerarExecute
    end
    object actordproducaogerartodas: TAction
      Caption = 'Gerar todas as ordens de produ'#231#227'o'
      ImageIndex = 157
      OnExecute = actordproducaogerartodasExecute
    end
    object actabrirfornecedor: TAction
      Caption = 'actabrirfornecedor'
      Hint = 'fornecedor'
      OnExecute = actabrirfornecedorExecute
    end
    object actexibirordproducao: TAction
      AutoCheck = True
      Caption = 'Exibir Ordem Produ'#231#227'o'
      OnExecute = actexibirordproducaoExecute
    end
    object actexibirestrutura: TAction
      AutoCheck = True
      Caption = 'Exibir Estrutura'
      OnExecute = actexibirestruturaExecute
    end
    object actabrirprofissional: TAction
      Hint = 'profissional'
      OnExecute = actabrirprofissionalExecute
    end
    object actabrirpaciente: TAction
      Hint = 'paciente'
      OnExecute = actabrirpacienteExecute
    end
    object actabrirprofissionalcoordenador: TAction
      Hint = 'profissional'
      OnExecute = actabrirprofissionalcoordenadorExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object acthistorico: TAction
      Caption = 'Hist'#243'rico'
      OnExecute = acthistoricoExecute
    end
    object actdetail: TAction
      Caption = 'Grade'
      ShortCut = 119
      OnExecute = actdetailExecute
    end
    object actarquivo: TAction
      Caption = 'Arquivo'
      OnExecute = actarquivoExecute
    end
    object actgerarrim: TAction
      Caption = 'Gerar Requisi'#231#227'o Material'
      OnExecute = actgerarrimExecute
    end
    object actloteserie: TAction
      Caption = 'Lote S'#233'rie (F6)'
      ShortCut = 117
      OnExecute = actloteserieExecute
    end
    object acthitpedido: TAction
      Caption = 'Hist'#243'rico do Status do Embarque'
      OnExecute = acthitpedidoExecute
    end
  end
  object bmg1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
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
    Left = 896
    Top = 120
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
      Caption = 'pedido'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 392
      FloatTop = 299
      FloatClientWidth = 84
      FloatClientHeight = 516
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
          ItemName = 'btnsalvar'
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
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'btnemail'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
      RotateWhenVertical = False
      Row = 1
      ShowMark = False
      SizeGrip = False
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
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 301
      FloatTop = 158
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnsaida'
        end
        item
          Visible = True
          ItemName = 'btntransporte'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bmg1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'ordproducao'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 426
      FloatTop = 134
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object bmgitpedido: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'itpedido'
      CaptionButtons = <>
      DockControl = bdcitpedido
      DockedDockControl = bdcitpedido
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 432
      FloatTop = 5
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton4'
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
          ItemName = 'btnsalvar'
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
          ItemName = 'dxBarLargeButton2'
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
    object btnsalvar: TdxBarLargeButton
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
    object dxBarButton3: TdxBarButton
      Action = actImprimirModoTexto
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actGerarSaida
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actimprimirorcamento
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actimprimirpedidovenda
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actimprimirVendasimples
      Category = 0
    end
    object btnsaida: TdxBarButton
      Action = actconsultasaida
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
      PaintStyle = psCaptionGlyph
    end
    object btntransporte: TdxBarButton
      Action = actconsultaTransporte
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = actimprimirmodotexto2
      Category = 0
    end
    object dxBarSubItem2: TdxBarSubItem
      Action = actemail
      Category = 0
      ItemLinks = <>
    end
    object dxBarButton7: TdxBarButton
      Action = actemailorcamento
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actemailpedidovenda
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actemailvendasimples
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object btnemail: TdxBarLargeButton
      Action = actemail
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumemail
    end
    object dxBarButton1: TdxBarButton
      Action = actemailorcamento
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Action = actordproducao
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'btnexibirordproducao'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end>
    end
    object dxBarButton6: TdxBarButton
      Action = actordproducaogerar
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actordproducaogerartodas
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actimprimirordemproducao
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object btnexibirordproducao: TdxBarButton
      Action = actexibirordproducao
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton17: TdxBarButton
      Action = acthistorico
      Category = 0
    end
    object dxBarButton18: TdxBarButton
      Action = actdetail
      Category = 0
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton11: TdxBarButton
      Action = actarquivo
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = actgerarrim
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actloteserie
      Category = 0
    end
    object btnexibirestrutura: TdxBarButton
      Action = actexibirestrutura
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton13: TdxBarButton
      Action = acthitpedido
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = actimprimirordemproducao
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT P.*'#13#10',NMTRANSPORTADORA'#13#10',PA.NMPACIENTE'#13#10',CLIENTE.NMCLIENT' +
      'E'#13#10',PR.NMPROFISSIONAL'#13#10',CO.NMPROFISSIONAL NMPROFISSIONALCOORDENA' +
      'DOR'#13#10',F.NMFUNCIONARIO'#13#10',FO.NMFORNECEDOR'#13#10'FROM PEDIDO P '#13#10'LEFT JO' +
      'IN PACIENTE PA ON PA.CDEMPRESA=P.CDEMPRESA AND PA.CDPACIENTE=P.C' +
      'DPACIENTE '#13#10'LEFT JOIN TRANSPORTADORA T ON T.CDEMPRESA=P.CDEMPRES' +
      'A AND T.CDTRANSPORTADORA=P.CDTRANSPORTADORA'#13#10'LEFT JOIN PROFISSIO' +
      'NAL PR ON PR.CDEMPRESA=P.CDEMPRESA AND PR.CDPROFISSIONAL=P.CDPRO' +
      'FISSIONAL'#13#10'LEFT JOIN PROFISSIONAL CO ON CO.CDEMPRESA=P.CDEMPRESA' +
      ' AND CO.CDPROFISSIONAL=P.CDPROFISSIONALCOORDENADOR'#13#10'LEFT JOIN FO' +
      'RNECEDOR FO ON FO.CDEMPRESA=P.CDEMPRESA AND FO.CDFORNECEDOR=P.CD' +
      'FORNECEDOR'#13#10'LEFT JOIN CLIENTE ON CLIENTE.CDCLIENTE=P.CDCLIENTE A' +
      'ND CLIENTE.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOIN FUNCIONARIO F ON F.C' +
      'DEMPRESA=P.CDEMPRESA AND F.CDFUNCIONARIO=P.CDFUNCIONARIO'#13#10'WHERE ' +
      'P.CDEMPRESA=:CDEMPRESA AND P.CDPEDIDO=:CDPEDIDO'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDPEDIDO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 632
    Top = 456
    object sdsCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDSTPEDIDO: TIntegerField
      FieldName = 'CDSTPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPPEDIDO: TIntegerField
      FieldName = 'CDTPPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
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
    object sdsNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTFECHAMENTO: TDateField
      FieldName = 'DTFECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLTOTALCIPI: TFMTBCDField
      FieldName = 'VLTOTALCIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDSOBSINTERNA: TBlobField
      FieldName = 'DSOBSINTERNA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNUCOTACAO: TStringField
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOCERTIFICADO: TStringField
      FieldName = 'BOCERTIFICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsQTPEDIDO: TFloatField
      FieldName = 'QTPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTATENDIDO: TFloatField
      FieldName = 'QTATENDIDO'
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
    object sdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCLIENTEENTREGA: TIntegerField
      FieldName = 'CDCLIENTEENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSENDERECO: TStringField
      FieldName = 'DSENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSNUMERO: TStringField
      FieldName = 'DSNUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsDSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUCXPOSTAL: TStringField
      FieldName = 'NUCXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsNUFONE: TStringField
      FieldName = 'NUFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsNUFAX: TStringField
      FieldName = 'NUFAX'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsNUCEP: TStringField
      FieldName = 'NUCEP'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsDSREFERENCIA: TStringField
      FieldName = 'DSREFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      Precision = 15
      Size = 2
    end
    object sdsNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMREDESPACHO: TStringField
      FieldName = 'NMREDESPACHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsCDITCONTCLIENTE: TIntegerField
      FieldName = 'CDITCONTCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDPACIENTE: TIntegerField
      FieldName = 'CDPACIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMPACIENTE: TStringField
      FieldName = 'NMPACIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDPROFISSIONAL: TIntegerField
      FieldName = 'CDPROFISSIONAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMPROFISSIONAL: TStringField
      FieldName = 'NMPROFISSIONAL'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDPROFISSIONALCOORDENADOR: TIntegerField
      FieldName = 'CDPROFISSIONALCOORDENADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMPROFISSIONALCOORDENADOR: TStringField
      FieldName = 'NMPROFISSIONALCOORDENADOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsBOAPTO: TStringField
      FieldName = 'BOAPTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDTPCREDITO: TIntegerField
      FieldName = 'CDTPCREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCOMERCIAL: TIntegerField
      FieldName = 'CDTPCOMERCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSESTRUTURA: TStringField
      FieldName = 'DSESTRUTURA'
      ProviderFlags = [pfInUpdate]
      Size = 2000
    end
    object sdsCDFATURISTA: TIntegerField
      FieldName = 'CDFATURISTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspUpdateError
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 660
    Top = 456
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 688
    Top = 456
    object cdsCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDSTPEDIDO: TIntegerField
      FieldName = 'CDSTPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCONDPAGTOValidate
    end
    object cdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDREPRESENTANTEValidate
    end
    object cdsCDTPPEDIDO: TIntegerField
      FieldName = 'CDTPPEDIDO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPPEDIDOValidate
    end
    object cdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPCOBRANCAValidate
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
    object cdsNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTFECHAMENTO: TDateField
      FieldName = 'DTFECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsDTPRVENTREGAChange
    end
    object cdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLTOTALCIPI: TFMTBCDField
      FieldName = 'VLTOTALCIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLDESCONTOValidate
      Precision = 15
      Size = 2
    end
    object cdsPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsPRDESCONTOValidate
    end
    object cdsPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDSOBSINTERNA: TBlobField
      FieldName = 'DSOBSINTERNA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUCOTACAO: TStringField
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNUCOTACAOChange
    end
    object cdsBOCERTIFICADO: TStringField
      FieldName = 'BOCERTIFICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLFRETEValidate
      Precision = 15
      Size = 2
    end
    object cdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsQTPEDIDO: TFloatField
      FieldName = 'QTPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTATENDIDO: TFloatField
      FieldName = 'QTATENDIDO'
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
    object cdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCLIENTEENTREGA: TIntegerField
      FieldName = 'CDCLIENTEENTREGA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCLIENTEENTREGAValidate
    end
    object cdsDSENDERECO: TStringField
      FieldName = 'DSENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDSNUMERO: TStringField
      FieldName = 'DSNUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsDSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUCXPOSTAL: TStringField
      FieldName = 'NUCXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsNUFONE: TStringField
      FieldName = 'NUFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNUFAX: TStringField
      FieldName = 'NUFAX'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNUCEP: TStringField
      FieldName = 'NUCEP'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsDSREFERENCIA: TStringField
      FieldName = 'DSREFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      Precision = 15
      Size = 2
    end
    object cdsNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMREDESPACHO: TStringField
      FieldName = 'NMREDESPACHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsCDITCONTCLIENTE: TIntegerField
      FieldName = 'CDITCONTCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdssdspedidoduplicata: TDataSetField
      FieldName = 'sdspedidoduplicata'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = []
    end
    object cdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDPACIENTE: TIntegerField
      FieldName = 'CDPACIENTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDPACIENTEValidate
    end
    object cdsNMPACIENTE: TStringField
      FieldName = 'NMPACIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDPROFISSIONAL: TIntegerField
      FieldName = 'CDPROFISSIONAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDPROFISSIONALValidate
    end
    object cdsNMPROFISSIONAL: TStringField
      FieldName = 'NMPROFISSIONAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDPROFISSIONALCOORDENADOR: TIntegerField
      FieldName = 'CDPROFISSIONALCOORDENADOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDPROFISSIONALCOORDENADORValidate
    end
    object cdsNMPROFISSIONALCOORDENADOR: TStringField
      FieldName = 'NMPROFISSIONALCOORDENADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsBOAPTO: TStringField
      FieldName = 'BOAPTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDTPCREDITO: TIntegerField
      FieldName = 'CDTPCREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCOMERCIAL: TIntegerField
      FieldName = 'CDTPCOMERCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSESTRUTURA: TStringField
      FieldName = 'DSESTRUTURA'
      ProviderFlags = [pfInUpdate]
      Size = 2000
    end
    object cdsCDFATURISTA: TIntegerField
      FieldName = 'CDFATURISTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPFRETEValidate
      Size = 1
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDCLIENTEValidate
    end
    object cdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTRANSPORTADORAValidate
    end
    object cdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFORNECEDORValidate
    end
    object cdsCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 716
    Top = 456
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 744
    Top = 456
  end
  object dts2: TDataSource
    DataSet = sdsdetail
    Left = 744
    Top = 487
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 716
    Top = 484
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    AfterPost = cdsdetailAfterPost
    AfterDelete = cdsdetailAfterDelete
    AfterScroll = cdsdetailAfterScroll
    OnNewRecord = cdsdetailNewRecord
    Left = 688
    Top = 484
    object cdsdetailCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDTPGRADEVALOR: TIntegerField
      FieldName = 'CDTPGRADEVALOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDTPGRADEVALORValidate
    end
    object cdsdetailCDSTITPEDIDO: TIntegerField
      FieldName = 'CDSTITPEDIDO'
      ProviderFlags = [pfInUpdate]
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
    end
    object cdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailQTATENDIDA: TFloatField
      FieldName = 'QTATENDIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailCDDIGITADOValidate
      Size = 30
    end
    object cdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailALICMSValidate
      Precision = 15
      Size = 2
    end
    object cdsdetailVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailALIPIValidate
    end
    object cdsdetailVLTOTALCIPI: TFMTBCDField
      FieldName = 'VLTOTALCIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTLARGURA1: TFloatField
      FieldName = 'QTLARGURA1'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTLARGURA1Validate
    end
    object cdsdetailQTLARGURA2: TFloatField
      FieldName = 'QTLARGURA2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTLARGURA2Validate
    end
    object cdsdetailQTALTURA1: TFloatField
      FieldName = 'QTALTURA1'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTALTURA1Validate
    end
    object cdsdetailQTALTURA2: TFloatField
      FieldName = 'QTALTURA2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTALTURA2Validate
    end
    object cdsdetailQTCOMPRIMENTO1: TFloatField
      FieldName = 'QTCOMPRIMENTO1'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTCOMPRIMENTO1Validate
    end
    object cdsdetailQTCOMPRIMENTO2: TFloatField
      FieldName = 'QTCOMPRIMENTO2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTCOMPRIMENTO2Validate
    end
    object cdsdetailQTDIAMETROEXTERNO: TFloatField
      FieldName = 'QTDIAMETROEXTERNO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTDIAMETROEXTERNOValidate
    end
    object cdsdetailQTDIAMETROEXTERNO2: TFloatField
      FieldName = 'QTDIAMETROEXTERNO2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTDIAMETROEXTERNO2Validate
    end
    object cdsdetailQTDIAMETROFURO: TFloatField
      FieldName = 'QTDIAMETROFURO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTDIAMETROFUROValidate
    end
    object cdsdetailQTCOMPRIMENTO3: TFloatField
      FieldName = 'QTCOMPRIMENTO3'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTCOMPRIMENTO3Validate
    end
    object cdsdetailQTDIAMETROCORPO: TFloatField
      FieldName = 'QTDIAMETROCORPO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTDIAMETROCORPOValidate
    end
    object cdsdetailDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsdetailQTPESO: TFloatField
      FieldName = 'QTPESO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLQUILO: TFMTBCDField
      FieldName = 'VLQUILO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLQUILOValidate
      Precision = 15
      Size = 2
    end
    object cdsdetailDSDESENHO: TStringField
      FieldName = 'DSDESENHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsdetailVLMAQUINA: TFMTBCDField
      FieldName = 'VLMAQUINA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLMAQUINAValidate
      Precision = 15
      Size = 2
    end
    object cdsdetailVLPECA: TFMTBCDField
      FieldName = 'VLPECA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailALMVA: TFloatField
      FieldName = 'ALMVA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLDESCONTOValidate
      Precision = 15
      Size = 2
    end
    object cdsdetailALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailALICMSValidate
    end
    object cdsdetailALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUCOTACAO: TStringField
      DisplayWidth = 15
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
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
    object cdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsdetailNMTPGRADEVALOR: TStringField
      FieldName = 'NMTPGRADEVALOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTPECAValidate
    end
    object cdsdetailNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailDSOBSERVACAO: TMemoField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsdetailCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSDESENHOREVISAO: TStringField
      FieldName = 'DSDESENHOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSDESENHOPOSICAO: TStringField
      FieldName = 'DSDESENHOPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDTPICMS: TIntegerField
      FieldName = 'CDTPICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDTPIPI: TIntegerField
      FieldName = 'CDTPIPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailPRLUCRO: TFloatField
      FieldName = 'PRLUCRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailDSPOSICAODESENHO: TStringField
      FieldName = 'DSPOSICAODESENHO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUREVISAODESENHO: TStringField
      FieldName = 'NUREVISAODESENHO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUDIASENTREGA: TIntegerField
      FieldName = 'NUDIASENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailALCSLL: TFloatField
      FieldName = 'ALCSLL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLCSLL: TFMTBCDField
      FieldName = 'VLCSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailALIRPJ: TFloatField
      FieldName = 'ALIRPJ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLIRPJ: TFMTBCDField
      FieldName = 'VLIRPJ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLPRODUCAO: TFMTBCDField
      FieldName = 'VLPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLMATERIAL: TFMTBCDField
      FieldName = 'VLMATERIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTHORA: TFloatField
      FieldName = 'QTHORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLPRODUCAOP: TFMTBCDField
      FieldName = 'VLPRODUCAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLMATERIALP: TFMTBCDField
      FieldName = 'VLMATERIALP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLCUSTOP: TFMTBCDField
      FieldName = 'VLCUSTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLPREPARACAOP: TFMTBCDField
      FieldName = 'VLPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLOPERACAOP: TFMTBCDField
      FieldName = 'VLOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailQTPREPARACAOP: TFloatField
      FieldName = 'QTPREPARACAOP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTOPERACAOP: TFloatField
      FieldName = 'QTOPERACAOP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTHORAP: TFloatField
      FieldName = 'QTHORAP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLPISP: TFMTBCDField
      FieldName = 'VLPISP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLCOFINSP: TFMTBCDField
      FieldName = 'VLCOFINSP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLCSLLP: TFMTBCDField
      FieldName = 'VLCSLLP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLIRPJP: TFMTBCDField
      FieldName = 'VLIRPJP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLICMSP: TFMTBCDField
      FieldName = 'VLICMSP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLIPIP: TFMTBCDField
      FieldName = 'VLIPIP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailNUPRAZOENTREGA: TIntegerField
      FieldName = 'NUPRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDTAPROVACAO: TDateField
      FieldName = 'DTAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLLUCROP: TFMTBCDField
      FieldName = 'VLLUCROP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailALISS: TFloatField
      FieldName = 'ALISS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailALISSValidate
    end
    object cdsdetailVLISSP: TFMTBCDField
      FieldName = 'VLISSP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLIMPOSTOP: TFMTBCDField
      FieldName = 'VLIMPOSTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLVENDALIQUIDAP: TFMTBCDField
      FieldName = 'VLVENDALIQUIDAP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLVENDALIQUIDA: TFMTBCDField
      FieldName = 'VLVENDALIQUIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLLUCROBRUTOP: TFMTBCDField
      FieldName = 'VLLUCROBRUTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLLUCROBRUTO: TFMTBCDField
      FieldName = 'VLLUCROBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESA: TFMTBCDField
      FieldName = 'VLDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESAP: TFMTBCDField
      FieldName = 'VLDESPESAP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESAADMINISTRATIVA: TFMTBCDField
      FieldName = 'VLDESPESAADMINISTRATIVA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESAADMINISTRATIVAP: TFMTBCDField
      FieldName = 'VLDESPESAADMINISTRATIVAP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESAFRETEP: TFMTBCDField
      FieldName = 'VLDESPESAFRETEP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESAFRETE: TFMTBCDField
      FieldName = 'VLDESPESAFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESACOMERCIALP: TFMTBCDField
      FieldName = 'VLDESPESACOMERCIALP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESACOMERCIAL: TFMTBCDField
      FieldName = 'VLDESPESACOMERCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESAEMBALAGEMP: TFMTBCDField
      FieldName = 'VLDESPESAEMBALAGEMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESAEMBALAGEM: TFMTBCDField
      FieldName = 'VLDESPESAEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESASEGUROP: TFMTBCDField
      FieldName = 'VLDESPESASEGUROP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESPESASEGURO: TFMTBCDField
      FieldName = 'VLDESPESASEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLLUCROIRCSP: TFMTBCDField
      FieldName = 'VLLUCROIRCSP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLLUCROIRCS: TFMTBCDField
      FieldName = 'VLLUCROIRCS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailPRDESPESAADMINISTRATIVA: TFloatField
      FieldName = 'PRDESPESAADMINISTRATIVA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailPRDESPESAFRETE: TFloatField
      FieldName = 'PRDESPESAFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailPRDESPESACOMERCIAL: TFloatField
      FieldName = 'PRDESPESACOMERCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailPRDESPESAEMBALAGEM: TFloatField
      FieldName = 'PRDESPESAEMBALAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailPRDESPESASEGURO: TFloatField
      FieldName = 'PRDESPESASEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLIRCSLLP: TFMTBCDField
      FieldName = 'VLIRCSLLP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLIRCSLL: TFMTBCDField
      FieldName = 'VLIRCSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailALCPP: TFloatField
      FieldName = 'ALCPP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLCPPP: TFMTBCDField
      FieldName = 'VLCPPP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLCPP: TFMTBCDField
      FieldName = 'VLCPP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailALSIMPLES: TFloatField
      FieldName = 'ALSIMPLES'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLSIMPLESP: TFMTBCDField
      FieldName = 'VLSIMPLESP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLSIMPLES: TFMTBCDField
      FieldName = 'VLSIMPLES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLSIMPLESSP: TFMTBCDField
      FieldName = 'VLSIMPLESSP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLRECURSOP: TFMTBCDField
      FieldName = 'VLRECURSOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLRECURSO: TFMTBCDField
      FieldName = 'VLRECURSO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailBOIPIBCICMS: TStringField
      FieldName = 'BOIPIBCICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailALICMSValidate
      FixedChar = True
      Size = 1
    end
    object cdsdetailCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = []
      OnValidate = cdsdetailCDORCAMENTOValidate
    end
    object cdsdetailVLUNITARIO: TFloatField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailVLUNITARIOValidate
    end
    object cdsdetailNUITPEDIDO: TIntegerField
      FieldName = 'NUITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailPRDESCONTOValidate
    end
    object cdsdetailsdsordproducao: TDataSetField
      FieldName = 'sdsordproducao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTITEM: TFMTBCDField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailQTITEMValidate
      Precision = 15
    end
    object cdsdetailQTCONFERENCIA: TFloatField
      FieldName = 'QTCONFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSTAG2: TStringField
      FieldName = 'DSTAG2'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailDSPRODUTO: TStringField
      FieldName = 'DSPRODUTO'
      ProviderFlags = []
      Size = 255
    end
    object cdsdetailsdsitpedidolote: TDataSetField
      FieldName = 'sdsitpedidolote'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailBOLOTEIMEI: TStringField
      FieldName = 'BOLOTEIMEI'
      ProviderFlags = []
      Size = 1
    end
    object cdsdetailCDPRODUTOEMBALAGEM: TIntegerField
      FieldName = 'CDPRODUTOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNMPRODUTOEMBALAGEM: TStringField
      FieldName = 'NMPRODUTOEMBALAGEM'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailCDDIGITADOEMBALAGEM: TStringField
      FieldName = 'CDDIGITADOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDDIGITADOEMBALAGEMValidate
      Size = 30
    end
    object cdsdetailCDPROFISSIONAL: TIntegerField
      FieldName = 'CDPROFISSIONAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDTREVISAO: TDateField
      FieldName = 'DTREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDSTEMBARQUE: TIntegerField
      FieldName = 'CDSTEMBARQUE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDSTEMBARQUEValidate
    end
    object cdsdetailNUREVISAO: TIntegerField
      FieldName = 'NUREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDTPREVISAOCOMERCIAL: TIntegerField
      FieldName = 'CDTPREVISAOCOMERCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDTEMBARQUE: TDateField
      FieldName = 'DTEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailHREMBARQUE: TTimeField
      FieldName = 'HREMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDTDESEMBARQUE: TDateField
      FieldName = 'DTDESEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDTPVOLUME: TIntegerField
      FieldName = 'CDTPVOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTVOLUME: TIntegerField
      FieldName = 'QTVOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTPECAATENDIDA: TFloatField
      FieldName = 'QTPECAATENDIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDTPITPEDIDO: TIntegerField
      FieldName = 'CDTPITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSOBSERVACAOINTERNA: TMemoField
      FieldName = 'DSOBSERVACAOINTERNA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsdetailsdsitpedidoestrutura: TDataSetField
      FieldName = 'sdsitpedidoestrutura'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSESTRUTURA: TMemoField
      FieldName = 'DSESTRUTURA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsdetailNUCORDTEMBARQUE: TIntegerField
      FieldName = 'NUCORDTEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUCORSTEMBARQUE: TIntegerField
      FieldName = 'NUCORSTEMBARQUE'
      ProviderFlags = []
    end
    object cdsdetailDSJUSTIFICATIVA: TMemoField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsdetailNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailNUITEM: TStringField
      FieldName = 'NUITEM'
      Size = 10
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT STEMBARQUE.NUCOR NUCORSTEMBARQUE,I.*'#13#10',O2.CDORCAMENTO'#13#10',P' +
      '.NMPRODUTO'#13#10',P.DSPRODUTO'#13#10',P.DSTAG2'#13#10',TG.NMTPGRADEVALOR'#13#10',U.NMUN' +
      'IDADE'#13#10',T.BOLOTEIMEI'#13#10',FORNECEDOR.NMFORNECEDOR'#13#10',E.NMPRODUTO NMP' +
      'RODUTOEMBALAGEM'#13#10'FROM ITPEDIDO I '#13#10'LEFT JOIN PRODUTO P ON P.CDPR' +
      'ODUTO=I.CDPRODUTO AND P.CDEMPRESA=I.CDEMPRESA'#13#10'LEFT JOIN PRODUTO' +
      ' E ON E.CDPRODUTO=I.CDPRODUTOEMBALAGEM AND E.CDEMPRESA=I.CDEMPRE' +
      'SA'#13#10'LEFT JOIN FORNECEDOR ON FORNECEDOR.CDEMPRESA=I.CDEMPRESA AND' +
      ' FORNECEDOR.CDFORNECEDOR=I.CDFORNECEDOR'#13#10'LEFT JOIN TPPRODUTO T O' +
      'N T.CDEMPRESA=P.CDEMPRESA AND T.CDTPPRODUTO=P.CDTPPRODUTO'#13#10'LEFT ' +
      'JOIN UNIDADE U ON U.CDUNIDADE=P.CDUNIDADE AND U.CDEMPRESA=P.CDEM' +
      'PRESA'#13#10'LEFT JOIN ITORCAMENTO O2 ON O2.CDITORCAMENTO=I.CDITORCAME' +
      'NTO AND O2.CDEMPRESA=I.CDEMPRESA'#13#10'LEFT JOIN TPGRADEVALOR TG ON T' +
      'G.CDTPGRADEVALOR=I.CDTPGRADEVALOR AND TG.CDEMPRESA=I.CDEMPRESA'#13#10 +
      ' LEFT JOIN STEMBARQUE ON STEMBARQUE.CDEMPRESA=I.CDEMPRESA AND ST' +
      'EMBARQUE.CDSTEMBARQUE=I.CDSTEMBARQUE WHERE I.CDEMPRESA=:CDEMPRES' +
      'A AND I.CDPEDIDO=:CDPEDIDO'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDPEDIDO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 632
    Top = 484
    object sdsdetailCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDTPGRADEVALOR: TIntegerField
      FieldName = 'CDTPGRADEVALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDSTITPEDIDO: TIntegerField
      FieldName = 'CDSTITPEDIDO'
      ProviderFlags = [pfInUpdate]
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
    end
    object sdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailQTATENDIDA: TFloatField
      FieldName = 'QTATENDIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLTOTALCIPI: TFMTBCDField
      FieldName = 'VLTOTALCIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTLARGURA1: TFloatField
      FieldName = 'QTLARGURA1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTLARGURA2: TFloatField
      FieldName = 'QTLARGURA2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTALTURA1: TFloatField
      FieldName = 'QTALTURA1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTALTURA2: TFloatField
      FieldName = 'QTALTURA2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTCOMPRIMENTO1: TFloatField
      FieldName = 'QTCOMPRIMENTO1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTCOMPRIMENTO2: TFloatField
      FieldName = 'QTCOMPRIMENTO2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTDIAMETROEXTERNO: TFloatField
      FieldName = 'QTDIAMETROEXTERNO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTDIAMETROEXTERNO2: TFloatField
      FieldName = 'QTDIAMETROEXTERNO2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTDIAMETROFURO: TFloatField
      FieldName = 'QTDIAMETROFURO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTCOMPRIMENTO3: TFloatField
      FieldName = 'QTCOMPRIMENTO3'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTDIAMETROCORPO: TFloatField
      FieldName = 'QTDIAMETROCORPO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsdetailQTPESO: TFloatField
      FieldName = 'QTPESO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLQUILO: TFMTBCDField
      FieldName = 'VLQUILO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailDSDESENHO: TStringField
      FieldName = 'DSDESENHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsdetailVLMAQUINA: TFMTBCDField
      FieldName = 'VLMAQUINA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLPECA: TFMTBCDField
      FieldName = 'VLPECA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALMVA: TFloatField
      FieldName = 'ALMVA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUCOTACAO: TStringField
      DisplayWidth = 15
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
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
    object sdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsdetailNMTPGRADEVALOR: TStringField
      FieldName = 'NMTPGRADEVALOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailDSOBSERVACAO: TMemoField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sdsdetailCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSDESENHOPOSICAO: TStringField
      FieldName = 'DSDESENHOPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSDESENHOREVISAO: TStringField
      FieldName = 'DSDESENHOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDTPICMS: TIntegerField
      FieldName = 'CDTPICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDTPIPI: TIntegerField
      FieldName = 'CDTPIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailPRLUCRO: TFloatField
      FieldName = 'PRLUCRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailDSPOSICAODESENHO: TStringField
      FieldName = 'DSPOSICAODESENHO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUREVISAODESENHO: TStringField
      FieldName = 'NUREVISAODESENHO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUDIASENTREGA: TIntegerField
      FieldName = 'NUDIASENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALCSLL: TFloatField
      FieldName = 'ALCSLL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLCSLL: TFMTBCDField
      FieldName = 'VLCSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALIRPJ: TFloatField
      FieldName = 'ALIRPJ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLIRPJ: TFMTBCDField
      FieldName = 'VLIRPJ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLPRODUCAO: TFMTBCDField
      FieldName = 'VLPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLMATERIAL: TFMTBCDField
      FieldName = 'VLMATERIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTHORA: TFloatField
      FieldName = 'QTHORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLPRODUCAOP: TFMTBCDField
      FieldName = 'VLPRODUCAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLMATERIALP: TFMTBCDField
      FieldName = 'VLMATERIALP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLCUSTOP: TFMTBCDField
      FieldName = 'VLCUSTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLPREPARACAOP: TFMTBCDField
      FieldName = 'VLPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLOPERACAOP: TFMTBCDField
      FieldName = 'VLOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailQTPREPARACAOP: TFloatField
      FieldName = 'QTPREPARACAOP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTOPERACAOP: TFloatField
      FieldName = 'QTOPERACAOP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTHORAP: TFloatField
      FieldName = 'QTHORAP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLPISP: TFMTBCDField
      FieldName = 'VLPISP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLCOFINSP: TFMTBCDField
      FieldName = 'VLCOFINSP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLCSLLP: TFMTBCDField
      FieldName = 'VLCSLLP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLIRPJP: TFMTBCDField
      FieldName = 'VLIRPJP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLICMSP: TFMTBCDField
      FieldName = 'VLICMSP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLIPIP: TFMTBCDField
      FieldName = 'VLIPIP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailNUPRAZOENTREGA: TIntegerField
      FieldName = 'NUPRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDTAPROVACAO: TDateField
      FieldName = 'DTAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLLUCROP: TFMTBCDField
      FieldName = 'VLLUCROP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALISS: TFloatField
      FieldName = 'ALISS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLISSP: TFMTBCDField
      FieldName = 'VLISSP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLIMPOSTOP: TFMTBCDField
      FieldName = 'VLIMPOSTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLVENDALIQUIDAP: TFMTBCDField
      FieldName = 'VLVENDALIQUIDAP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLVENDALIQUIDA: TFMTBCDField
      FieldName = 'VLVENDALIQUIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLLUCROBRUTOP: TFMTBCDField
      FieldName = 'VLLUCROBRUTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLLUCROBRUTO: TFMTBCDField
      FieldName = 'VLLUCROBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESA: TFMTBCDField
      FieldName = 'VLDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESAP: TFMTBCDField
      FieldName = 'VLDESPESAP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESAADMINISTRATIVA: TFMTBCDField
      FieldName = 'VLDESPESAADMINISTRATIVA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESAADMINISTRATIVAP: TFMTBCDField
      FieldName = 'VLDESPESAADMINISTRATIVAP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESAFRETEP: TFMTBCDField
      FieldName = 'VLDESPESAFRETEP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESAFRETE: TFMTBCDField
      FieldName = 'VLDESPESAFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESACOMERCIALP: TFMTBCDField
      FieldName = 'VLDESPESACOMERCIALP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESACOMERCIAL: TFMTBCDField
      FieldName = 'VLDESPESACOMERCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESAEMBALAGEMP: TFMTBCDField
      FieldName = 'VLDESPESAEMBALAGEMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESAEMBALAGEM: TFMTBCDField
      FieldName = 'VLDESPESAEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESASEGUROP: TFMTBCDField
      FieldName = 'VLDESPESASEGUROP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESPESASEGURO: TFMTBCDField
      FieldName = 'VLDESPESASEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLLUCROIRCSP: TFMTBCDField
      FieldName = 'VLLUCROIRCSP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLLUCROIRCS: TFMTBCDField
      FieldName = 'VLLUCROIRCS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailPRDESPESAADMINISTRATIVA: TFloatField
      FieldName = 'PRDESPESAADMINISTRATIVA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailPRDESPESAFRETE: TFloatField
      FieldName = 'PRDESPESAFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailPRDESPESACOMERCIAL: TFloatField
      FieldName = 'PRDESPESACOMERCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailPRDESPESAEMBALAGEM: TFloatField
      FieldName = 'PRDESPESAEMBALAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailPRDESPESASEGURO: TFloatField
      FieldName = 'PRDESPESASEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLIRCSLLP: TFMTBCDField
      FieldName = 'VLIRCSLLP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLIRCSLL: TFMTBCDField
      FieldName = 'VLIRCSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALCPP: TFloatField
      FieldName = 'ALCPP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLCPPP: TFMTBCDField
      FieldName = 'VLCPPP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLCPP: TFMTBCDField
      FieldName = 'VLCPP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALSIMPLES: TFloatField
      FieldName = 'ALSIMPLES'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLSIMPLESP: TFMTBCDField
      FieldName = 'VLSIMPLESP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLSIMPLES: TFMTBCDField
      FieldName = 'VLSIMPLES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLSIMPLESSP: TFMTBCDField
      FieldName = 'VLSIMPLESSP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLRECURSOP: TFMTBCDField
      FieldName = 'VLRECURSOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLRECURSO: TFMTBCDField
      FieldName = 'VLRECURSO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailBOIPIBCICMS: TStringField
      FieldName = 'BOIPIBCICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = []
    end
    object sdsdetailVLUNITARIO: TFloatField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailNUITPEDIDO: TIntegerField
      FieldName = 'NUITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTITEM: TFMTBCDField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
    end
    object sdsdetailQTCONFERENCIA: TFloatField
      FieldName = 'QTCONFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSTAG2: TStringField
      FieldName = 'DSTAG2'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailDSPRODUTO: TStringField
      FieldName = 'DSPRODUTO'
      ProviderFlags = []
      Size = 255
    end
    object sdsdetailBOLOTEIMEI: TStringField
      FieldName = 'BOLOTEIMEI'
      ProviderFlags = []
      Size = 1
    end
    object sdsdetailCDPRODUTOEMBALAGEM: TIntegerField
      FieldName = 'CDPRODUTOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNMPRODUTOEMBALAGEM: TStringField
      FieldName = 'NMPRODUTOEMBALAGEM'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailCDDIGITADOEMBALAGEM: TStringField
      FieldName = 'CDDIGITADOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailCDPROFISSIONAL: TIntegerField
      FieldName = 'CDPROFISSIONAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDTREVISAO: TDateField
      FieldName = 'DTREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDSTEMBARQUE: TIntegerField
      FieldName = 'CDSTEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUREVISAO: TIntegerField
      FieldName = 'NUREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDTPREVISAOCOMERCIAL: TIntegerField
      FieldName = 'CDTPREVISAOCOMERCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDTEMBARQUE: TDateField
      FieldName = 'DTEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailHREMBARQUE: TTimeField
      FieldName = 'HREMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDTDESEMBARQUE: TDateField
      FieldName = 'DTDESEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDTPVOLUME: TIntegerField
      FieldName = 'CDTPVOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTVOLUME: TIntegerField
      FieldName = 'QTVOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTPECAATENDIDA: TFloatField
      FieldName = 'QTPECAATENDIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDTPITPEDIDO: TIntegerField
      FieldName = 'CDTPITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSOBSERVACAOINTERNA: TMemoField
      FieldName = 'DSOBSERVACAOINTERNA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sdsdetailDSESTRUTURA: TMemoField
      FieldName = 'DSESTRUTURA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sdsdetailNUCORDTEMBARQUE: TIntegerField
      FieldName = 'NUCORDTEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUCORSTEMBARQUE: TIntegerField
      FieldName = 'NUCORSTEMBARQUE'
      ProviderFlags = []
    end
    object sdsdetailDSJUSTIFICATIVA: TMemoField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsdetailNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailNUITEM: TStringField
      FieldName = 'NUITEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object sdsitconsulta: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 633
    Top = 596
  end
  object dspitconsulta: TDataSetProvider
    DataSet = sdsitconsulta
    Left = 661
    Top = 596
  end
  object cdsitconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitconsulta'
    Left = 689
    Top = 596
  end
  object dtsitconsulta: TDataSource
    DataSet = cdsitconsulta
    Left = 717
    Top = 596
  end
  object dtsconsulta: TDataSource
    DataSet = cdsconsulta
    Left = 717
    Top = 568
  end
  object cdsconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspconsulta'
    Left = 689
    Top = 568
  end
  object dspconsulta: TDataSetProvider
    DataSet = sdsconsulta
    Left = 661
    Top = 568
  end
  object sdsconsulta: TSQLDataSet
    CommandText = 'SELECT * FROM PEDIDO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 633
    Top = 568
  end
  object sdspedidoduplicata: TSQLDataSet
    CommandText = 
      'SELECT * FROM PEDIDODUPLICATA WHERE CDEMPRESA=:CDEMPRESA AND CDP' +
      'EDIDO=:CDPEDIDO'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDPEDIDO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 632
    Top = 512
    object sdspedidoduplicataCDPEDIDODUPLICATA: TIntegerField
      FieldName = 'CDPEDIDODUPLICATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdspedidoduplicataCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidoduplicataVLPEDIDODUPLICATA: TFMTBCDField
      FieldName = 'VLPEDIDODUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdspedidoduplicataDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidoduplicataCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidoduplicataCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidoduplicataCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidoduplicataCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidoduplicataTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidoduplicataTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidoduplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidoduplicataVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdspedidoduplicataNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdspedidoduplicataDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdspedidoduplicataCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdspedidoduplicata: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'vlpedidoduplicata'
        Expression = 'sum(vlpedidoduplicata)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdssdspedidoduplicata
    Params = <>
    BeforePost = cdspedidoduplicataBeforePost
    OnNewRecord = cdspedidoduplicataNewRecord
    Left = 688
    Top = 512
    object cdspedidoduplicataCDPEDIDODUPLICATA: TIntegerField
      FieldName = 'CDPEDIDODUPLICATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdspedidoduplicataCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidoduplicataVLPEDIDODUPLICATA: TFMTBCDField
      FieldName = 'VLPEDIDODUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdspedidoduplicataDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidoduplicataCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidoduplicataCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidoduplicataCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidoduplicataCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidoduplicataTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidoduplicataTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidoduplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidoduplicataVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdspedidoduplicataNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdspedidoduplicataDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdspedidoduplicataCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtspedidoduplicata: TDataSource
    DataSet = cdspedidoduplicata
    Left = 716
    Top = 512
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end>
    UseOwnFont = False
    Left = 963
    Top = 121
  end
  object pumemail: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end>
    UseOwnFont = False
    Left = 1015
    Top = 121
  end
  object sdsitcontcliente: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT CDITCONTCLIENTE,NMITCONTCLIENTE FROM ITCONTCLIENTE WHERE ' +
      'CDEMPRESA=:CDEMPRESA AND CDCLIENTE=:CDCLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'CDCLIENTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 633
    Top = 397
  end
  object dspitcontcliente: TDataSetProvider
    DataSet = sdsitcontcliente
    Left = 660
    Top = 397
  end
  object cdsitcontcliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitcontcliente'
    Left = 688
    Top = 397
  end
  object dtsitcontcliente: TDataSource
    DataSet = cdsitcontcliente
    Left = 716
    Top = 397
  end
  object sdsordproducao: TSQLDataSet
    CommandText = 
      'SELECT * FROM ORDPRODUCAO '#13#10'WHERE CDEMPRESA=:CDEMPRESA AND CDITP' +
      'EDIDO=:CDITPEDIDO'
    DataSource = dts2
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDITPEDIDO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 632
    Top = 540
    object sdsordproducaoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsordproducaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDSTORDPRODUCAO: TIntegerField
      FieldName = 'CDSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDTPORDPRODUCAO: TIntegerField
      FieldName = 'CDTPORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsordproducaoQTHORAORCADA: TFloatField
      FieldName = 'QTHORAORCADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoQTHORAPRODUCAO: TFloatField
      FieldName = 'QTHORAPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLOPERACAOP: TFMTBCDField
      FieldName = 'VLOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLPREPARACAOP: TFMTBCDField
      FieldName = 'VLPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLRECURSO: TFMTBCDField
      FieldName = 'VLRECURSO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLRECURSOP: TFMTBCDField
      FieldName = 'VLRECURSOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTOPERACAOP: TFMTBCDField
      FieldName = 'QTOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTPREPARACAOP: TFMTBCDField
      FieldName = 'QTPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoQTHORA: TFloatField
      FieldName = 'QTHORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTHORAP: TFloatField
      FieldName = 'QTHORAP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoVLMATERIAL: TFMTBCDField
      FieldName = 'VLMATERIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLMATERIALP: TFMTBCDField
      FieldName = 'VLMATERIALP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLPRODUCAO: TFMTBCDField
      FieldName = 'VLPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLPRODUCAOP: TFMTBCDField
      FieldName = 'VLPRODUCAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLCUSTOP: TFMTBCDField
      FieldName = 'VLCUSTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoDSDESENHO: TStringField
      FieldName = 'DSDESENHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsordproducaoDSDESENHOPOSICAO: TStringField
      FieldName = 'DSDESENHOPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoDSDESENHOREVISAO: TStringField
      FieldName = 'DSDESENHOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoNUDIASCUSTO: TIntegerField
      FieldName = 'NUDIASCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoDTPRVINSTALACAO: TDateField
      FieldName = 'DTPRVINSTALACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsordproducaoCDTPMOTIVOREVISAO: TIntegerField
      FieldName = 'CDTPMOTIVOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDITREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDITREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDFUNCIONARIOSOLICITANTE: TIntegerField
      FieldName = 'CDFUNCIONARIOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDEQUIPAMENTO2: TIntegerField
      FieldName = 'CDEQUIPAMENTO2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTQUOCIENTE: TIntegerField
      FieldName = 'QTQUOCIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoNUMISTURA: TIntegerField
      FieldName = 'NUMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDPESAGEM: TStringField
      FieldName = 'CDPESAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsordproducaoQTPESOMISTURA: TFloatField
      FieldName = 'QTPESOMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoDTPREVISAOPRODUCAO: TDateField
      FieldName = 'DTPREVISAOPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoDTPRODUCAO: TDateField
      FieldName = 'DTPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoDSTAG: TStringField
      FieldName = 'DSTAG'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsordproducaoQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTPECAPRODUCAO: TFloatField
      FieldName = 'QTPECAPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsordproducaoCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsordproducao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsordproducao
    Params = <>
    AfterScroll = cdsordproducaoAfterScroll
    Left = 688
    Top = 540
    object cdsordproducaoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsordproducaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDSTORDPRODUCAO: TIntegerField
      FieldName = 'CDSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDTPORDPRODUCAO: TIntegerField
      FieldName = 'CDTPORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsordproducaoQTHORAORCADA: TFloatField
      FieldName = 'QTHORAORCADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoQTHORAPRODUCAO: TFloatField
      FieldName = 'QTHORAPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLOPERACAOP: TFMTBCDField
      FieldName = 'VLOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLPREPARACAOP: TFMTBCDField
      FieldName = 'VLPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLRECURSO: TFMTBCDField
      FieldName = 'VLRECURSO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLRECURSOP: TFMTBCDField
      FieldName = 'VLRECURSOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTOPERACAOP: TFMTBCDField
      FieldName = 'QTOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTPREPARACAOP: TFMTBCDField
      FieldName = 'QTPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoQTHORA: TFloatField
      FieldName = 'QTHORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTHORAP: TFloatField
      FieldName = 'QTHORAP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoVLMATERIAL: TFMTBCDField
      FieldName = 'VLMATERIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLMATERIALP: TFMTBCDField
      FieldName = 'VLMATERIALP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLPRODUCAO: TFMTBCDField
      FieldName = 'VLPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLPRODUCAOP: TFMTBCDField
      FieldName = 'VLPRODUCAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLCUSTOP: TFMTBCDField
      FieldName = 'VLCUSTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoDSDESENHO: TStringField
      FieldName = 'DSDESENHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsordproducaoDSDESENHOPOSICAO: TStringField
      FieldName = 'DSDESENHOPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoDSDESENHOREVISAO: TStringField
      FieldName = 'DSDESENHOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoNUDIASCUSTO: TIntegerField
      FieldName = 'NUDIASCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoDTPRVINSTALACAO: TDateField
      FieldName = 'DTPRVINSTALACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object cdsordproducaoCDTPMOTIVOREVISAO: TIntegerField
      FieldName = 'CDTPMOTIVOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDITREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDITREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDFUNCIONARIOSOLICITANTE: TIntegerField
      FieldName = 'CDFUNCIONARIOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDEQUIPAMENTO2: TIntegerField
      FieldName = 'CDEQUIPAMENTO2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTQUOCIENTE: TIntegerField
      FieldName = 'QTQUOCIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoNUMISTURA: TIntegerField
      FieldName = 'NUMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDPESAGEM: TStringField
      FieldName = 'CDPESAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsordproducaoQTPESOMISTURA: TFloatField
      FieldName = 'QTPESOMISTURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoDTPREVISAOPRODUCAO: TDateField
      FieldName = 'DTPREVISAOPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoDTPRODUCAO: TDateField
      FieldName = 'DTPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoDSTAG: TStringField
      FieldName = 'DSTAG'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsordproducaoQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTPECAPRODUCAO: TFloatField
      FieldName = 'QTPECAPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsordproducaoCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dtsordproducao: TDataSource
    DataSet = cdsordproducao
    Left = 716
    Top = 540
  end
  object sdsitpedidolote: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITPEDIDOLOTE WHERE CDEMPRESA=:CDEMPRESA AND CDITPE' +
      'DIDO=:CDITPEDIDO'
    DataSource = dts2
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDITPEDIDO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 882
    Top = 489
    object sdsitpedidoloteCDITPEDIDOLOTE: TIntegerField
      FieldName = 'CDITPEDIDOLOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitpedidoloteCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoloteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoloteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoloteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoloteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoloteCDITLOTE: TIntegerField
      FieldName = 'CDITLOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoloteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoloteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoloteNUIMEI: TStringField
      FieldName = 'NUIMEI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object dtsitpedidolote: TDataSource
    DataSet = cdsitpedidolote
    Left = 826
    Top = 488
  end
  object cdsitpedidolote: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsitpedidolote
    Params = <>
    BeforePost = cdsitpedidoloteBeforePost
    OnNewRecord = cdsitpedidoloteNewRecord
    Left = 798
    Top = 488
    object cdsitpedidoloteCDITPEDIDOLOTE: TIntegerField
      FieldName = 'CDITPEDIDOLOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitpedidoloteCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoloteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoloteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoloteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoloteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoloteCDITLOTE: TIntegerField
      FieldName = 'CDITLOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoloteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoloteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoloteNUIMEI: TStringField
      FieldName = 'NUIMEI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitpedidoloteNUIMEIValidate
      Size = 15
    end
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'btnexibirestrutura'
      end
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    Left = 1056
    Top = 122
  end
  object cdsitpedidoestrutura: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsitpedidoestrutura
    Params = <>
    BeforePost = cdsitpedidoestruturaBeforePost
    AfterPost = cdsitpedidoestruturaAfterPost
    AfterDelete = cdsitpedidoestruturaAfterDelete
    OnNewRecord = cdsitpedidoestruturaNewRecord
    Left = 798
    Top = 520
    object cdsitpedidoestruturaCDITPEDIDOESTRUTURA: TIntegerField
      FieldName = 'CDITPEDIDOESTRUTURA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitpedidoestruturaCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoestruturaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoestruturaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoestruturaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoestruturaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoestruturaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoestruturaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpedidoestruturaNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitpedidoestruturaBOFATURADO: TStringField
      FieldName = 'BOFATURADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitpedidoestruturaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitpedidoestrutura: TDataSource
    DataSet = cdsitpedidoestrutura
    Left = 826
    Top = 520
  end
  object sdsitpedidoestrutura: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM ITPEDIDOESTRUTURA '#13#10'WHERE CDEMPRESA=:CDEMPRESA A' +
      'ND CDITPEDIDO=:CDITPEDIDO'
    DataSource = dts2
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDITPEDIDO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 882
    Top = 521
    object sdsitpedidoestruturaCDITPEDIDOESTRUTURA: TIntegerField
      FieldName = 'CDITPEDIDOESTRUTURA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitpedidoestruturaCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoestruturaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoestruturaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoestruturaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoestruturaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoestruturaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoestruturaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpedidoestruturaNUESTRUTURAL: TStringField
      FieldName = 'NUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitpedidoestruturaBOFATURADO: TStringField
      FieldName = 'BOFATURADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitpedidoestruturaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dlgColor1: TColorDialog
    Left = 720
    Top = 128
  end
end

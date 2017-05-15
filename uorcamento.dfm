object frmOrcamento: TfrmOrcamento
  Left = 537
  Top = 137
  ClientHeight = 627
  ClientWidth = 1031
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
    Top = 279
    Width = 703
    Height = 315
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tbsproduto
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    Properties.NavigatorPosition = npLeftTop
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 315
    ClientRectRight = 703
    ClientRectTop = 25
    object tbsproduto: TcxTabSheet
      Caption = 'Produto'
      ImageIndex = 24
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grd: TcxGrid
        Left = 0
        Top = 22
        Width = 703
        Height = 51
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbv: TcxGridDBBandedTableView
          OnKeyDown = exportarGradeExcel
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
          OnCustomDrawCell = tbvCustomDrawCell
          OnFocusedRecordChanged = tbvFocusedRecordChanged
          DataController.DataSource = dtsdetail
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTAPROVADO'
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
              FieldName = 'VLACRESCIMO'
              Column = tbvVLACRESCIMO
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
              Caption = 'Produto'
              Width = 476
            end
            item
              Caption = 'Cota'#231#227'o'
            end
            item
              Caption = 'Madeira'
            end
            item
              Caption = 'Desenho'
              Width = 254
            end
            item
              Caption = 'Quantidade'
              Width = 100
            end
            item
              Caption = 'Embalagem'
            end
            item
              Caption = 'Datas'
            end
            item
              Caption = 'Valor'
              Width = 320
            end
            item
              Caption = 'ICMS'
            end
            item
              Caption = 'ICMS Sub Trib'
              Width = 155
            end
            item
              Caption = 'IPI'
            end
            item
              Caption = 'ISS'
            end
            item
              Caption = 'Status'
              Visible = False
              Width = 105
            end>
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
            Properties.OnButtonClick = grddetail1DBBandedTableView1CDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvNMPRODUTO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Editing = False
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvDTPRVENTREGA: TcxGridDBBandedColumn
            Caption = 'Prev Entrega'
            DataBinding.FieldName = 'DTPRVENTREGA'
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvDSFORMULA: TcxGridDBBandedColumn
            Caption = 'F'#243'rmula'
            DataBinding.FieldName = 'DSFORMULA'
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tbvDSOBSERVACAO: TcxGridDBBandedColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Width = 36
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tbvDSDESENHO: TcxGridDBBandedColumn
            Caption = 'Desenho'
            DataBinding.FieldName = 'DSDESENHO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 120
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvDSDESENHOPOSICAO: TcxGridDBBandedColumn
            Caption = 'Posi'#231#227'o'
            DataBinding.FieldName = 'DSDESENHOPOSICAO'
            Width = 54
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvDSDESENHOREVISAO: TcxGridDBBandedColumn
            Caption = 'Revis'#227'o'
            DataBinding.FieldName = 'DSDESENHOREVISAO'
            Width = 64
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvNUCOTACAO: TcxGridDBBandedColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUCOTACAO'
            Width = 86
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNUITEM: TcxGridDBBandedColumn
            Caption = 'N'#186' '#205'tem'
            DataBinding.FieldName = 'NUITEM'
            Width = 53
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
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object colgrddetail1DBBandedTableView1QTLARGURA1: TcxGridDBBandedColumn
            Caption = 'Largura'
            DataBinding.FieldName = 'QTLARGURA1'
            Width = 42
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object colgrddetail1DBBandedTableView1QTCOMPRIMENTO1: TcxGridDBBandedColumn
            Caption = 'Comprimento'
            DataBinding.FieldName = 'QTCOMPRIMENTO1'
            Width = 73
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object colgrddetail1DBBandedTableView1QTALTURA1: TcxGridDBBandedColumn
            Caption = 'Espessura'
            DataBinding.FieldName = 'QTALTURA1'
            Width = 58
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object colgrddetail1DBBandedTableView1QTPECA: TcxGridDBBandedColumn
            Caption = 'Qt Pe'#231'a'
            DataBinding.FieldName = 'QTPECA'
            Width = 51
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvQTITEM: TcxGridDBBandedColumn
            Caption = 'Qtd'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvQTATENDIDA: TcxGridDBBandedColumn
            Caption = 'Aprovado'
            DataBinding.FieldName = 'QTAPROVADO'
            OnCustomDrawCell = tbvQTATENDIDACustomDrawCell
            Options.Editing = False
            Options.Focusing = False
            Position.BandIndex = 4
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvVLUNITARIO: TcxGridDBBandedColumn
            Caption = 'Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 4
            Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
            Width = 63
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvVLTOTAL: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 4
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
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
            Width = 67
            Position.BandIndex = 7
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvVLDESCONTO: TcxGridDBBandedColumn
            Caption = 'Desconto'
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
          object tbvCDTPICMS: TcxGridDBBandedColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'CDTPICMS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPICMS'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPICMS'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 100
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvALICMS: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'ALICMS'
            Width = 24
            Position.BandIndex = 8
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvVLICMS: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLICMS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 8
            Position.ColIndex = 2
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
          object tbvCDTPIPI: TcxGridDBBandedColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'CDTPIPI'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPIPI'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPIPI'
              end>
            Properties.ListOptions.ShowHeader = False
            Position.BandIndex = 10
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvALIPI: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'ALIPI'
            Width = 24
            Position.BandIndex = 10
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvVLIPI: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLIPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 76
            Position.BandIndex = 10
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvVLTOTALCIPI: TcxGridDBBandedColumn
            Caption = 'Total c IPI'
            DataBinding.FieldName = 'VLTOTALCIPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 10
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvNUPRAZOENTREGA: TcxGridDBBandedColumn
            Caption = 'Prazo Entrega'
            DataBinding.FieldName = 'NUPRAZOENTREGA'
            PropertiesClassName = 'TcxSpinEditProperties'
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvDTAPROVACAO: TcxGridDBBandedColumn
            Caption = 'Dt Aprova'#231#227'o'
            DataBinding.FieldName = 'DTAPROVACAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvNUCLFISCAL: TcxGridDBBandedColumn
            Caption = 'Classe Fiscal'
            DataBinding.FieldName = 'NUCLFISCAL'
            Position.BandIndex = 8
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvDSOBSERVACAOMADEIRA: TcxGridDBBandedColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxMemoProperties'
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvNUSEQUENCIA: TcxGridDBBandedColumn
            Caption = 'N'#176
            DataBinding.FieldName = 'NUSEQUENCIA'
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvDSPRODUTO: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DSPRODUTO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 117
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvCDSTITORCAMENTO: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'CDSTITORCAMENTO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 80
            Properties.KeyFieldNames = 'CDSTITORCAMENTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTITORCAMENTO'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Options.Focusing = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tbvBOCERTIFICADO: TcxGridDBBandedColumn
            Caption = 'Certificado?'
            DataBinding.FieldName = 'BOCERTIFICADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object tbvBOINFTECNICA: TcxGridDBBandedColumn
            Caption = 'Informa'#231#227'o T'#233'cnica'
            DataBinding.FieldName = 'BOINFTECNICA'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object tbvCDCONDPAGTO: TcxGridDBBandedColumn
            Caption = 'Cond Pagto'
            DataBinding.FieldName = 'CDCONDPAGTO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 350
            Properties.KeyFieldNames = 'CDCONDPAGTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMCONDPAGTO'
              end>
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 2
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
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNMPRODUTOEMBALAGEM: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTOEMBALAGEM'
            Options.Focusing = False
            Width = 250
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvVLACRESCIMO: TcxGridDBBandedColumn
            Caption = 'Acr'#233'scimo'
            DataBinding.FieldName = 'VLACRESCIMO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 7
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvCDTPITORCAMENTO: TcxGridDBBandedColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'CDTPITORCAMENTO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 250
            Properties.KeyFieldNames = 'CDTPITORCAMENTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPITORCAMENTO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvCDPERIODICIDADE: TcxGridDBBandedColumn
            Caption = 'Periodicidade'
            DataBinding.FieldName = 'CDPERIODICIDADE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 250
            Properties.KeyFieldNames = 'CDPERIODICIDADE'
            Properties.ListColumns = <
              item
                FieldName = 'NMPERIODICIDADE'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 70
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNUPERIODICIDADE: TcxGridDBBandedColumn
            Caption = 'N'#186
            DataBinding.FieldName = 'NUPERIODICIDADE'
            PropertiesClassName = 'TcxSpinEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 1
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
      object pnl2: TPanel
        Left = 0
        Top = 81
        Width = 703
        Height = 209
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object pgccalculo: TcxPageControl
          Left = 0
          Top = 0
          Width = 703
          Height = 209
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tbsmaterial
          Properties.CustomButtons.Buttons = <>
          Properties.NavigatorPosition = npLeftTop
          Properties.TabSlants.Positions = [spLeft, spRight]
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          TabSlants.Positions = [spLeft, spRight]
          ClientRectBottom = 209
          ClientRectRight = 703
          ClientRectTop = 24
          object tbsmaterial: TcxTabSheet
            Caption = 'Mat'#233'ria-Prima'
            ImageIndex = 2
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object grdmaterial: TcxGrid
              Left = 0
              Top = 0
              Width = 703
              Height = 185
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
              object tbvitorcamentomaterial: TcxGridDBBandedTableView
                OnKeyDown = exportarGradeExcel
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
                OnCellDblClick = tbvitorcamentomaterialCellDblClick
                DataController.DataSource = dtsitorcamentomaterial
                DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skSum
                    FieldName = 'QTITEM'
                    Column = tbvitorcamentomaterialQTPECA
                  end
                  item
                    Kind = skSum
                    FieldName = 'QTPESO'
                    Column = tbvitorcamentomaterialQTITEM
                  end
                  item
                    Kind = skSum
                    FieldName = 'QTPESOUNITARIO'
                    Column = tbvitorcamentomaterialQTPESOUNITARIO
                  end
                  item
                    Format = 'R$ ,0.00;-R$ ,0.00'
                    Kind = skSum
                    FieldName = 'VLTOTAL'
                    Column = tbvitorcamentomaterialVLTOTAL
                  end
                  item
                    Format = 'R$ ,0.00;-R$ ,0.00'
                    Kind = skSum
                    FieldName = 'VLTOTALLUCRO'
                  end
                  item
                    Format = 'R$ ,0.00;-R$ ,0.00'
                    Kind = skSum
                    FieldName = 'VLLUCRO'
                  end
                  item
                    Format = 'R$ ,0.00;-R$ ,0.00'
                    Kind = skSum
                    FieldName = 'VLFRETE'
                    Column = tbvitorcamentomaterialVLFRETE
                  end
                  item
                    Format = 'R$ ,0.00;-R$ ,0.00'
                    Kind = skSum
                    FieldName = 'VLICMS'
                    Column = tbvitorcamentomaterialVLICMS
                  end
                  item
                    Format = 'R$ ,0.00;-R$ ,0.00'
                    Kind = skSum
                    FieldName = 'VLICMSDIFALIQUOTA'
                  end
                  item
                    Format = 'R$ ,0.00;-R$ ,0.00'
                    Kind = skSum
                    FieldName = 'VLIPI'
                    Column = tbvitorcamentomaterialVLIPI
                  end
                  item
                    Format = 'R$ ,0.00;-R$ ,0.00'
                    Kind = skSum
                    FieldName = 'VLFINAL'
                    Column = tbvitorcamentomaterialVLFINAL
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
                    Caption = 'Produto'
                    Width = 459
                  end
                  item
                    Caption = 'Quantidade'
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
                  end>
                object tbvitorcamentomaterialCDDIGITADO: TcxGridDBBandedColumn
                  Caption = 'C'#243'digo'
                  DataBinding.FieldName = 'CDDIGITADO'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.CharCase = ecUpperCase
                  Properties.OnButtonClick = cxGridDBBandedTableView2CDDIGITADOPropertiesButtonClick
                  Styles.Content = dtmmain.cxStyle1
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialNMPRODUTO: TcxGridDBBandedColumn
                  Caption = 'Nome'
                  DataBinding.FieldName = 'NMPRODUTO'
                  Options.Focusing = False
                  Width = 379
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialQTPECA: TcxGridDBBandedColumn
                  Caption = 'Qt Pe'#231'a'
                  DataBinding.FieldName = 'QTPECA'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialQTPESOUNITARIO: TcxGridDBBandedColumn
                  Caption = 'Peso Unit'#225'rio'
                  DataBinding.FieldName = 'QTPESOUNITARIO'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxGridDBBandedTableView2QTPESOUNITARIOPropertiesButtonClick
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialQTITEM: TcxGridDBBandedColumn
                  Caption = 'Quantidade'
                  DataBinding.FieldName = 'QTITEM'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialVLUNITARIO: TcxGridDBBandedColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VLUNITARIO'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialVLTOTAL: TcxGridDBBandedColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'VLTOTAL'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Position.BandIndex = 2
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialDSPOSICAO: TcxGridDBBandedColumn
                  Caption = 'Posi'#231#227'o'
                  DataBinding.FieldName = 'DSPOSICAO'
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialNUCLFISCAL: TcxGridDBBandedColumn
                  Caption = 'NCM'
                  DataBinding.FieldName = 'NUCLFISCAL'
                  Options.Focusing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialALICMS: TcxGridDBBandedColumn
                  Caption = '%'
                  DataBinding.FieldName = 'ALICMS'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 37
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialALIPI: TcxGridDBBandedColumn
                  Caption = '%'
                  DataBinding.FieldName = 'ALIPI'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 37
                  Position.BandIndex = 4
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialBORECUPERAICMS: TcxGridDBBandedColumn
                  Caption = 'Recupera'
                  DataBinding.FieldName = 'BORECUPERAICMS'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Width = 60
                  Position.BandIndex = 3
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialBORECUPERAIPI: TcxGridDBBandedColumn
                  Caption = 'Recupera'
                  DataBinding.FieldName = 'BORECUPERAIPI'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Width = 60
                  Position.BandIndex = 4
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialVLICMS: TcxGridDBBandedColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VLICMS'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Options.Focusing = False
                  Position.BandIndex = 3
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialVLIPI: TcxGridDBBandedColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VLIPI'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Options.Focusing = False
                  Position.BandIndex = 4
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialVLFRETE: TcxGridDBBandedColumn
                  Caption = 'Frete'
                  DataBinding.FieldName = 'VLFRETE'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Position.BandIndex = 2
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialVLFINAL: TcxGridDBBandedColumn
                  Caption = 'Valor Final'
                  DataBinding.FieldName = 'VLFINAL'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Position.BandIndex = 7
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialALPIS: TcxGridDBBandedColumn
                  Caption = '%'
                  DataBinding.FieldName = 'ALPIS'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 25
                  Position.BandIndex = 5
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialALCOFINS: TcxGridDBBandedColumn
                  Caption = '%'
                  DataBinding.FieldName = 'ALCOFINS'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Width = 25
                  Position.BandIndex = 6
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialVLPIS: TcxGridDBBandedColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VLPIS'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 100
                  Position.BandIndex = 5
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialVLCOFINS: TcxGridDBBandedColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VLCOFINS'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Position.BandIndex = 6
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialBORECUPERAPIS: TcxGridDBBandedColumn
                  Caption = 'Recupera'
                  DataBinding.FieldName = 'BORECUPERAPIS'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Width = 60
                  Position.BandIndex = 5
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialBORECUPERACOFINS: TcxGridDBBandedColumn
                  Caption = 'Recupera'
                  DataBinding.FieldName = 'BORECUPERACOFINS'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Width = 60
                  Position.BandIndex = 6
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialDSFORMULA: TcxGridDBBandedColumn
                  Caption = 'Medidas'
                  DataBinding.FieldName = 'DSFORMULA'
                  Width = 104
                  Position.BandIndex = 1
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object tbvitorcamentomaterialNUFATOR: TcxGridDBBandedColumn
                  Caption = 'Fator'
                  DataBinding.FieldName = 'NUFATOR'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Position.BandIndex = 7
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = tbvitorcamentomaterial
              end
            end
          end
          object tbscustos: TcxTabSheet
            Caption = 'Servi'#231'o Terceirizado'
            ImageIndex = 3
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object grdcusto: TcxGrid
              Left = 0
              Top = 0
              Width = 703
              Height = 185
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object tbvitorcamentocusto: TcxGridDBTableView
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
                DataController.DataSource = dtsitorcamentocusto
                DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'R$ ,0.00;-R$ ,0.00'
                    Kind = skSum
                    FieldName = 'VLTOTAL'
                    Column = tbvitorcamentocustoVLTOTAL
                  end
                  item
                    Kind = skSum
                    FieldName = 'QTITEM'
                    Column = tbvitorcamentocustoQTITEM
                  end
                  item
                    Kind = skSum
                    FieldName = 'VLFINAL'
                    Column = tbvitorcamentocustoVLFINAL
                    DisplayText = 'R$ ,0.00;-R$ ,0.00'
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsData.Appending = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object tbvitorcamentocustoCDDIGITADO: TcxGridDBColumn
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
                object tbvitorcamentocustoNMPRODUTO: TcxGridDBColumn
                  Caption = 'Nome'
                  DataBinding.FieldName = 'NMPRODUTO'
                  Width = 320
                end
                object tbvitorcamentocustoCDUNIDADE: TcxGridDBColumn
                  Caption = 'Unidade'
                  DataBinding.FieldName = 'CDUNIDADE'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'CDUNIDADE'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NMUNIDADE'
                    end>
                  Properties.ListOptions.ShowHeader = False
                end
                object tbvitorcamentocustoQTITEM: TcxGridDBColumn
                  Caption = 'Quantidade'
                  DataBinding.FieldName = 'QTITEM'
                end
                object tbvitorcamentocustoVLUNITARIO: TcxGridDBColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VLUNITARIO'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                end
                object tbvitorcamentocustoVLTOTAL: TcxGridDBColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'VLTOTAL'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                  Options.Focusing = False
                  Width = 151
                end
                object tbvitorcamentocustoNUFATOR: TcxGridDBColumn
                  Caption = 'Fator'
                  DataBinding.FieldName = 'NUFATOR'
                  PropertiesClassName = 'TcxCalcEditProperties'
                end
                object tbvitorcamentocustoVLFINAL: TcxGridDBColumn
                  Caption = 'Valor Final'
                  DataBinding.FieldName = 'VLFINAL'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Options.Focusing = False
                end
                object tbvitorcamentocustoDSOBSERVACAO: TcxGridDBColumn
                  Caption = 'Observa'#231#227'o'
                  DataBinding.FieldName = 'DSOBSERVACAO'
                  PropertiesClassName = 'TcxBlobEditProperties'
                  Properties.BlobEditKind = bekMemo
                  Properties.BlobPaintStyle = bpsText
                  Width = 360
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = tbvitorcamentocusto
              end
            end
          end
          object tbsrecursos: TcxTabSheet
            Caption = 'Recursos'
            ImageIndex = 4
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object grdrecurso: TcxGrid
              Left = 0
              Top = 0
              Width = 703
              Height = 185
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
                OnKeyDown = exportarGradeExcel
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
                DataController.DataSource = dtsitorcamentorecurso
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
                    Caption = 'Recurso'
                    Width = 459
                  end
                  item
                    Caption = 'Opera'#231#227'o'
                  end
                  item
                    Caption = 'Prepara'#231#227'o'
                  end
                  item
                    Caption = 'Observa'#231#227'o'
                    Width = 200
                  end>
                object tbvrecursoCDTPEQUIPAMENTO: TcxGridDBBandedColumn
                  Caption = 'Nome'
                  DataBinding.FieldName = 'CDTPEQUIPAMENTO'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'CDTPEQUIPAMENTO'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NMTPEQUIPAMENTO'
                    end>
                  Properties.ListOptions.ShowHeader = False
                  Width = 423
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvrecursoQTPREPARACAO: TcxGridDBBandedColumn
                  Caption = 'Quantidade'
                  DataBinding.FieldName = 'QTPREPARACAO'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object tbvrecursoVLPREPARACAO: TcxGridDBBandedColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VLPREPARACAO'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                  Position.BandIndex = 2
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvrecursoQTOPERACAO: TcxGridDBBandedColumn
                  Caption = 'Quantidade'
                  DataBinding.FieldName = 'QTOPERACAO'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object tbvrecursoVLOPERACAO: TcxGridDBBandedColumn
                  Caption = 'Valor'
                  DataBinding.FieldName = 'VLOPERACAO'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object tbvrecursoVLTOTALOPERACAO: TcxGridDBBandedColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'VLTOTALOPERACAO'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Options.Editing = False
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object tbvrecursoVLTOTALPREPARACAO: TcxGridDBBandedColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'VLTOTALPREPARACAO'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                  Options.Editing = False
                  Position.BandIndex = 2
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object tbvrecursoDSOBSERVACAO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'DSOBSERVACAO'
                  PropertiesClassName = 'TcxBlobEditProperties'
                  Properties.BlobEditKind = bekMemo
                  Properties.BlobPaintStyle = bpsText
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                  IsCaptionAssigned = True
                end
                object tbvrecursoNUSEQUENCIA: TcxGridDBBandedColumn
                  Caption = 'N'#176
                  DataBinding.FieldName = 'NUSEQUENCIA'
                  Width = 36
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = tbvrecurso
              end
            end
          end
          object tbsPeriodicidade: TcxTabSheet
            Caption = 'Periodicidade'
            ImageIndex = 3
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object grditorcamentoperiodicidade: TcxGrid
              Left = 0
              Top = 0
              Width = 703
              Height = 185
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object tbvitorcamentoperiodicidade: TcxGridDBTableView
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
                DataController.DataSource = dtsitorcamentoperiodicidade
                DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = 'R$ ,0.00;-R$ ,0.00'
                    Kind = skSum
                    FieldName = 'VLTOTAL'
                    Column = tbvitorcamentoperiodicidadeVLTOTAL
                  end
                  item
                    Kind = skSum
                    FieldName = 'QTITEM'
                    Column = tbvitorcamentoperiodicidadeQTITEM
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsData.Appending = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object tbvitorcamentoperiodicidadeCDPERIODICIDADE: TcxGridDBColumn
                  Caption = 'Periodicidade'
                  DataBinding.FieldName = 'CDPERIODICIDADE'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'CDPERIODICIDADE'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NMPERIODICIDADE'
                    end>
                  Properties.ListOptions.ShowHeader = False
                  Width = 200
                end
                object tbvitorcamentoperiodicidadeQTITEM: TcxGridDBColumn
                  Caption = 'Quantidade'
                  DataBinding.FieldName = 'QTITEM'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Visible = False
                  Width = 80
                end
                object tbvitorcamentoperiodicidadeVLUNITARIO: TcxGridDBColumn
                  Caption = 'Valor Unit'#225'rio'
                  DataBinding.FieldName = 'VLUNITARIO'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                end
                object tbvitorcamentoperiodicidadeVLTOTAL: TcxGridDBColumn
                  Caption = 'Total'
                  DataBinding.FieldName = 'VLTOTAL'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Visible = False
                  Options.Editing = False
                end
              end
              object cxGridLevel4: TcxGridLevel
                GridView = tbvitorcamentoperiodicidade
              end
            end
          end
        end
      end
      object splcalculo: TcxSplitter
        Left = 0
        Top = 73
        Width = 703
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = pnl2
        ExplicitWidth = 8
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 703
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 62
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 367
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
        Height = 290
        Width = 703
      end
    end
    object tbsobsinterna: TcxTabSheet
      Caption = 'Observa'#231#227'o Interna'
      ImageIndex = 62
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 367
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
        Height = 290
        Width = 703
      end
    end
    object tbsENTREGA: TcxTabSheet
      Caption = 'Entrega'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 367
      object Label7: TLabel
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
        object Label9: TLabel
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
        object Label12: TLabel
          Left = 3
          Top = 65
          Width = 27
          Height = 13
          Caption = 'Bairro'
          Transparent = True
        end
        object Label13: TLabel
          Left = 423
          Top = 65
          Width = 44
          Height = 13
          Caption = 'Cx Postal'
          Transparent = True
        end
        object Label15: TLabel
          Left = 6
          Top = 86
          Width = 14
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object Label16: TLabel
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
          OnExit = colorexit
          Width = 371
        end
        object edtnufax: TcxDBMaskEdit
          Left = 475
          Top = 99
          DataBinding.DataField = 'NUFAX'
          DataBinding.DataSource = dts
          Properties.EditMask = '(99)9999-9999'
          Properties.MaxLength = 0
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
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
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
        LookAndFeel.NativeStyle = False
        TabOrder = 1
      end
      object btn1: TcxButton
        Left = 80
        Top = 3
        Width = 75
        Height = 25
        Action = actlimparentrega
        TabOrder = 2
      end
      object edtdsreferencia2: TcxDBTextEdit
        Left = 220
        Top = 6
        DataBinding.DataField = 'DSREFERENCIA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 335
      end
    end
    object tbshistorico: TcxTabSheet
      Caption = 'Hist'#243'rico Status'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 367
      object grdhstorcamento: TcxGrid
        Left = 0
        Top = 0
        Width = 703
        Height = 290
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        ExplicitHeight = 367
        object grdhstorcamentoDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dtshstorcamento
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object grdhstorcamentoDBTableView1NMSTORCAMENTO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTORCAMENTO'
            Options.Editing = False
            Options.Focusing = False
            Width = 171
          end
          object grdhstorcamentoDBTableView1NMUSUARIO: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'NMUSUARIO'
            Options.Editing = False
            Options.Focusing = False
            Width = 172
          end
          object grdhstorcamentoDBTableView1NMCOMPUTADOR: TcxGridDBColumn
            Caption = 'Computador'
            DataBinding.FieldName = 'NMCOMPUTADOR'
            Options.Editing = False
            Options.Focusing = False
            Width = 183
          end
          object grdhstorcamentoDBTableView1TSHISTORICO: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'TSHISTORICO'
            Options.Editing = False
            Options.Focusing = False
            Width = 144
          end
          object grdhstorcamentoDBTableView1DSJUSTIFICATIVA: TcxGridDBColumn
            Caption = 'Justificativa'
            DataBinding.FieldName = 'DSJUSTIFICATIVA'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Options.Editing = False
            Width = 213
          end
        end
        object grdhstorcamentoLevel1: TcxGridLevel
          GridView = grdhstorcamentoDBTableView1
        end
      end
    end
    object tbsComercial: TcxTabSheet
      Caption = 'Comercial'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 367
      object lblhrresposta: TLabel
        Left = 5
        Top = 29
        Width = 77
        Height = 13
        Caption = 'Hor'#225'rio resposta'
        Transparent = True
      end
      object lblhrrespostafinal: TLabel
        Left = 293
        Top = 29
        Width = 15
        Height = 13
        Caption = 'at'#233
        Transparent = True
      end
      object lbldocumento: TLabel
        Left = 5
        Top = 6
        Width = 90
        Height = 13
        Caption = 'Contato atrav'#233's de'
        Transparent = True
      end
      object lblperiodicidade: TLabel
        Left = 5
        Top = 52
        Width = 64
        Height = 13
        Caption = 'Periodicidade'
        Transparent = True
      end
      object Label3: TLabel
        Left = 363
        Top = 52
        Width = 12
        Height = 13
        Caption = 'N'#186
        Transparent = True
      end
      object lblprmoradiaria: TLabel
        Left = 5
        Top = 186
        Width = 31
        Height = 13
        Caption = '% Juro'
        Transparent = True
      end
      object lblprmulta: TLabel
        Left = 271
        Top = 186
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = '% Multa'
        Transparent = True
      end
      object lbldstag: TLabel
        Left = 5
        Top = 77
        Width = 19
        Height = 13
        Caption = 'Tag'
        Transparent = True
      end
      object lblnudiasrescisao: TLabel
        Left = 5
        Top = 204
        Width = 76
        Height = 13
        Caption = 'N'#186' dias rescis'#227'o'
        Transparent = True
      end
      object lblnudiasmedicao: TLabel
        Left = 231
        Top = 204
        Width = 77
        Height = 13
        Caption = 'N'#186' dias medi'#231#227'o'
        Transparent = True
      end
      object lbldstag2: TLabel
        Left = 5
        Top = 99
        Width = 28
        Height = 13
        Caption = 'Tag 2'
        Transparent = True
      end
      object lbldstag3: TLabel
        Left = 5
        Top = 121
        Width = 28
        Height = 13
        Caption = 'Tag 3'
        Transparent = True
      end
      object lbldstag4: TLabel
        Left = 3
        Top = 143
        Width = 28
        Height = 13
        Caption = 'Tag 4'
        Transparent = True
      end
      object lblcditcontclienteresponsavel: TLabel
        Left = 5
        Top = 222
        Width = 62
        Height = 13
        Caption = 'Respons'#225'vel'
        Transparent = True
      end
      object lbl1: TLabel
        Left = 5
        Top = 264
        Width = 34
        Height = 13
        Caption = 'Hor'#225'rio'
        Transparent = True
      end
      object lbl2: TLabel
        Left = 293
        Top = 264
        Width = 15
        Height = 13
        Caption = 'at'#233
        Transparent = True
      end
      object lbl3: TLabel
        Left = 5
        Top = 286
        Width = 64
        Height = 13
        Caption = 'Periodicidade'
        Transparent = True
      end
      object lbl4: TLabel
        Left = 363
        Top = 286
        Width = 12
        Height = 13
        Caption = 'N'#186
        Transparent = True
      end
      object lblDSTAG5: TLabel
        Left = 3
        Top = 164
        Width = 28
        Height = 13
        Caption = 'Tag 5'
        Transparent = True
      end
      object Label4: TLabel
        Left = 467
        Top = 6
        Width = 171
        Height = 13
        Caption = 'Data de resposta por envio de Email'
        Transparent = True
      end
      object btnaddorcamentoatravesde: TcxButton
        Left = 435
        Top = 1
        Width = 28
        Height = 21
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 136
        OptionsImage.Images = dtmmain.imlMain
        PaintStyle = bpsGlyph
        TabOrder = 1
        OnClick = btnaddorcamentoatravesdeClick
      end
      object edthrresposta: TcxDBTimeEdit
        Left = 98
        Top = 24
        DataBinding.DataField = 'HRRESPOSTA'
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
      object edthrrespostafinal: TcxDBTimeEdit
        Left = 312
        Top = 24
        DataBinding.DataField = 'HRRESPOSTAFINAL'
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
      object cbxcdorcamentoatravesde: TcxDBLookupComboBox
        Left = 98
        Top = 1
        DataBinding.DataField = 'CDORCAMENTOATRAVESDE'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDORCAMENTOATRAVESDE'
        Properties.ListColumns = <
          item
            FieldName = 'NMORCAMENTOATRAVESDE'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Width = 335
      end
      object cbxcdperiodicidade: TcxDBLookupComboBox
        Left = 98
        Top = 47
        DataBinding.DataField = 'CDPERIODICIDADE'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDPERIODICIDADE'
        Properties.ListColumns = <
          item
            FieldName = 'NMPERIODICIDADE'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        Width = 263
      end
      object edtnuperiodicidade: TcxDBSpinEdit
        Left = 379
        Top = 47
        DataBinding.DataField = 'NUPERIODICIDADE'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        OnEnter = colorenter
        OnExit = edtnudiasExit
        OnKeyDown = nextcontrol
        Width = 54
      end
      object edtprmoradiaria: TcxDBCalcEdit
        Left = 98
        Top = 178
        DataBinding.DataField = 'PRMORADIARIA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        OnEnter = colorenter
        OnExit = colorexit
        Width = 121
      end
      object edtprmulta: TcxDBCalcEdit
        Left = 312
        Top = 178
        DataBinding.DataField = 'PRMULTA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        OnEnter = colorenter
        OnExit = colorexit
        Width = 121
      end
      object edtdstag: TcxDBTextEdit
        Left = 98
        Top = 69
        DataBinding.DataField = 'DSTAG'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 335
      end
      object edtnudiasrescisao: TcxDBSpinEdit
        Left = 98
        Top = 199
        DataBinding.DataField = 'NUDIASRESCISAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        OnEnter = colorenter
        OnExit = edtnudiasExit
        OnKeyDown = nextcontrol
        Width = 121
      end
      object edtnudiasmedicao: TcxDBSpinEdit
        Left = 312
        Top = 199
        DataBinding.DataField = 'NUDIASMEDICAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 14
        OnEnter = colorenter
        OnExit = edtnudiasExit
        OnKeyDown = nextcontrol
        Width = 121
      end
      object edtdstag2: TcxDBTextEdit
        Left = 98
        Top = 91
        DataBinding.DataField = 'DSTAG2'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 335
      end
      object edtdstag3: TcxDBTextEdit
        Left = 98
        Top = 113
        DataBinding.DataField = 'DSTAG3'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 335
      end
      object edtdstag4: TcxDBTextEdit
        Left = 98
        Top = 135
        DataBinding.DataField = 'DSTAG4'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 335
      end
      object cbxcditcontclienteresponsavel: TcxDBLookupComboBox
        Left = 98
        Top = 220
        DataBinding.DataField = 'CDITCONTCLIENTERESPONSAVEL'
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
        TabOrder = 15
        OnKeyDown = nextcontrol
        Width = 335
      end
      object ckb1: TcxDBCheckBox
        Left = 292
        Top = 241
        Caption = 'Manuten'#231#227'o em dia'
        DataBinding.DataField = 'BOMANUTENCAO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 17
        Transparent = True
      end
      object ckbboalmoco: TcxDBCheckBox
        Left = 98
        Top = 241
        Caption = 'Almo'#231'o por conta do cliente'
        DataBinding.DataField = 'BOALMOCO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 16
        Transparent = True
      end
      object edthrinicio: TcxDBTimeEdit
        Left = 98
        Top = 259
        DataBinding.DataField = 'HRINICIO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 18
        OnEnter = colorenter
        OnExit = colorexit
        Width = 121
      end
      object edthrfim: TcxDBTimeEdit
        Left = 312
        Top = 259
        DataBinding.DataField = 'HRFIM'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 19
        OnEnter = colorenter
        OnExit = colorexit
        Width = 121
      end
      object cbxCDPERIODICIDADEATENDIMENTO: TcxDBLookupComboBox
        Left = 98
        Top = 281
        DataBinding.DataField = 'CDPERIODICIDADEATENDIMENTO'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDPERIODICIDADE'
        Properties.ListColumns = <
          item
            FieldName = 'NMPERIODICIDADE'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 20
        OnEnter = colorenter
        OnExit = colorexit
        Width = 263
      end
      object edtNUPERIODICIDADEATENDIMENTO: TcxDBSpinEdit
        Left = 379
        Top = 281
        DataBinding.DataField = 'NUPERIODICIDADEATENDIMENTO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 21
        OnEnter = colorenter
        OnExit = edtnudiasExit
        OnKeyDown = nextcontrol
        Width = 54
      end
      object edtDSTAG5: TcxDBTextEdit
        Left = 98
        Top = 156
        DataBinding.DataField = 'DSTAG5'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 335
      end
      object edtdtemail: TcxDBDateEdit
        Left = 643
        Top = 1
        DataBinding.DataField = 'DTEMAIL'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 22
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 88
      end
    end
    object tbsconsulta: TcxTabSheet
      Caption = 'Consulta'
      ExplicitHeight = 249
      object bdcconsulta: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 703
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object grdconsulta: TcxGrid
        Left = 0
        Top = 22
        Width = 703
        Height = 268
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        ExplicitHeight = 345
        object tbvpedido: TcxGridDBTableView
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
          OnCellClick = tbvpedidoCellClick
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvpedidoQTITEM
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvpedidonNUPEDIDO: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'NUPEDIDO'
            Styles.Content = dtmmain.cxStyle1
            Width = 80
          end
          object tbvpedidoDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 80
          end
          object tbvpedidoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'd Produto'
            DataBinding.FieldName = 'CDDIGITADO'
            Width = 120
          end
          object tbvpedidoNMPRODUTO: TcxGridDBColumn
            Caption = 'Nome Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 200
          end
          object tbvpedidoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            Width = 80
          end
        end
        object tbvordproducao: TcxGridDBTableView
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
          OnCellClick = tbvordproducaoCellClick
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvordproducaoCDORDPRODUCAO: TcxGridDBColumn
            Caption = 'Ordem Produ'#231#227'o'
            DataBinding.FieldName = 'CDORDPRODUCAO'
            Styles.Content = dtmmain.cxStyle1
            Width = 80
          end
          object tbvordproducaoDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 80
          end
          object tbvordproducaoDTPRVENTREGA: TcxGridDBColumn
            Caption = 'Previs'#227'o'
            DataBinding.FieldName = 'DTPRVENTREGA'
          end
          object tbvordproducaoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'd Produto'
            DataBinding.FieldName = 'CDDIGITADO'
            Width = 120
          end
          object tbvordproducaoNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 200
          end
          object tbvordproducaoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            Width = 80
          end
          object tbvordproducaoNMSTORDPRODUCAO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTORDPRODUCAO'
            Width = 150
          end
        end
        object tbvrequisicaoproducao: TcxGridDBTableView
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
          OnCellClick = tbvrequisicaoproducaoCellClick
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvrequisicaoproducaoQTITEM
            end
            item
              Kind = skSum
              FieldName = 'QTPRODUCAO'
              Column = tbvrequisicaoproducaoQTPRODUCAO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvrequisicaoproducaoCDREQUISICAOPRODUCAO: TcxGridDBColumn
            Caption = 'Requisi'#231#227'o Produ'#231#227'o'
            DataBinding.FieldName = 'CDREQUISICAOPRODUCAO'
            Styles.Content = dtmmain.cxStyle1
          end
          object tbvrequisicaoproducaoDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object tbvrequisicaoproducaoDTPRVENTREGA: TcxGridDBColumn
            Caption = 'Previs'#227'o'
            DataBinding.FieldName = 'DTPRVENTREGA'
          end
          object tbvrequisicaoproducaoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'd Produto'
            DataBinding.FieldName = 'CDDIGITADO'
            Width = 120
          end
          object tbvrequisicaoproducaoNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 200
          end
          object tbvrequisicaoproducaoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
          end
          object tbvrequisicaoproducaoQTPRODUCAO: TcxGridDBColumn
            Caption = 'Produ'#231#227'o'
            DataBinding.FieldName = 'QTPRODUCAO'
          end
          object tbvrequisicaoproducaoNMSTREQUISICAOPRODUCAO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTREQUISICAOPRODUCAO'
            Width = 100
          end
        end
        object tbvordcompra: TcxGridDBTableView
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
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvordcompraVLTOTAL
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvordcompraQTITEM
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvordcompraCDORDCOMPRA: TcxGridDBColumn
            Caption = 'Ord Compra'
            DataBinding.FieldName = 'CDORDCOMPRA'
            Styles.Content = dtmmain.cxStyle1
            Width = 80
          end
          object tbvordcompraNMSTORDCOMPRA: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTORDCOMPRA'
            Width = 90
          end
          object tbvordcompraDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 80
          end
          object tbvordcompraCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'd Produto'
            DataBinding.FieldName = 'CDDIGITADO'
            Width = 120
          end
          object tbvordcompraNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 200
          end
          object tbvordcompraQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            Width = 80
          end
          object tbvordcompraVLUNITARIO: TcxGridDBColumn
            Caption = 'Vl Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 80
          end
          object tbvordcompraVLTOTAL: TcxGridDBColumn
            Caption = 'Vl Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 80
          end
        end
        object grdconsultaLevel1: TcxGridLevel
          GridView = tbvordcompra
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 59
    Width = 1031
    Height = 220
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1031
      Height = 40
      Align = alTop
      ExplicitWidth = 1052
    end
    object lbltpcobranca: TLabel
      Left = 736
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Cobran'#231'a'
      Transparent = True
    end
    object lblcondpagto: TLabel
      Left = 608
      Top = 24
      Width = 121
      Height = 13
      Caption = 'Condi'#231#227'o Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcondpagtoDblClick
    end
    object lbltporcamento: TLabel
      Left = 483
      Top = 24
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
      OnDblClick = lbltporcamentoDblClick
    end
    object Label6: TLabel
      Left = 411
      Top = 24
      Width = 59
      Height = 13
      Caption = 'Fechamento'
      Transparent = True
    end
    object lblnudias: TLabel
      Left = 333
      Top = 23
      Width = 36
      Height = 13
      Caption = 'N'#186' Dias'
      Transparent = True
    end
    object lblentrega: TLabel
      Left = 247
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Entrega'
      Transparent = True
    end
    object Label2: TLabel
      Left = 72
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object Label1: TLabel
      Left = 3
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label14: TLabel
      Left = 862
      Top = 24
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lbldtvalidade: TLabel
      Left = 160
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Validade'
      Transparent = True
    end
    object cbxcdtpcobranca: TcxDBLookupComboBox
      Left = 736
      Top = 38
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
      TabOrder = 7
      OnEnter = cbxcdtpcobrancaEnter
      OnExit = colorexit
      Width = 128
    end
    object cbxcdcondpagto: TcxDBLookupComboBox
      Left = 608
      Top = 38
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
      TabOrder = 6
      OnEnter = cbxcdcondpagtoEnter
      OnExit = colorexit
      Width = 129
    end
    object cbxcdtporcamento: TcxDBLookupComboBox
      Left = 483
      Top = 38
      DataBinding.DataField = 'CDTPORCAMENTO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDTPORCAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPORCAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = cbxcdtporcamentoEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 126
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 38
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
    object lblDTFECHAMENTO: TcxDBLabel
      Left = 411
      Top = 40
      DataBinding.DataField = 'DTFECHAMENTO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 73
    end
    object edtnudias: TcxDBSpinEdit
      Left = 333
      Top = 38
      DataBinding.DataField = 'nudias'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = edtnudiasExit
      OnKeyDown = nextcontrol
      Width = 74
    end
    object edtdtprventrega: TcxDBDateEdit
      Left = 247
      Top = 38
      DataBinding.DataField = 'DTPRVENTREGA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = edtdtprventregaExit
      OnKeyDown = nextcontrol
      Width = 86
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 72
      Top = 38
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
    object gbxcliente: TcxGroupBox
      Left = 0
      Top = 63
      Align = alTop
      Caption = 'Cliente'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Height = 39
      Width = 1031
      object lblNMCLIENTE: TDBText
        Left = 144
        Top = 16
        Width = 216
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
        OnDblClick = lblNMCLIENTEDblClick
      end
      object lblcodigo: TLabel
        Left = 4
        Top = 17
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object lbldsreferencia: TLabel
        Left = 603
        Top = 15
        Width = 52
        Height = 13
        Caption = 'Refer'#234'ncia'
        Transparent = True
      end
      object lblcontato: TLabel
        Left = 357
        Top = 15
        Width = 37
        Height = 13
        Caption = 'Contato'
        Transparent = True
      end
      object edtCDCLIENTE: TcxDBButtonEdit
        Left = 43
        Top = 15
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
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtCDCLIENTEKeyDown
        OnKeyPress = eventokeypress
        Width = 101
      end
      object edtdsreferencia: TcxDBTextEdit
        Left = 690
        Top = 13
        DataBinding.DataField = 'DSREFERENCIA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 169
      end
      object cbxcditcontcliente: TcxDBLookupComboBox
        Left = 395
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
        Left = 563
        Top = 13
        Width = 38
        Height = 21
        Action = actinserircontato
        LookAndFeel.NativeStyle = False
        TabOrder = 3
      end
    end
    object gbxoutras: TcxGroupBox
      Left = 0
      Top = 141
      Align = alTop
      Caption = 'Outras informa'#231#245'es'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Height = 39
      Width = 1031
      object lblrepresentante: TLabel
        Left = 2
        Top = 19
        Width = 70
        Height = 13
        Caption = 'Representante'
        Transparent = True
      end
      object lblcotacao: TLabel
        Left = 706
        Top = 19
        Width = 40
        Height = 13
        Alignment = taCenter
        Caption = 'Cota'#231#227'o'
        Transparent = True
      end
      object lblfuncioario: TLabel
        Left = 244
        Top = 19
        Width = 46
        Height = 13
        Caption = 'Vendedor'
        Transparent = True
      end
      object lblorcamentista: TLabel
        Left = 464
        Top = 21
        Width = 62
        Height = 13
        Caption = 'Or'#231'amentista'
        Transparent = True
      end
      object lblnucontrato: TLabel
        Left = 827
        Top = 18
        Width = 40
        Height = 13
        Alignment = taCenter
        Caption = 'Contrato'
        Transparent = True
      end
      object cbxcdfuncionario: TcxDBLookupComboBox
        Left = 291
        Top = 14
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
        OnEnter = cbxcdfuncionarioEnter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 172
      end
      object cbxcdrepresentante: TcxDBLookupComboBox
        Left = 73
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
        Width = 170
      end
      object edtnucotacao: TcxDBTextEdit
        Left = 746
        Top = 14
        DataBinding.DataField = 'NUCOTACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 83
      end
      object cbxcdfuncionarioorcamentista: TcxDBLookupComboBox
        Left = 535
        Top = 14
        DataBinding.DataField = 'CDFUNCIONARIOORCAMENTISTA'
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
        TabOrder = 2
        OnEnter = cbxcdfuncionarioorcamentistaEnter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 170
      end
      object edtnucontrato: TcxDBTextEdit
        Left = 873
        Top = 14
        DataBinding.DataField = 'NUCONTRATO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 98
      end
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
    object gbxfrete: TcxGroupBox
      Left = 0
      Top = 102
      Align = alTop
      Caption = 'Frete'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      Height = 39
      Width = 1031
      object lbltransportadora: TLabel
        Left = 380
        Top = 18
        Width = 33
        Height = 13
        Caption = 'Transp'
        Transparent = True
      end
      object lblvlfrete: TLabel
        Left = 246
        Top = 17
        Width = 24
        Height = 13
        Alignment = taCenter
        Caption = 'Valor'
        Transparent = True
      end
      object lbltpfrete: TLabel
        Left = 2
        Top = 16
        Width = 21
        Height = 13
        Caption = 'Tipo'
        Transparent = True
      end
      object cbxcdtpfrete: TcxDBLookupComboBox
        Left = 35
        Top = 13
        DataBinding.DataField = 'CDTPFRETE'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 250
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
        Width = 206
      end
      object cbxcdtransportadora: TcxDBLookupComboBox
        Left = 418
        Top = 13
        DataBinding.DataField = 'CDTRANSPORTADORA'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDTRANSPORTADORA'
        Properties.ListColumns = <
          item
            FieldName = 'NMTRANSPORTADORA'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = cbxcdtransportadoraEnter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 344
      end
      object edtvlfrete: TcxDBCalcEdit
        Left = 271
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
        Width = 108
      end
    end
    object edtdtvalidade: TcxDBDateEdit
      Left = 160
      Top = 38
      DataBinding.DataField = 'DTVALIDADE'
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
    object cbxcdstorcamento: TcxDBLookupComboBox
      Left = 862
      Top = 38
      DataBinding.DataField = 'CDSTORCAMENTO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDSTORCAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTORCAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 13
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 100
    end
    object gbxproduto: TcxGroupBox
      Left = 0
      Top = 180
      Align = alTop
      Caption = 'Produto Principal'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 14
      Height = 40
      Width = 1031
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
      end
      object Label8: TLabel
        Left = 165
        Top = 14
        Width = 28
        Height = 13
        Caption = 'Nome'
        Transparent = True
      end
      object txtnmproduto: TDBText
        Left = 197
        Top = 14
        Width = 508
        Height = 17
        DataField = 'NMPRODUTO'
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
      end
      object edtcddigitado: TcxDBButtonEdit
        Left = 45
        Top = 12
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
        Width = 120
      end
    end
  end
  object gbxtotal: TcxGroupBox
    Left = 0
    Top = 594
    Align = alBottom
    Caption = 'Valores'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Height = 33
    Width = 1031
    object lbldesconto: TLabel
      Left = 4
      Top = 15
      Width = 46
      Height = 13
      Caption = 'Desconto'
      Transparent = True
    end
    object Label11: TLabel
      Left = 466
      Top = 7
      Width = 40
      Height = 22
      Caption = 'Total'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lbltotalcipi: TLabel
      Left = 720
      Top = 7
      Width = 85
      Height = 22
      Caption = 'Total c IPI'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblvlacrescimo: TLabel
      Left = 249
      Top = 15
      Width = 49
      Height = 13
      Caption = 'Acr'#233'scimo'
      Transparent = True
    end
    object edtprdesconto: TcxDBCalcEdit
      Left = 53
      Top = 11
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
      Left = 140
      Top = 11
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
    object txtvltotal: TcxDBLabel
      Left = 515
      Top = 7
      DataBinding.DataField = 'VLTOTAL'
      DataBinding.DataSource = dts
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.LineOptions.InnerColor = clBlue
      Properties.LineOptions.OuterColor = clBlue
      Properties.ShadowedColor = clBlue
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsNone
      Style.Color = clBlue
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -19
      Style.Font.Name = 'Arial Rounded MT Bold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.Shadow = False
      Style.TextColor = clBlue
      Style.TextStyle = []
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.Color = clBlue
      StyleDisabled.TextColor = clBlue
      Transparent = True
      Height = 23
      Width = 200
      AnchorX = 715
    end
    object txtvltotalcipi: TcxDBLabel
      Left = 812
      Top = 7
      DataBinding.DataField = 'VLTOTALCIPI'
      DataBinding.DataSource = dts
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.LineOptions.InnerColor = clBlue
      Properties.LineOptions.OuterColor = clBlue
      Properties.ShadowedColor = clBlue
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsNone
      Style.Color = clBlue
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -19
      Style.Font.Name = 'Arial Rounded MT Bold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.Shadow = False
      Style.TextColor = clBlue
      Style.TextStyle = []
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.Color = clBlue
      StyleDisabled.TextColor = clBlue
      Transparent = True
      Height = 23
      Width = 200
      AnchorX = 1012
    end
    object edtvlacrescimo: TcxDBCalcEdit
      Left = 304
      Top = 11
      DataBinding.DataField = 'VLACRESCIMO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 108
    end
  end
  object sptitem: TcxSplitter
    Left = 703
    Top = 279
    Width = 8
    Height = 315
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salRight
    Control = pgcITEM
    Visible = False
  end
  object pgcITEM: TcxPageControl
    Left = 711
    Top = 279
    Width = 320
    Height = 315
    Align = alRight
    TabOrder = 8
    Properties.ActivePage = tbs3
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 315
    ClientRectRight = 320
    ClientRectTop = 24
    object tbs2: TcxTabSheet
      Caption = '1 Pe'#231'a'
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 368
      object pgc3: TcxPageControl
        Left = 0
        Top = 0
        Width = 320
        Height = 291
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tbs7
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        OnChange = pgc3Change
        ExplicitHeight = 368
        ClientRectBottom = 291
        ClientRectRight = 320
        ClientRectTop = 24
        object tbs7: TcxTabSheet
          Caption = 'Valores'
          ImageIndex = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 344
          object vgritemcusto: TcxDBVerticalGrid
            Left = 0
            Top = 0
            Width = 320
            Height = 112
            Align = alTop
            LookAndFeel.NativeStyle = False
            OptionsView.ScrollBars = ssVertical
            OptionsView.RowHeaderWidth = 143
            Navigator.Buttons.CustomButtons = <>
            TabOrder = 0
            DataController.DataSource = dtsdetail
            Version = 1
            object cxDBEditorRow1: TcxDBEditorRow
              Properties.Caption = 'Custo'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLPRODUCAOP'
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object cxDBEditorRow2: TcxDBEditorRow
              Properties.Caption = 'Mat'#233'ria-Prima'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLMATERIALP'
              ID = 1
              ParentID = 0
              Index = 0
              Version = 1
            end
            object vgritemcustoDBEditorRow1: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Recurso'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLRECURSOP'
              ID = 2
              ParentID = 0
              Index = 1
              Version = 1
            end
            object edtitemprepacao: TcxDBEditorRow
              Properties.Caption = 'Prepara'#231#227'o'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLPREPARACAOP'
              ID = 3
              ParentID = 2
              Index = 0
              Version = 1
            end
            object edtitemqtoperacao: TcxDBEditorRow
              Properties.Caption = 'Opera'#231#227'o'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLOPERACAOP'
              ID = 4
              ParentID = 2
              Index = 1
              Version = 1
            end
            object cxDBEditorRow7: TcxDBEditorRow
              Properties.Caption = 'Servi'#231'o Terceirizado'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLCUSTOP'
              ID = 5
              ParentID = 0
              Index = 2
              Version = 1
            end
            object cxDBEditorRow8: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Horas'
              Properties.DataBinding.FieldName = 'QTHORAP'
              ID = 6
              ParentID = -1
              Index = 1
              Version = 1
            end
            object cxDBEditorRow9: TcxDBEditorRow
              Properties.Caption = 'Opera'#231#227'o'
              Properties.DataBinding.FieldName = 'QTOPERACAOP'
              ID = 7
              ParentID = 6
              Index = 0
              Version = 1
            end
            object cxDBEditorRow10: TcxDBEditorRow
              Properties.Caption = 'Prepara'#231#227'o'
              Properties.DataBinding.FieldName = 'QTPREPARACAOP'
              ID = 8
              ParentID = 6
              Index = 1
              Version = 1
            end
          end
          object grdpeca: TcxDBVerticalGrid
            Left = 0
            Top = 116
            Width = 320
            Height = 151
            Align = alClient
            LookAndFeel.NativeStyle = False
            OptionsView.ScrollBars = ssVertical
            OptionsView.RowHeaderWidth = 107
            Navigator.Buttons.CustomButtons = <>
            TabOrder = 1
            DataController.DataSource = dtsdetail
            ExplicitHeight = 228
            Version = 1
            object grdpecaDBEditorRow1: TcxDBEditorRow
              Properties.Caption = 'Custo'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLPRODUCAOP'
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow2: TcxDBEditorRow
              Properties.Caption = 'Pre'#231'o Venda Operacional'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLUNITARIO'
              ID = 1
              ParentID = -1
              Index = 1
              Version = 1
            end
            object grdpecaDBEditorRow3: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Impostos'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLIMPOSTOP'
              ID = 2
              ParentID = -1
              Index = 2
              Version = 1
            end
            object grdpecaVLICMSP: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'ICMS'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLICMSP'
              ID = 3
              ParentID = 2
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow27: TcxDBEditorRow
              Properties.Caption = 'Al'#237'quota'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'ALICMS'
              ID = 4
              ParentID = 3
              Index = 0
              Version = 1
            end
            object grdpecacdtpicms: TcxDBEditorRow
              Properties.Caption = 'Tipo'
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.KeyFieldNames = 'CDTPICMS'
              Properties.EditProperties.ListColumns = <
                item
                  FieldName = 'NMTPICMS'
                end>
              Properties.EditProperties.ListOptions.ShowHeader = False
              Properties.DataBinding.FieldName = 'CDTPICMS'
              ID = 5
              ParentID = 3
              Index = 1
              Version = 1
            end
            object grdpecaVLIPIP: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'IPI'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLIPIP'
              ID = 6
              ParentID = 2
              Index = 1
              Version = 1
            end
            object grdpecaDBEditorRow23: TcxDBEditorRow
              Properties.Caption = 'Al'#237'quota'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'ALIPI'
              ID = 7
              ParentID = 6
              Index = 0
              Version = 1
            end
            object grdpecacdtpipi: TcxDBEditorRow
              Properties.Caption = 'Tipo'
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.KeyFieldNames = 'CDTPIPI'
              Properties.EditProperties.ListColumns = <
                item
                  FieldName = 'NMTPIPI'
                end>
              Properties.EditProperties.ListOptions.ShowHeader = False
              Properties.DataBinding.FieldName = 'CDTPIPI'
              ID = 8
              ParentID = 6
              Index = 1
              Version = 1
            end
            object grdpecaVLIRPJP: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'IRPJ'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLIRPJP'
              ID = 9
              ParentID = 2
              Index = 2
              Version = 1
            end
            object grdpecaDBEditorRow44: TcxDBEditorRow
              Properties.Caption = 'Al'#237'quota'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'ALIRPJ'
              ID = 10
              ParentID = 9
              Index = 0
              Version = 1
            end
            object grdpecaVLCSLLP: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'CSLL'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLCSLLP'
              ID = 11
              ParentID = 2
              Index = 3
              Version = 1
            end
            object grdpecaDBEditorRow42: TcxDBEditorRow
              Properties.Caption = 'Al'#237'quota'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'ALCSLL'
              ID = 12
              ParentID = 11
              Index = 0
              Version = 1
            end
            object grdpecaVLSIMPLESP: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Simples'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLSIMPLESP'
              ID = 13
              ParentID = 2
              Index = 4
              Version = 1
            end
            object grdpecaDBEditorRow38: TcxDBEditorRow
              Properties.Caption = 'Al'#237'quota'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'ALSIMPLES'
              ID = 14
              ParentID = 13
              Index = 0
              Version = 1
            end
            object grdpecaVLISSP: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'ISS'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLISSP'
              ID = 15
              ParentID = 2
              Index = 5
              Version = 1
            end
            object grdpecaDBEditorRow30: TcxDBEditorRow
              Properties.Caption = 'Al'#237'quota'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'ALISS'
              ID = 16
              ParentID = 15
              Index = 0
              Version = 1
            end
            object grdpecaVLCOFINSP: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'COFINS'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLCOFINSP'
              ID = 17
              ParentID = 2
              Index = 6
              Version = 1
            end
            object grdpecaDBEditorRow24: TcxDBEditorRow
              Properties.Caption = 'Al'#237'quota'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'ALCOFINS'
              ID = 18
              ParentID = 17
              Index = 0
              Version = 1
            end
            object grdpecaVLPISP: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'PIS'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLPISP'
              ID = 19
              ParentID = 2
              Index = 7
              Version = 1
            end
            object grdpecaDBEditorRow25: TcxDBEditorRow
              Properties.Caption = 'Al'#237'qutoa'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'ALPIS'
              ID = 20
              ParentID = 19
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow8: TcxDBEditorRow
              Properties.Caption = 'Pre'#231'o Venda L'#237'quida'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLVENDALIQUIDAP'
              ID = 21
              ParentID = -1
              Index = 3
              Version = 1
            end
            object grdpecaDBEditorRow9: TcxDBEditorRow
              Properties.Caption = 'Lucro Bruto'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLLUCROBRUTOP'
              ID = 22
              ParentID = -1
              Index = 4
              Version = 1
            end
            object grdpecaDBEditorRow10: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Despesas'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLDESPESAP'
              ID = 23
              ParentID = -1
              Index = 5
              Version = 1
            end
            object grdpecaDBEditorRow11: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Administrativa'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLDESPESAADMINISTRATIVAP'
              ID = 24
              ParentID = 23
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow32: TcxDBEditorRow
              Properties.Caption = 'Porcentagem'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'PRDESPESAADMINISTRATIVA'
              ID = 25
              ParentID = 24
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow12: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Comercial'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLDESPESACOMERCIALP'
              ID = 26
              ParentID = 23
              Index = 1
              Version = 1
            end
            object grdpecaDBEditorRow33: TcxDBEditorRow
              Properties.Caption = 'Porcentagem'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'PRDESPESACOMERCIAL'
              ID = 27
              ParentID = 26
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow13: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Frete'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLDESPESAFRETEP'
              ID = 28
              ParentID = 23
              Index = 2
              Version = 1
            end
            object grdpecaDBEditorRow34: TcxDBEditorRow
              Properties.Caption = 'Porcentagem'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'PRDESPESAFRETE'
              ID = 29
              ParentID = 28
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow14: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Embalagem'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLDESPESAEMBALAGEMP'
              ID = 30
              ParentID = 23
              Index = 3
              Version = 1
            end
            object grdpecaDBEditorRow35: TcxDBEditorRow
              Properties.Caption = 'Porcentagem'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'PRDESPESAEMBALAGEM'
              ID = 31
              ParentID = 30
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow15: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Seguro'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLDESPESASEGUROP'
              ID = 32
              ParentID = 23
              Index = 4
              Version = 1
            end
            object grdpecaDBEditorRow36: TcxDBEditorRow
              Properties.Caption = 'Porcentagem'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'PRDESPESASEGURO'
              ID = 33
              ParentID = 32
              Index = 0
              Version = 1
            end
            object grdpecaVLLUCROIRCSP: TcxDBEditorRow
              Properties.Caption = 'Lucro Antes IR/CS'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLLUCROIRCSP'
              ID = 34
              ParentID = -1
              Index = 6
              Version = 1
            end
            object grdpecaVLIRCSLLP: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'IR/CS'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLIRCSLLP'
              ID = 35
              ParentID = -1
              Index = 7
              Version = 1
            end
            object grdpecaDBEditorRow18: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'CSLL'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLCSLLP'
              ID = 36
              ParentID = 35
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow28: TcxDBEditorRow
              Properties.Caption = 'Al'#237'quota'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'ALCSLL'
              ID = 37
              ParentID = 36
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow17: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'IRPJ'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLIRPJP'
              ID = 38
              ParentID = 35
              Index = 1
              Version = 1
            end
            object grdpecaDBEditorRow29: TcxDBEditorRow
              Properties.Caption = 'Al'#237'quota'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'ALIRPJ'
              ID = 39
              ParentID = 38
              Index = 0
              Version = 1
            end
            object grdpecaDBEditorRow20: TcxDBEditorRow
              Expanded = False
              Properties.Caption = 'Lucro Liquido'
              Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DataBinding.FieldName = 'VLLUCROP'
              ID = 40
              ParentID = -1
              Index = 8
              Version = 1
            end
            object grdpecaDBEditorRow21: TcxDBEditorRow
              Properties.Caption = '% Lucro L'#237'quido sobre Pre'#231'o Venda Operacional'
              Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
              Properties.DataBinding.FieldName = 'PRLUCRO'
              ID = 41
              ParentID = 40
              Index = 0
              Version = 1
            end
          end
          object spl4: TcxSplitter
            Left = 0
            Top = 112
            Width = 320
            Height = 4
            AlignSplitter = salTop
            Control = vgritemcusto
          end
        end
        object tbspecagrafico: TcxTabSheet
          Caption = 'Gr'#225'fico'
          ImageIndex = 1
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 344
          object cxGrid2: TcxGrid
            Left = 0
            Top = 163
            Width = 320
            Height = 104
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            ExplicitHeight = 181
            object cxGrid2DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxGrid2DBChartView1: TcxGridDBChartView
              Categories.DataBinding.FieldName = 'nome'
              DataController.DataSource = dtspizzaitem
              DiagramPie.Active = True
              DiagramPie.SeriesCaptions = False
              DiagramPie.Values.CaptionPosition = pdvcpOutsideEnd
              DiagramPie.Values.CaptionItems = [pdvciPercentage]
              Title.Text = 'Composi'#231#227'o do Pre'#231'o'
              ToolBox.Border = tbNone
              object cxGrid2DBChartView1DataGroup1: TcxGridDBChartDataGroup
                DataBinding.FieldName = 'nome'
                SortOrder = soNone
                Visible = False
                VisibleForCustomization = False
              end
              object cxGrid2DBChartView1Series1: TcxGridDBChartSeries
                DataBinding.FieldName = 'valor'
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBChartView1
            end
          end
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 320
            Height = 155
            Align = alTop
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            object cxGrid3DBChartView1: TcxGridDBChartView
              Categories.DataBinding.FieldName = 'nome'
              DataController.DataSource = dtspizzapeca
              DiagramPie.Active = True
              DiagramPie.SeriesCaptions = False
              DiagramPie.Values.AngleOfFirstSlice = 1
              DiagramPie.Values.CaptionPosition = pdvcpOutsideEnd
              DiagramPie.Values.CaptionItems = [pdvciPercentage]
              Title.Text = 'Composi'#231#227'o do Custo'
              ToolBox.Border = tbNone
              object cxGrid3DBChartView1DataGroup1: TcxGridDBChartDataGroup
                DataBinding.FieldName = 'nome'
                SortOrder = soNone
                Visible = False
              end
              object cxGrid3DBChartView1Series1: TcxGridDBChartSeries
                DataBinding.FieldName = 'valor'
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBChartView1
            end
          end
          object spl2: TcxSplitter
            Left = 0
            Top = 155
            Width = 8
            Height = 8
            HotZoneClassName = 'TcxXPTaskBarStyle'
            AlignSplitter = salTop
            Control = cxGrid3
          end
        end
      end
    end
    object tbs3: TcxTabSheet
      Caption = #205'tem'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxDBVerticalGrid3: TcxDBVerticalGrid
        Left = 0
        Top = 0
        Width = 320
        Height = 112
        Align = alTop
        LookAndFeel.NativeStyle = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.RowHeaderWidth = 143
        Navigator.Buttons.CustomButtons = <>
        TabOrder = 0
        DataController.DataSource = dtsdetail
        Version = 1
        object cxDBEditorRow11: TcxDBEditorRow
          Properties.Caption = 'Custo'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLPRODUCAO'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object cxDBEditorRow12: TcxDBEditorRow
          Properties.Caption = 'Mat'#233'ria-Prima'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLMATERIAL'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object cxDBVerticalGrid3DBEditorRow1: TcxDBEditorRow
          Expanded = False
          Properties.Caption = 'Recurso'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLRECURSO'
          ID = 2
          ParentID = 0
          Index = 1
          Version = 1
        end
        object cxDBEditorRow16: TcxDBEditorRow
          Properties.Caption = 'Prepara'#231#227'o'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLPREPARACAO'
          ID = 3
          ParentID = 2
          Index = 0
          Version = 1
        end
        object cxDBEditorRow15: TcxDBEditorRow
          Properties.Caption = 'Opera'#231#227'o'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLOPERACAO'
          ID = 4
          ParentID = 2
          Index = 1
          Version = 1
        end
        object cxDBEditorRow17: TcxDBEditorRow
          Properties.Caption = 'Servi'#231'o Terceirizado'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLCUSTO'
          ID = 5
          ParentID = 0
          Index = 2
          Version = 1
        end
        object cxDBEditorRow18: TcxDBEditorRow
          Expanded = False
          Properties.Caption = 'Horas'
          Properties.DataBinding.FieldName = 'QTHORA'
          ID = 6
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxDBEditorRow19: TcxDBEditorRow
          Properties.Caption = 'Opera'#231#227'o'
          Properties.DataBinding.FieldName = 'QTOPERACAO'
          ID = 7
          ParentID = 6
          Index = 0
          Version = 1
        end
        object cxDBEditorRow20: TcxDBEditorRow
          Properties.Caption = 'Prepara'#231#227'o'
          Properties.DataBinding.FieldName = 'QTPREPARACAO'
          ID = 8
          ParentID = 6
          Index = 1
          Version = 1
        end
      end
      object grditem: TcxDBVerticalGrid
        Left = 0
        Top = 116
        Width = 320
        Height = 175
        Align = alClient
        LookAndFeel.NativeStyle = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.RowHeaderWidth = 143
        Navigator.Buttons.CustomButtons = <>
        TabOrder = 1
        DataController.DataSource = dtsdetail
        Version = 1
        object cxDBEditorRow21: TcxDBEditorRow
          Properties.Caption = 'Custo'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLPRODUCAO'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object cxDBEditorRow22: TcxDBEditorRow
          Properties.Caption = 'Pre'#231'o Venda Operacional'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLTOTAL'
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxDBEditorRow23: TcxDBEditorRow
          Expanded = False
          Properties.Caption = 'Impostos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLIMPOSTO'
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object grditemvlicms: TcxDBEditorRow
          Properties.Caption = 'ICMS'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLICMS'
          ID = 3
          ParentID = 2
          Index = 0
          Version = 1
        end
        object grditemvlipi: TcxDBEditorRow
          Properties.Caption = 'IPI'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLIPI'
          ID = 4
          ParentID = 2
          Index = 1
          Version = 1
        end
        object grditemvlirpj: TcxDBEditorRow
          Properties.Caption = 'IRPJ'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLIRPJ'
          ID = 5
          ParentID = 2
          Index = 2
          Version = 1
        end
        object grditemvlcsll: TcxDBEditorRow
          Properties.Caption = 'CSLL'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLCSLL'
          ID = 6
          ParentID = 2
          Index = 3
          Version = 1
        end
        object grditemvlsimples: TcxDBEditorRow
          Properties.Caption = 'Simples'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLSIMPLES'
          ID = 7
          ParentID = 2
          Index = 4
          Version = 1
        end
        object grditemvliss: TcxDBEditorRow
          Properties.Caption = 'ISS'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLISS'
          ID = 8
          ParentID = 2
          Index = 5
          Version = 1
        end
        object grditemvlcofins: TcxDBEditorRow
          Properties.Caption = 'COFINS'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLCOFINS'
          ID = 9
          ParentID = 2
          Index = 6
          Version = 1
        end
        object grditemvlpis: TcxDBEditorRow
          Properties.Caption = 'PIS'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLPIS'
          ID = 10
          ParentID = 2
          Index = 7
          Version = 1
        end
        object cxDBEditorRow36: TcxDBEditorRow
          Properties.Caption = 'Pre'#231'o Venda L'#237'quida'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLVENDALIQUIDA'
          ID = 11
          ParentID = -1
          Index = 3
          Version = 1
        end
        object cxDBEditorRow37: TcxDBEditorRow
          Properties.Caption = 'Lucro Bruto'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLLUCROBRUTO'
          ID = 12
          ParentID = -1
          Index = 4
          Version = 1
        end
        object cxDBEditorRow38: TcxDBEditorRow
          Expanded = False
          Properties.Caption = 'Despesas'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDESPESA'
          ID = 13
          ParentID = -1
          Index = 5
          Version = 1
        end
        object cxDBEditorRow39: TcxDBEditorRow
          Properties.Caption = 'Administrativa'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDESPESAADMINISTRATIVA'
          ID = 14
          ParentID = 13
          Index = 0
          Version = 1
        end
        object cxDBEditorRow40: TcxDBEditorRow
          Properties.Caption = 'Comercial'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDESPESACOMERCIAL'
          ID = 15
          ParentID = 13
          Index = 1
          Version = 1
        end
        object cxDBEditorRow41: TcxDBEditorRow
          Properties.Caption = 'Frete'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDESPESAFRETE'
          ID = 16
          ParentID = 13
          Index = 2
          Version = 1
        end
        object cxDBEditorRow42: TcxDBEditorRow
          Properties.Caption = 'Embalagem'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDESPESAEMBALAGEM'
          ID = 17
          ParentID = 13
          Index = 3
          Version = 1
        end
        object cxDBEditorRow43: TcxDBEditorRow
          Properties.Caption = 'Seguro'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDESPESASEGURO'
          ID = 18
          ParentID = 13
          Index = 4
          Version = 1
        end
        object grditemVLLUCROIRCS: TcxDBEditorRow
          Properties.Caption = 'Lucro Antes IR/CS'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLLUCROIRCS'
          ID = 19
          ParentID = -1
          Index = 6
          Version = 1
        end
        object grditemVLIRCSLL: TcxDBEditorRow
          Expanded = False
          Properties.Caption = 'IR/CS'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLIRCSLL'
          ID = 20
          ParentID = -1
          Index = 7
          Version = 1
        end
        object cxDBEditorRow46: TcxDBEditorRow
          Properties.Caption = 'CSLL'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLCSLL'
          ID = 21
          ParentID = 20
          Index = 0
          Version = 1
        end
        object cxDBEditorRow48: TcxDBEditorRow
          Properties.Caption = 'IRPJ'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLIRPJ'
          ID = 22
          ParentID = 20
          Index = 1
          Version = 1
        end
        object cxDBEditorRow50: TcxDBEditorRow
          Properties.Caption = 'Lucro Liquido'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLLUCRO'
          ID = 23
          ParentID = -1
          Index = 8
          Version = 1
        end
        object grditemDBEditorRow3: TcxDBEditorRow
          Properties.Caption = 'Desconto Produ'#231#227'o'
          Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
          Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Properties.DataBinding.FieldName = 'VLDESCONTOPRODUCAO'
          ID = 24
          ParentID = -1
          Index = 9
          Version = 1
        end
      end
      object spl3: TcxSplitter
        Left = 0
        Top = 112
        Width = 320
        Height = 4
        AlignSplitter = salTop
        Control = cxDBVerticalGrid3
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 116
    Top = 33
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
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      ShortCut = 16450
      OnExecute = actcopiarExecute
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
    object actImprimir: TAction
      Caption = 'Imprimir'
      Enabled = False
      Hint = 'Imprimir'
      ImageIndex = 3
      ShortCut = 16457
      OnExecute = actImprimirExecute
    end
    object actimprimirorcamento: TAction
      Caption = '333 - Or'#231'amento'
      OnExecute = actimprimirorcamentoExecute
    end
    object actimprimiranalitico: TAction
      Caption = 'Anal'#237'tico'
      ImageIndex = 3
      OnExecute = actimprimiranaliticoExecute
    end
    object actAbrirCliente: TAction
      Hint = 'cliente'
      ImageIndex = 35
      OnExecute = actAbrirClienteExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      ImageIndex = 24
      OnExecute = actabrirprodutoExecute
    end
    object actabrirfuncionario: TAction
      Hint = 'funcionario'
      OnExecute = actabrirfuncionarioExecute
    end
    object actabrirtransportadora: TAction
      Hint = 'transportadora'
      OnExecute = actabrirtransportadoraExecute
    end
    object actgerarpedido: TAction
      Caption = 'Gerar Pedido'
      Enabled = False
      ImageIndex = 25
      ShortCut = 16455
      OnExecute = actgerarpedidoExecute
    end
    object actlocalizarentrega: TAction
      Caption = 'Localizar'
      Enabled = False
      ImageIndex = 90
      OnExecute = actlocalizarentregaExecute
    end
    object actlimparentrega: TAction
      Caption = 'Limpar Entrega'
      Enabled = False
      OnExecute = actlimparentregaExecute
    end
    object actanalisecritica: TAction
      Caption = 'An'#225'lise Critica'
      ImageIndex = 147
      Visible = False
      OnExecute = actanalisecriticaExecute
    end
    object actabrirprodutomp: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutompExecute
    end
    object actemail: TAction
      Caption = 'E-mail'
      Enabled = False
      ImageIndex = 146
      OnExecute = actemailExecute
    end
    object actitdeclinar: TAction
      Caption = 'Declinar'
      Enabled = False
      Hint = 'Declinar'
      ImageIndex = 111
      ShortCut = 8306
      Visible = False
      OnExecute = actitdeclinarExecute
    end
    object actitreabrir: TAction
      Caption = 'Reabrir'
      Enabled = False
      Hint = 'Reabrir'
      ImageIndex = 38
      ShortCut = 8304
      Visible = False
      OnExecute = actitreabrirExecute
    end
    object actdetalhar: TAction
      Caption = 'Detalhar'
      Enabled = False
      ImageIndex = 54
      ShortCut = 8305
      Visible = False
      OnExecute = actdetalharExecute
    end
    object actinserircontato: TAction
      Caption = 'Inserir'
      Enabled = False
      OnExecute = actinserircontatoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actabrirtporcamento: TAction
      Hint = 'tporcamento'
      OnExecute = actabrirtporcamentoExecute
    end
    object actabrircondpagto: TAction
      Hint = 'condpagto'
      OnExecute = actabrircondpagtoExecute
    end
    object actabrirordcompra: TAction
      Hint = 'ordcompra'
      OnExecute = actabrirordcompraExecute
    end
    object actconsultapedido: TAction
      AutoCheck = True
      Caption = 'Pedido'
      GroupIndex = 1
      ImageIndex = 25
      OnExecute = actconsultapedidoExecute
    end
    object actconsultaordproducao: TAction
      AutoCheck = True
      Caption = 'Ordem Produ'#231#227'o'
      GroupIndex = 1
      ImageIndex = 157
      OnExecute = actconsultaordproducaoExecute
    end
    object actconsultaordcompra: TAction
      AutoCheck = True
      Caption = 'Ordem de Compra'
      GroupIndex = 1
      ImageIndex = 77
      OnExecute = actconsultaordcompraExecute
    end
    object actgerarrequisicaoproducao: TAction
      Caption = 'Gerar Requisi'#231#227'o Produ'#231#227'o'
      OnExecute = actgerarrequisicaoproducaoExecute
    end
    object actconsultarequisicaoproducao: TAction
      AutoCheck = True
      Caption = 'Requisi'#231#227'o Produ'#231#227'o'
      GroupIndex = 1
      OnExecute = actconsultarequisicaoproducaoExecute
    end
    object actdetail: TAction
      Caption = 'Grade de Produtos'
      ShortCut = 119
      OnExecute = actdetailExecute
    end
    object actarquivo: TAction
      Caption = 'Arquivo(s)'
      OnExecute = actarquivoExecute
    end
    object actabrirpedido: TAction
      Hint = 'pedido'
      OnExecute = actabrirpedidoExecute
    end
    object actabrirordproducao: TAction
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
    end
    object actabrirrequisicaoproducao: TAction
      Hint = 'requisicaoproducao'
      OnExecute = actabrirrequisicaoproducaoExecute
    end
    object actgerarcotacao: TAction
      Caption = 'Gerar Cota'#231#227'o'
      OnExecute = actgerarcotacaoExecute
    end
    object actexibirmotivodeclinarorcamento: TAction
      Caption = 'Exibir motivo de Declinar Or'#231'amento'
      OnExecute = actexibirmotivodeclinarorcamentoExecute
    end
    object actmudarstatus: TAction
      Caption = 'Mudar Status'
      OnExecute = actmudarstatusExecute
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
    Left = 88
    Top = 57
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
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
      Caption = 'itpedido'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 290
      FloatTop = 17
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bmg1Bar3: TdxBar
      BorderStyle = bbsNone
      Caption = 'consulta'
      CaptionButtons = <>
      DockControl = bdcconsulta
      DockedDockControl = bdcconsulta
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 489
      FloatTop = 118
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnpedido'
        end
        item
          Visible = True
          ItemName = 'btnordproducao'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'btnordcompra'
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
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
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
      Action = actimprimirorcamento
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actimprimiranalitico
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actemail
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actemail
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actitdeclinar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = actitreabrir
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = actdetalhar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actanalisecritica
      Category = 0
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumiimprimir
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Im'#243'vel'
      Category = 0
      Enabled = False
      Visible = ivAlways
      ImageIndex = 138
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actgerarpedido
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actgerarpedido
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actcopiar
      Category = 0
    end
    object btnpedido: TdxBarButton
      Action = actconsultapedido
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object btnordproducao: TdxBarButton
      Action = actconsultaordproducao
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton20: TdxBarButton
      Action = actgerarrequisicaoproducao
      Category = 0
    end
    object dxBarButton21: TdxBarButton
      Action = actconsultarequisicaoproducao
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton22: TdxBarButton
      Action = actdetail
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = actarquivo
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = actgerarcotacao
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = actexibirmotivodeclinarorcamento
      Category = 0
    end
    object bsiStatus: TdxBarSubItem
      Caption = 'Status'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object btnordcompra: TdxBarButton
      Action = actconsultaordcompra
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT O.*,C.RZSOCIAL,P.NMPRODUTO,C.NMCLIENTE,F.NMFUNCIONARIO'#13#10'F' +
      'ROM ORCAMENTO O '#13#10'LEFT JOIN CLIENTE C ON C.CDCLIENTE=O.CDCLIENTE' +
      ' AND C.CDEMPRESA=O.CDEMPRESA'#13#10'LEFT JOIN PRODUTO P ON P.CDEMPRESA' +
      '=O.CDEMPRESA AND P.CDPRODUTO=O.CDPRODUTO LEFT JOIN FUNCIONARIO F' +
      ' ON F.CDFUNCIONARIO=O.CDFUNCIONARIO AND F.CDEMPRESA=O.CDEMPRESA'#13 +
      #10'WHERE O.CDEMPRESA=:CDEMPRESA AND O.CDORCAMENTO=:CDORCAMENTO'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDORCAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 783
    Top = 241
    object sdsCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
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
    object sdsCDSTORCAMENTO: TIntegerField
      FieldName = 'CDSTORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTPORCAMENTO: TIntegerField
      FieldName = 'CDTPORCAMENTO'
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
    object sdsCDFUNCIONARIOVENDEDOR: TIntegerField
      FieldName = 'CDFUNCIONARIOVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIOORCAMENTISTA: TIntegerField
      FieldName = 'CDFUNCIONARIOORCAMENTISTA'
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
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCOTACAO: TStringField
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLTOTALSDESCONTO: TFMTBCDField
      FieldName = 'VLTOTALSDESCONTO'
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
    object sdsQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTAPROVADO: TFloatField
      FieldName = 'QTAPROVADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTFECHAMENTO: TDateField
      FieldName = 'DTFECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
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
    object sdsPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsRZSOCIAL: TStringField
      FieldName = 'RZSOCIAL'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSREFERENCIA: TStringField
      FieldName = 'DSREFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    object sdsCDCLIENTEENTREGA: TIntegerField
      FieldName = 'CDCLIENTEENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTRESPOSTA: TDateField
      FieldName = 'DTRESPOSTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDITCONTCLIENTE: TIntegerField
      FieldName = 'CDITCONTCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCSLL: TFMTBCDField
      FieldName = 'VLCSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLIRPJ: TFMTBCDField
      FieldName = 'VLIRPJ'
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
    object sdsVLMATERIAL: TFMTBCDField
      FieldName = 'VLMATERIAL'
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
    object sdsVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTHORA: TFloatField
      FieldName = 'QTHORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLVENDALIQUIDA: TFMTBCDField
      FieldName = 'VLVENDALIQUIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLLUCROBRUTO: TFMTBCDField
      FieldName = 'VLLUCROBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDESPESA: TFMTBCDField
      FieldName = 'VLDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDESPESAADMINISTRATIVA: TFMTBCDField
      FieldName = 'VLDESPESAADMINISTRATIVA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDESPESAFRETE: TFMTBCDField
      FieldName = 'VLDESPESAFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDESPESACOMERCIAL: TFMTBCDField
      FieldName = 'VLDESPESACOMERCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDESPESAEMBALAGEM: TFMTBCDField
      FieldName = 'VLDESPESAEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDESPESASEGURO: TFMTBCDField
      FieldName = 'VLDESPESASEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLLUCROIR: TFMTBCDField
      FieldName = 'VLLUCROIR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLIRCSLL: TFMTBCDField
      FieldName = 'VLIRCSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCPP: TFMTBCDField
      FieldName = 'VLCPP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSIMPLES: TFMTBCDField
      FieldName = 'VLSIMPLES'
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
    object sdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDORCAMENTOATRAVESDE: TIntegerField
      FieldName = 'CDORCAMENTOATRAVESDE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRRESPOSTA: TTimeField
      FieldName = 'HRRESPOSTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRRESPOSTAFINAL: TTimeField
      FieldName = 'HRRESPOSTAFINAL'
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
    object sdsNUCONTRATO: TStringField
      FieldName = 'NUCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPERIODICIDADE: TIntegerField
      FieldName = 'CDPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPERIODICIDADE: TIntegerField
      FieldName = 'NUPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRMULTA: TFloatField
      FieldName = 'PRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      Size = 30
    end
    object sdsDSTAG: TStringField
      FieldName = 'DSTAG'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUDIASRESCISAO: TIntegerField
      FieldName = 'NUDIASRESCISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSTAG2: TStringField
      FieldName = 'DSTAG2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSTAG3: TStringField
      FieldName = 'DSTAG3'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUDIASMEDICAO: TIntegerField
      FieldName = 'NUDIASMEDICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSTAG4: TStringField
      FieldName = 'DSTAG4'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsBOALMOCO: TStringField
      FieldName = 'BOALMOCO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDITCONTCLIENTERESPONSAVEL: TIntegerField
      FieldName = 'CDITCONTCLIENTERESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOMANUTENCAO: TStringField
      FieldName = 'BOMANUTENCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRFIM: TTimeField
      FieldName = 'HRFIM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPERIODICIDADEATENDIMENTO: TIntegerField
      FieldName = 'NUPERIODICIDADEATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPERIODICIDADEATENDIMENTO: TIntegerField
      FieldName = 'CDPERIODICIDADEATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSTAG5: TStringField
      FieldName = 'DSTAG5'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDTEMAIL: TDateField
      FieldName = 'DTEMAIL'
      ProviderFlags = [pfInUpdate]
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
    object sdsCDCLIENTELIBERADO: TLargeintField
      FieldName = 'CDCLIENTELIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOITEMDESCONTO: TStringField
      FieldName = 'BOITEMDESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 812
    Top = 241
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    OnPostError = cdsPostError
    Left = 841
    Top = 240
    object cdsCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
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
    object cdsCDSTORCAMENTO: TIntegerField
      FieldName = 'CDSTORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDTPORCAMENTO: TIntegerField
      FieldName = 'CDTPORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPORCAMENTOValidate
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
    object cdsCDFUNCIONARIOVENDEDOR: TIntegerField
      FieldName = 'CDFUNCIONARIOVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIOORCAMENTISTA: TIntegerField
      FieldName = 'CDFUNCIONARIOORCAMENTISTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIOORCAMENTISTAValidate
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
      OnValidate = cdsDTEMISSAOValidate
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDTPRVENTREGAValidate
    end
    object cdsDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCOTACAO: TStringField
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCOTACAOValidate
    end
    object cdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPCOBRANCAValidate
    end
    object cdsPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsPRDESCONTOValidate
    end
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLDESCONTOValidate
      Precision = 15
      Size = 2
    end
    object cdsVLTOTALSDESCONTO: TFMTBCDField
      FieldName = 'VLTOTALSDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDSOBSINTERNA: TBlobField
      FieldName = 'DSOBSINTERNA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUDIASValidate
    end
    object cdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLFRETEValidate
      Precision = 15
      Size = 2
    end
    object cdsQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTAPROVADO: TFloatField
      FieldName = 'QTAPROVADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTFECHAMENTO: TDateField
      FieldName = 'DTFECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLTOTALCIPI: TFMTBCDField
      FieldName = 'VLTOTALCIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsRZSOCIAL: TStringField
      FieldName = 'RZSOCIAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIOValidate
    end
    object cdsDSREFERENCIA: TStringField
      FieldName = 'DSREFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    object cdsCDCLIENTEENTREGA: TIntegerField
      FieldName = 'CDCLIENTEENTREGA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCLIENTEENTREGAValidate
    end
    object cdsDTRESPOSTA: TDateField
      FieldName = 'DTRESPOSTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDITCONTCLIENTE: TIntegerField
      FieldName = 'CDITCONTCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdshstorcamento: TDataSetField
      FieldName = 'sdshstorcamento'
      ProviderFlags = []
    end
    object cdsVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCSLL: TFMTBCDField
      FieldName = 'VLCSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLIRPJ: TFMTBCDField
      FieldName = 'VLIRPJ'
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
    object cdsVLMATERIAL: TFMTBCDField
      FieldName = 'VLMATERIAL'
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
    object cdsVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTHORA: TFloatField
      FieldName = 'QTHORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLVENDALIQUIDA: TFMTBCDField
      FieldName = 'VLVENDALIQUIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLLUCROBRUTO: TFMTBCDField
      FieldName = 'VLLUCROBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDESPESA: TFMTBCDField
      FieldName = 'VLDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDESPESAADMINISTRATIVA: TFMTBCDField
      FieldName = 'VLDESPESAADMINISTRATIVA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDESPESAFRETE: TFMTBCDField
      FieldName = 'VLDESPESAFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDESPESACOMERCIAL: TFMTBCDField
      FieldName = 'VLDESPESACOMERCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDESPESAEMBALAGEM: TFMTBCDField
      FieldName = 'VLDESPESAEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDESPESASEGURO: TFMTBCDField
      FieldName = 'VLDESPESASEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLLUCROIR: TFMTBCDField
      FieldName = 'VLLUCROIR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLIRCSLL: TFMTBCDField
      FieldName = 'VLIRCSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCPP: TFMTBCDField
      FieldName = 'VLCPP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLSIMPLES: TFMTBCDField
      FieldName = 'VLSIMPLES'
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
    object cdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsCDORCAMENTOATRAVESDE: TIntegerField
      FieldName = 'CDORCAMENTOATRAVESDE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRRESPOSTA: TTimeField
      FieldName = 'HRRESPOSTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRRESPOSTAFINAL: TTimeField
      FieldName = 'HRRESPOSTAFINAL'
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
    object cdsNUCONTRATO: TStringField
      FieldName = 'NUCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPERIODICIDADE: TIntegerField
      FieldName = 'CDPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPERIODICIDADE: TIntegerField
      FieldName = 'NUPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLACRESCIMOValidate
      Precision = 15
      Size = 2
    end
    object cdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDDIGITADOValidate
      Size = 30
    end
    object cdsPRMULTA: TFloatField
      FieldName = 'PRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSTAG: TStringField
      FieldName = 'DSTAG'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUDIASRESCISAO: TIntegerField
      FieldName = 'NUDIASRESCISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSTAG2: TStringField
      FieldName = 'DSTAG2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDSTAG3: TStringField
      FieldName = 'DSTAG3'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUDIASMEDICAO: TIntegerField
      FieldName = 'NUDIASMEDICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSTAG4: TStringField
      FieldName = 'DSTAG4'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsBOALMOCO: TStringField
      FieldName = 'BOALMOCO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDITCONTCLIENTERESPONSAVEL: TIntegerField
      FieldName = 'CDITCONTCLIENTERESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOMANUTENCAO: TStringField
      FieldName = 'BOMANUTENCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRFIM: TTimeField
      FieldName = 'HRFIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPERIODICIDADEATENDIMENTO: TIntegerField
      FieldName = 'NUPERIODICIDADEATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPERIODICIDADEATENDIMENTO: TIntegerField
      FieldName = 'CDPERIODICIDADEATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSTAG5: TStringField
      FieldName = 'DSTAG5'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPFRETEValidate
      Size = 1
    end
    object cdsDTEMAIL: TDateField
      FieldName = 'DTEMAIL'
      ProviderFlags = [pfInUpdate]
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
    object cdsCDCLIENTELIBERADO: TLargeintField
      FieldName = 'CDCLIENTELIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOITEMDESCONTO: TStringField
      FieldName = 'BOITEMDESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 868
    Top = 241
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT I.*'#13#10',P.NMPRODUTO'#13#10',P.DSPRODUTO'#13#10',P.NUCLFISCAL'#13#10',U.NMUNID' +
      'ADE'#13#10',T.BOSERVICO'#13#10',E.NMPRODUTO NMPRODUTOEMBALAGEM'#13#10'FROM ITORCAM' +
      'ENTO I '#13#10'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND P.CD' +
      'EMPRESA=I.CDEMPRESA'#13#10'LEFT JOIN PRODUTO E ON E.CDPRODUTO=I.CDPROD' +
      'UTOEMBALAGEM AND E.CDEMPRESA=I.CDEMPRESA'#13#10'LEFT JOIN TPPRODUTO T ' +
      'ON T.CDTPPRODUTO=P.CDTPPRODUTO AND T.CDEMPRESA=P.CDEMPRESA '#13#10'LEF' +
      'T JOIN UNIDADE U ON U.CDUNIDADE=P.CDUNIDADE AND U.CDEMPRESA=P.CD' +
      'EMPRESA'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDORCAMENTO=:CDORCAM' +
      'ENTO'
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
        Name = 'CDORCAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 784
    Top = 269
    object sdsdetailCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
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
    object sdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
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
    object sdsdetailQTAPROVADO: TFloatField
      FieldName = 'QTAPROVADO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsdetailPRLUCRO: TFloatField
      FieldName = 'PRLUCRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailDSDESENHO: TStringField
      FieldName = 'DSDESENHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    object sdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailCDTPGRADEVALOR: TIntegerField
      FieldName = 'CDTPGRADEVALOR'
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
    object sdsdetailQTALTURA1: TFloatField
      FieldName = 'QTALTURA1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTCOMPRIMENTO1: TFloatField
      FieldName = 'QTCOMPRIMENTO1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      ProviderFlags = [pfInUpdate]
      Size = 50
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
    object sdsdetailALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUCOTACAO: TStringField
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUITEM: TStringField
      FieldName = 'NUITEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsdetailQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsdetailNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsdetailDSDESENHOPOSICAO: TStringField
      FieldName = 'DSDESENHOPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSDESENHOREVISAO: TStringField
      FieldName = 'DSDESENHOREVISAO'
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
    object sdsdetailNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
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
    object sdsdetailBOSERVICO: TStringField
      FieldName = 'BOSERVICO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
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
    object sdsdetailPRDESCONTO: TFMTBCDField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLTOTALSDESCONTO: TFMTBCDField
      FieldName = 'VLTOTALSDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSPRODUTO: TStringField
      FieldName = 'DSPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdsdetailCDSTITORCAMENTO: TIntegerField
      FieldName = 'CDSTITORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailBOCERTIFICADO: TStringField
      FieldName = 'BOCERTIFICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOINFTECNICA: TStringField
      FieldName = 'BOINFTECNICA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLDESCONTOPRODUCAO: TFMTBCDField
      FieldName = 'VLDESCONTOPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailQTITEM: TFMTBCDField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
    end
    object sdsdetailCDPRODUTOEMBALAGEM: TIntegerField
      FieldName = 'CDPRODUTOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDDIGITADOEMBALAGEM: TStringField
      FieldName = 'CDDIGITADOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailNMPRODUTOEMBALAGEM: TStringField
      FieldName = 'NMPRODUTOEMBALAGEM'
      ProviderFlags = []
      Size = 250
    end
    object sdsdetailVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailCDTPITORCAMENTO: TIntegerField
      FieldName = 'CDTPITORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDPERIODICIDADE: TIntegerField
      FieldName = 'CDPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUPERIODICIDADE: TIntegerField
      FieldName = 'NUPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsdetail: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'VLIPI'
        Expression = 'SUM(VLIPI)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'VLTOTAL'
        Expression = 'SUM(VLTOTAL)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'QTITEM'
        Expression = 'SUM(QTITEM)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'VLTOTALCIPI'
        Expression = 'SUM(VLTOTALCIPI)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    AfterPost = cdsdetailAfterPost
    AfterDelete = cdsdetailAfterDelete
    AfterScroll = cdsdetailAfterScroll
    OnNewRecord = cdsdetailNewRecord
    Left = 840
    Top = 269
    object cdsdetailCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
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
    object cdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDTPICMS: TIntegerField
      FieldName = 'CDTPICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLPRODUCAOPValidate
    end
    object cdsdetailCDTPIPI: TIntegerField
      FieldName = 'CDTPIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLPRODUCAOPValidate
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
    object cdsdetailQTAPROVADO: TFloatField
      FieldName = 'QTAPROVADO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailVLUNITARIOValidate
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsdetailPRLUCRO: TFloatField
      FieldName = 'PRLUCRO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailVLPRODUCAOPValidate
    end
    object cdsdetailALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailALICMSValidate
    end
    object cdsdetailVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailALIPIValidate
    end
    object cdsdetailVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailDSDESENHO: TStringField
      FieldName = 'DSDESENHO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailDSDESENHOValidate
      Size = 100
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
    object cdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDDIGITADOValidate
      Size = 30
    end
    object cdsdetailCDTPGRADEVALOR: TIntegerField
      FieldName = 'CDTPGRADEVALOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDTPGRADEVALORValidate
    end
    object cdsdetailVLTOTALCIPI: TFMTBCDField
      FieldName = 'VLTOTALCIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
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
    object cdsdetailQTALTURA1: TFloatField
      FieldName = 'QTALTURA1'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTALTURA1Validate
    end
    object cdsdetailQTCOMPRIMENTO1: TFloatField
      FieldName = 'QTCOMPRIMENTO1'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTCOMPRIMENTO1Validate
    end
    object cdsdetailDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      ProviderFlags = [pfInUpdate]
      Size = 50
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
    object cdsdetailALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUCOTACAO: TStringField
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUITEM: TStringField
      FieldName = 'NUITEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsdetailQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTPECAValidate
    end
    object cdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsdetailNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsdetailDSDESENHOPOSICAO: TStringField
      FieldName = 'DSDESENHOPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSDESENHOREVISAO: TStringField
      FieldName = 'DSDESENHOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailsdsitorcamentorecurso: TDataSetField
      FieldName = 'sdsitorcamentorecurso'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailsdsitorcamentomaterial: TDataSetField
      FieldName = 'sdsitorcamentomaterial'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailsdsitorcamentocusto: TDataSetField
      FieldName = 'sdsitorcamentocusto'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvlproducao
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
      OnValidate = setvlproducao
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
      OnValidate = setvlproducao
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
      OnValidate = setvlproducao
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
      OnValidate = setvlproducao
      Precision = 15
      Size = 2
    end
    object cdsdetailVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvlproducao
      Precision = 15
      Size = 2
    end
    object cdsdetailVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvlproducao
      Precision = 15
      Size = 2
    end
    object cdsdetailVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvlproducao
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
      OnValidate = cdsdetailVLPRODUCAOPValidate
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
    object cdsdetailNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object cdsdetailVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
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
      OnValidate = cdsdetailVLPRODUCAOPValidate
    end
    object cdsdetailPRDESPESAFRETE: TFloatField
      FieldName = 'PRDESPESAFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLPRODUCAOPValidate
    end
    object cdsdetailPRDESPESACOMERCIAL: TFloatField
      FieldName = 'PRDESPESACOMERCIAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLPRODUCAOPValidate
    end
    object cdsdetailPRDESPESAEMBALAGEM: TFloatField
      FieldName = 'PRDESPESAEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLPRODUCAOPValidate
    end
    object cdsdetailPRDESPESASEGURO: TFloatField
      FieldName = 'PRDESPESASEGURO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLPRODUCAOPValidate
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
    object cdsdetailALSIMPLES: TFloatField
      FieldName = 'ALSIMPLES'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvlproducao
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
    object cdsdetailBOSERVICO: TStringField
      FieldName = 'BOSERVICO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
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
    object cdsdetailPRDESCONTO: TFMTBCDField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailPRDESCONTOValidate
      Precision = 15
      Size = 2
    end
    object cdsdetailVLTOTALSDESCONTO: TFMTBCDField
      FieldName = 'VLTOTALSDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSPRODUTO: TStringField
      FieldName = 'DSPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsdetailCDSTITORCAMENTO: TIntegerField
      FieldName = 'CDSTITORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailBOCERTIFICADO: TStringField
      FieldName = 'BOCERTIFICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOINFTECNICA: TStringField
      FieldName = 'BOINFTECNICA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLDESCONTOPRODUCAO: TFMTBCDField
      FieldName = 'VLDESCONTOPRODUCAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLDESCONTOPRODUCAOValidate
      Precision = 15
      Size = 2
    end
    object cdsdetailQTITEM: TFMTBCDField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailQTITEMValidate
      Precision = 15
    end
    object cdsdetailCDPRODUTOEMBALAGEM: TIntegerField
      FieldName = 'CDPRODUTOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDDIGITADOEMBALAGEM: TStringField
      FieldName = 'CDDIGITADOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDDIGITADOEMBALAGEMValidate
      Size = 30
    end
    object cdsdetailNMPRODUTOEMBALAGEM: TStringField
      FieldName = 'NMPRODUTOEMBALAGEM'
      ProviderFlags = []
      Size = 250
    end
    object cdsdetailVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailCDTPITORCAMENTO: TIntegerField
      FieldName = 'CDTPITORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailsdsitorcamentoperiodicidade: TDataSetField
      FieldName = 'sdsitorcamentoperiodicidade'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDPERIODICIDADE: TIntegerField
      FieldName = 'CDPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUPERIODICIDADE: TIntegerField
      FieldName = 'NUPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 868
    Top = 269
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 896
    Top = 241
  end
  object dts2: TDataSource
    DataSet = sdsdetail
    Left = 896
    Top = 269
  end
  object sdsitorcamentorecurso: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITORCAMENTORECURSO '#13#10'WHERE CDEMPRESA=:CDEMPRESA AN' +
      'D CDITORCAMENTO=:CDITORCAMENTO'
    DataSource = dts2
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
        Name = 'CDITORCAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 784
    Top = 326
    object sdsitorcamentorecursoCDITORCAMENTORECURSO: TIntegerField
      FieldName = 'CDITORCAMENTORECURSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitorcamentorecursoCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitorcamentorecursoVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitorcamentorecursoVLTOTALOPERACAO: TFMTBCDField
      FieldName = 'VLTOTALOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitorcamentorecursoCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoVLTOTALPREPARACAO: TFMTBCDField
      FieldName = 'VLTOTALPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitorcamentorecursoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitorcamentorecursoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitorcamentorecursoNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentorecursoCDTPDURACAO: TIntegerField
      FieldName = 'CDTPDURACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentorecursoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitorcamentorecurso: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsitorcamentorecurso
    Params = <>
    BeforePost = cdsitorcamentorecursoBeforePost
    AfterPost = cdsitorcamentorecursoAfterPost
    AfterDelete = cdsitorcamentorecursoAfterDelete
    OnNewRecord = cdsitorcamentorecursoNewRecord
    Left = 840
    Top = 326
    object cdsitorcamentorecursoCDITORCAMENTORECURSO: TIntegerField
      FieldName = 'CDITORCAMENTORECURSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitorcamentorecursoCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentorecursoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentorecursoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentorecursoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentorecursoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentorecursoCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentorecursoCDTPEQUIPAMENTOValidate
    end
    object cdsitorcamentorecursoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentorecursoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentorecursoQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentorecursoQTPREPARACAOValidate
    end
    object cdsitorcamentorecursoQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentorecursoQTOPERACAOValidate
    end
    object cdsitorcamentorecursoVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentorecursoVLPREPARACAOValidate
      Precision = 15
      Size = 2
    end
    object cdsitorcamentorecursoVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentorecursoVLOPERACAOValidate
      Precision = 15
      Size = 2
    end
    object cdsitorcamentorecursoVLTOTALOPERACAO: TFMTBCDField
      FieldName = 'VLTOTALOPERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitorcamentorecursoVLTOTALPREPARACAO: TFMTBCDField
      FieldName = 'VLTOTALPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object cdsitorcamentorecursoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitorcamentorecursoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitorcamentorecursoNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitorcamentorecursoCDTPDURACAO: TIntegerField
      FieldName = 'CDTPDURACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentorecursoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitorcamentorecurso: TDataSource
    DataSet = cdsitorcamentorecurso
    Left = 868
    Top = 326
  end
  object sdsitorcamentomaterial: TSQLDataSet
    CommandText = 
      'SELECT I.*,P.NMPRODUTO,P.NUCLFISCAL FROM ITORCAMENTOMATERIAL I '#13 +
      #10'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND P.CDEMPRESA=' +
      'I.CDEMPRESA'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDITORCAMENTO=:C' +
      'DITORCAMENTO'
    DataSource = dts2
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
        Name = 'CDITORCAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 784
    Top = 354
    object sdsitorcamentomaterialCDITORCAMENTOMATERIAL: TIntegerField
      FieldName = 'CDITORCAMENTOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitorcamentomaterialCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentomaterialCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentomaterialCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentomaterialCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentomaterialCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentomaterialCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentomaterialCDforma: TIntegerField
      FieldName = 'CDforma'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentomaterialCDMATERIAL: TIntegerField
      FieldName = 'CDMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentomaterialTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentomaterialTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentomaterialQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentomaterialQTPESOUNITARIO: TFloatField
      FieldName = 'QTPESOUNITARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentomaterialVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitorcamentomaterialVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitorcamentomaterialCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsitorcamentomaterialNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsitorcamentomaterialQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentomaterialDSPOSICAO: TStringField
      FieldName = 'DSPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentomaterialNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object sdsitorcamentomaterialALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentomaterialALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentomaterialBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitorcamentomaterialBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitorcamentomaterialVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitorcamentomaterialVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitorcamentomaterialVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitorcamentomaterialVLFINAL: TFMTBCDField
      FieldName = 'VLFINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitorcamentomaterialALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentomaterialALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentomaterialVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitorcamentomaterialVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitorcamentomaterialBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitorcamentomaterialBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitorcamentomaterialDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsitorcamentomaterialNUFATOR: TFloatField
      FieldName = 'NUFATOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentomaterialCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitorcamentomaterialDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdsitorcamentomaterial: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsitorcamentomaterial
    Params = <>
    BeforePost = cdsitorcamentomaterialBeforePost
    AfterPost = cdsitorcamentomaterialAfterPost
    AfterDelete = cdsitorcamentomaterialAfterDelete
    OnNewRecord = cdsitorcamentomaterialNewRecord
    Left = 840
    Top = 354
    object cdsitorcamentomaterialCDITORCAMENTOMATERIAL: TIntegerField
      FieldName = 'CDITORCAMENTOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitorcamentomaterialCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentomaterialCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentomaterialCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentomaterialCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentomaterialCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentomaterialCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentomaterialTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentomaterialTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentomaterialQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentomaterialQTITEMValidate
    end
    object cdsitorcamentomaterialQTPESOUNITARIO: TFloatField
      FieldName = 'QTPESOUNITARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitorcamentomaterialQTPECAValidate
    end
    object cdsitorcamentomaterialVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentomaterialVLUNITARIOValidate
      Precision = 15
      Size = 2
    end
    object cdsitorcamentomaterialVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = setvalorfinal
      Precision = 15
      Size = 2
    end
    object cdsitorcamentomaterialCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentomaterialCDDIGITADOValidate
      Size = 30
    end
    object cdsitorcamentomaterialCDforma: TIntegerField
      FieldName = 'CDforma'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitorcamentomaterialCDMATERIAL: TIntegerField
      FieldName = 'CDMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitorcamentomaterialNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsitorcamentomaterialQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitorcamentomaterialQTPECAValidate
    end
    object cdsitorcamentomaterialDSPOSICAO: TStringField
      FieldName = 'DSPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitorcamentomaterialNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object cdsitorcamentomaterialALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
    end
    object cdsitorcamentomaterialALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
    end
    object cdsitorcamentomaterialBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
      FixedChar = True
      Size = 1
    end
    object cdsitorcamentomaterialBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
      FixedChar = True
      Size = 1
    end
    object cdsitorcamentomaterialVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitorcamentomaterialVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitorcamentomaterialVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
      Precision = 15
      Size = 2
    end
    object cdsitorcamentomaterialVLFINAL: TFMTBCDField
      FieldName = 'VLFINAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalormaterial
      Precision = 15
      Size = 2
    end
    object cdsitorcamentomaterialALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
    end
    object cdsitorcamentomaterialALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
    end
    object cdsitorcamentomaterialVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitorcamentomaterialVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitorcamentomaterialBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
      FixedChar = True
      Size = 1
    end
    object cdsitorcamentomaterialBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
      FixedChar = True
      Size = 1
    end
    object cdsitorcamentomaterialDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsitorcamentomaterialNUFATOR: TFloatField
      FieldName = 'NUFATOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalorfinal
    end
    object cdsitorcamentomaterialCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitorcamentomaterialDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dtsitorcamentomaterial: TDataSource
    DataSet = cdsitorcamentomaterial
    Left = 868
    Top = 354
  end
  object sdsitorcamentocusto: TSQLDataSet
    CommandText = 
      'SELECT I.*,P.NMPRODUTO '#13#10'FROM ITORCAMENTOCUSTO I '#13#10'LEFT JOIN PRO' +
      'DUTO P ON P.CDPRODUTO=I.CDPRODUTO AND P.CDEMPRESA=I.CDEMPRESA'#13#10'W' +
      'HERE I.CDEMPRESA=:CDEMPRESA AND I.CDITORCAMENTO=:CDITORCAMENTO'
    DataSource = dts2
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
        Name = 'CDITORCAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 784
    Top = 385
    object sdsitorcamentocustoCDITORCAMENTOCUSTO: TIntegerField
      FieldName = 'CDITORCAMENTOCUSTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitorcamentocustoCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentocustoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentocustoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentocustoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentocustoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentocustoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentocustoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentocustoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentocustoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitorcamentocustoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsitorcamentocustoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitorcamentocustoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentocustoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitorcamentocustoCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentocustoNUFATOR: TFloatField
      FieldName = 'NUFATOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitorcamentocustoVLFINAL: TFMTBCDField
      FieldName = 'VLFINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitorcamentocustoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitorcamentocustoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitorcamentocusto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsitorcamentocusto
    Params = <>
    BeforePost = cdsitorcamentocustoBeforePost
    AfterPost = cdsitorcamentocustoAfterPost
    AfterDelete = cdsitorcamentocustoAfterDelete
    OnNewRecord = cdsitorcamentocustoNewRecord
    Left = 840
    Top = 382
    object cdsitorcamentocustoCDITORCAMENTOCUSTO: TIntegerField
      FieldName = 'CDITORCAMENTOCUSTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitorcamentocustoCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentocustoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentocustoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentocustoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentocustoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentocustoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentocustoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentocustoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentocustoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitorcamentocustoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentocustoCDDIGITADOValidate
      Size = 30
    end
    object cdsitorcamentocustoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitorcamentocustoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentocustoQTITEMValidate
    end
    object cdsitorcamentocustoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitorcamentocustoQTITEMValidate
      Precision = 15
      Size = 2
    end
    object cdsitorcamentocustoCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitorcamentocustoNUFATOR: TFloatField
      FieldName = 'NUFATOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitorcamentocustoNUFATORValidate
    end
    object cdsitorcamentocustoVLFINAL: TFMTBCDField
      FieldName = 'VLFINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitorcamentocustoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitorcamentocustoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitorcamentocusto: TDataSource
    DataSet = cdsitorcamentocusto
    Left = 868
    Top = 382
  end
  object cdspizzapeca: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'valor'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 720
    Top = 252
    object cdspizzapecavalor: TFMTBCDField
      FieldName = 'valor'
      Size = 0
    end
    object cdspizzapecanome: TStringField
      FieldName = 'nome'
      Size = 100
    end
  end
  object dtspizzapeca: TDataSource
    DataSet = cdspizzapeca
    Left = 748
    Top = 252
  end
  object cdspizzaitem: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'valor'
        DataType = ftFMTBcd
        Precision = 32
        Size = 4
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 720
    Top = 281
    object cdspizzaitemnome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdspizzaitemvalor: TFMTBCDField
      FieldName = 'valor'
    end
  end
  object dtspizzaitem: TDataSource
    DataSet = cdspizzaitem
    Left = 748
    Top = 281
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
      end
      item
        DataType = ftString
        Name = 'CDCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 807
    Top = 125
  end
  object dspitcontcliente: TDataSetProvider
    DataSet = sdsitcontcliente
    Left = 834
    Top = 125
  end
  object cdsitcontcliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitcontcliente'
    Left = 862
    Top = 125
  end
  object dtsitcontcliente: TDataSource
    DataSet = cdsitcontcliente
    Left = 890
    Top = 125
  end
  object sdshstorcamento: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT U.NMUSUARIO'#13#10',C.NMCOMPUTADOR'#13#10',H.TSHISTORICO'#13#10',H.DSJUSTIF' +
      'ICATIVA'#13#10',S.NMSTORCAMENTO'#13#10'FROM HSTORCAMENTO H'#13#10'LEFT JOIN USUARI' +
      'O U ON U.CDUSUARIO=H.CDUSUARIO'#13#10'LEFT JOIN COMPUTADOR C ON C.CDCO' +
      'MPUTADOR=H.CDCOMPUTADOR'#13#10'LEFT JOIN STORCAMENTO S ON S.CDSTORCAME' +
      'NTO=H.CDSTORCAMENTO'#13#10'WHERE H.CDEMPRESA=:CDEMPRESA AND H.CDORCAME' +
      'NTO=:CDORCAMENTO'
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
        Name = 'CDORCAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 786
    Top = 410
    object sdshstorcamentoNMUSUARIO: TStringField
      FieldName = 'NMUSUARIO'
      ProviderFlags = []
      Size = 40
    end
    object sdshstorcamentoNMCOMPUTADOR: TStringField
      FieldName = 'NMCOMPUTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sdshstorcamentoTSHISTORICO: TSQLTimeStampField
      FieldName = 'TSHISTORICO'
      ProviderFlags = []
    end
    object sdshstorcamentoDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = []
      Size = 1
    end
    object sdshstorcamentoNMSTORCAMENTO: TStringField
      FieldName = 'NMSTORCAMENTO'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdshstorcamento: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdshstorcamento
    Params = <>
    Left = 842
    Top = 410
    object cdshstorcamentoNMUSUARIO: TStringField
      FieldName = 'NMUSUARIO'
      ProviderFlags = []
      Size = 40
    end
    object cdshstorcamentoNMCOMPUTADOR: TStringField
      FieldName = 'NMCOMPUTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdshstorcamentoTSHISTORICO: TSQLTimeStampField
      FieldName = 'TSHISTORICO'
      ProviderFlags = []
    end
    object cdshstorcamentoDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = []
      Size = 1
    end
    object cdshstorcamentoNMSTORCAMENTO: TStringField
      FieldName = 'NMSTORCAMENTO'
      ProviderFlags = []
      Size = 100
    end
  end
  object dtshstorcamento: TDataSource
    DataSet = cdshstorcamento
    Left = 870
    Top = 410
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarLargeButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'bsiStatus'
      end>
    UseOwnFont = False
    Left = 960
    Top = 168
  end
  object pumiimprimir: TdxBarPopupMenu
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
    Left = 960
    Top = 140
  end
  object dtsconsulta: TDataSource
    Left = 560
    Top = 385
  end
  object sdsitorcamentoperiodicidade: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITORCAMENTOPERIODICIDADE WHERE CDEMPRESA=:CDEMPRES' +
      'A AND CDITORCAMENTO=:CDITORCAMENTO'
    DataSource = dts2
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
        Name = 'CDITORCAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 787
    Top = 442
    object sdsitorcamentoperiodicidadeCDITORCAMENTOPERIODICIDADE: TIntegerField
      FieldName = 'CDITORCAMENTOPERIODICIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitorcamentoperiodicidadeCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentoperiodicidadeCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentoperiodicidadeCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentoperiodicidadeCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentoperiodicidadeCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentoperiodicidadeCDPERIODICIDADE: TIntegerField
      FieldName = 'CDPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentoperiodicidadeQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentoperiodicidadeVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitorcamentoperiodicidadeVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitorcamentoperiodicidadeTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentoperiodicidadeTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitorcamentoperiodicidadeCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitorcamentoperiodicidade: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsitorcamentoperiodicidade
    Params = <>
    BeforePost = cdsitorcamentoperiodicidadeBeforePost
    OnNewRecord = cdsitorcamentoperiodicidadeNewRecord
    Left = 840
    Top = 439
    object cdsitorcamentoperiodicidadeCDITORCAMENTOPERIODICIDADE: TIntegerField
      FieldName = 'CDITORCAMENTOPERIODICIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitorcamentoperiodicidadeCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentoperiodicidadeCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentoperiodicidadeCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentoperiodicidadeCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentoperiodicidadeCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentoperiodicidadeCDPERIODICIDADE: TIntegerField
      FieldName = 'CDPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentoperiodicidadeQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentoperiodicidadeVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitorcamentoperiodicidadeVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitorcamentoperiodicidadeTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentoperiodicidadeTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitorcamentoperiodicidadeCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitorcamentoperiodicidade: TDataSource
    DataSet = cdsitorcamentoperiodicidade
    Left = 868
    Top = 439
  end
end

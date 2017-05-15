object frmPedidoMaterial: TfrmPedidoMaterial
  Left = 595
  Top = 143
  ClientHeight = 594
  ClientWidth = 1012
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
    Top = 211
    Width = 1012
    Height = 383
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tbsProduto
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 383
    ClientRectRight = 1012
    ClientRectTop = 25
    object tbsProduto: TcxTabSheet
      Caption = 'Produto'
      ImageIndex = 24
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pgccotacao: TcxPageControl
        Left = 0
        Top = 161
        Width = 1012
        Height = 197
        Align = alBottom
        TabOrder = 0
        Properties.ActivePage = tbsfornecedor
        Properties.CustomButtons.Buttons = <>
        Properties.Images = dtmmain.imlMain
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 197
        ClientRectRight = 1012
        ClientRectTop = 25
        object tbsfornecedor: TcxTabSheet
          Caption = 'Cota'#231#227'o'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grditpedidomaterialfornecedor: TcxGrid
            Left = 0
            Top = 0
            Width = 1012
            Height = 172
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = ''
            object btvcotacao: TcxGridDBBandedTableView
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
              DataController.DataSource = dtsITPEDIDOMATERIALFORNECEDOR
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Caption = 'Fornecedor'
                  Width = 350
                end
                item
                  Caption = 'Quantidade'
                  Width = 195
                end
                item
                  Caption = 'ICMS'
                  Width = 188
                end
                item
                  Caption = 'Dif Al'#237'q'
                  Width = 90
                end
                item
                  Caption = 'IPI'
                end
                item
                  Caption = 'Valores'
                end>
              object btvcotacaoVLUNITARIO: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLUNITARIO'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Width = 87
                Position.BandIndex = 1
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btvcotacaoVLTOTAL: TcxGridDBBandedColumn
                Caption = 'Total'
                DataBinding.FieldName = 'VLTOTAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 38
                Position.BandIndex = 1
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object btvcotacaoBOVENCEDOR: TcxGridDBBandedColumn
                Caption = 'Venc'
                DataBinding.FieldName = 'BOVENCEDOR'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Properties.OnValidate = btvcotacaoBOVENCEDORPropertiesValidate
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btvcotacaoQTITEM: TcxGridDBBandedColumn
                Caption = 'Qtd'
                DataBinding.FieldName = 'QTITEM'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 70
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btvcotacaoDTPREVENTREGA: TcxGridDBBandedColumn
                Caption = 'Entrega'
                DataBinding.FieldName = 'DTPREVENTREGA'
                PropertiesClassName = 'TcxDateEditProperties'
                Width = 58
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object btvcotacaoALICMS: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'ALICMS'
                Width = 20
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btvcotacaoALIPI: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'ALIPI'
                Width = 20
                Position.BandIndex = 4
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btvcotacaoVLFRETE: TcxGridDBBandedColumn
                Caption = 'Frete'
                DataBinding.FieldName = 'VLFRETE'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Width = 75
                Position.BandIndex = 5
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btvcotacaoVLICMSDIFALIQUOTA: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLICMSDIFALIQUOTA'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 3
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btvcotacaoVLDESCONTO: TcxGridDBBandedColumn
                Caption = 'Desconto'
                DataBinding.FieldName = 'VLDESCONTO'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Width = 75
                Position.BandIndex = 5
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btvcotacaoVLFINAL: TcxGridDBBandedColumn
                Caption = 'Final'
                DataBinding.FieldName = 'VLFINAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 5
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object btvcotacaoBORECUPERAICMS: TcxGridDBBandedColumn
                Caption = 'Rec'
                DataBinding.FieldName = 'BORECUPERAICMS'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Width = 29
                Position.BandIndex = 2
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object btvcotacaoBORECUPERAIPI: TcxGridDBBandedColumn
                Caption = 'Rec'
                DataBinding.FieldName = 'BORECUPERAIPI'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Width = 26
                Position.BandIndex = 4
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object btvcotacaoALICMSDIFALIQUOTA: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'ALICMSDIFALIQUOTA'
                Width = 20
                Position.BandIndex = 3
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btvcotacaoVLREAL: TcxGridDBBandedColumn
                Caption = 'Real'
                DataBinding.FieldName = 'VLREAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 5
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object btvcotacaoNMFORNECEDOR: TcxGridDBBandedColumn
                Caption = 'Nome'
                DataBinding.FieldName = 'NMFORNECEDOR'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 161
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object btvcotacaoVLICMS: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLICMS'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 65
                Position.BandIndex = 2
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btvcotacaoVLIPI: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLIPI'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 4
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btvcotacaoVLICMSSUBTRIB: TcxGridDBBandedColumn
                Caption = 'Sub Trib'
                DataBinding.FieldName = 'VLICMSSUBTRIB'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Width = 74
                Position.BandIndex = 2
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object btvcotacaoCDTPAPROVACAOCOTACAO: TcxGridDBBandedColumn
                Caption = 'Motivo Aprova'#231#227'o'
                DataBinding.FieldName = 'CDTPAPROVACAOCOTACAO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 200
                Properties.KeyFieldNames = 'CDTPAPROVACAOCOTACAO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMTPAPROVACAOCOTACAO'
                  end>
                Properties.ListOptions.ShowHeader = False
                Width = 91
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
            end
            object grlLevel2: TcxGridLevel
              GridView = btvcotacao
            end
          end
        end
      end
      object splcotacao: TcxSplitter
        Left = 0
        Top = 153
        Width = 1012
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        AutoSnap = True
        Control = pgccotacao
        ExplicitWidth = 8
      end
      object grddetail: TcxGrid
        Left = 0
        Top = 0
        Width = 1012
        Height = 153
        Align = alClient
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = ''
        object btvItems: TcxGridDBBandedTableView
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
          OnCellDblClick = btvItemsCellDblClick
          DataController.DataSource = dtsdetail
          DataController.Filter.IgnoreOrigin = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTATENDIDA'
              Column = btvItemsQTATENDIDA
            end
            item
              Kind = skSum
              FieldName = 'QTESTOQUE'
              Column = btvItemsQTESTOQUE
            end
            item
              Kind = skSum
              FieldName = 'QTSOLICITADA'
              Column = btvItemsQTSOLICITADA
            end
            item
              Kind = skSum
              FieldName = 'QTPECA'
              Column = btvItemsQTPECA
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnMRUItemsList = False
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Width = 973
            end>
          object btvItemsCDPRODUTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CDPRODUTO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvItemsCDDIGITADO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = cxGridDBBandedTableView1CDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvItemsQTSOLICITADA: TcxGridDBBandedColumn
            Caption = 'Qtd'
            DataBinding.FieldName = 'QTSOLICITADA'
            Width = 34
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object btvItemsQTESTOQUE: TcxGridDBBandedColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'QTESTOQUE'
            Options.Editing = False
            Options.Focusing = False
            Width = 47
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object btvItemsQTATENDIDA: TcxGridDBBandedColumn
            Caption = 'Atendida'
            DataBinding.FieldName = 'QTATENDIDA'
            Options.Editing = False
            Options.Focusing = False
            Width = 45
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object btvItemsNMPRODUTO: TcxGridDBBandedColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 196
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvItemsNMUNIDADE: TcxGridDBBandedColumn
            Caption = 'UN'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 25
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object btvItemsCDCNTCUSTO: TcxGridDBBandedColumn
            Caption = 'Centro Custo'
            DataBinding.FieldName = 'CDCNTCUSTO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDCNTCUSTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMCNTCUSTO2'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 161
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object btvItemsQTPECA: TcxGridDBBandedColumn
            Caption = 'Pe'#231'a'
            DataBinding.FieldName = 'QTPECA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 46
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object btvItemsQTPESOUNITARIO: TcxGridDBBandedColumn
            Caption = 'Peso Unit'
            DataBinding.FieldName = 'QTPESOUNITARIO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = btvItemsQTPESOUNITARIOPropertiesButtonClick
            Width = 46
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object btvItemsDSFORMULA: TcxGridDBBandedColumn
            Caption = 'F'#243'rmula'
            DataBinding.FieldName = 'DSFORMULA'
            Options.Editing = False
            Width = 218
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object btvItemsCDORDPRODUCAO: TcxGridDBBandedColumn
            Caption = 'Ord Produ'#231#227'o'
            DataBinding.FieldName = 'CDORDPRODUCAO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = btvItemsCDORDPRODUCAOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvItemsBOCERTIFICADO: TcxGridDBBandedColumn
            Caption = 'Certificado'
            DataBinding.FieldName = 'BOCERTIFICADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object btvItemsCDRIM: TcxGridDBBandedColumn
            Caption = 'Req Material'
            DataBinding.FieldName = 'CDRIM'
            Options.Focusing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = btvItems
        end
      end
    end
    object tbsObservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
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
        Height = 358
        Width = 1012
      end
    end
    object tbsfornecedor1: TcxTabSheet
      Caption = 'Fornecedor'
      ImageIndex = 36
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdpedidomaterialfornecedor: TcxGrid
        Left = 0
        Top = 22
        Width = 1012
        Height = 131
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object btvfornecedor: TcxGridDBBandedTableView
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
          OnCellDblClick = btvfornecedorCellDblClick
          DataController.DataSource = dtspedidomaterialfornecedor
          DataController.Filter.IgnoreOrigin = False
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnMRUItemsList = False
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object btvfornecedorCDPEDIDOMATERIAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CDPEDIDOMATERIAL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object btvfornecedorNMFORNECEDOR: TcxGridDBBandedColumn
            Caption = 'Fornecedor'
            DataBinding.FieldName = 'NMFORNECEDOR'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 238
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object btvfornecedorCDCLFORNECEDOR: TcxGridDBBandedColumn
            Caption = 'IQF'
            DataBinding.FieldName = 'CDCLFORNECEDOR'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDCLFORNECEDOR'
            Properties.ListColumns = <
              item
                FieldName = 'NMCLFORNECEDOR'
              end>
            Properties.ListOptions.ShowHeader = False
            Options.Editing = False
            Options.Focusing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object btvfornecedorNMITCONTFORNECEDOR: TcxGridDBBandedColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'NMITCONTFORNECEDOR'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = btvfornecedorNMITCONTFORNECEDORPropertiesButtonClick
            Width = 193
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object btvfornecedorNUCOTACAO: TcxGridDBBandedColumn
            Caption = 'N'#186' Cota'#231#227'o'
            DataBinding.FieldName = 'NUCOTACAO'
            Options.Filtering = False
            Width = 103
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object btvfornecedorDTCOTACAO: TcxGridDBBandedColumn
            Caption = 'Dt Cota'#231#227'o'
            DataBinding.FieldName = 'DTCOTACAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Width = 103
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object btvfornecedorBOVENCEDOR: TcxGridDBBandedColumn
            Caption = 'Vencedor'
            DataBinding.FieldName = 'BOVENCEDOR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Options.Filtering = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object btvfornecedorBOEXCLUSIVO: TcxGridDBBandedColumn
            Caption = 'Exclusivo'
            DataBinding.FieldName = 'BOEXCLUSIVO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Options.Filtering = False
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object btvfornecedorCdfornecedor: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDFORNECEDOR'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView3CDFORNECEDORPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvfornecedorCDORDCOMPRA: TcxGridDBBandedColumn
            Caption = 'Ordem Compra'
            DataBinding.FieldName = 'CDORDCOMPRA'
            Options.Editing = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object btvfornecedorCDCONDPAGTO: TcxGridDBBandedColumn
            Caption = 'Cond Pagto'
            DataBinding.FieldName = 'CDCONDPAGTO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'CDCONDPAGTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMCONDPAGTO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 147
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object btvfornecedorDTPRVENTREGA: TcxGridDBBandedColumn
            Caption = 'Entrega'
            DataBinding.FieldName = 'DTPRVENTREGA'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = btvfornecedor
        end
      end
      object splvencedor: TcxSplitter
        Left = 0
        Top = 153
        Width = 1012
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        AutoSnap = True
        Control = pgcvencedor
        ExplicitWidth = 8
      end
      object pgcvencedor: TcxPageControl
        Left = 0
        Top = 161
        Width = 1012
        Height = 197
        Align = alBottom
        TabOrder = 2
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        Properties.Images = dtmmain.imlMain
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 197
        ClientRectRight = 1012
        ClientRectTop = 25
        object cxTabSheet1: TcxTabSheet
          Caption = 'Vencedor'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 1012
            Height = 172
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = ''
            object btvvencedor: TcxGridDBBandedTableView
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
              DataController.DataSource = dtsvencedor
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'NMPRODUTO'
                  Column = cxGridDBBandedNMPRODUTO
                end
                item
                  Kind = skSum
                  FieldName = 'QTITEM'
                  Column = cxGridDBBandedQTITEM
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLDESCONTO'
                  Column = cxGridDBBandedVLDESCONTO
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLFINAL'
                  Column = cxGridDBBandedVLFINAL
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLFRETE'
                  Column = cxGridDBBandedVLFRETE
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLICMS'
                  Column = cxGridDBBandedVLICMS
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLICMSDIFALIQUOTA'
                  Column = cxGridDBBandedVLICMSDIFALIQUOTA
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLIPI'
                  Column = cxGridDBBandedVLIPI
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLREAL'
                  Column = cxGridDBBandedVLREAL
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLTOTAL'
                  Column = cxGridDBBandedVLTOTAL
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Caption = 'Produto'
                  Width = 350
                end
                item
                  Caption = 'Quantidade'
                end
                item
                  Caption = 'ICMS'
                end
                item
                  Caption = 'Dif Al'#237'q'
                end
                item
                  Caption = 'IPI'
                end
                item
                  Caption = 'Valores'
                end>
              object cxGridDBBandedVLUNITARIO: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLUNITARIO'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Width = 80
                Position.BandIndex = 1
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedVLTOTAL: TcxGridDBBandedColumn
                Caption = 'Total'
                DataBinding.FieldName = 'VLTOTAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 1
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedQTITEM: TcxGridDBBandedColumn
                Caption = 'Qtd'
                DataBinding.FieldName = 'QTITEM'
                PropertiesClassName = 'TcxCalcEditProperties'
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedDTPREVENTREGA: TcxGridDBBandedColumn
                Caption = 'Entrega'
                DataBinding.FieldName = 'DTPREVENTREGA'
                PropertiesClassName = 'TcxDateEditProperties'
                Width = 58
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedALICMS: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'ALICMS'
                Width = 20
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedALIPI: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'ALIPI'
                Width = 20
                Position.BandIndex = 4
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedVLFRETE: TcxGridDBBandedColumn
                Caption = 'Frete'
                DataBinding.FieldName = 'VLFRETE'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Width = 75
                Position.BandIndex = 5
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedVLICMSDIFALIQUOTA: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLICMSDIFALIQUOTA'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 3
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedVLDESCONTO: TcxGridDBBandedColumn
                Caption = 'Desconto'
                DataBinding.FieldName = 'VLDESCONTO'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Width = 75
                Position.BandIndex = 5
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedVLFINAL: TcxGridDBBandedColumn
                Caption = 'Final'
                DataBinding.FieldName = 'VLFINAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 5
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedBORECUPERAICMS: TcxGridDBBandedColumn
                Caption = 'Recup'
                DataBinding.FieldName = 'BORECUPERAICMS'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedBORECUPERAIPI: TcxGridDBBandedColumn
                Caption = 'Recup'
                DataBinding.FieldName = 'BORECUPERAIPI'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Width = 40
                Position.BandIndex = 4
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedALICMSDIFALIQUOTA: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'ALICMSDIFALIQUOTA'
                Width = 20
                Position.BandIndex = 3
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedVLREAL: TcxGridDBBandedColumn
                Caption = 'Real'
                DataBinding.FieldName = 'VLREAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 5
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedNMPRODUTO: TcxGridDBBandedColumn
                Caption = 'Nome'
                DataBinding.FieldName = 'NMPRODUTO'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 161
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedVLICMS: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLICMS'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 2
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedVLIPI: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLIPI'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Options.Editing = False
                Options.Focusing = False
                Width = 80
                Position.BandIndex = 4
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btvvencedorBOVENCEDOR: TcxGridDBBandedColumn
                Caption = 'Venc'
                DataBinding.FieldName = 'BOVENCEDOR'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Options.Editing = False
                Options.Focusing = False
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object btvvencedorCDTPAPROVACAOCOTACAO: TcxGridDBBandedColumn
                Caption = 'Motivo Aprova'#231#227'o'
                DataBinding.FieldName = 'CDTPAPROVACAOCOTACAO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 200
                Properties.KeyFieldNames = 'CDTPAPROVACAOCOTACAO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMTPAPROVACAOCOTACAO'
                  end>
                Properties.ListOptions.ShowHeader = False
                Width = 91
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = btvvencedor
            end
          end
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1012
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
    end
    object tbshstpedidomaterial: TcxTabSheet
      Caption = 'Hist'#243'rico de Status'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdhstpedidomaterial: TcxGrid
        Left = 0
        Top = 0
        Width = 1012
        Height = 358
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvhstpedidomaterial: TcxGridDBTableView
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
          DataController.DataSource = dtshstpedidomaterial
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object tbvhstpedidomaterialNMSTPEDIDOMATERIAL: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTPEDIDOMATERIAL'
            Options.Editing = False
            Options.Focusing = False
            Width = 171
          end
          object tbvhstpedidomaterialNMUSUARIO: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'NMUSUARIO'
            Options.Editing = False
            Options.Focusing = False
            Width = 172
          end
          object tbvhstpedidomaterialNMCOMPUTADOR: TcxGridDBColumn
            Caption = 'Computador'
            DataBinding.FieldName = 'NMCOMPUTADOR'
            Options.Editing = False
            Options.Focusing = False
            Width = 183
          end
          object tbvhstpedidomaterialTSHISTORICO: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'TSHISTORICO'
            Options.Editing = False
            Options.Focusing = False
            Width = 144
          end
          object tbvhstpedidomaterialDSJUSTIFICATIVA: TcxGridDBColumn
            Caption = 'Justificativa'
            DataBinding.FieldName = 'DSJUSTIFICATIVA'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Options.Editing = False
            Width = 213
          end
        end
        object grdhstpedidomaterialLevel1: TcxGridLevel
          GridView = tbvhstpedidomaterial
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 59
    Width = 1012
    Height = 152
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1012
      Height = 42
      Align = alTop
      ExplicitWidth = 996
    end
    object cxGroupBox2: TcxGroupBox
      Left = 0
      Top = 65
      Align = alTop
      Caption = 'Solicitante'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      ExplicitTop = 63
      Height = 85
      Width = 1012
      object Label11: TLabel
        Left = 4
        Top = 22
        Width = 49
        Height = 13
        Caption = 'Solicitante'
        Transparent = True
      end
      object Label15: TLabel
        Left = 4
        Top = 42
        Width = 47
        Height = 13
        Caption = 'Aplica'#231#227'o'
        Transparent = True
      end
      object lblcomprador: TLabel
        Left = 4
        Top = 62
        Width = 51
        Height = 13
        Caption = 'Comprador'
        Transparent = True
      end
      object cbxcdfuncionariosolicitante: TcxDBLookupComboBox
        Left = 58
        Top = 14
        DataBinding.DataField = 'CDFUNCIONARIOSOLICITANTE'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDFUNCIONARIO'
        Properties.ListColumns = <
          item
            FieldName = 'NMFUNCIONARIO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clWindow
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.Shadow = False
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 0
        OnEnter = cbxcdfuncionariosolicitanteEnter
        OnExit = colorexit
        Width = 323
      end
      object edtcdtpaplicacao: TcxDBButtonEdit
        Left = 58
        Top = 34
        DataBinding.DataField = 'CDTPAPLICACAO'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdtpaplicacaoPropertiesButtonClick
        TabOrder = 5
        OnKeyDown = edtcdtpaplicacaoKeyDown
        Width = 57
      end
      object txtnmtpaplicacao: TcxDBLabel
        Left = 115
        Top = 35
        DataBinding.DataField = 'NMTPAPLICACAO'
        DataBinding.DataSource = dts
        Transparent = True
        Height = 21
        Width = 225
      end
      object ckbboexclusivo: TcxDBCheckBox
        Left = 506
        Top = 38
        Caption = 'Exclusivo'
        DataBinding.DataField = 'BOEXCLUSIVO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.BorderStyle = ebsOffice11
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 3
        Transparent = True
      end
      object chkbosemcotacao: TcxDBCheckBox
        Left = 581
        Top = 38
        Caption = 'Sem Cota'#231#227'o'
        DataBinding.DataField = 'BOSEMCOTACAO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.BorderStyle = ebsOffice11
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 4
        Transparent = True
      end
      object cbxcdfuncionariocomprador: TcxDBLookupComboBox
        Left = 58
        Top = 54
        DataBinding.DataField = 'CDFUNCIONARIOCOMPRADOR'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDFUNCIONARIO'
        Properties.ListColumns = <
          item
            FieldName = 'NMFUNCIONARIO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clWindow
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.Shadow = False
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 2
        OnEnter = cbxcdfuncionariocompradorEnter
        OnExit = colorexit
        Width = 323
      end
      object edtdsaplicacao: TcxDBTextEdit
        Left = 58
        Top = 34
        DataBinding.DataField = 'DSAPLICACAO'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        Width = 323
      end
    end
    object cxLabel1: TcxLabel
      Left = 2
      Top = 23
      Caption = 'C'#243'digo'
      ParentColor = False
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 0
      Top = 40
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtcodigoKeyPress
      Width = 74
    end
    object cxLabel2: TcxLabel
      Left = 74
      Top = 23
      Caption = 'Dt Emiss'#227'o'
      ParentColor = False
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      Style.TextStyle = []
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 74
      Top = 40
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.ButtonStyle = btsDefault
      Style.ButtonTransparency = ebtNone
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 85
    end
    object cxLabel3: TcxLabel
      Left = 161
      Top = 23
      Caption = 'Dt Aplica'#231#227'o'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object edtDTEMPREGO: TcxDBDateEdit
      Left = 161
      Top = 40
      DataBinding.DataField = 'DTEMPREGO'
      DataBinding.DataSource = dts
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 85
    end
    object lblcdtppedidomaterial: TcxLabel
      Left = 246
      Top = 23
      Caption = 'Tipo'
      FocusControl = cbxcdtppedidomaterial
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
      OnDblClick = lblcdtppedidomaterialDblClick
    end
    object cbxcdtppedidomaterial: TcxDBLookupComboBox
      Left = 246
      Top = 40
      DataBinding.DataField = 'CDTPPEDIDOMATERIAL'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPPEDIDOMATERIAL'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPPEDIDOMATERIAL'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 3
      OnEnter = cbxcdtppedidomaterialEnter
      OnExit = colorexit
      Width = 125
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
    object cbxcdfinalidadeordcompra: TcxDBLookupComboBox
      Left = 369
      Top = 40
      DataBinding.DataField = 'CDFINALIDADEORDCOMPRA'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 230
      Properties.KeyFieldNames = 'CDFINALIDADEORDCOMPRA'
      Properties.ListColumns = <
        item
          FieldName = 'NMFINALIDADEORDCOMPRA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 4
      OnEnter = cbxcdfinalidadeordcompraEnter
      OnExit = colorexit
      Width = 135
    end
    object lblfinalidadeordcompra: TcxLabel
      Left = 369
      Top = 23
      Caption = 'Finalidade'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object lbltpfornecedor: TcxLabel
      Left = 502
      Top = 23
      Caption = 'Tipo Fornecedor'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object cbxcdtpfornecedor: TcxDBLookupComboBox
      Left = 500
      Top = 38
      DataBinding.DataField = 'CDTPFORNECEDOR'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPFORNECEDOR'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPFORNECEDOR'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 5
      OnEnter = cbxcdtpfornecedorEnter
      OnExit = colorexit
      Width = 135
    end
    object lblstpedidomaterial: TcxLabel
      Left = 641
      Top = 25
      AutoSize = False
      Caption = 'Status'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
      Height = 15
      Width = 85
    end
    object txtnmstpedidomaterial: TcxDBLabel
      Left = 641
      Top = 38
      AutoSize = True
      DataBinding.DataField = 'NMSTPEDIDOMATERIAL'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 93
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
      OnExecute = actPrimeiroexecute
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
    object actabrirtppedidomaterial: TAction
      Hint = 'tppedidomaterial'
      OnExecute = actabrirtppedidomaterialExecute
    end
    object actabrirstpedidomaterial: TAction
      Hint = 'stpedidomaterial'
      OnExecute = actabrirstpedidomaterialExecute
    end
    object actAbrirProduto: TAction
      Hint = 'Produto'
      OnExecute = actAbrirProdutoExecute
    end
    object actabrirordproducao: TAction
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
    end
    object actAbrirFornecedor: TAction
      Hint = 'Fornecedor'
      OnExecute = actAbrirFornecedorExecute
    end
    object actAbrirOrdCompra: TAction
      Hint = 'OrdCompra'
    end
    object actAbrirFornecedor2: TAction
      Hint = 'Fornecedor'
    end
    object actAbrirProduto2: TAction
      Hint = 'Produto'
    end
    object actAbrirFornecedor3: TAction
      Hint = 'Fornecedor'
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actordcompra: TAction
      Caption = 'Ordem Compra'
      ImageIndex = 77
    end
    object actentrada: TAction
      Caption = 'Compra'
      ImageIndex = 27
    end
    object actgerarordcomprafornecedor: TAction
      Caption = 'Gerar Ord Compra'
      ImageIndex = 77
      OnExecute = actgerarordcomprafornecedorExecute
    end
    object actvencedor: TAction
      Caption = 'Vencedor'
      OnExecute = actvencedorExecute
    end
    object actimprimirvazio: TAction
      Caption = '444 - Vazio'
      Enabled = False
      ImageIndex = 3
      OnExecute = actimprimirvazioExecute
    end
    object actimprimiraprovacao: TAction
      Caption = '447 - Aprova'#231#227'o de Cota'#231#227'o'
      OnExecute = actimprimiraprovacaoExecute
    end
    object actenviaremail: TAction
      Caption = 'Enviar Email'
      ImageIndex = 60
      OnExecute = actenviaremailExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actstatus: TAction
      Caption = 'Status'
      OnExecute = actstatusExecute
    end
    object actmudarstatus: TAction
      Caption = 'Mudar Status'
      OnExecute = actmudarstatusExecute
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT P.*'#13#10',NMSTPEDIDOMATERIAL'#13#10',NMTPAPLICACAO '#13#10'FROM PEDIDOMAT' +
      'ERIAL P  '#13#10'LEFT JOIN TPAPLICACAO TA ON TA.CDTPAPLICACAO=P.CDTPAP' +
      'LICACAO AND P.CDEMPRESA=TA.CDEMPRESA'#13#10'LEFT JOIN STPEDIDOMATERIAL' +
      ' S ON S.CDSTPEDIDOMATERIAL=P.CDSTPEDIDOMATERIAL'#13#10'WHERE P.CDEMPRE' +
      'SA=:CDEMPRESA AND P.CDPEDIDOMATERIAL=:CDPEDIDOMATERIAL'
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
        Name = 'CDPEDIDOMATERIAL'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 527
    Top = 4
    object sdsCDPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDTPPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDTPPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDSTPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDSTPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDFUNCIONARIOSOLICITANTE: TIntegerField
      FieldName = 'CDFUNCIONARIOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTEMPREGO: TDateField
      FieldName = 'DTEMPREGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDTPAPLICACAO: TIntegerField
      FieldName = 'CDTPAPLICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMTPAPLICACAO: TStringField
      FieldName = 'NMTPAPLICACAO'
      ProviderFlags = []
      Size = 255
    end
    object sdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Required = True
    end
    object sdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Required = True
    end
    object sdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Required = True
    end
    object sdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
    end
    object sdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Required = True
    end
    object sdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Required = True
    end
    object sdsDSAPLICACAO: TStringField
      FieldName = 'DSAPLICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsCDFINALIDADEORDCOMPRA: TIntegerField
      FieldName = 'CDFINALIDADEORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPFORNECEDOR: TIntegerField
      FieldName = 'CDTPFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMSTPEDIDOMATERIAL: TStringField
      FieldName = 'NMSTPEDIDOMATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object sdsBOEXCLUSIVO: TStringField
      FieldName = 'BOEXCLUSIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOSEMCOTACAO: TStringField
      FieldName = 'BOSEMCOTACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDFUNCIONARIOCOMPRADOR: TIntegerField
      FieldName = 'CDFUNCIONARIOCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUSUARIOAPROVADOR: TIntegerField
      FieldName = 'CDUSUARIOAPROVADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDSOBSERVACAOINTERNA: TBlobField
      FieldName = 'DSOBSERVACAOINTERNA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'select I.*'#13#10',p.nmproduto,p.borecuperaicms,p.borecuperaipi'#13#10',u.nm' +
      'unidade '#13#10'from ITPEDIDOMATERIAL I'#13#10'left join produto p on p.cdpr' +
      'oduto=i.cdproduto AND I.CDEMPRESA=P.CDEMPRESA'#13#10'left join unidade' +
      ' u on u.cdunidade=p.cdunidade AND U.CDEMPRESA=P.CDEMPRESA'#13#10'where' +
      ' I.CDEMPRESA=:CDEMPRESA AND CDPEDIDOMATERIAL=:cdpedidomaterial'
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
        Name = 'CDPEDIDOMATERIAL'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 568
    Top = 4
    object sdsdetailCDPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailQTSOLICITADA: TFloatField
      FieldName = 'QTSOLICITADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailQTESTOQUE: TFloatField
      FieldName = 'QTESTOQUE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailQTATENDIDA: TFloatField
      FieldName = 'QTATENDIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
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
    object sdsdetailCDITPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDITPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsdetailBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsdetailCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTPESOUNITARIO: TFloatField
      FieldName = 'QTPESOUNITARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      Size = 50
    end
    object sdsdetailCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailBOCERTIFICADO: TStringField
      FieldName = 'BOCERTIFICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailCDRIM: TIntegerField
      FieldName = 'CDRIM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField
      FieldName = 'CDITORDPRODUCAOMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDITRIM: TIntegerField
      FieldName = 'CDITRIM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object sdspedidomaterialfornecedor: TSQLDataSet
    CommandText = 
      'select P.*'#13#10', NMFORNECEDOR '#13#10'from PEDIDOMATERIALFORNECEDOR P'#13#10'le' +
      'ft join FORNECEDOR F on F.CDFORNECEDOR=P.CDFORNECEDOR AND P.CDEM' +
      'PRESA=F.CDEMPRESA'#13#10'WHERE P.CDEMPRESA=:CDEMPRESA AND CDPEDIDOMATE' +
      'RIAL = :CDPEDIDOMATERIAL'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDPEDIDOMATERIAL'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 662
    Top = 4
    object sdspedidomaterialfornecedorCDPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDPEDIDOMATERIAL'
      Required = True
    end
    object sdspedidomaterialfornecedorNUCOTACAO: TIntegerField
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdspedidomaterialfornecedorDTCOTACAO: TDateField
      FieldName = 'DTCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdspedidomaterialfornecedorNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdspedidomaterialfornecedorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidomaterialfornecedorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidomaterialfornecedorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidomaterialfornecedorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidomaterialfornecedorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidomaterialfornecedorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdspedidomaterialfornecedorCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = []
    end
    object sdspedidomaterialfornecedorCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdspedidomaterialfornecedorDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdspedidomaterialfornecedorCDPEDIDOMATERIALFORNECEDOR: TIntegerField
      FieldName = 'CDPEDIDOMATERIALFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdspedidomaterialfornecedorCDITCONTFORNECEDOR: TIntegerField
      FieldName = 'CDITCONTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdspedidomaterialfornecedorNMITCONTFORNECEDOR: TStringField
      FieldName = 'NMITCONTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdspedidomaterialfornecedorCDCLFORNECEDOR: TIntegerField
      FieldName = 'CDCLFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdspedidomaterialfornecedorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdspedidomaterialfornecedorCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 527
    Top = 50
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    ReadOnly = True
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 527
    Top = 100
    object cdsCDPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDTPPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDTPPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPPEDIDOMATERIALValidate
    end
    object cdsCDSTPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDSTPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDFUNCIONARIOSOLICITANTE: TIntegerField
      FieldName = 'CDFUNCIONARIOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDTEMPREGO: TDateField
      FieldName = 'DTEMPREGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
    end
    object cdssdspedidomaterialfornecedor: TDataSetField
      FieldName = 'sdspedidomaterialfornecedor'
    end
    object cdsCDTPAPLICACAO: TIntegerField
      FieldName = 'CDTPAPLICACAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPAPLICACAOValidate
    end
    object cdsNMTPAPLICACAO: TStringField
      FieldName = 'NMTPAPLICACAO'
      ProviderFlags = []
      Size = 255
    end
    object cdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Required = True
    end
    object cdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Required = True
    end
    object cdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Required = True
    end
    object cdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
    end
    object cdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Required = True
    end
    object cdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Required = True
    end
    object cdsDSAPLICACAO: TStringField
      FieldName = 'DSAPLICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsCDFINALIDADEORDCOMPRA: TIntegerField
      FieldName = 'CDFINALIDADEORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPFORNECEDOR: TIntegerField
      FieldName = 'CDTPFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMSTPEDIDOMATERIAL: TStringField
      FieldName = 'NMSTPEDIDOMATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsBOEXCLUSIVO: TStringField
      FieldName = 'BOEXCLUSIVO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsBOEXCLUSIVOValidate
      FixedChar = True
      Size = 1
    end
    object cdsBOSEMCOTACAO: TStringField
      FieldName = 'BOSEMCOTACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDFUNCIONARIOCOMPRADOR: TIntegerField
      FieldName = 'CDFUNCIONARIOCOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdshstpedidomaterial: TDataSetField
      FieldName = 'sdshstpedidomaterial'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUSUARIOAPROVADOR: TIntegerField
      FieldName = 'CDUSUARIOAPROVADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDSOBSERVACAOINTERNA: TBlobField
      FieldName = 'DSOBSERVACAOINTERNA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    Params = <>
    ReadOnly = True
    BeforePost = cdsdetailBeforePost
    AfterPost = cdsdetailAfterPost
    BeforeDelete = cdsdetailBeforeDelete
    OnNewRecord = cdsdetailNewRecord
    Left = 568
    Top = 100
    object cdsdetailCDPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDDIGITADOValidate
      Size = 30
    end
    object cdsdetailQTSOLICITADA: TFloatField
      FieldName = 'QTSOLICITADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailQTESTOQUE: TFloatField
      FieldName = 'QTESTOQUE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailQTATENDIDA: TFloatField
      FieldName = 'QTATENDIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
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
    object cdsdetailCDITPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDITPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailsdsITPEDIDOMATERIALFORNECEDOR: TDataSetField
      FieldName = 'sdsITPEDIDOMATERIALFORNECEDOR'
    end
    object cdsdetailBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsdetailBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsdetailCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTPECAValidate
    end
    object cdsdetailQTPESOUNITARIO: TFloatField
      FieldName = 'QTPESOUNITARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTPECAValidate
    end
    object cdsdetailDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      Size = 50
    end
    object cdsdetailCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDORDPRODUCAOValidate
    end
    object cdsdetailBOCERTIFICADO: TStringField
      FieldName = 'BOCERTIFICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailCDRIM: TIntegerField
      FieldName = 'CDRIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField
      FieldName = 'CDITORDPRODUCAOMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDITRIM: TIntegerField
      FieldName = 'CDITRIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdspedidomaterialfornecedor: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdspedidomaterialfornecedor
    Params = <>
    ReadOnly = True
    BeforeInsert = cdspedidomaterialfornecedorBeforeInsert
    BeforePost = cdspedidomaterialfornecedorBeforePost
    BeforeDelete = cdspedidomaterialfornecedorBeforeDelete
    AfterScroll = cdspedidomaterialfornecedorAfterScroll
    OnNewRecord = cdspedidomaterialfornecedorNewRecord
    Left = 662
    Top = 100
    object cdspedidomaterialfornecedorCDPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDPEDIDOMATERIAL'
      Required = True
    end
    object cdspedidomaterialfornecedorNUCOTACAO: TIntegerField
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdspedidomaterialfornecedorDTCOTACAO: TDateField
      FieldName = 'DTCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdspedidomaterialfornecedorNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdspedidomaterialfornecedorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidomaterialfornecedorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidomaterialfornecedorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidomaterialfornecedorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidomaterialfornecedorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidomaterialfornecedorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdspedidomaterialfornecedorsdsvencedor: TDataSetField
      FieldName = 'sdsvencedor'
    end
    object cdspedidomaterialfornecedorCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = []
    end
    object cdspedidomaterialfornecedorCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdspedidomaterialfornecedorDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdspedidomaterialfornecedorDTPRVENTREGAValidate
    end
    object cdspedidomaterialfornecedorCDPEDIDOMATERIALFORNECEDOR: TIntegerField
      FieldName = 'CDPEDIDOMATERIALFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdspedidomaterialfornecedorCDITCONTFORNECEDOR: TIntegerField
      FieldName = 'CDITCONTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdspedidomaterialfornecedorNMITCONTFORNECEDOR: TStringField
      FieldName = 'NMITCONTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdspedidomaterialfornecedorNMITCONTFORNECEDORValidate
      Size = 100
    end
    object cdspedidomaterialfornecedorCDCLFORNECEDOR: TIntegerField
      FieldName = 'CDCLFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdspedidomaterialfornecedorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdspedidomaterialfornecedorCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdspedidomaterialfornecedorCDFORNECEDORValidate
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 527
    Top = 153
  end
  object dtspedidomaterialfornecedor: TDataSource
    DataSet = cdspedidomaterialfornecedor
    Left = 662
    Top = 153
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 568
    Top = 153
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 493
    Top = 153
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
    Left = 64
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
      Caption = 'pedidomaterial'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 369
      FloatTop = 161
      FloatClientWidth = 62
      FloatClientHeight = 456
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
    object bmgfornecedor: TdxBar
      BorderStyle = bbsNone
      Caption = 'fornecedor'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 170
      FloatTop = 126
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
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
          ItemName = 'btnimprimir'
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
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
      AutoGrayScale = False
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
    object dxBarButton1: TdxBarButton
      Action = actgerarordcomprafornecedor
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = actvencedor
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actimprimirvazio
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actimprimiraprovacao
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actenviaremail
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object bsiStatus: TdxBarSubItem
      Action = actstatus
      Category = 0
      ItemLinks = <>
    end
  end
  object sdsITPEDIDOMATERIALFORNECEDOR: TSQLDataSet
    CommandText = 
      'SELECT I.*'#13#10',F.NMFORNECEDOR '#13#10'FROM ITPEDIDOMATERIALFORNECEDOR I ' +
      #13#10'LEFT JOIN FORNECEDOR F ON F.CDFORNECEDOR=I.CDFORNECEDOR AND F.' +
      'CDEMPRESA=I.CDEMPRESA'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDITPE' +
      'DIDOMATERIAL=:CDITPEDIDOMATERIAL'
    DataSource = dts2
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDITPEDIDOMATERIAL'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 828
    Top = 4
    object sdsITPEDIDOMATERIALFORNECEDORCDITPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDITPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsITPEDIDOMATERIALFORNECEDORCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsITPEDIDOMATERIALFORNECEDORCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsITPEDIDOMATERIALFORNECEDORCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsITPEDIDOMATERIALFORNECEDORCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsITPEDIDOMATERIALFORNECEDORVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsITPEDIDOMATERIALFORNECEDORVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsITPEDIDOMATERIALFORNECEDORBOVENCEDOR: TStringField
      FieldName = 'BOVENCEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsITPEDIDOMATERIALFORNECEDORTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsITPEDIDOMATERIALFORNECEDORTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsITPEDIDOMATERIALFORNECEDORQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsITPEDIDOMATERIALFORNECEDORDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsITPEDIDOMATERIALFORNECEDORALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsITPEDIDOMATERIALFORNECEDORALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsITPEDIDOMATERIALFORNECEDORVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsITPEDIDOMATERIALFORNECEDORVLICMSDIFALIQUOTA: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsITPEDIDOMATERIALFORNECEDORVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsITPEDIDOMATERIALFORNECEDORVLFINAL: TFMTBCDField
      FieldName = 'VLFINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsITPEDIDOMATERIALFORNECEDORBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsITPEDIDOMATERIALFORNECEDORBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsITPEDIDOMATERIALFORNECEDORALICMSDIFALIQUOTA: TFloatField
      FieldName = 'ALICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsITPEDIDOMATERIALFORNECEDORVLREAL: TFMTBCDField
      FieldName = 'VLREAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsITPEDIDOMATERIALFORNECEDORNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsITPEDIDOMATERIALFORNECEDORVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsITPEDIDOMATERIALFORNECEDORVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsITPEDIDOMATERIALFORNECEDORVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsITPEDIDOMATERIALFORNECEDORCDTPAPROVACAOCOTACAO: TIntegerField
      FieldName = 'CDTPAPROVACAOCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsITPEDIDOMATERIALFORNECEDORCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsITPEDIDOMATERIALFORNECEDORCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsITPEDIDOMATERIALFORNECEDOR: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsITPEDIDOMATERIALFORNECEDOR
    Params = <>
    ReadOnly = True
    BeforePost = cdsITPEDIDOMATERIALFORNECEDORBeforePost
    OnNewRecord = cdsITPEDIDOMATERIALFORNECEDORNewRecord
    Left = 828
    Top = 100
    object cdsITPEDIDOMATERIALFORNECEDORCDITPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDITPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsITPEDIDOMATERIALFORNECEDORCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsITPEDIDOMATERIALFORNECEDORCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsITPEDIDOMATERIALFORNECEDORCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsITPEDIDOMATERIALFORNECEDORCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsITPEDIDOMATERIALFORNECEDORVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLUNITARIOValidate
      Precision = 15
    end
    object cdsITPEDIDOMATERIALFORNECEDORVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate
      Precision = 15
      Size = 2
    end
    object cdsITPEDIDOMATERIALFORNECEDORBOVENCEDOR: TStringField
      FieldName = 'BOVENCEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsITPEDIDOMATERIALFORNECEDORTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsITPEDIDOMATERIALFORNECEDORTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsITPEDIDOMATERIALFORNECEDORQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLUNITARIOValidate
    end
    object cdsITPEDIDOMATERIALFORNECEDORDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsITPEDIDOMATERIALFORNECEDORALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate
    end
    object cdsITPEDIDOMATERIALFORNECEDORALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate
    end
    object cdsITPEDIDOMATERIALFORNECEDORVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate
      Precision = 15
      Size = 2
    end
    object cdsITPEDIDOMATERIALFORNECEDORVLICMSDIFALIQUOTA: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsITPEDIDOMATERIALFORNECEDORVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate
      Precision = 15
      Size = 2
    end
    object cdsITPEDIDOMATERIALFORNECEDORVLFINAL: TFMTBCDField
      FieldName = 'VLFINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsITPEDIDOMATERIALFORNECEDORBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate
      FixedChar = True
      Size = 1
    end
    object cdsITPEDIDOMATERIALFORNECEDORBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate
      FixedChar = True
      Size = 1
    end
    object cdsITPEDIDOMATERIALFORNECEDORALICMSDIFALIQUOTA: TFloatField
      FieldName = 'ALICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate
    end
    object cdsITPEDIDOMATERIALFORNECEDORVLREAL: TFMTBCDField
      FieldName = 'VLREAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsITPEDIDOMATERIALFORNECEDORNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsITPEDIDOMATERIALFORNECEDORVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsITPEDIDOMATERIALFORNECEDORVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsITPEDIDOMATERIALFORNECEDORVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate
      Precision = 15
      Size = 2
    end
    object cdsITPEDIDOMATERIALFORNECEDORCDTPAPROVACAOCOTACAO: TIntegerField
      FieldName = 'CDTPAPROVACAOCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsITPEDIDOMATERIALFORNECEDORCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsITPEDIDOMATERIALFORNECEDORCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsITPEDIDOMATERIALFORNECEDOR: TDataSource
    DataSet = cdsITPEDIDOMATERIALFORNECEDOR
    Left = 828
    Top = 153
  end
  object dts2: TDataSource
    DataSet = sdsdetail
    Left = 568
    Top = 205
  end
  object sdsvencedor: TSQLDataSet
    CommandText = 
      'SELECT I.*,P.NMPRODUTO '#13#10'FROM ITPEDIDOMATERIALFORNECEDOR I '#13#10'LEF' +
      'T JOIN ITPEDIDOMATERIAL I2 ON I2.cditpedidomaterial=I.cditpedido' +
      'material AND I2.CDEMPRESA=I.CDEMPRESA'#13#10'LEFT JOIN PRODUTO P ON P.' +
      'CDPRODUTO=I2.cdproduto AND P.CDEMPRESA=I2.CDEMPRESA'#13#10'WHERE I.CDE' +
      'MPRESA=:CDEMPRESA AND I.CDFORNECEDOR=:CDFORNECEDOR AND I2.CDPEDI' +
      'DOMATERIAL=:CDPEDIDOMATERIAL'
    DataSource = dts3
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftString
        Name = 'CDFORNECEDOR'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDPEDIDOMATERIAL'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 955
    Top = 4
    object sdsvencedorCDITPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDITPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsvencedorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsvencedorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsvencedorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsvencedorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsvencedorVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsvencedorVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsvencedorBOVENCEDOR: TStringField
      FieldName = 'BOVENCEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsvencedorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsvencedorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsvencedorQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsvencedorDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsvencedorALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsvencedorALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsvencedorVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsvencedorVLICMSDIFALIQUOTA: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsvencedorVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsvencedorVLFINAL: TFMTBCDField
      FieldName = 'VLFINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsvencedorBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsvencedorBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsvencedorALICMSDIFALIQUOTA: TFloatField
      FieldName = 'ALICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsvencedorVLREAL: TFMTBCDField
      FieldName = 'VLREAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsvencedorVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsvencedorVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsvencedorNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsvencedorCDTPAPROVACAOCOTACAO: TIntegerField
      FieldName = 'CDTPAPROVACAOCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsvencedorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsvencedorCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsvencedorVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object cdsvencedor: TClientDataSet
    Aggregates = <>
    DataSetField = cdspedidomaterialfornecedorsdsvencedor
    Params = <>
    ReadOnly = True
    BeforePost = cdsvencedorBeforePost
    OnNewRecord = cdsITPEDIDOMATERIALFORNECEDORNewRecord
    Left = 955
    Top = 100
    object cdsvencedorCDITPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDITPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsvencedorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsvencedorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsvencedorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsvencedorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsvencedorVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsvencedorVLUNITARIOValidate
      Precision = 15
    end
    object cdsvencedorVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsvencedorVLTOTALValidate
      Precision = 15
      Size = 2
    end
    object cdsvencedorBOVENCEDOR: TStringField
      FieldName = 'BOVENCEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsvencedorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsvencedorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsvencedorQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsvencedorVLUNITARIOValidate
    end
    object cdsvencedorDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsvencedorALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsvencedorVLTOTALValidate
    end
    object cdsvencedorALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsvencedorVLTOTALValidate
    end
    object cdsvencedorVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsvencedorVLTOTALValidate
      Precision = 15
      Size = 2
    end
    object cdsvencedorVLICMSDIFALIQUOTA: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsvencedorVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsvencedorVLTOTALValidate
      Precision = 15
      Size = 2
    end
    object cdsvencedorVLFINAL: TFMTBCDField
      FieldName = 'VLFINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsvencedorBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsvencedorVLTOTALValidate
      FixedChar = True
      Size = 1
    end
    object cdsvencedorBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsvencedorVLTOTALValidate
      FixedChar = True
      Size = 1
    end
    object cdsvencedorALICMSDIFALIQUOTA: TFloatField
      FieldName = 'ALICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsvencedorVLTOTALValidate
    end
    object cdsvencedorVLREAL: TFMTBCDField
      FieldName = 'VLREAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsvencedorVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsvencedorVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsvencedorNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsvencedorCDTPAPROVACAOCOTACAO: TIntegerField
      FieldName = 'CDTPAPROVACAOCOTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsvencedorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsvencedorCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsvencedorVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dtsvencedor: TDataSource
    DataSet = cdsvencedor
    Left = 956
    Top = 153
  end
  object dts3: TDataSource
    DataSet = sdspedidomaterialfornecedor
    Left = 662
    Top = 205
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
        ItemName = 'dxBarLargeButton1'
      end>
    UseOwnFont = False
    Left = 304
    Top = 284
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bsiStatus'
      end>
    UseOwnFont = False
    Left = 240
    Top = 284
  end
  object dtshstpedidomaterial: TDataSource
    DataSet = cdshstpedidomaterial
    Left = 662
    Top = 290
  end
  object cdshstpedidomaterial: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdshstpedidomaterial
    Params = <>
    Left = 634
    Top = 290
    object cdshstpedidomaterialNMUSUARIO: TStringField
      FieldName = 'NMUSUARIO'
      ProviderFlags = []
      Size = 40
    end
    object cdshstpedidomaterialNMCOMPUTADOR: TStringField
      FieldName = 'NMCOMPUTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdshstpedidomaterialTSHISTORICO: TSQLTimeStampField
      FieldName = 'TSHISTORICO'
      ProviderFlags = []
    end
    object cdshstpedidomaterialDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = []
      Size = 1
    end
    object cdshstpedidomaterialNMSTPEDIDOMATERIAL: TStringField
      FieldName = 'NMSTPEDIDOMATERIAL'
      ProviderFlags = []
      Size = 100
    end
  end
  object sdshstpedidomaterial: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT U.NMUSUARIO'#13#10',C.NMCOMPUTADOR'#13#10',H.TSHISTORICO'#13#10',H.DSJUSTIF' +
      'ICATIVA'#13#10',S.NMSTPEDIDOMATERIAL'#13#10'FROM HSTPEDIDOMATERIAL H'#13#10'LEFT J' +
      'OIN USUARIO U ON U.CDUSUARIO=H.CDUSUARIO'#13#10'LEFT JOIN COMPUTADOR C' +
      ' ON C.CDCOMPUTADOR=H.CDCOMPUTADOR'#13#10'LEFT JOIN STPEDIDOMATERIAL S ' +
      'ON S.CDSTPEDIDOMATERIAL=H.CDSTPEDIDOMATERIAL'#13#10'WHERE H.CDEMPRESA=' +
      ':CDEMPRESA AND H.CDPEDIDOMATERIAL=:CDPEDIDOMATERIAL'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDPEDIDOMATERIAL'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 578
    Top = 290
    object sdshstpedidomaterialNMUSUARIO: TStringField
      FieldName = 'NMUSUARIO'
      ProviderFlags = []
      Size = 40
    end
    object sdshstpedidomaterialNMCOMPUTADOR: TStringField
      FieldName = 'NMCOMPUTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sdshstpedidomaterialTSHISTORICO: TSQLTimeStampField
      FieldName = 'TSHISTORICO'
      ProviderFlags = []
    end
    object sdshstpedidomaterialDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = []
      Size = 1
    end
    object sdshstpedidomaterialNMSTPEDIDOMATERIAL: TStringField
      FieldName = 'NMSTPEDIDOMATERIAL'
      ProviderFlags = []
      Size = 100
    end
  end
end

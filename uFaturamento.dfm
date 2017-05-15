object frmFaturamento: TfrmFaturamento
  Left = 403
  Top = 177
  Caption = ';'
  ClientHeight = 694
  ClientWidth = 1087
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
  object pnl: TPanel
    Left = 0
    Top = 63
    Width = 1087
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 123
    Width = 1087
    Height = 571
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tbsproduto
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 571
    ClientRectRight = 1087
    ClientRectTop = 25
    object tbsproduto: TcxTabSheet
      Caption = 'Produto'
      ImageIndex = 24
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditfatproduto: TcxGrid
        Left = 0
        Top = 0
        Width = 1087
        Height = 546
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvitfatproduto: TcxGridDBTableView
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
          OnCellDblClick = tbvitfatprodutoCellDblClick
          DataController.DataSource = dtsitfatproduto
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvitfatprodutoVLTOTAL
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvitfatprodutoQTITEM
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object tbvitfatprodutoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = grditfatprodutoDBTableView1CDDIGITADOPropertiesButtonClick
            Styles.Content = cxStyle1
            Width = 111
          end
          object tbvitfatprodutoNMPRODUTO: TcxGridDBColumn
            Caption = 'Proddu'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Focusing = False
            Width = 200
          end
          object tbvitfatprodutoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object tbvitfatprodutoVLUNITARIO: TcxGridDBColumn
            Caption = 'Valor Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object tbvitfatprodutoVLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Focusing = False
          end
        end
        object grditfatprodutoLevel1: TcxGridLevel
          GridView = tbvitfatproduto
        end
      end
    end
    object tbscliente: TcxTabSheet
      Caption = 'Cliente'
      ImageIndex = 35
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditfatcliente: TcxGrid
        Left = 0
        Top = 0
        Width = 1087
        Height = 546
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvitfatcliente: TcxGridDBTableView
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
          OnCellDblClick = tbvitfatclienteCellDblClick
          DataController.DataSource = dtsitfatcliente
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvitfatclienteCDCLIENTE: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDCLIENTE'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grditfatclienteDBTableView1CDCLIENTEPropertiesButtonClick
            Styles.Content = cxStyle1
          end
          object tbvitfatclienteNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Width = 200
          end
          object tbvitfatclienteNMTPCLIENTE: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'NMTPCLIENTE'
            Width = 150
          end
          object tbvitfatclienteDSENDERECO: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'DSENDERECO'
            Width = 150
          end
          object tbvitfatclienteDSNUMERO: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'DSNUMERO'
            Width = 45
          end
          object tbvitfatclienteNMBAIRRO: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'NMBAIRRO'
            Width = 100
          end
          object tbvitfatclienteNMMUNICIPIO: TcxGridDBColumn
            Caption = 'Munic'#237'pio'
            DataBinding.FieldName = 'NMMUNICIPIO'
            Width = 150
          end
        end
        object grditfatclienteLevel1: TcxGridLevel
          GridView = tbvitfatcliente
        end
      end
    end
    object tbspedido: TcxTabSheet
      Caption = 'Pedido'
      ImageIndex = 25
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditfatpedido: TcxGrid
        Left = 0
        Top = 0
        Width = 1087
        Height = 546
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvitfatpedido: TcxGridDBTableView
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
          OnCellDblClick = tbvitfatpedidoCellDblClick
          DataController.DataSource = dtsitfatpedido
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvitfatpedidoVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvitfatpedidoNUPEDIDO: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'NUPEDIDO'
            Options.Focusing = False
            Styles.Content = cxStyle1
            Width = 70
          end
          object tbvitfatpedidoDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Options.Focusing = False
          end
          object tbvitfatpedidoCDCLIENTE: TcxGridDBColumn
            Caption = 'Cd Cliente'
            DataBinding.FieldName = 'CDCLIENTE'
            Options.Focusing = False
          end
          object tbvitfatpedidoNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Options.Focusing = False
            Width = 200
          end
          object tbvitfatpedidoVLTOTAL: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Focusing = False
            Width = 90
          end
          object tbvitfatpedidoCDSTPEDIDO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'CDSTPEDIDO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDSTPEDIDO'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTPEDIDO'
              end>
            Properties.ListOptions.ShowHeader = False
            Options.Focusing = False
            Width = 120
          end
          object tbvitfatpedidoCDTPPEDIDO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'CDTPPEDIDO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPPEDIDO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPPEDIDO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 120
          end
          object tbvitfatpedidoCDTPCLIENTEMENSALIDADE: TcxGridDBColumn
            Caption = 'Mensalidade'
            DataBinding.FieldName = 'CDTPCLIENTEMENSALIDADE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPCLIENTEMENSALIDADE'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPCLIENTEMENSALIDADE'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 120
          end
          object tbvitfatpedidoCDCONTRATO: TcxGridDBColumn
            Caption = 'Contrato'
            DataBinding.FieldName = 'CDCONTRATO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDCONTRATO'
            Properties.ListColumns = <
              item
                FieldName = 'NMCONTRATO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 120
          end
        end
        object grditfatpedidoLevel1: TcxGridLevel
          GridView = tbvitfatpedido
        end
      end
    end
    object tbsnotafiscal: TcxTabSheet
      Caption = 'Nota Fiscal'
      ImageIndex = 19
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditfatsaida: TcxGrid
        Left = 0
        Top = 0
        Width = 1087
        Height = 546
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvitfatsaida: TcxGridDBTableView
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
          OnCellDblClick = tbvitfatsaidaCellDblClick
          DataController.DataSource = dtsitfatsaida
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvitfatsaidaVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvitfatsaidaNUSAIDA: TcxGridDBColumn
            Caption = 'Nota Fiscal'
            DataBinding.FieldName = 'NUSAIDA'
            Options.Focusing = False
            Styles.Content = cxStyle1
          end
          object tbvitfatsaidaDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Options.Focusing = False
          end
          object tbvitfatsaidaCDCLIENTE: TcxGridDBColumn
            Caption = 'Cd Cliente'
            DataBinding.FieldName = 'CDCLIENTE'
            Options.Focusing = False
          end
          object tbvitfatsaidaNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Options.Focusing = False
            Width = 200
          end
          object tbvitfatsaidaVLTOTAL: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Focusing = False
          end
        end
        object grditfatsaidaLevel1: TcxGridLevel
          GridView = tbvitfatsaida
        end
      end
    end
    object tbsduplicata: TcxTabSheet
      Caption = 'Contas a Receber'
      ImageIndex = 32
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdduplicata: TcxGrid
        Left = 0
        Top = 0
        Width = 1087
        Height = 546
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvduplicata: TcxGridDBTableView
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
          OnCellDblClick = tbvduplicataCellDblClick
          DataController.DataSource = dtsduplicata
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDUPLICATA'
              Column = tbvduplicataVLDUPLICATA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvduplicataNUDUPLICATA: TcxGridDBColumn
            Caption = 'Contas a Receber'
            DataBinding.FieldName = 'NUDUPLICATA'
            Options.Focusing = False
            Styles.Content = cxStyle1
          end
          object tbvduplicataDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Options.Focusing = False
          end
          object tbvduplicataCDCLIENTE: TcxGridDBColumn
            Caption = 'Cd Cliente'
            DataBinding.FieldName = 'CDCLIENTE'
            Options.Focusing = False
          end
          object tbvduplicataNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Options.Focusing = False
            Width = 200
          end
          object tbvduplicataNMBAICBRNC: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'NMBAICBRNC'
            Options.Focusing = False
            Width = 100
          end
          object tbvduplicataDTPRORROGACAO: TcxGridDBColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'DTPRORROGACAO'
            Options.Focusing = False
          end
          object tbvduplicataVLDUPLICATA: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLDUPLICATA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Focusing = False
          end
          object tbvduplicataNMSTDUPLICATA: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTDUPLICATA'
            Options.Focusing = False
            Width = 150
          end
          object tbvduplicataCDDUPLICATA: TcxGridDBColumn
            DataBinding.FieldName = 'CDDUPLICATA'
            Visible = False
          end
          object tbvduplicataNUNOSSONUMERO: TcxGridDBColumn
            Caption = 'Nosso N'#250'mero'
            DataBinding.FieldName = 'NUNOSSONUMERO'
          end
        end
        object grdduplicataLevel1: TcxGridLevel
          GridView = tbvduplicata
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 82
    Width = 1087
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object lbfaturamento: TLabel
      Left = 8
      Top = 1
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lbldtfaturamento: TLabel
      Left = 241
      Top = 1
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object lblsetboleto: TLabel
      Left = 323
      Top = 1
      Width = 30
      Height = 13
      Caption = 'Boleto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbldtvencimento: TLabel
      Left = 489
      Top = 1
      Width = 70
      Height = 13
      Caption = 'Dt Vencimento'
      Transparent = True
    end
    object lblperiodo: TLabel
      Left = 570
      Top = 1
      Width = 38
      Height = 13
      Caption = 'Per'#237'odo'
      Transparent = True
    end
    object lblate: TLabel
      Left = 658
      Top = 19
      Width = 15
      Height = 13
      Caption = 'at'#233
      Transparent = True
    end
    object lbltpfaturamento: TLabel
      Left = 75
      Top = 1
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
      OnDblClick = lbltpfaturamentoDblClick
    end
    object edtdttermino: TcxDBDateEdit
      Left = 678
      Top = 15
      DataBinding.DataField = 'DTTERMINO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 82
    end
    object edtdtinicio: TcxDBDateEdit
      Left = 570
      Top = 15
      DataBinding.DataField = 'DTINICIO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 82
    end
    object edtdtvencimento: TcxDBDateEdit
      Left = 489
      Top = 15
      DataBinding.DataField = 'DTVENCIMENTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 82
    end
    object cbxcdsetboleto: TcxDBLookupComboBox
      Left = 323
      Top = 15
      DataBinding.DataField = 'CDSETBOLETO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDSETBOLETO'
      Properties.ListColumns = <
        item
          FieldName = 'NMSETBOLETO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 167
    end
    object edtdtfaturamento: TcxDBDateEdit
      Left = 241
      Top = 15
      DataBinding.DataField = 'DTFATURAMENTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 82
    end
    object cbxcdtpfaturamento: TcxDBLookupComboBox
      Left = 75
      Top = 15
      DataBinding.DataField = 'CDTPFATURAMENTO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPFATURAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPFATURAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnValidate = cbxcdtpfaturamentoPropertiesValidate
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 167
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 15
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 70
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 901
    Top = 137
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
    object actImprimirBoletas: TAction
      Caption = 'Imprimir boletas'
      Enabled = False
      Hint = 'Imprimir boletas'
      OnExecute = actImprimirBoletasExecute
    end
    object actImprimirSelecaoBoletas: TAction
      Caption = 'Imprimir boletas selecionadas'
      Enabled = False
      Hint = 'Imprimir boletas selecionadas'
      OnExecute = actImprimirSelecaoBoletasExecute
    end
    object actimprimirboletorota: TAction
      Caption = 'Boleto por Rota'
      OnExecute = actimprimirboletorotaExecute
    end
    object actImportarPedido: TAction
      Caption = 'I&mportar pedidos'
      Enabled = False
      Hint = 'Importar Pedido'
      ImageIndex = 25
      ShortCut = 16461
      Visible = False
      OnExecute = actImportarPedidoExecute
    end
    object actGerarNotaFiscal: TAction
      Caption = '&Gerar notas fiscais'
      Enabled = False
      Hint = 'Gerar Notas Fiscais'
      ImageIndex = 19
      ShortCut = 16455
      Visible = False
      OnExecute = actGerarNotaFiscalExecute
    end
    object actabrirpedido: TAction
      Hint = 'pedido'
      OnExecute = actabrirpedidoExecute
    end
    object actabrircliente: TAction
      Hint = 'cliente'
      OnExecute = actabrirclienteExecute
    end
    object actabrirsaida: TAction
      Hint = 'saida'
      OnExecute = actabrirsaidaExecute
    end
    object actabrirduplicata: TAction
      Hint = 'duplicata'
      OnExecute = actabrirduplicataExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutoExecute
    end
    object actgerarfaturamento: TAction
      Caption = 'Gerar Notas Fiscais'
      Enabled = False
      Hint = 'Gerar Notas Fiscais'
      ImageIndex = 19
      Visible = False
      OnExecute = actgerarfaturamentoExecute
    end
    object actabrircliente2: TAction
      Hint = 'cliente'
      OnExecute = actabrircliente2Execute
    end
    object actgerarprodutomensalidade: TAction
      Caption = 'Gerar Produto/Mensalidade'
      OnExecute = actgerarprodutomensalidadeExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actgerarcobranca: TAction
      Caption = 'Gerar Cobran'#231'a'
      ImageIndex = 70
      OnExecute = actgerarcobrancaExecute
    end
    object actgerarproduto: TAction
      Caption = 'Gerar Produto'
      OnExecute = actgerarprodutoExecute
    end
    object actimportarproduto: TAction
      Caption = 'Importar Produto'
      OnExecute = actimportarprodutoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      Enabled = False
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actverificacaocontrato: TAction
      Caption = '516 - Verificar Contrato'
      OnExecute = actverificacaocontratoExecute
    end
    object actabrirtpfaturamento: TAction
      Hint = 'tpfaturamento'
      OnExecute = actabrirtpfaturamentoExecute
    end
    object actgerarcampanha: TAction
      Caption = 'Gerar Campanha'
      OnExecute = actgerarcampanhaExecute
    end
    object actemail: TAction
      Caption = 'Email'
      Enabled = False
      ImageIndex = 146
      OnExecute = actemailExecute
    end
    object actemailboleto: TAction
      Caption = 'Boleto'
      OnExecute = actemailboletoExecute
    end
    object actemailboletotodos: TAction
      Caption = 'Boleto (todos)'
      OnExecute = actemailboletotodosExecute
    end
    object actexcluirsaida: TAction
      Caption = 'Excluir Nota Fiscal'
      ImageIndex = 19
      OnExecute = actexcluirsaidaExecute
    end
    object actexcluirtppedido: TAction
      Caption = 'Excluir Pedido por Tipo'
      ImageIndex = 25
      OnExecute = actexcluirtppedidoExecute
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
    Left = 677
    Top = 128
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
      Caption = 'fabricante'
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
          ItemName = 'btnemail'
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
          ItemName = 'dxbrsprtr3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr2'
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
    object dxBarButton17: TdxBarButton
      Action = actImprimirSelecaoBoletas
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton7: TdxBarButton
      Action = actImportarPedido
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actGerarNotaFiscal
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actgerarfaturamento
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = actgerarprodutomensalidade
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = actgerarcobranca
      Category = 0
    end
    object dxBarButton21: TdxBarButton
      Action = actgerarproduto
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = actimportarproduto
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actImprimirBoletas
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actverificacaocontrato
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actimprimirboletorota
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actgerarcampanha
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Action = actopcoes
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
    end
    object dxBarButton5: TdxBarButton
      Action = actgerarcampanha
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actemailboleto
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = actemailboletotodos
      Category = 0
    end
    object btnemail: TdxBarLargeButton
      Action = actemail
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumemail
    end
    object dxBarButton15: TdxBarButton
      Action = actexcluirsaida
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = actexcluirtppedido
      Category = 0
    end
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 901
    Top = 201
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end>
    UseOwnFont = False
    Left = 905
    Top = 305
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM FATURAMENTO WHERE CDEMPRESA=:CDEMPRESA AND CDFATUR' +
      'AMENTO=:CDFATURAMENTO'
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
        Name = 'CDFATURAMENTO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 520
    Top = 127
    object sdsCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsCDSTFATURAMENTO: TIntegerField
      FieldName = 'CDSTFATURAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTFATURAMENTO: TDateField
      FieldName = 'DTFATURAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPFATURAMENTO: TIntegerField
      FieldName = 'CDTPFATURAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDSETBOLETO: TIntegerField
      FieldName = 'CDSETBOLETO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 548
    Top = 127
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 576
    Top = 127
    object cdsCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCDSTFATURAMENTO: TIntegerField
      FieldName = 'CDSTFATURAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTFATURAMENTO: TDateField
      FieldName = 'DTFATURAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPFATURAMENTO: TIntegerField
      FieldName = 'CDTPFATURAMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPFATURAMENTOValidate
    end
    object cdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitfatproduto: TDataSetField
      FieldName = 'sdsitfatproduto'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitfatpedido: TDataSetField
      FieldName = 'sdsitfatpedido'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitfatcliente: TDataSetField
      FieldName = 'sdsitfatcliente'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitfatsaida: TDataSetField
      FieldName = 'sdsitfatsaida'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsduplicata: TDataSetField
      FieldName = 'sdsduplicata'
      ProviderFlags = []
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDSETBOLETO: TIntegerField
      FieldName = 'CDSETBOLETO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 621
    Top = 126
  end
  object cdsitfatproduto: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitfatproduto
    Params = <>
    BeforePost = cdsitfatprodutoBeforePost
    OnNewRecord = cdsitfatprodutoNewRecord
    Left = 576
    Top = 155
    object cdsitfatprodutoCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatprodutoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatprodutoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitfatprodutoQTITEMValidate
    end
    object cdsitfatprodutoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitfatprodutoQTITEMValidate
      Precision = 15
      Size = 2
    end
    object cdsitfatprodutoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitfatprodutoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitfatprodutoCDDIGITADOValidate
      Size = 30
    end
    object cdsitfatprodutoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatprodutoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatprodutoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatprodutoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatprodutoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatprodutoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatprodutoCDITFATPRODUTO: TIntegerField
      FieldName = 'CDITFATPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitfatprodutoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Required = True
      Size = 250
    end
    object cdsitfatprodutoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitfatproduto: TDataSource
    DataSet = cdsitfatproduto
    Left = 621
    Top = 155
  end
  object sdsitfatproduto: TSQLDataSet
    CommandText = 
      'SELECT ITFATPRODUTO.*'#13#10',NMPRODUTO'#13#10'FROM ITFATPRODUTO'#13#10'LEFT JOIN ' +
      'PRODUTO ON PRODUTO.CDPRODUTO=ITFATPRODUTO.CDPRODUTO AND ITFATPRO' +
      'DUTO.CDEMPRESA=PRODUTO.CDEMPRESA'#13#10'WHERE ITFATPRODUTO.CDEMPRESA=:' +
      'CDEMPRESA AND ITFATPRODUTO.CDFATURAMENTO=:CDFATURAMENTO'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDFATURAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 521
    Top = 156
    object sdsitfatprodutoCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatprodutoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatprodutoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatprodutoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitfatprodutoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitfatprodutoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsitfatprodutoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatprodutoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatprodutoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatprodutoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatprodutoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatprodutoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatprodutoCDITFATPRODUTO: TIntegerField
      FieldName = 'CDITFATPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitfatprodutoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Required = True
      Size = 250
    end
    object sdsitfatprodutoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 649
    Top = 127
  end
  object cdsitfatpedido: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitfatpedido
    Params = <>
    Left = 576
    Top = 185
    object cdsitfatpedidoCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = []
    end
    object cdsitfatpedidoCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = []
    end
    object cdsitfatpedidoNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitfatpedidoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = []
    end
    object cdsitfatpedidoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = []
    end
    object cdsitfatpedidoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = []
    end
    object cdsitfatpedidoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = []
    end
    object cdsitfatpedidoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = []
    end
    object cdsitfatpedidoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = []
    end
    object cdsitfatpedidoNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsitfatpedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdsitfatpedidoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsitfatpedidoCDTPPEDIDO: TIntegerField
      FieldName = 'CDTPPEDIDO'
      ProviderFlags = []
    end
    object cdsitfatpedidoCDTPCLIENTEMENSALIDADE: TIntegerField
      FieldName = 'CDTPCLIENTEMENSALIDADE'
      ProviderFlags = []
    end
    object cdsitfatpedidoCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = []
    end
    object cdsitfatpedidoCDSTPEDIDO: TIntegerField
      FieldName = 'CDSTPEDIDO'
      ProviderFlags = []
    end
    object cdsitfatpedidoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitfatpedidoCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dtsitfatpedido: TDataSource
    DataSet = cdsitfatpedido
    Left = 621
    Top = 184
  end
  object sdsitfatpedido: TSQLDataSet
    CommandText = 
      'SELECT ITFATPEDIDO.*'#13#10',CLIENTE.CDCLIENTE'#13#10',CLIENTE.NMCLIENTE'#13#10',P' +
      'EDIDO.DTEMISSAO'#13#10',PEDIDO.CDTPPEDIDO'#13#10',CLIENTE.CDTPCLIENTEMENSALI' +
      'DADE'#13#10',CLIENTE.CDCONTRATO'#13#10',PEDIDO.VLTOTAL'#13#10',PEDIDO.CDSTPEDIDO'#13#10 +
      'FROM ITFATPEDIDO'#13#10'INNER JOIN PEDIDO ON ITFATPEDIDO.CDPEDIDO=PEDI' +
      'DO.CDPEDIDO AND ITFATPEDIDO.CDEMPRESA=PEDIDO.CDEMPRESA '#13#10'LEFT JO' +
      'IN TPPEDIDO ON TPPEDIDO.CDTPPEDIDO=PEDIDO.CDTPPEDIDO AND TPPEDID' +
      'O.CDEMPRESA=PEDIDO.CDEMPRESA'#13#10'INNER JOIN CLIENTE ON CLIENTE.CDCL' +
      'IENTE=PEDIDO.CDCLIENTE AND CLIENTE.CDEMPRESA=PEDIDO.CDEMPRESA'#13#10'W' +
      'HERE ITFATPEDIDO.CDEMPRESA=:CDEMPRESA AND ITFATPEDIDO.CDFATURAME' +
      'NTO=:CDFATURAMENTO'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDFATURAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 521
    Top = 184
    object sdsitfatpedidoCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = []
    end
    object sdsitfatpedidoCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = []
    end
    object sdsitfatpedidoNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitfatpedidoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = []
    end
    object sdsitfatpedidoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = []
    end
    object sdsitfatpedidoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = []
    end
    object sdsitfatpedidoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = []
    end
    object sdsitfatpedidoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = []
    end
    object sdsitfatpedidoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = []
    end
    object sdsitfatpedidoNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsitfatpedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdsitfatpedidoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsitfatpedidoCDTPPEDIDO: TIntegerField
      FieldName = 'CDTPPEDIDO'
      ProviderFlags = []
    end
    object sdsitfatpedidoCDTPCLIENTEMENSALIDADE: TIntegerField
      FieldName = 'CDTPCLIENTEMENSALIDADE'
      ProviderFlags = []
    end
    object sdsitfatpedidoCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = []
    end
    object sdsitfatpedidoCDSTPEDIDO: TIntegerField
      FieldName = 'CDSTPEDIDO'
      ProviderFlags = []
    end
    object sdsitfatpedidoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitfatpedidoCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object sdsitfatcliente: TSQLDataSet
    CommandText = 
      'SELECT ITFATCLIENTE.*'#13#10',CLIENTE. NMCLIENTE'#13#10', TPCLIENTE.NMTPCLIE' +
      'NTE'#13#10',CLIENTE.DSENDERECO'#13#10',CLIENTE.DSNUMERO'#13#10',CLIENTE.NMBAIRRO'#13#10 +
      ',MUNICIPIO.NMMUNICIPIO'#13#10'FROM ITFATCLIENTE'#13#10'LEFT JOIN CLIENTE ON ' +
      'CLIENTE.CDCLIENTE = ITFATCLIENTE.CDCLIENTE AND ITFATCLIENTE.CDEM' +
      'PRESA=CLIENTE.CDEMPRESA '#13#10'LEFT JOIN MUNICIPIO ON MUNICIPIO.CDMUN' +
      'ICIPIO = CLIENTE.CDMUNICIPIO '#13#10'LEFT JOIN TPCLIENTE ON TPCLIENTE.' +
      'CDTPCLIENTE = CLIENTE.CDTPCLIENTE AND TPCLIENTE.CDEMPRESA=CLIENT' +
      'E.CDEMPRESA'#13#10'WHERE ITFATCLIENTE.CDEMPRESA=:CDEMPRESA AND ITFATCL' +
      'IENTE.CDFATURAMENTO=:CDFATURAMENTO'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDFATURAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 521
    Top = 212
    object sdsitfatclienteCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatclienteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatclienteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatclienteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatclienteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatclienteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatclienteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatclienteCDITFATCLIENTE: TIntegerField
      FieldName = 'CDITFATCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitfatclienteNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsitfatclienteNMTPCLIENTE: TStringField
      FieldName = 'NMTPCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsitfatclienteDSENDERECO: TStringField
      FieldName = 'DSENDERECO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitfatclienteDSNUMERO: TStringField
      FieldName = 'DSNUMERO'
      ProviderFlags = []
      Size = 10
    end
    object sdsitfatclienteNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitfatclienteNMMUNICIPIO: TStringField
      FieldName = 'NMMUNICIPIO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitfatclienteCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitfatclienteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitfatcliente: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitfatcliente
    Params = <>
    BeforePost = cdsitfatclienteBeforePost
    OnNewRecord = cdsitfatclienteNewRecord
    Left = 576
    Top = 213
    object cdsitfatclienteCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatclienteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatclienteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatclienteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatclienteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatclienteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatclienteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitfatclienteCDITFATCLIENTE: TIntegerField
      FieldName = 'CDITFATCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitfatclienteNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsitfatclienteNMTPCLIENTE: TStringField
      FieldName = 'NMTPCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsitfatclienteDSENDERECO: TStringField
      FieldName = 'DSENDERECO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitfatclienteDSNUMERO: TStringField
      FieldName = 'DSNUMERO'
      ProviderFlags = []
      Size = 10
    end
    object cdsitfatclienteNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitfatclienteNMMUNICIPIO: TStringField
      FieldName = 'NMMUNICIPIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitfatclienteCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitfatclienteCDCLIENTEValidate
    end
    object cdsitfatclienteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitfatcliente: TDataSource
    DataSet = cdsitfatcliente
    Left = 621
    Top = 212
  end
  object sdsitfatsaida: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT ITFATSAIDA.*'#13#10',SAIDA.NUSAIDA'#13#10',CLIENTE.CDCLIENTE'#13#10',CLIENT' +
      'E.NMCLIENTE'#13#10',SAIDA.DTEMISSAO'#13#10',SAIDA.VLTOTAL'#13#10'FROM ITFATSAIDA'#13#10 +
      'INNER JOIN SAIDA ON ITFATSAIDA.CDSAIDA=SAIDA.CDSAIDA AND ITFATSA' +
      'IDA.CDEMPRESA=SAIDA.CDEMPRESA'#13#10'INNER JOIN CLIENTE ON SAIDA.CDCLI' +
      'ENTE=CLIENTE.CDCLIENTE AND CLIENTE.CDEMPRESA=SAIDA.CDEMPRESA'#13#10'WH' +
      'ERE ITFATSAIDA.CDEMPRESA=:CDEMPRESA AND ITFATSAIDA.CDFATURAMENTO' +
      '=:CDFATURAMENTO'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDFATURAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 521
    Top = 240
    object sdsitfatsaidaCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = []
    end
    object sdsitfatsaidaCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = []
    end
    object sdsitfatsaidaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = []
    end
    object sdsitfatsaidaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = []
    end
    object sdsitfatsaidaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = []
    end
    object sdsitfatsaidaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = []
    end
    object sdsitfatsaidaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = []
    end
    object sdsitfatsaidaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = []
    end
    object sdsitfatsaidaNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
    end
    object sdsitfatsaidaNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsitfatsaidaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdsitfatsaidaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsitfatsaidaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitfatsaidaCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object cdsitfatsaida: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitfatsaida
    Params = <>
    Left = 577
    Top = 241
    object cdsitfatsaidaCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = []
    end
    object cdsitfatsaidaCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = []
    end
    object cdsitfatsaidaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = []
    end
    object cdsitfatsaidaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = []
    end
    object cdsitfatsaidaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = []
    end
    object cdsitfatsaidaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = []
    end
    object cdsitfatsaidaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = []
    end
    object cdsitfatsaidaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = []
    end
    object cdsitfatsaidaNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
    end
    object cdsitfatsaidaNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsitfatsaidaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdsitfatsaidaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsitfatsaidaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitfatsaidaCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dtsitfatsaida: TDataSource
    DataSet = cdsitfatsaida
    Left = 623
    Top = 240
  end
  object dtsduplicata: TDataSource
    DataSet = cdsduplicata
    Left = 623
    Top = 268
  end
  object cdsduplicata: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsduplicata
    Params = <>
    Left = 576
    Top = 246
    object cdsduplicataCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = []
    end
    object cdsduplicataCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = []
    end
    object cdsduplicataNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = []
      Size = 15
    end
    object cdsduplicataNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsduplicataNMBAICBRNC: TStringField
      FieldName = 'NMBAICBRNC'
      ProviderFlags = []
      Size = 100
    end
    object cdsduplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdsduplicataDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = []
    end
    object cdsduplicataVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsduplicataNMSTDUPLICATA: TStringField
      FieldName = 'NMSTDUPLICATA'
      ProviderFlags = []
      Size = 100
    end
    object cdsduplicataCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = []
    end
    object cdsduplicataNUNOSSONUMERO: TStringField
      FieldName = 'NUNOSSONUMERO'
      ProviderFlags = []
      Size = 17
    end
    object cdsduplicataCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object sdsduplicata: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT ITFATSAIDA.CDFATURAMENTO'#13#10',ITFATSAIDA.CDSAIDA'#13#10',DUPLICATA' +
      '.NUDUPLICATA'#13#10',CLIENTE.CDCLIENTE'#13#10',CLIENTE.NMCLIENTE'#13#10',CLIENTE.N' +
      'MBAICBRNC'#13#10',DUPLICATA.DTEMISSAO'#13#10',DUPLICATA.DTPRORROGACAO'#13#10',DUPL' +
      'ICATA.VLDUPLICATA'#13#10',STDUPLICATA.NMSTDUPLICATA'#13#10',DUPLICATA.CDDUPL' +
      'ICATA'#13#10',DUPLICATA.NUNOSSONUMERO'#13#10'FROM ITFATSAIDA'#13#10'INNER JOIN SAI' +
      'DA ON ITFATSAIDA.CDSAIDA=SAIDA.CDSAIDA AND SAIDA.CDEMPRESA=ITFAT' +
      'SAIDA.CDEMPRESA'#13#10'INNER JOIN DUPLICATA ON SAIDA.CDSAIDA=DUPLICATA' +
      '.CDSAIDA AND DUPLICATA.CDEMPRESA=SAIDA.CDEMPRESA'#13#10'INNER JOIN STD' +
      'UPLICATA ON DUPLICATA.CDSTDUPLICATA=STDUPLICATA.CDSTDUPLICATA'#13#10'I' +
      'NNER JOIN CLIENTE ON DUPLICATA.CDCLIENTE=CLIENTE.CDCLIENTE AND C' +
      'LIENTE.CDEMPRESA=DUPLICATA.CDEMPRESA'#13#10'WHERE ITFATSAIDA.CDEMPRESA' +
      '=:CDEMPRESA AND ITFATSAIDA.CDFATURAMENTO=:CDFATURAMENTO '#13#10'ORDER ' +
      'BY DUPLICATA.NUDUPLICATA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDFATURAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 522
    Top = 268
    object sdsduplicataCDFATURAMENTO: TIntegerField
      FieldName = 'CDFATURAMENTO'
      ProviderFlags = []
    end
    object sdsduplicataCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = []
    end
    object sdsduplicataNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = []
      Size = 15
    end
    object sdsduplicataNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsduplicataNMBAICBRNC: TStringField
      FieldName = 'NMBAICBRNC'
      ProviderFlags = []
      Size = 100
    end
    object sdsduplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdsduplicataDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = []
    end
    object sdsduplicataVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsduplicataNMSTDUPLICATA: TStringField
      FieldName = 'NMSTDUPLICATA'
      ProviderFlags = []
      Size = 100
    end
    object sdsduplicataCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = []
    end
    object sdsduplicataNUNOSSONUMERO: TStringField
      FieldName = 'NUNOSSONUMERO'
      ProviderFlags = []
      Size = 17
    end
    object sdsduplicataCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 705
    Top = 129
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      TextColor = clBlue
    end
  end
  object pumemail: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end>
    UseOwnFont = False
    Left = 904
    Top = 250
  end
end

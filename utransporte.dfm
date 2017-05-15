object frmtransporte: Tfrmtransporte
  Left = 601
  Top = 202
  ClientHeight = 560
  ClientWidth = 1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 86
    Width = 1095
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object lbl1: TLabel
      Left = 451
      Top = 2
      Width = 72
      Height = 13
      Caption = 'Transportadora'
      Transparent = True
    end
    object Label13: TLabel
      Left = 388
      Top = 2
      Width = 52
      Height = 13
      Caption = 'Hr Retorno'
      Transparent = True
    end
    object Label7: TLabel
      Left = 305
      Top = 2
      Width = 52
      Height = 13
      Caption = 'Dt Retorno'
      Transparent = True
    end
    object Label30: TLabel
      Left = 242
      Top = 2
      Width = 43
      Height = 13
      Caption = 'Hr Sa'#237'da'
      Transparent = True
    end
    object Label3: TLabel
      Left = 159
      Top = 2
      Width = 43
      Height = 13
      Caption = 'Dt Sa'#237'da'
      Transparent = True
    end
    object Label2: TLabel
      Left = 76
      Top = 2
      Width = 53
      Height = 13
      Caption = 'Dt Emiss'#227'o'
      Transparent = True
    end
    object Label1: TLabel
      Left = 4
      Top = 2
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lblnmtransportadora: TDBText
      Left = 524
      Top = 19
      Width = 92
      Height = 13
      AutoSize = True
      DataField = 'NMTRANSPORTADORA'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnDblClick = lblnmtransportadoraDblClick
    end
    object edtcdtransportadora: TcxDBButtonEdit
      Left = 451
      Top = 16
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
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      OnKeyPress = eventokeypress
      Width = 72
    end
    object edthrretorno: TcxDBTimeEdit
      Left = 388
      Top = 16
      DataBinding.DataField = 'HRRETORNO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 64
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 76
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
      OnKeyDown = nextcontrol
      Width = 84
    end
    object edtdtsaida: TcxDBDateEdit
      Left = 159
      Top = 16
      DataBinding.DataField = 'DTSAIDA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 84
    end
    object edthrsaida: TcxDBTimeEdit
      Left = 242
      Top = 16
      DataBinding.DataField = 'HRSAIDA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 64
    end
    object edtdtretorno: TcxDBDateEdit
      Left = 305
      Top = 16
      DataBinding.DataField = 'DTRETORNO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 84
    end
    object edtcodigo: TcxTextEdit
      Left = 4
      Top = 16
      Properties.OnChange = edtcodigoPropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 71
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 127
    Width = 1095
    Height = 433
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tbsPedido
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 433
    ClientRectRight = 1095
    ClientRectTop = 25
    object tbsPedido: TcxTabSheet
      Caption = 'Pedido'
      ImageIndex = 25
      ExplicitHeight = 371
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 257
        Width = 1095
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = grditittransporte
        ExplicitWidth = 8
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1095
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object grditittransporte: TcxGrid
        Left = 0
        Top = 265
        Width = 1095
        Height = 143
        Align = alBottom
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        object grditittransporteDBTableView1: TcxGridDBTableView
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
          OnCellDblClick = grditittransporteDBTableView1CellDblClick
          DataController.DataSource = dtsitittransporte
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = grditittransporteDBTableView1QTITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grditittransporteDBTableView1VLTOTAL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDESCONTO'
              Column = grditittransporteDBTableView1VLDESCONTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLFRETE'
              Column = grditittransporteDBTableView1VLFRETE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSSUBTRIB'
              Column = grditittransporteDBTableView1VLICMSSUBTRIB
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
          object grditittransporteDBTableView1CDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grditittransporteDBTableView1CDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 100
          end
          object grditittransporteDBTableView1NMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Editing = False
            Options.Focusing = False
            Width = 300
          end
          object grditittransporteDBTableView1NMUNIDADE: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Editing = False
            Options.Focusing = False
            Width = 60
          end
          object grditittransporteDBTableView1QTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 101
          end
          object grditittransporteDBTableView1VLUNITARIO: TcxGridDBColumn
            Caption = 'Valor Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object grditittransporteDBTableView1VLTOTAL: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
          end
          object grditittransporteDBTableView1VLDESCONTO: TcxGridDBColumn
            Caption = 'Desconto'
            DataBinding.FieldName = 'VLDESCONTO'
          end
          object grditittransporteDBTableView1VLFRETE: TcxGridDBColumn
            Caption = 'Frete'
            DataBinding.FieldName = 'VLFRETE'
          end
          object grditittransporteDBTableView1VLICMSSUBTRIB: TcxGridDBColumn
            Caption = 'ICMS Sub Trib'
            DataBinding.FieldName = 'VLICMSSUBTRIB'
          end
          object grditittransporteDBTableView1PSBRUTO: TcxGridDBColumn
            Caption = 'Peso Bruto'
            DataBinding.FieldName = 'PSBRUTO'
            Options.Focusing = False
          end
        end
        object grditittransporteLevel1: TcxGridLevel
          GridView = grditittransporteDBTableView1
        end
      end
      object grddetail: TcxGrid
        Left = 0
        Top = 22
        Width = 1095
        Height = 235
        Align = alClient
        TabOrder = 3
        LookAndFeel.NativeStyle = False
        object grddetailDBTableView1: TcxGridDBTableView
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
          OnCellDblClick = grddetailDBTableView1CellDblClick
          DataController.DataSource = dtsdetail
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'PSBRUTO'
              Column = grddetailDBTableView1PSBRUTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grddetailDBTableView1VLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grddetailDBTableView1NUPEDIDO: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'NUPEDIDO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grddetailDBTableView1NUPEDIDOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
          end
          object grddetailDBTableView1NUSAIDA: TcxGridDBColumn
            Caption = 'Nota Fiscal'
            DataBinding.FieldName = 'NUSAIDA'
            Options.Editing = False
            Styles.Content = dtmmain.cxStyle1
          end
          object grddetailDBTableView1DTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Options.Editing = False
          end
          object grddetailDBTableView1RZSOCIAL: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'RZSOCIAL'
            Options.Editing = False
            Width = 300
          end
          object grddetailDBTableView1NMCONDPAGTO: TcxGridDBColumn
            Caption = 'Condi'#231#227'o Pagamento'
            DataBinding.FieldName = 'NMCONDPAGTO'
            Options.Editing = False
            Width = 200
          end
          object grddetailDBTableView1NMREPRESENTANTE: TcxGridDBColumn
            Caption = 'Representante'
            DataBinding.FieldName = 'NMREPRESENTANTE'
            Options.Editing = False
            Width = 200
          end
          object grddetailDBTableView1PSBRUTO: TcxGridDBColumn
            Caption = 'Peso Bruto'
            DataBinding.FieldName = 'PSBRUTO'
            Options.Editing = False
          end
          object grddetailDBTableView1VLTOTAL: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
          end
          object grddetailDBTableView1NMSTPEDIDO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTPEDIDO'
            Options.Editing = False
          end
        end
        object grddetailLevel1: TcxGridLevel
          GridView = grddetailDBTableView1
        end
      end
    end
    object tbs2: TcxTabSheet
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
        Height = 408
        Width = 1095
      end
    end
  end
  object pnl: TcxLabel
    Left = 0
    Top = 63
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
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 437
    Top = 3
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
    object actAbrirTransportadora: TAction
      Hint = 'transportadora'
      ImageIndex = 16
      OnExecute = actAbrirTransportadoraExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      ImageIndex = 24
      OnExecute = actabrirprodutoExecute
    end
    object actabrirpedido: TAction
      Hint = 'Pedido'
      ImageIndex = 25
      OnExecute = actabrirpedidoExecute
    end
    object actabrirsaida: TAction
      Hint = 'saida'
      ImageIndex = 19
      OnExecute = actabrirsaidaExecute
    end
    object actgerarnotafiscal: TAction
      Caption = 'Gerar Nota Fiscal'
      Hint = 'Gerar Nota Fiscal'
      ImageIndex = 19
      OnExecute = actgerarnotafiscalExecute
    end
    object actGerarnotafiscaltodas: TAction
      Caption = 'Gerar todas as Notas Fiscais'
      Hint = 'Gerar todas as notas fiscais'
      ImageIndex = 19
      OnExecute = actGerarnotafiscaltodasExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actimprimirromaneio: TAction
      Caption = '445 - Romaneio'
      OnExecute = actimprimirromaneioExecute
    end
    object actimprimirromaneio2: TAction
      Caption = '336 - Romaneio'
      OnExecute = actimprimirromaneio2Execute
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
    Left = 353
    Top = 3
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
      Caption = 'transporte'
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
    object bmg1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'pedido'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 199
      FloatTop = 157
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edtnupedido'
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
      Action = actgerarnotafiscal
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = actGerarnotafiscaltodas
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object edtnupedido: TcxBarEditItem
      Caption = 'Digite o N'#250'mero Pedido'
      Category = 0
      Hint = 'Digite o N'#250'mero Pedido'
      Visible = ivNever
      OnExit = edtnupedidoExit
      OnKeyPress = edtnupedidoKeyPress
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtnupedidoPropertiesButtonClick
    end
    object dxBarButton3: TdxBarButton
      Action = actimprimirromaneio
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actimprimirromaneio2
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT T.*,TR.NMTRANSPORTADORA '#13#10'FROM TRANSPORTE T '#13#10'LEFT JOIN T' +
      'RANSPORTADORA TR ON TR.CDEMPRESA=T.CDEMPRESA AND TR.CDTRANSPORTA' +
      'DORA=T.CDTRANSPORTADORA '#13#10'WHERE T.CDEMPRESA=:CDEMPRESA AND T.CDT' +
      'RANSPORTE=:CDTRANSPORTE'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'CDTRANSPORTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 568
    Top = 67
    object sdsCDTRANSPORTE: TIntegerField
      FieldName = 'CDTRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsCDSTTRANSPORTE: TIntegerField
      FieldName = 'CDSTTRANSPORTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object sdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT I.*'#13#10',P.DTEMISSAO'#13#10',C.RZSOCIAL '#13#10',CP.NMCONDPAGTO'#13#10',S.NMST' +
      'PEDIDO'#13#10',R.NMREPRESENTANTE'#13#10'FROM ITTRANSPORTE I '#13#10'LEFT JOIN PEDI' +
      'DO P ON P.CDEMPRESA=I.CDEMPRESA AND P.CDPEDIDO=I.CDPEDIDO '#13#10'LEFT' +
      ' JOIN CLIENTE C ON C.CDEMPRESA=P.CDEMPRESA AND C.CDCLIENTE=P.CDC' +
      'LIENTE '#13#10'LEFT JOIN STPEDIDO S ON S.CDEMPRESA=P.CDEMPRESA AND S.C' +
      'DSTPEDIDO=P.CDSTPEDIDO'#13#10'LEFT JOIN CONDPAGTO CP ON CP.CDEMPRESA=P' +
      '.CDEMPRESA AND CP.CDCONDPAGTO=P.CDCONDPAGTO'#13#10'LEFT JOIN REPRESENT' +
      'ANTE R ON R.CDEMPRESA=P.CDEMPRESA AND R.CDREPRESENTANTE=P.CDREPR' +
      'ESENTANTE '#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDTRANSPORTE=:CDT' +
      'RANSPORTE'
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
        Name = 'CDTRANSPORTE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 568
    Top = 95
    object sdsdetailCDTRANSPORTE: TIntegerField
      FieldName = 'CDTRANSPORTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object sdsdetailPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdsdetailRZSOCIAL: TStringField
      FieldName = 'RZSOCIAL'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailNMCONDPAGTO: TStringField
      FieldName = 'NMCONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailNMREPRESENTANTE: TStringField
      FieldName = 'NMREPRESENTANTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailCDITTRANSPORTE: TIntegerField
      FieldName = 'CDITTRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailNMSTPEDIDO: TStringField
      FieldName = 'NMSTPEDIDO'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitittransporte: TSQLDataSet
    CommandText = 
      'SELECT I.*,P.NMPRODUTO,U.NMUNIDADE '#13#10'FROM ITITTRANSPORTE I'#13#10'LEFT' +
      ' JOIN PRODUTO P ON P.CDEMPRESA=I.CDEMPRESA AND P.CDPRODUTO=I.CDP' +
      'RODUTO '#13#10'LEFT JOIN UNIDADE U ON U.CDEMPRESA=P.CDEMPRESA AND U.CD' +
      'UNIDADE=P.CDUNIDADE  '#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDITTR' +
      'ANSPORTE=:CDITTRANSPORTE'
    DataSource = dts2
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
        Name = 'CDITTRANSPORTE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 569
    Top = 123
    object sdsitittransporteCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitittransporteCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsitittransporteQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitittransporteVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitittransporteVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitittransporteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitittransporteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitittransporteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitittransporteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitittransporteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitittransporteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitittransporteNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsitittransporteNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsitittransporteCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitittransporteCDITITTRANSPORTE: TIntegerField
      FieldName = 'CDITITTRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitittransporteCDITTRANSPORTE: TIntegerField
      FieldName = 'CDITTRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitittransporteVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitittransporteVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitittransporteVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitittransportePSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitittransporteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 596
    Top = 67
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    OnNewRecord = cdsNewRecord
    Left = 624
    Top = 67
    object cdsCDTRANSPORTE: TIntegerField
      FieldName = 'CDTRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCDSTTRANSPORTE: TIntegerField
      FieldName = 'CDSTTRANSPORTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object cdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTRANSPORTADORAValidate
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    OnCalcFields = cdsdetailCalcFields
    OnNewRecord = cdsdetailNewRecord
    Left = 624
    Top = 95
    object cdsdetailCDTRANSPORTE: TIntegerField
      FieldName = 'CDTRANSPORTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailNUPEDIDOValidate
      Size = 10
    end
    object cdsdetailPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdsdetailRZSOCIAL: TStringField
      FieldName = 'RZSOCIAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailNMCONDPAGTO: TStringField
      FieldName = 'NMCONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailNMREPRESENTANTE: TStringField
      FieldName = 'NMREPRESENTANTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailCDITTRANSPORTE: TIntegerField
      FieldName = 'CDITTRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailsdsitittransporte: TDataSetField
      FieldName = 'sdsitittransporte'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNMSTPEDIDO: TStringField
      FieldName = 'NMSTPEDIDO'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailNUSAIDA: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NUSAIDA'
      ProviderFlags = []
      Calculated = True
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitittransporte: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsitittransporte
    Params = <>
    BeforePost = cdsitittransporteBeforePost
    AfterPost = cdsitittransporteAfterPost
    AfterDelete = cdsitittransporteAfterDelete
    OnNewRecord = cdsitittransporteNewRecord
    Left = 624
    Top = 123
    object cdsitittransporteCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitittransporteCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitittransporteCDDIGITADOValidate
      Size = 30
    end
    object cdsitittransporteQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitittransporteQTITEMValidate
    end
    object cdsitittransporteVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitittransporteQTITEMValidate
      Precision = 15
      Size = 2
    end
    object cdsitittransporteVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitittransporteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitittransporteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitittransporteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitittransporteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitittransporteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitittransporteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitittransporteNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsitittransporteNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsitittransporteCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitittransporteCDITITTRANSPORTE: TIntegerField
      FieldName = 'CDITITTRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitittransporteCDITTRANSPORTE: TIntegerField
      FieldName = 'CDITTRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitittransporteVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitittransporteVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitittransporteVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitittransportePSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitittransporteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 652
    Top = 67
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 680
    Top = 67
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 653
    Top = 95
  end
  object dtsitittransporte: TDataSource
    DataSet = cdsitittransporte
    Left = 653
    Top = 123
  end
  object dts2: TDataSource
    DataSet = sdsdetail
    Left = 681
    Top = 96
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
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 776
    Top = 80
  end
end

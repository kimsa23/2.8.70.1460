object frmrim: Tfrmrim
  Left = 495
  Top = 170
  ClientHeight = 565
  ClientWidth = 1156
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
  object pnl1: TPanel
    Left = 0
    Top = 82
    Width = 1156
    Height = 80
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
    object Label2: TLabel
      Left = 203
      Top = 0
      Width = 53
      Height = 13
      Caption = 'Dt Emiss'#227'o'
      Transparent = True
    end
    object lbltprim: TLabel
      Left = 73
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
      OnDblClick = lbltprimDblClick
    end
    object Label17: TLabel
      Left = 571
      Top = 0
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object Label13: TLabel
      Left = 3
      Top = 38
      Width = 61
      Height = 13
      Caption = 'Centro Custo'
      Transparent = True
    end
    object Label15: TLabel
      Left = 285
      Top = 38
      Width = 47
      Height = 13
      Caption = 'Aplica'#231#227'o'
      Transparent = True
    end
    object Label18: TLabel
      Left = 285
      Top = 0
      Width = 49
      Height = 13
      Caption = 'Solicitante'
      Transparent = True
    end
    object lblcdpedidomaterial: TLabel
      Left = 571
      Top = 38
      Width = 40
      Height = 13
      Caption = 'Cota'#231#227'o'
      Transparent = True
    end
    object txtCDPEDIDOMATERIAL: TDBText
      Left = 573
      Top = 57
      Width = 121
      Height = 17
      DataField = 'CDPEDIDOMATERIAL'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnDblClick = txtCDPEDIDOMATERIALDblClick
    end
    object lbldtprevista: TLabel
      Left = 694
      Top = 0
      Width = 52
      Height = 13
      Caption = 'Dt Prevista'
      Transparent = True
    end
    object cbxcdtpaplicacao: TcxDBLookupComboBox
      Left = 285
      Top = 53
      DataBinding.DataField = 'CDTPAPLICACAO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 650
      Properties.KeyFieldNames = 'CDTPAPLICACAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPAPLICACAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = cbxcdtpaplicacaoEnter
      OnExit = colorExit
      Width = 280
    end
    object edtdsaplicacao: TcxDBTextEdit
      Left = 285
      Top = 53
      DataBinding.DataField = 'DSAPLICACAO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 7
      Width = 280
    end
    object cbxcdtprim: TcxDBLookupComboBox
      Left = 73
      Top = 14
      DataBinding.DataField = 'CDTPRIM'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPRIM'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPRIM'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = cbxcdtprimEnter
      OnExit = colorExit
      Width = 129
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 203
      Top = 14
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 82
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 14
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 70
    end
    object txtnmstrim: TcxDBLabel
      Left = 571
      Top = 14
      DataBinding.DataField = 'NMSTRIM'
      DataBinding.DataSource = dts
      Style.TextColor = clBlue
      Transparent = True
      Height = 21
      Width = 121
    end
    object cbxcdcntcusto: TcxDBLookupComboBox
      Left = 3
      Top = 53
      DataBinding.DataField = 'CDCNTCUSTO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 650
      Properties.KeyFieldNames = 'CDCNTCUSTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMCNTCUSTO2'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = cbxcdcntcustoEnter
      OnExit = colorExit
      Width = 281
    end
    object cbxcdfuncionario: TcxDBLookupComboBox
      Left = 285
      Top = 14
      DataBinding.DataField = 'CDFUNCIONARIO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 650
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
      OnExit = colorExit
      Width = 280
    end
    object edtdtprevista: TcxDBDateEdit
      Left = 694
      Top = 14
      DataBinding.DataField = 'DTPREVISTA'
      DataBinding.DataSource = dts
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 82
    end
  end
  object pnl: TPanel
    Left = 0
    Top = 63
    Width = 1156
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
    Top = 162
    Width = 1156
    Height = 403
    Align = alClient
    TabOrder = 6
    Properties.ActivePage = tbsproduto
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 403
    ClientRectRight = 1156
    ClientRectTop = 24
    object tbsproduto: TcxTabSheet
      Caption = 'Produto'
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grd: TcxGrid
        Left = 0
        Top = 0
        Width = 1156
        Height = 379
        Align = alClient
        TabOrder = 0
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
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvQTITEM
            end
            item
              Kind = skSum
              FieldName = 'QTITEM2'
              Column = tbvQTITEM2
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
          object tbvCDORDPRODUCAO: TcxGridDBColumn
            Caption = 'Ord Produ'#231#227'o'
            DataBinding.FieldName = 'CDORDPRODUCAO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grdDBTableView1CDORDPRODUCAOPropertiesButtonClick
            Options.Focusing = False
            Styles.Content = cxStyle1
            Width = 107
          end
          object tbvCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = grdDBTableView1CDDIGITADOPropertiesButtonClick
            Styles.Content = cxStyle1
            Width = 100
          end
          object tbvNMPRODUTO: TcxGridDBColumn
            Tag = 100
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Editing = False
            Options.Focusing = False
            Width = 341
          end
          object tbvNMUNIDADE: TcxGridDBColumn
            Tag = 100
            Caption = 'Unidade'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Editing = False
            Options.Focusing = False
            Width = 49
          end
          object tbvQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 100
          end
          object tbvNMUNIDADE2: TcxGridDBColumn
            Caption = 'Unidade 2'
            DataBinding.FieldName = 'NMUNIDADE2'
            Options.Focusing = False
            Width = 58
          end
          object tbvQTITEM2: TcxGridDBColumn
            Caption = 'Quantidade 2'
            DataBinding.FieldName = 'QTITEM2'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 100
          end
          object tbvQTATENDIDA: TcxGridDBColumn
            Tag = 100
            Caption = 'Atendida'
            DataBinding.FieldName = 'QTATENDIDA'
            Options.Editing = False
            Options.Focusing = False
            Width = 110
          end
          object tbvDTPREVISTA: TcxGridDBColumn
            Caption = 'Dt Prevista'
            DataBinding.FieldName = 'DTPREVISTA'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 80
          end
        end
        object grlLevel1: TcxGridLevel
          GridView = tbv
        end
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mem1: TcxDBMemo
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
        Height = 379
        Width = 1156
      end
    end
    object tbsconsulta: TcxTabSheet
      Caption = 'Movimenta'#231#227'o Estoque'
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdconsulta: TcxGrid
        Left = 0
        Top = 0
        Width = 1156
        Height = 379
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object grdconsultaDBTableView1: TcxGridDBTableView
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
          OnCellDblClick = grdconsultaDBTableView1CellDblClick
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = grdconsultaDBTableView1QTITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grdconsultaDBTableView1VLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdconsultaDBTableView1CDMOVTO: TcxGridDBColumn
            Caption = 'Mov Estoque'
            DataBinding.FieldName = 'CDMOVTO'
            Styles.Content = cxStyle1
            Width = 88
          end
          object grdconsultaDBTableView1DTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object grdconsultaDBTableView1CDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            Width = 107
          end
          object grdconsultaDBTableView1NMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 331
          end
          object grdconsultaDBTableView1QTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
          end
          object grdconsultaDBTableView1VLUNITARIO: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdconsultaDBTableView1VLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdconsultaLevel1: TcxGridLevel
          GridView = grdconsultaDBTableView1
        end
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 488
    Top = 8
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
    object actAbrirProduto: TAction
      Hint = 'Produto'
      OnExecute = actAbrirProdutoExecute
    end
    object actabrirordproducao: TAction
      Caption = 'actabrirordproducao'
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actbaixar: TAction
      Caption = 'Baixar'
      Enabled = False
      ImageIndex = 98
      Visible = False
      OnExecute = actbaixarExecute
    end
    object actestornar: TAction
      Caption = 'Estornar'
      Enabled = False
      ImageIndex = 99
      Visible = False
      OnExecute = actestornarExecute
    end
    object actabrirmovto: TAction
      Hint = 'movto'
      OnExecute = actabrirmovtoExecute
    end
    object actgerarcotacao: TAction
      Caption = 'Gerar Cota'#231#227'o'
      Enabled = False
      ImageIndex = 82
      OnExecute = actgerarcotacaoExecute
    end
    object actabrirpedidomaterial: TAction
      Hint = 'pedidomaterial'
      OnExecute = actabrirpedidomaterialExecute
    end
    object actabrirtprim: TAction
      Hint = 'tprim'
      OnExecute = actabrirtprimExecute
    end
    object actimprimirrim: TAction
      Caption = '318 - Requisi'#231#227'o'
      OnExecute = actimprimirrimExecute
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
    Left = 460
    Top = 8
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
      Caption = 'ordcompra'
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
    object dxBarSubItem1: TdxBarSubItem
      Action = actImprimir
      Category = 0
      ItemLinks = <>
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actbaixar
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actestornar
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actgerarcotacao
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actimprimirrim
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT R.*'#13#10',NMSTRIM '#13#10'FROM RIM R '#13#10'LEFT JOIN STRIM S ON S.CDSTR' +
      'IM=R.CDSTRIM '#13#10'WHERE R.CDEMPRESA=:CDEMPRESA AND R.CDRIM=:CDRIM'
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
        Name = 'CDRIM'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 704
    Top = 312
    object sdsCDRIM: TIntegerField
      FieldName = 'CDRIM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDSTRIM: TIntegerField
      FieldName = 'CDSTRIM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPRIM: TIntegerField
      FieldName = 'CDTPRIM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPAPLICACAO: TIntegerField
      FieldName = 'CDTPAPLICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object sdsNMSTRIM: TStringField
      FieldName = 'NMSTRIM'
      ProviderFlags = []
      Size = 100
    end
    object sdsDTPREVISTA: TDateField
      FieldName = 'DTPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDSAPLICACAO: TStringField
      FieldName = 'DSAPLICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 732
    Top = 312
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnCalcFields = cdsCalcFields
    OnNewRecord = cdsNewRecord
    Left = 760
    Top = 312
    object cdsCDTPRIM: TIntegerField
      FieldName = 'CDTPRIM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPRIMValidate
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDRIM: TIntegerField
      FieldName = 'CDRIM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDSTRIM: TIntegerField
      FieldName = 'CDSTRIM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIOValidate
    end
    object cdsCDTPAPLICACAO: TIntegerField
      FieldName = 'CDTPAPLICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object cdsNMSTRIM: TStringField
      FieldName = 'NMSTRIM'
      ProviderFlags = []
      Size = 100
    end
    object cdssdsconsulta: TDataSetField
      FieldName = 'sdsconsulta'
      ProviderFlags = []
    end
    object cdsCDPEDIDOMATERIAL: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CDPEDIDOMATERIAL'
      Calculated = True
    end
    object cdsDTPREVISTA: TDateField
      FieldName = 'DTPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDSAPLICACAO: TStringField
      FieldName = 'DSAPLICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 788
    Top = 312
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 816
    Top = 312
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 788
    Top = 340
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    AfterScroll = cdsdetailAfterScroll
    OnNewRecord = cdsdetailNewRecord
    Left = 760
    Top = 340
    object cdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDDIGITADOValidate
      Size = 30
    end
    object cdsdetailCDRIM: TIntegerField
      FieldName = 'CDRIM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDPRODUTOValidate
    end
    object cdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailQTITEMValidate
    end
    object cdsdetailCDITRIM: TIntegerField
      FieldName = 'CDITRIM'
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
    object cdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailQTATENDIDA: TFloatField
      FieldName = 'QTATENDIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDORDPRODUCAOValidate
    end
    object cdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField
      FieldName = 'CDITORDPRODUCAOMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDTPREVISTA: TDateField
      FieldName = 'DTPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNMUNIDADE2: TStringField
      FieldName = 'NMUNIDADE2'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailQTITEM2: TFloatField
      FieldName = 'QTITEM2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTITEM2Validate
    end
    object cdsdetailPRUNIDADE: TFloatField
      FieldName = 'PRUNIDADE'
      ProviderFlags = []
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT I.*'#13#10',P.NMPRODUTO'#13#10',P.PRUNIDADE'#13#10',U.NMUNIDADE'#13#10',U2.NMUNID' +
      'ADE NMUNIDADE2 '#13#10'FROM ITRIM I '#13#10'LEFT JOIN PRODUTO P ON P.CDPRODU' +
      'TO=I.CDPRODUTO AND I.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOIN UNIDADE U ' +
      'ON U.CDUNIDADE=P.CDUNIDADE AND U.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOI' +
      'N UNIDADE U2 ON U2.CDUNIDADE=P.CDUNIDADE2 AND U2.CDEMPRESA=P.CDE' +
      'MPRESA'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDRIM=:CDRIM'
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
        Name = 'CDRIM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 704
    Top = 340
    object sdsdetailCDRIM: TIntegerField
      FieldName = 'CDRIM'
      Required = True
    end
    object sdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailCDITRIM: TIntegerField
      FieldName = 'CDITRIM'
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
    object sdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailQTATENDIDA: TFloatField
      FieldName = 'QTATENDIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField
      FieldName = 'CDITORDPRODUCAOMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDTPREVISTA: TDateField
      FieldName = 'DTPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNMUNIDADE2: TStringField
      FieldName = 'NMUNIDADE2'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailQTITEM2: TFloatField
      FieldName = 'QTITEM2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailPRUNIDADE: TFloatField
      FieldName = 'PRUNIDADE'
      ProviderFlags = []
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 928
    Top = 97
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
  object sdsconsulta: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT M.CDMOVTO'#13#10',M.DTEMISSAO'#13#10',I.VLTOTAL'#13#10',I.QTITEM'#13#10',I.VLUNIT' +
      'ARIO'#13#10',I.CDDIGITADO'#13#10',P.NMPRODUTO '#13#10'FROM MOVTO M  '#13#10'INNER JOIN I' +
      'TMOVTO I ON I.CDMOVTO=M.CDMOVTO '#13#10'INNER JOIN ITRIM IR ON IR.CDIT' +
      'RIM=M.CDITRIM'#13#10'INNER JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO'#13#10 +
      'WHERE IR.CDRIM=:CDRIM'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CDRIM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 704
    Top = 368
    object sdsconsultaCDMOVTO: TIntegerField
      FieldName = 'CDMOVTO'
      ProviderFlags = []
      Required = True
    end
    object sdsconsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
      Required = True
    end
    object sdsconsultaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = []
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsconsultaQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = []
      Required = True
    end
    object sdsconsultaVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = []
      Required = True
      Precision = 15
    end
    object sdsconsultaCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object sdsconsultaNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Required = True
      Size = 250
    end
  end
  object cdsconsulta: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsconsulta
    Params = <>
    ReadOnly = True
    Left = 760
    Top = 368
    object cdsconsultaCDMOVTO: TIntegerField
      FieldName = 'CDMOVTO'
      ProviderFlags = []
      Required = True
    end
    object cdsconsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
      Required = True
    end
    object cdsconsultaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = []
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsconsultaQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = []
      Required = True
    end
    object cdsconsultaVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = []
      Required = True
      Precision = 15
    end
    object cdsconsultaCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object cdsconsultaNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Required = True
      Size = 250
    end
  end
  object dtsconsulta: TDataSource
    DataSet = cdsconsulta
    Left = 788
    Top = 368
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 840
    Top = 106
  end
end

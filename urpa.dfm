object frmRPA: TfrmRPA
  Left = 302
  Top = 111
  ClientHeight = 667
  ClientWidth = 1253
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
  object Panel1: TPanel
    Left = 0
    Top = 63
    Width = 1253
    Height = 604
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object Bevel1: TBevel
      Left = 0
      Top = 23
      Width = 1253
      Height = 42
      Align = alTop
      ExplicitWidth = 1066
    end
    object Label1: TLabel
      Left = 2
      Top = 26
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 72
      Top = 26
      Width = 53
      Height = 13
      Caption = 'Dt Emiss'#227'o'
      Transparent = True
    end
    object Label5: TLabel
      Left = 158
      Top = 26
      Width = 21
      Height = 13
      Caption = 'Tipo'
      Transparent = True
    end
    object Label21: TLabel
      Left = 605
      Top = 26
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lbltransportadora: TLabel
      Left = 286
      Top = 26
      Width = 43
      Height = 13
      Caption = 'Motorista'
      Transparent = True
    end
    object txtnmtransportadora: TDBText
      Left = 381
      Top = 45
      Width = 219
      Height = 17
      DataField = 'NMTRANSPORTADORA'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnDblClick = txtnmtransportadoraDblClick
    end
    object lblautpagto: TLabel
      Left = 706
      Top = 26
      Width = 73
      Height = 13
      Caption = 'Contas a Pagar'
      Transparent = True
    end
    object txtcdautpagto: TDBText
      Left = 706
      Top = 45
      Width = 72
      Height = 17
      DataField = 'CDAUTPAGTO'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnDblClick = txtcdautpagtoDblClick
    end
    object edtcdtransportadora: TcxDBButtonEdit
      Left = 286
      Top = 40
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
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdtransportadoraKeyDown
      Width = 94
    end
    object cbxcdstrpa: TcxDBLookupComboBox
      Left = 605
      Top = 40
      DataBinding.DataField = 'CDSTRPA'
      DataBinding.DataSource = dts
      Enabled = False
      Properties.KeyFieldNames = 'CDSTRPA'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTRPA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      Width = 99
    end
    object cbxcdtprpa: TcxDBLookupComboBox
      Left = 158
      Top = 40
      DataBinding.DataField = 'CDTPRPA'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPRPA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPRPA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 129
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 71
      Top = 40
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
    object cxGroupBox2: TcxGroupBox
      Left = 0
      Top = 105
      Align = alTop
      Caption = 'Valores R$'
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
      TabOrder = 6
      DesignSize = (
        1253
        78)
      Height = 78
      Width = 1253
      object Label11: TLabel
        Left = 4
        Top = 14
        Width = 44
        Height = 13
        Caption = 'Original'
        Transparent = True
      end
      object Label17: TLabel
        Left = 95
        Top = 62
        Width = 29
        Height = 13
        Caption = 'Peso'
        Transparent = True
      end
      object Label4: TLabel
        Left = 247
        Top = 62
        Width = 89
        Height = 13
        Caption = 'Frete/Tonelada'
        Transparent = True
      end
      object Label28: TLabel
        Left = 126
        Top = 14
        Width = 30
        Height = 13
        Caption = 'INSS'
        Transparent = True
      end
      object Label29: TLabel
        Left = 247
        Top = 14
        Width = 80
        Height = 13
        Caption = 'SEST/SENAT'
        Transparent = True
      end
      object Label30: TLabel
        Left = 370
        Top = 14
        Width = 30
        Height = 13
        Caption = 'IRRF'
        Transparent = True
      end
      object Label3: TLabel
        Left = 611
        Top = 14
        Width = 47
        Height = 13
        Caption = 'Ped'#225'gio'
        Transparent = True
      end
      object Label33: TLabel
        Left = 580
        Top = 62
        Width = 30
        Height = 13
        Caption = 'Valor'
        Transparent = True
      end
      object Bevel7: TBevel
        Left = 0
        Top = 51
        Width = 2199
        Height = 8
        Anchors = [akLeft, akTop, akRight]
        Shape = bsTopLine
        ExplicitWidth = 1066
      end
      object Label6: TLabel
        Left = 490
        Top = 14
        Width = 78
        Height = 13
        Caption = 'Adiantamento'
        Transparent = True
      end
      object edtvlfreteton: TcxDBCalcEdit
        Left = 369
        Top = 54
        DataBinding.DataField = 'VLFRETETON'
        DataBinding.DataSource = dts
        Enabled = False
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 120
      end
      object edtpsliquido: TcxDBCalcEdit
        Left = 125
        Top = 54
        DataBinding.DataField = 'PSLIQUIDO'
        DataBinding.DataSource = dts
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 120
      end
      object edtvlfrete: TcxDBCalcEdit
        Left = 5
        Top = 28
        DataBinding.DataField = 'VLFRETE'
        DataBinding.DataSource = dts
        Enabled = False
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 120
      end
      object edtvlinss: TcxDBCalcEdit
        Left = 125
        Top = 28
        DataBinding.DataField = 'VLINSS'
        DataBinding.DataSource = dts
        Enabled = False
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 120
      end
      object edtvlsestsenat: TcxDBCalcEdit
        Left = 247
        Top = 28
        DataBinding.DataField = 'VLSESTSENAT'
        DataBinding.DataSource = dts
        Enabled = False
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 120
      end
      object edtvlirrf: TcxDBCalcEdit
        Left = 369
        Top = 28
        DataBinding.DataField = 'VLIRRF'
        DataBinding.DataSource = dts
        Enabled = False
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 120
      end
      object edtvlpedagio: TcxDBCalcEdit
        Left = 610
        Top = 28
        DataBinding.DataField = 'VLPEDAGIO'
        DataBinding.DataSource = dts
        Enabled = False
        ParentFont = False
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 120
      end
      object edtvlsaldo: TcxDBCalcEdit
        Left = 610
        Top = 54
        DataBinding.DataField = 'VLSALDO'
        DataBinding.DataSource = dts
        Enabled = False
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 120
      end
      object edtvladiantamento: TcxDBCalcEdit
        Left = 485
        Top = 27
        DataBinding.DataField = 'VLADIANTAMENTO'
        DataBinding.DataSource = dts
        Enabled = False
        ParentFont = False
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 120
      end
    end
    object edtcodigo: TcxTextEdit
      Left = 2
      Top = 40
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
    object grddetail: TcxGrid
      Left = 0
      Top = 183
      Width = 1253
      Height = 421
      Align = alClient
      TabOrder = 5
      LookAndFeel.NativeStyle = False
      object grddetailDBTableView1: TcxGridDBTableView
        OnKeyDown = grddetailDBTableView1KeyDown
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
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'PSLIQUIDO'
            Column = grddetailDBTableView1PSLIQUIDO
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VLFRETE'
            Column = grddetailDBTableView1VLFRETE
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VLPEDAGIO'
            Column = grddetailDBTableView1VLPEDAGIO
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VLADIANTAMENTO'
            Column = grddetailDBTableView1VLADIANTAMENTO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grddetailDBTableView1CDCTE: TcxGridDBColumn
          Caption = 'CTE'
          DataBinding.FieldName = 'CDCTE'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = grddetailDBTableView1CDCTEPropertiesButtonClick
          Styles.Content = cxStyle1
          Width = 75
        end
        object grddetailDBTableView1VLFRETE: TcxGridDBColumn
          Caption = 'Frete'
          DataBinding.FieldName = 'VLFRETE'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Options.Focusing = False
          Width = 120
        end
        object grddetailDBTableView1PSLIQUIDO: TcxGridDBColumn
          Caption = 'Peso L'#237'quido'
          DataBinding.FieldName = 'PSLIQUIDO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Options.Focusing = False
          Width = 166
        end
        object grddetailDBTableView1VLPEDAGIO: TcxGridDBColumn
          Caption = 'Ped'#225'gio'
          DataBinding.FieldName = 'VLPEDAGIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Options.Focusing = False
          Width = 120
        end
        object grddetailDBTableView1VLADIANTAMENTO: TcxGridDBColumn
          Caption = 'Adiantamento'
          DataBinding.FieldName = 'VLADIANTAMENTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Focusing = False
          Width = 120
        end
      end
      object grddetailLevel1: TcxGridLevel
        GridView = grddetailDBTableView1
      end
    end
    object gbxproprietario: TcxGroupBox
      Left = 0
      Top = 65
      Align = alTop
      Caption = 'Propriet'#225'rio'
      TabOrder = 4
      Height = 40
      Width = 1253
      object lblnuplaca: TLabel
        Left = 394
        Top = 17
        Width = 27
        Height = 13
        Caption = 'Placa'
        Transparent = True
      end
      object txtnuplaca: TDBText
        Left = 430
        Top = 20
        Width = 72
        Height = 17
        DataField = 'NUPLACA'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnDblClick = txtnuplacaDblClick
      end
      object txtnmproprietario: TDBText
        Left = 168
        Top = 20
        Width = 219
        Height = 17
        DataField = 'NMPROPRIETARIO'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnDblClick = txtnmproprietarioDblClick
      end
      object Label7: TLabel
        Left = 2
        Top = 18
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object edtcdproprietario: TcxDBButtonEdit
        Left = 71
        Top = 15
        DataBinding.DataField = 'CDPROPRIETARIO'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdproprietarioPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdproprietarioKeyDown
        Width = 94
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 717
    Top = 254
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
    object actultimo: TAction
      Caption = #218'ltimo'
      Hint = #218'ltimo'
      ImageIndex = 11
      ShortCut = 16469
      OnExecute = actultimoExecute
    end
    object actbaixarpa: TAction
      Caption = 'Baixar'
      Enabled = False
      Hint = 'Baixa RPA'
      ImageIndex = 22
      OnExecute = actbaixarpaExecute
    end
    object actabrirtransportadora: TAction
      Hint = 'Transportadora'
      ImageIndex = 16
      OnExecute = actabrirtransportadoraExecute
    end
    object actabrirautpagto: TAction
      Hint = 'autpagto'
      ImageIndex = 31
      OnExecute = actabrirautpagtoExecute
    end
    object actabrircte: TAction
      Hint = 'cte'
      ImageIndex = 27
      OnExecute = actabrircteExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actgerarautpagto: TAction
      Caption = 'Gerar Contas a Pagar'
      Enabled = False
      ImageIndex = 31
      OnExecute = actgerarautpagtoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actremoverautpagto: TAction
      Caption = 'Remover Contas a Pagar'
      Enabled = False
      ImageIndex = 31
      OnExecute = actremoverautpagtoExecute
    end
    object actabrirveiculo: TAction
      Hint = 'veiculo'
      OnExecute = actabrirveiculoExecute
    end
    object actabrirproprietario: TAction
      Hint = 'transportadora'
      OnExecute = actabrirproprietarioExecute
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
    Left = 145
    Top = 6
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
      Caption = 'rpa'
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
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
      Action = actultimo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr2: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
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
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actbaixarpa
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton1: TdxBarButton
      Action = actgerarautpagto
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actremoverautpagto
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT R.*'#13#10',T.NMTRANSPORTADORA'#13#10',P.NMTRANSPORTADORA NMPROPRIETA' +
      'RIO'#13#10',V.NUPLACA'#13#10'FROM RPA R '#13#10'LEFT JOIN TRANSPORTADORA T ON T.CD' +
      'TRANSPORTADORA=R.CDTRANSPORTADORA AND R.CDEMPRESA=T.CDEMPRESA'#13#10'L' +
      'EFT JOIN TRANSPORTADORA P ON P.CDTRANSPORTADORA=R.CDPROPRIETARIO' +
      ' AND P.CDEMPRESA=R.CDEMPRESA'#13#10'LEFT JOIN VEICULO V ON V.CDEMPRESA' +
      '=R.CDEMPRESA AND V.CDVEICULO=R.CDVEICULO'#13#10'WHERE R.CDEMPRESA=:CDE' +
      'MPRESA AND R.CDRPA=:CDRPA'
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
        Name = 'CDRPA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 488
    Top = 240
    object sdsCDRPA: TIntegerField
      FieldName = 'CDRPA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDSTRPA: TIntegerField
      FieldName = 'CDSTRPA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTPRPA: TIntegerField
      FieldName = 'CDTPRPA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPAGTOCOMISSAO: TIntegerField
      FieldName = 'CDPAGTOCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsVLINSS: TFMTBCDField
      FieldName = 'VLINSS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLSESTSENAT: TFMTBCDField
      FieldName = 'VLSESTSENAT'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLBASEIRRF: TFMTBCDField
      FieldName = 'VLBASEIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLIRRF: TFMTBCDField
      FieldName = 'VLIRRF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLFRETETON: TFMTBCDField
      FieldName = 'VLFRETETON'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLPEDAGIO: TFMTBCDField
      FieldName = 'VLPEDAGIO'
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
    object sdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLADIANTAMENTO: TFMTBCDField
      FieldName = 'VLADIANTAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object sdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
      OnValidate = sdsCDVEICULOValidate
    end
    object sdsNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = []
      Size = 8
    end
    object sdsNMPROPRIETARIO: TStringField
      FieldName = 'NMPROPRIETARIO'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = sdsCDTRANSPORTADORAValidate
    end
    object sdsCDPROPRIETARIO: TLargeintField
      FieldName = 'CDPROPRIETARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 'SELECT * FROM ITRPA WHERE CDEMPRESA=:CDEMPRESA AND CDRPA=:CDRPA'
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
        Name = 'CDRPA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 520
    Top = 240
    object sdsdetailCDRPA: TIntegerField
      FieldName = 'CDRPA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
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
    object sdsdetailCDITRPA: TIntegerField
      FieldName = 'CDITRPA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailVLPEDAGIO: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VLPEDAGIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLADIANTAMENTO: TFMTBCDField
      FieldName = 'VLADIANTAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 489
    Top = 269
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 490
    Top = 297
    object cdsCDRPA: TIntegerField
      FieldName = 'CDRPA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDSTRPA: TIntegerField
      FieldName = 'CDSTRPA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDTPRPA: TIntegerField
      FieldName = 'CDTPRPA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPRPAValidate
    end
    object cdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPAGTOCOMISSAO: TIntegerField
      FieldName = 'CDPAGTOCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsVLINSS: TFMTBCDField
      FieldName = 'VLINSS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLSESTSENAT: TFMTBCDField
      FieldName = 'VLSESTSENAT'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLBASEIRRF: TFMTBCDField
      FieldName = 'VLBASEIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLIRRF: TFMTBCDField
      FieldName = 'VLIRRF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLFRETETON: TFMTBCDField
      FieldName = 'VLFRETETON'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLPEDAGIO: TFMTBCDField
      FieldName = 'VLPEDAGIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
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
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLADIANTAMENTO: TFMTBCDField
      FieldName = 'VLADIANTAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDVEICULOValidate
    end
    object cdsNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = []
      Size = 8
    end
    object cdsNMPROPRIETARIO: TStringField
      FieldName = 'NMPROPRIETARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTRANSPORTADORAValidate
    end
    object cdsCDPROPRIETARIO: TLargeintField
      FieldName = 'CDPROPRIETARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDPROPRIETARIOValidate
    end
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    AfterPost = cdsdetailAfterPost
    AfterDelete = cdsdetailAfterDelete
    OnNewRecord = cdsdetailNewRecord
    Left = 519
    Top = 297
    object cdsdetailCDRPA: TIntegerField
      FieldName = 'CDRPA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
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
    object cdsdetailCDITRPA: TIntegerField
      FieldName = 'CDITRPA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailCDCTEValidate
    end
    object cdsdetailVLPEDAGIO: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VLPEDAGIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLADIANTAMENTO: TFMTBCDField
      FieldName = 'VLADIANTAMENTO'
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
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts: TDataSource
    DataSet = cds
    Left = 490
    Top = 326
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 490
    Top = 350
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 522
    Top = 326
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 173
    Top = 6
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
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 800
    Top = 104
  end
end

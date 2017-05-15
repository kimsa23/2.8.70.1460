object frmrota: Tfrmrota
  Left = 385
  Top = 193
  ClientHeight = 689
  ClientWidth = 1063
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
    Top = 63
    Width = 1063
    Height = 99
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblnome: TLabel
      Left = 83
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object lblcodigo: TLabel
      Left = 2
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lbluf: TLabel
      Left = 2
      Top = 60
      Width = 14
      Height = 13
      Caption = 'UF'
      Transparent = True
    end
    object lblmunicipio: TLabel
      Left = 83
      Top = 60
      Width = 45
      Height = 13
      Caption = 'Munc'#237'pio'
      Transparent = True
    end
    object lblbairro: TLabel
      Left = 428
      Top = 60
      Width = 27
      Height = 13
      Caption = 'Bairro'
      Transparent = True
    end
    object edtnome: TcxDBTextEdit
      Left = 83
      Top = 38
      DataBinding.DataField = 'NMROTA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = ColorEnter
      OnExit = ColorExit
      OnKeyDown = nextcontrol
      Width = 346
    end
    object edtcodigo: TcxTextEdit
      Left = 2
      Top = 38
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 79
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
    object cbxcduf: TcxDBLookupComboBox
      Left = 2
      Top = 74
      DataBinding.DataField = 'CDUF'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDUF'
      Properties.ListColumns = <
        item
          FieldName = 'SGUF'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = ColorEnter
      OnExit = cbxcdufExit
      Width = 79
    end
    object cbxcdmunicipio: TcxDBLookupComboBox
      Left = 83
      Top = 74
      DataBinding.DataField = 'CDMUNICIPIO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDMUNICIPIO'
      Properties.ListColumns = <
        item
          FieldName = 'NMMUNICIPIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = ColorEnter
      OnExit = ColorExit
      Width = 346
    end
    object edtnmbairro: TcxDBTextEdit
      Left = 428
      Top = 74
      DataBinding.DataField = 'NMBAIRRO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = ColorEnter
      OnExit = ColorExit
      OnKeyDown = nextcontrol
      Width = 251
    end
    object lbltprota: TcxLabel
      Left = 428
      Top = 22
      Caption = 'Tipo'
      FocusControl = cbxcdtprota
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cbxcdtprota: TcxDBLookupComboBox
      Left = 428
      Top = 38
      DataBinding.DataField = 'CDTPROTA'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDTPROTA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPROTA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnExit = ColorExit
      Width = 251
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 162
    Width = 1063
    Height = 527
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = tbscliente
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 527
    ClientRectRight = 1063
    ClientRectTop = 24
    object tbscliente: TcxTabSheet
      Caption = 'Cliente'
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grd1: TcxGrid
        Left = 0
        Top = 0
        Width = 1063
        Height = 503
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbv: TcxGridDBTableView
          OnKeyDown = tbvKeyDown
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
          DataController.DataSource = dtsdetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvNUSEQUENCIA: TcxGridDBColumn
            Caption = 'Sequ'#234'ncia'
            DataBinding.FieldName = 'NUSEQUENCIA'
          end
          object tbvCDCLIENTE: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDCLIENTE'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = gtvCDCLIENTEPropertiesButtonClick
          end
          object tbvNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Options.Focusing = False
            Width = 250
          end
          object tbvDSENDERECO: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'DSENDERECO'
            Options.Focusing = False
            Width = 150
          end
          object tbvDSNUMERO: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'DSNUMERO'
            Options.Focusing = False
            Width = 55
          end
          object tbvNMBAIRROCLIENTE: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'NMBAIRROCLIENTE'
            Options.Focusing = False
            Width = 110
          end
          object tbvNMMUNICIPIO: TcxGridDBColumn
            Caption = 'Munic'#237'pio'
            DataBinding.FieldName = 'NMMUNICIPIO'
            Options.Focusing = False
            Width = 131
          end
          object tbvSGUF: TcxGridDBColumn
            Caption = 'UF'
            DataBinding.FieldName = 'SGUF'
            Options.Focusing = False
            Width = 36
          end
          object tbvDSOBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Options.Focusing = False
            Width = 149
          end
          object tbvCDUF: TcxGridDBColumn
            Caption = 'UF'
            DataBinding.FieldName = 'CDUF'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDUF'
            Properties.ListColumns = <
              item
                FieldName = 'SGUF'
              end>
            Properties.ListOptions.ShowHeader = False
            Options.Focusing = False
          end
          object tbvCDMUNICIPIO: TcxGridDBColumn
            Caption = 'Munic'#237'pio'
            DataBinding.FieldName = 'CDMUNICIPIO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDMUNICIPIO'
            Properties.ListColumns = <
              item
                FieldName = 'NMMUNICIPIO'
              end>
            Properties.ListOptions.ShowHeader = False
            Options.Focusing = False
            Width = 150
          end
          object tbvNMBAIRRO: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'NMBAIRRO'
            Options.Focusing = False
            Width = 150
          end
        end
        object grl: TcxGridLevel
          GridView = tbv
        end
      end
    end
    object tbsvalor: TcxTabSheet
      Caption = 'Valor Entrega'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditrotavalor: TcxGrid
        Left = 0
        Top = 0
        Width = 1063
        Height = 503
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object tbvitrotavalor: TcxGridDBTableView
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
          DataController.DataSource = dtsitrotavalor
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvitrotavalorQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxSpinEditProperties'
          end
          object tbvitrotavalorVLUNITARIO: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          end
        end
        object glvitrotavalor: TcxGridLevel
          GridView = tbvitrotavalor
        end
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 760
    Top = 351
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
    object actabrircliente: TAction
      Caption = 'Abrir Cliente'
      Hint = 'Cliente'
      ImageIndex = 35
    end
    object actabrirrepresentante: TAction
      Caption = 'Abrir Representante'
      Hint = 'Representante'
      ImageIndex = 42
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actimprimirrota: TAction
      Caption = '432 - Rota'
      OnExecute = actimprimirrotaExecute
    end
    object actimprimirrota639: TAction
      Caption = '639 - Rota c/ Produto'
      OnExecute = actimprimirrota639Execute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actimportarcliente: TAction
      Caption = 'Importar Clientes'
      OnExecute = actimportarclienteExecute
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
    Left = 756
    Top = 303
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
      Caption = 'tabirpf'
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
      Action = actimprimirrota
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actimprimirrota639
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton3: TdxBarButton
      Action = actimportarcliente
      Category = 0
    end
  end
  object dtsdetail: TDataSource
    DataSet = qrydetail
    Left = 417
    Top = 344
  end
  object dts: TDataSource
    DataSet = qry
    OnStateChange = dtsStateChange
    Left = 419
    Top = 297
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
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 760
    Top = 255
  end
  object dtsitrotavalor: TDataSource
    DataSet = qryitrotavalor
    Left = 415
    Top = 393
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 904
    Top = 95
  end
  object sca: TFDSchemaAdapter
    Left = 600
    Top = 304
  end
  object qrydetail: TFDQuery
    BeforeInsert = qrydetailBeforeInsert
    BeforePost = qrydetailBeforePost
    OnNewRecord = qrydetailNewRecord
    CachedUpdates = True
    IndexFieldNames = 'CDEMPRESA;CDROTA'
    MasterSource = dts
    MasterFields = 'CDEMPRESA;CDROTA'
    DetailFields = 'CDEMPRESA;CDROTA'
    Connection = dtmmain.confire
    SchemaAdapter = sca
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT I.*'
      ', C.NMCLIENTE'
      ',C.DSENDERECO'
      ',C.DSNUMERO'
      ',C.NMBAIRRO NMBAIRROCLIENTE'
      ',M.NMMUNICIPIO'
      ',U.SGUF'
      'FROM ITROTA I'
      
        'LEFT JOIN CLIENTE C ON C.CDCLIENTE=I.CDCLIENTE AND I.CDEMPRESA=C' +
        '.CDEMPRESA'
      'LEFT JOIN MUNICIPIO M ON M.CDMUNICIPIO=C.CDMUNICIPIO'
      'LEFT JOIN UF U ON U.CDUF=C.CDUF'
      
        'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDROTA=:CDROTA ORDER BY NUSEQ' +
        'UENCIA')
    Left = 490
    Top = 344
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CDROTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrydetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      Origin = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrydetailCDITROTA: TIntegerField
      FieldName = 'CDITROTA'
      Origin = 'CDITROTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrydetailCDROTA: TIntegerField
      FieldName = 'CDROTA'
      Origin = 'CDROTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qrydetailCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      Origin = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = qrydetailCDCLIENTEValidate
    end
    object qrydetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Origin = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qrydetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Origin = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qrydetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Origin = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qrydetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      Origin = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qrydetailCDUF: TIntegerField
      FieldName = 'CDUF'
      Origin = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object qrydetailCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      Origin = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object qrydetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Origin = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qrydetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Origin = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qrydetailNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      Origin = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object qrydetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      Origin = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qrydetailNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      Origin = 'NMBAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qrydetailNMCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMCLIENTE'
      Origin = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object qrydetailDSENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DSENDERECO'
      Origin = 'DSENDERECO'
      ProviderFlags = []
      Size = 100
    end
    object qrydetailDSNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DSNUMERO'
      Origin = 'DSNUMERO'
      ProviderFlags = []
      Size = 10
    end
    object qrydetailNMBAIRROCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMBAIRROCLIENTE'
      Origin = 'NMBAIRRO'
      ProviderFlags = []
      Size = 100
    end
    object qrydetailNMMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMMUNICIPIO'
      Origin = 'NMMUNICIPIO'
      ProviderFlags = []
      Size = 100
    end
    object qrydetailSGUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SGUF'
      Origin = 'SGUF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
  end
  object qry: TFDQuery
    BeforePost = qryBeforePost
    AfterScroll = qryAfterScroll
    OnNewRecord = qryNewRecord
    CachedUpdates = True
    Connection = dtmmain.confire
    SchemaAdapter = sca
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    SQL.Strings = (
      'SELECT * FROM ROTA WHERE CDEMPRESA=:CDEMPRESA AND CDROTA=:CDROTA')
    Left = 490
    Top = 296
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CDROTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCDROTA: TIntegerField
      FieldName = 'CDROTA'
      Origin = 'CDROTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      Origin = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      Origin = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object qryCDUF: TIntegerField
      FieldName = 'CDUF'
      Origin = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object qryCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      Origin = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object qryCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Origin = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Origin = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Origin = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      Origin = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryCDTPROTA: TIntegerField
      FieldName = 'CDTPROTA'
      Origin = 'CDTPROTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = qryCDTPROTAValidate
    end
    object qryNMROTA: TStringField
      FieldName = 'NMROTA'
      Origin = 'NMROTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Origin = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Origin = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      Origin = 'NMBAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object qryitrotavalor: TFDQuery
    BeforeInsert = qrydetailBeforeInsert
    BeforePost = qryitrotavalorBeforePost
    CachedUpdates = True
    IndexFieldNames = 'CDEMPRESA;CDROTA'
    MasterSource = dts
    MasterFields = 'CDEMPRESA;CDROTA'
    DetailFields = 'CDEMPRESA;CDROTA'
    Connection = dtmmain.confire
    SchemaAdapter = sca
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'SELECT * FROM ITROTAVALOR WHERE CDEMPRESA=:CDEMPRESA AND CDROTA=' +
        ':CDROTA')
    Left = 490
    Top = 391
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CDROTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryitrotavalorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      Origin = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryitrotavalorCDITROTAVALOR: TIntegerField
      FieldName = 'CDITROTAVALOR'
      Origin = 'CDITROTAVALOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryitrotavalorCDROTA: TIntegerField
      FieldName = 'CDROTA'
      Origin = 'CDROTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryitrotavalorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Origin = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryitrotavalorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Origin = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryitrotavalorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Origin = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryitrotavalorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      Origin = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryitrotavalorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Origin = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryitrotavalorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Origin = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryitrotavalorQTITEM: TIntegerField
      FieldName = 'QTITEM'
      Origin = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryitrotavalorVLUNITARIO: TBCDField
      FieldName = 'VLUNITARIO'
      Origin = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
  end
end

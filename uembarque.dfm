object frmEmbarque: TfrmEmbarque
  Left = 541
  Top = 112
  ClientHeight = 644
  ClientWidth = 1029
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
    Width = 1029
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
    object Label4: TLabel
      Left = 302
      Top = 0
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lbldtemissao: TLabel
      Left = 64
      Top = 0
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object lblrota: TLabel
      Left = 448
      Top = 0
      Width = 28
      Height = 13
      Caption = 'Rota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblrotaDblClick
    end
    object lblcdtpembarque: TLabel
      Left = 157
      Top = 0
      Width = 21
      Height = 13
      Caption = 'Tipo'
      Transparent = True
    end
    object lbl1: TLabel
      Left = 594
      Top = 0
      Width = 53
      Height = 13
      Caption = 'Frete/Peso'
      Transparent = True
    end
    object Label5: TLabel
      Left = 776
      Top = 0
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor da Rota'
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
    object cbxcdstembarque: TcxDBLookupComboBox
      Left = 302
      Top = 14
      DataBinding.DataField = 'CDSTEMBARQUE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDSTEMBARQUE'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTEMBARQUE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = cbxcdstembarqueEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 145
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
    object cbxcdrota: TcxDBLookupComboBox
      Left = 448
      Top = 14
      DataBinding.DataField = 'CDROTA'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDROTA'
      Properties.ListColumns = <
        item
          FieldName = 'NMROTA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = cbxcdrotaEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 145
    end
    object cbxcdtpembarque: TcxDBLookupComboBox
      Left = 157
      Top = 14
      DataBinding.DataField = 'CDTPEMBARQUE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPEMBARQUE'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPEMBARQUE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnValidate = cbxcdtpembarquePropertiesValidate
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = cbxcdtpembarqueEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 145
    end
    object edtVLFRETEPESO: TcxDBCalcEdit
      Left = 594
      Top = 14
      DataBinding.DataField = 'VLFRETEPESO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 121
    end
    object edtvlrota: TcxDBCurrencyEdit
      Left = 715
      Top = 14
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'VLROTA'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      TabOrder = 6
      OnKeyPress = edtvlpesoKeyPress
      Height = 21
      Width = 126
    end
  end
  object gbxdestinatario: TcxGroupBox
    Left = 0
    Top = 121
    Align = alTop
    Caption = '&Transportadora'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Height = 39
    Width = 1029
    object lblNMTRANSPORTADORA: TDBText
      Left = 115
      Top = 16
      Width = 237
      Height = 17
      DataField = 'NMTRANSPORTADORA'
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
      OnDblClick = lblNMTRANSPORTADORADblClick
    end
    object edtcdtransportadora: TcxDBButtonEdit
      Left = 6
      Top = 14
      DataBinding.DataField = 'CDTRANSPORTADORA'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdtransportadoraPropertiesButtonClick
      Properties.OnEditValueChanged = edtcdtransportadoraPropertiesEditValueChanged
      Properties.OnValidate = edtcdtransportadoraPropertiesValidate
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = edtcdtransportadoraExit
      OnKeyDown = edtcdtransportadoraKeyDown
      OnKeyPress = eventokeypress
      Width = 107
    end
  end
  object grd: TcxGrid
    Left = 0
    Top = 160
    Width = 1029
    Height = 444
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
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'PSBRUTO'
          Column = tbvPSBRUTO
        end
        item
          Kind = skSum
          FieldName = 'PSLIQUIDO'
          Column = tbvPSLIQUIDO
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
          FieldName = 'VLTOTAL'
          Column = tbvVLTOTAL
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLPEDAGIO'
          Column = tbvVLPEDAGIO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tbvCDCTE: TcxGridDBColumn
        Caption = 'CTE'
        DataBinding.FieldName = 'CDCTE'
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle1
        Width = 50
      end
      object tbvVLPEDAGIO: TcxGridDBColumn
        Caption = 'Ped'#225'gio'
        DataBinding.FieldName = 'VLPEDAGIO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      end
      object tbvNUCHAVENFE: TcxGridDBColumn
        Caption = 'Chave NFE'
        DataBinding.FieldName = 'NUCHAVENFE'
        Options.Focusing = False
        Width = 270
      end
      object tbvVLFRETE: TcxGridDBColumn
        Caption = 'Frete'
        DataBinding.FieldName = 'VLFRETE'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Options.Focusing = False
        Width = 80
      end
      object tbvCDREMETENTE: TcxGridDBColumn
        Caption = 'Remetente'
        DataBinding.FieldName = 'CDREMETENTE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CDCLIENTE'
        Properties.ListColumns = <
          item
            FieldName = 'NMCLIENTE'
          end>
        Properties.ListOptions.ShowHeader = False
        Options.Focusing = False
        Width = 120
      end
      object tbvCDDESTINATARIO: TcxGridDBColumn
        Caption = 'Destinat'#225'rio'
        DataBinding.FieldName = 'CDDESTINATARIO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CDCLIENTE'
        Properties.ListColumns = <
          item
            FieldName = 'NMCLIENTE'
          end>
        Properties.ListOptions.ShowHeader = False
        Options.Focusing = False
        Width = 120
      end
      object tbvNUSERIE: TcxGridDBColumn
        Caption = 'S'#233'rie'
        DataBinding.FieldName = 'NUSERIE'
        Options.Focusing = False
        Width = 35
      end
      object tbvNUNOTA: TcxGridDBColumn
        Caption = 'Nota'
        DataBinding.FieldName = 'NUNOTA'
        Options.Focusing = False
        Width = 50
      end
      object tbvDTEMISSAO: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'DTEMISSAO'
        Options.Focusing = False
      end
      object tbvVLTOTAL: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'VLTOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Focusing = False
        Width = 80
      end
      object tbvPSLIQUIDO: TcxGridDBColumn
        Caption = 'Peso L'#237'quido'
        DataBinding.FieldName = 'PSLIQUIDO'
        Options.Focusing = False
      end
      object tbvPSBRUTO: TcxGridDBColumn
        Caption = 'Peso Bruto'
        DataBinding.FieldName = 'PSBRUTO'
        Options.Focusing = False
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 604
    Width = 1029
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Label11: TLabel
      Left = 806
      Top = 9
      Width = 51
      Height = 30
      Caption = 'Total'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 30
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 240
      Top = 9
      Width = 51
      Height = 30
      Caption = 'Peso'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 30
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = -1
      Top = 9
      Width = 52
      Height = 30
      Caption = 'Frete'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 30
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblvlavgfretepeso: TLabel
      Left = 485
      Top = 9
      Width = 118
      Height = 30
      Caption = 'M'#233'dia Frete'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 30
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object edtvlpeso: TcxDBCurrencyEdit
      Left = 864
      Top = 0
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'VLPESO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -33
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyPress = edtvlpesoKeyPress
      Height = 40
      Width = 180
    end
    object edtqtpeso: TcxDBCurrencyEdit
      Left = 305
      Top = 0
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'QTPESO'
      DataBinding.DataSource = dts
      ParentFont = False
      Properties.AssignedValues.DisplayFormat = True
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -33
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = edtvlpesoKeyPress
      Height = 40
      Width = 180
    end
    object edtvlfrete: TcxDBCurrencyEdit
      Left = 60
      Top = 0
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'VLFRETE'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -33
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      TabOrder = 2
      OnKeyPress = edtvlpesoKeyPress
      Height = 40
      Width = 180
    end
    object edtvlavgfretepeso: TcxDBCurrencyEdit
      Left = 624
      Top = 0
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'VLAVGFRETEPESO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -33
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      TabOrder = 3
      OnKeyPress = edtvlpesoKeyPress
      Height = 40
      Width = 180
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 856
    Top = 265
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
    object actabrirrota: TAction
      Hint = 'rota'
      OnExecute = actabrirrotaExecute
    end
    object actabrirtransportadora: TAction
      Hint = 'transportadora'
      OnExecute = actabrirtransportadoraExecute
    end
    object actadicionarxml: TAction
      Caption = 'Adicionar XML'
      Visible = False
      OnExecute = actadicionarxmlExecute
    end
    object actgerarcte: TAction
      Caption = 'Gerar CTE'
      Visible = False
      OnExecute = actgerarcteExecute
    end
    object actgerarrpa: TAction
      Caption = 'Gerar RPA'
      Visible = False
      OnExecute = actgerarrpaExecute
    end
    object actgerarmdfe: TAction
      Caption = 'Gerar MDFE'
      Visible = False
      OnExecute = actgerarmdfeExecute
    end
    object actgerarctetodos: TAction
      Caption = 'Gerar CTE (Todos)'
      Visible = False
      OnExecute = actgerarctetodosExecute
    end
    object actabrircte: TAction
      Hint = 'cte'
      OnExecute = actabrircteExecute
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
    Left = 824
    Top = 264
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
      Action = actadicionarxml
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actgerarcte
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actgerarrpa
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actgerarmdfe
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actgerarctetodos
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT E.*,T.NMTRANSPORTADORA'#13#10'FROM EMBARQUE E'#13#10'LEFT JOIN TRANSP' +
      'ORTADORA T ON T.CDEMPRESA=E.CDEMPRESA AND E.CDTRANSPORTADORA=T.C' +
      'DTRANSPORTADORA'#13#10'WHERE E.CDEMPRESA=:CDEMPRESA AND E.CDEMBARQUE=:' +
      'CDEMBARQUE'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDEMBARQUE'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 760
    Top = 203
    object sdsCDEMBARQUE: TIntegerField
      FieldName = 'CDEMBARQUE'
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
    object sdsCDSTEMBARQUE: TIntegerField
      FieldName = 'CDSTEMBARQUE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDRPA: TIntegerField
      FieldName = 'CDRPA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
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
    object sdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsCDROTA: TIntegerField
      FieldName = 'CDROTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDTPEMBARQUE: TIntegerField
      FieldName = 'CDTPEMBARQUE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsVLFRETEPESO: TFMTBCDField
      FieldName = 'VLFRETEPESO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPESO: TFMTBCDField
      FieldName = 'VLPESO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsQTPESO: TFloatField
      FieldName = 'QTPESO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLAVGFRETEPESO: TFMTBCDField
      FieldName = 'VLAVGFRETEPESO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLROTA: TFMTBCDField
      FieldName = 'VLROTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSLIBERADO: TBlobField
      FieldName = 'DSLIBERADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsQTENTREGA: TIntegerField
      FieldName = 'QTENTREGA'
      ProviderFlags = [pfInUpdate]
      Required = True
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
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITEMBARQUE WHERE CDEMPRESA=:CDEMPRESA AND CDEMBARQ' +
      'UE=:CDEMBARQUE'
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
        Name = 'CDEMBARQUE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 762
    Top = 233
    object sdsdetailCDITEMBARQUE: TIntegerField
      FieldName = 'CDITEMBARQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDEMBARQUE: TIntegerField
      FieldName = 'CDEMBARQUE'
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
    object sdsdetailCDCTE: TIntegerField
      FieldName = 'CDCTE'
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
    object sdsdetailDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsdetailNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object sdsdetailNUSERIE: TIntegerField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailNUNOTA: TIntegerField
      FieldName = 'NUNOTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsdetailPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsdetailVLPEDAGIO: TFMTBCDField
      FieldName = 'VLPEDAGIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLPESO: TFMTBCDField
      FieldName = 'VLPESO'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDREMETENTE: TLargeintField
      FieldName = 'CDREMETENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDDESTINATARIO: TLargeintField
      FieldName = 'CDDESTINATARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 792
    Top = 203
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 824
    Top = 203
    object cdsCDEMBARQUE: TIntegerField
      FieldName = 'CDEMBARQUE'
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
    object cdsCDSTEMBARQUE: TIntegerField
      FieldName = 'CDSTEMBARQUE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDRPA: TIntegerField
      FieldName = 'CDRPA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
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
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDROTA: TIntegerField
      FieldName = 'CDROTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDROTAValidate
    end
    object cdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDTPEMBARQUE: TIntegerField
      FieldName = 'CDTPEMBARQUE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsVLFRETEPESO: TFMTBCDField
      FieldName = 'VLFRETEPESO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLFRETEPESOValidate
      Precision = 15
      Size = 2
    end
    object cdsVLPESO: TFMTBCDField
      FieldName = 'VLPESO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsQTPESO: TFloatField
      FieldName = 'QTPESO'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_vlavgfretepeso
    end
    object cdsVLAVGFRETEPESO: TFMTBCDField
      FieldName = 'VLAVGFRETEPESO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLROTA: TFMTBCDField
      FieldName = 'VLROTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSLIBERADO: TBlobField
      FieldName = 'DSLIBERADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsQTENTREGA: TIntegerField
      FieldName = 'QTENTREGA'
      ProviderFlags = [pfInUpdate]
      Required = True
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
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 856
    Top = 203
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 888
    Top = 203
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    AfterPost = cdsdetailAfterPost
    BeforeDelete = cdsdetailBeforeDelete
    AfterDelete = cdsdetailAfterDelete
    AfterScroll = cdsdetailAfterScroll
    OnNewRecord = cdsdetailNewRecord
    Left = 822
    Top = 232
    object cdsdetailCDITEMBARQUE: TIntegerField
      FieldName = 'CDITEMBARQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDEMBARQUE: TIntegerField
      FieldName = 'CDEMBARQUE'
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
    object cdsdetailCDCTE: TIntegerField
      FieldName = 'CDCTE'
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
    object cdsdetailDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsdetailNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsdetailNUSERIE: TIntegerField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailNUNOTA: TIntegerField
      FieldName = 'NUNOTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsdetailPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsdetailVLPEDAGIO: TFMTBCDField
      FieldName = 'VLPEDAGIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLPESO: TFMTBCDField
      FieldName = 'VLPESO'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDREMETENTE: TLargeintField
      FieldName = 'CDREMETENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDDESTINATARIO: TLargeintField
      FieldName = 'CDDESTINATARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 851
    Top = 232
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <>
    UseOwnFont = False
    Left = 784
    Top = 269
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
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end>
    UseOwnFont = False
    Left = 752
    Top = 266
  end
end

object frmFormulacao: TfrmFormulacao
  Left = 723
  Top = 172
  ClientHeight = 559
  ClientWidth = 1021
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
    Width = 1021
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 26
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label5: TLabel
      Left = 66
      Top = 26
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object lbl1: TLabel
      Left = 327
      Top = 26
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      Transparent = True
    end
    object lblregiaoaplicacao: TLabel
      Left = 591
      Top = 26
      Width = 84
      Height = 13
      Caption = 'Regi'#227'o Aplica'#231#227'o'
      Transparent = True
    end
    object lblqtpeso: TLabel
      Left = 738
      Top = 26
      Width = 82
      Height = 13
      Caption = 'Quantidade Peso'
      Transparent = True
    end
    object Label2: TLabel
      Left = 823
      Top = 26
      Width = 92
      Height = 13
      Caption = 'Quantidade Mistura'
      Transparent = True
    end
    object lblnmcliente: TDBText
      Left = 168
      Top = 80
      Width = 68
      Height = 13
      AutoSize = True
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
      OnDblClick = lblnmclienteDblClick
    end
    object lblcdcliente: TLabel
      Left = 66
      Top = 62
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Transparent = True
    end
    object Label14: TLabel
      Left = 591
      Top = 62
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lbl2: TLabel
      Left = 823
      Top = 62
      Width = 65
      Height = 13
      Caption = 'Data Revis'#227'o'
      Transparent = True
    end
    object lbl3: TLabel
      Left = 738
      Top = 62
      Width = 54
      Height = 13
      Caption = 'N'#186' Revis'#227'o'
      Transparent = True
    end
    object edtnurevisao: TcxDBTextEdit
      Left = 738
      Top = 75
      DataBinding.DataField = 'NUREVISAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      Width = 85
    end
    object edtdtrevisao: TcxDBDateEdit
      Left = 823
      Top = 75
      DataBinding.DataField = 'DTREVISAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnEnter = colorenter
      OnExit = colorexit
      Width = 92
    end
    object edtcodigo: TcxTextEdit
      Left = 6
      Top = 40
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
    object edtnome: TcxDBTextEdit
      Left = 66
      Top = 40
      DataBinding.DataField = 'NMFORMULACAO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 262
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
    object edtdsformulacao: TcxDBTextEdit
      Left = 327
      Top = 40
      DataBinding.DataField = 'DSFORMULACAO'
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
      Width = 262
    end
    object cbxcdregiaoaplicacao: TcxDBLookupComboBox
      Left = 591
      Top = 40
      DataBinding.DataField = 'CDREGIAOAPLICACAO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 250
      Properties.KeyFieldNames = 'CDREGIAOAPLICACAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMREGIAOAPLICACAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 145
    end
    object edtqtpeso: TcxDBCalcEdit
      Left = 738
      Top = 40
      DataBinding.DataField = 'QTPESO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 85
    end
    object edtqtmistura: TcxDBCalcEdit
      Left = 823
      Top = 40
      DataBinding.DataField = 'QTMISTURA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 92
    end
    object edtCDCLIENTE: TcxDBButtonEdit
      Left = 66
      Top = 75
      DataBinding.DataField = 'CDCLIENTE'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtCDCLIENTEPropertiesButtonClick
      Properties.OnEditValueChanged = edtCDCLIENTEPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtCDCLIENTEKeyDown
      OnKeyPress = eventokeypress
      Width = 101
    end
    object cbxcdstformulacao: TcxDBLookupComboBox
      Left = 591
      Top = 75
      DataBinding.DataField = 'CDSTFORMULACAO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDSTFORMULACAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTFORMULACAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 145
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 160
    Width = 1021
    Height = 399
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = tbscadastro
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 399
    ClientRectRight = 1021
    ClientRectTop = 24
    object tbscadastro: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 0
      object grdsubstituto: TcxGrid
        Left = 0
        Top = 262
        Width = 1021
        Height = 113
        Align = alBottom
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvsubstituto: TcxGridDBTableView
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
          OnCellDblClick = tbvsubstitutoCellDblClick
          DataController.DataSource = dtssubstituto
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object tbvsubstitutoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = grdsubstitutoDBTableView1CDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 100
          end
          object tbvsubstitutoNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 400
          end
          object tbvsubstitutoNMUNIDADE: TcxGridDBColumn
            Caption = 'Unid'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Focusing = False
            Width = 30
          end
        end
        object grdsubstitutoLevel1: TcxGridLevel
          GridView = tbvsubstituto
        end
      end
      object spl1: TcxSplitter
        Left = 0
        Top = 254
        Width = 1021
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = grdsubstituto
        ExplicitWidth = 8
      end
      object cxLabel1: TcxLabel
        Left = 0
        Top = 235
        Align = alBottom
        Caption = 'Mat'#233'ria-Prima Substituta'
        ParentFont = False
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        ExplicitTop = 233
        AnchorY = 245
      end
      object grddetail: TcxGrid
        Left = 0
        Top = 19
        Width = 1021
        Height = 216
        Align = alClient
        TabOrder = 3
        LookAndFeel.NativeStyle = False
        object tbvdetail: TcxGridDBTableView
          OnKeyDown = tbvdetailKeyDown
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
          OnCellDblClick = tbvdetailCellDblClick
          DataController.DataSource = dtsdetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvdetailQTITEM
            end
            item
              Kind = skSum
              FieldName = 'PRPESO'
              Column = tbvdetailPRPESO
            end
            item
              Kind = skSum
              FieldName = 'QTQUILO'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvdetailNUSEQUENCIA: TcxGridDBColumn
            Caption = 'N'#176
            DataBinding.FieldName = 'NUSEQUENCIA'
            Width = 30
          end
          object tbvdetailCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = grddetailtbvCDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 100
          end
          object tbvdetailNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Focusing = False
            Width = 400
          end
          object tbvdetailNMUNIDADE: TcxGridDBColumn
            Caption = 'Unid'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Focusing = False
            Width = 30
          end
          object tbvdetailPRPESO: TcxGridDBColumn
            Caption = '% Peso'
            DataBinding.FieldName = 'PRPESO'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object tbvdetailQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object tbvdetailPRERRO: TcxGridDBColumn
            Caption = '% Erro'
            DataBinding.FieldName = 'PRERRO'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
        end
        object grddetailLvl: TcxGridLevel
          GridView = tbvdetail
        end
      end
      object cxLabel2: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Mat'#233'ria-Prima'
        ParentFont = False
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 10
      end
    end
    object tbsproduto: TcxTabSheet
      Caption = 'Usado nos Produtos'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdproduto: TcxGrid
        Left = 0
        Top = 0
        Width = 1021
        Height = 375
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvproduto: TcxGridDBTableView
          OnKeyDown = tbvdetailKeyDown
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
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
          OnCellDblClick = tbvprodutoCellDblClick
          DataController.DataSource = dtsproduto
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvprodutocdproduto: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDPRODUTO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvprodutocdprodutoPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 100
          end
          object tbvprodutocdalternativo: TcxGridDBColumn
            Caption = 'C'#243'd Alternativo'
            DataBinding.FieldName = 'CDALTERNATIVO'
            Options.Focusing = False
            Width = 100
          end
          object tbvprodutonmproduto: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Focusing = False
            Width = 400
          end
          object tbvprodutonmunidade: TcxGridDBColumn
            Caption = 'Unid'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Focusing = False
            Width = 30
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = tbvproduto
        end
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 376
    Top = 1
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
    object Actabrirproduto: TAction
      Caption = 'Actabrirproduto'
      Hint = 'produto'
      OnExecute = ActabrirprodutoExecute
    end
    object actabrirsubstituta: TAction
      Caption = 'actabrirsubstituta'
      Hint = 'produto'
      OnExecute = actabrirsubstitutaExecute
    end
    object actabrirmateriaprima: TAction
      Caption = 'actabrirmateriaprima'
      Hint = 'produto'
      OnExecute = actabrirmateriaprimaExecute
    end
    object actabrircliente: TAction
      Caption = 'actabrircliente'
      Hint = 'cliente'
      OnExecute = actabrirclienteExecute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
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
    Left = 344
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
          ItemName = 'dxBarLargeButton1'
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
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT F.*,C.NMCLIENTE'#13#10'FROM FORMULACAO F'#13#10'LEFT JOIN CLIENTE C O' +
      'N C.CDEMPRESA=F.CDEMPRESA AND C.CDCLIENTE=F.CDCLIENTE'#13#10'WHERE F.C' +
      'DEMPRESA=:CDEMPRESA AND F.CDFORMULACAO=:CDFORMULACAO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CDFORMULACAO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 416
    Top = 243
    object sdsCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDREGIAOAPLICACAO: TIntegerField
      FieldName = 'CDREGIAOAPLICACAO'
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
    object sdsNMFORMULACAO: TStringField
      FieldName = 'NMFORMULACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
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
    object sdsDSFORMULACAO: TStringField
      FieldName = 'DSFORMULACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsQTPESO: TFloatField
      FieldName = 'QTPESO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTMISTURA: TFloatField
      FieldName = 'QTMISTURA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDSTFORMULACAO: TIntegerField
      FieldName = 'CDSTFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTREVISAO: TDateField
      FieldName = 'DTREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUREVISAO: TStringField
      FieldName = 'NUREVISAO'
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
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 444
    Top = 243
  end
  object cds: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    OnNewRecord = cdsNewRecord
    Left = 472
    Top = 243
    object cdsCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDREGIAOAPLICACAO: TIntegerField
      FieldName = 'CDREGIAOAPLICACAO'
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
    object cdsNMFORMULACAO: TStringField
      FieldName = 'NMFORMULACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
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
    object cdsDSFORMULACAO: TStringField
      FieldName = 'DSFORMULACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsQTPESO: TFloatField
      FieldName = 'QTPESO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsQTPESOValidate
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTMISTURA: TFloatField
      FieldName = 'QTMISTURA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDSTFORMULACAO: TIntegerField
      FieldName = 'CDSTFORMULACAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDSTFORMULACAOValidate
    end
    object cdssdsproduto: TDataSetField
      FieldName = 'sdsproduto'
      ProviderFlags = []
    end
    object cdsDTREVISAO: TDateField
      FieldName = 'DTREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUREVISAO: TStringField
      FieldName = 'NUREVISAO'
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
      OnValidate = cdsCDCLIENTEValidate
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 500
    Top = 243
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 528
    Top = 243
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 500
    Top = 272
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    OnNewRecord = cdsdetailNewRecord
    Left = 471
    Top = 272
    object cdsdetailCDITFORMULACAO: TIntegerField
      FieldName = 'CDITFORMULACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
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
    object cdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailCDDIGITADOValidate
      Size = 30
    end
    object cdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailQTITEMValidate
    end
    object cdsdetailPRPESO: TFloatField
      FieldName = 'PRPESO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailPRPESOValidate
    end
    object cdsdetailPRERRO: TFloatField
      FieldName = 'PRERRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsdetailsdssubstituto: TDataSetField
      FieldName = 'sdssubstituto'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT I.*,P.NMPRODUTO,U.NMUNIDADE'#13#10'FROM ITFORMULACAO I'#13#10'LEFT JO' +
      'IN PRODUTO P ON P.CDEMPRESA=I.CDEMPRESA AND P.CDPRODUTO=I.CDPROD' +
      'UTO'#13#10'LEFT JOIN UNIDADE U ON U.CDEMPRESA=P.CDEMPRESA AND P.CDUNID' +
      'ADE=U.CDUNIDADE'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDFORMULACAO' +
      '=:CDFORMULACAO'
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
        Name = 'CDFORMULACAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 417
    Top = 272
    object sdsdetailCDITFORMULACAO: TIntegerField
      FieldName = 'CDITFORMULACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
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
    object sdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailPRPESO: TFloatField
      FieldName = 'PRPESO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailPRERRO: TFloatField
      FieldName = 'PRERRO'
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
    object sdsdetailNUSEQUENCIA: TIntegerField
      FieldName = 'NUSEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdssubstituto: TSQLDataSet
    CommandText = 
      'SELECT I.*,P.NMPRODUTO,U.NMUNIDADE'#13#10'FROM ITFORMULACAOSUBSTITUTO ' +
      'I'#13#10'LEFT JOIN PRODUTO P ON P.CDEMPRESA=I.CDEMPRESA AND P.CDPRODUT' +
      'O=I.CDPRODUTO'#13#10'LEFT JOIN UNIDADE U ON U.CDEMPRESA=P.CDEMPRESA AN' +
      'D P.CDUNIDADE=U.CDUNIDADE'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CD' +
      'ITFORMULACAO=:CDITFORMULACAO'
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
        Name = 'CDITFORMULACAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 417
    Top = 300
    object sdssubstitutoCDITFORMULACAOSUBSTITUTO: TIntegerField
      FieldName = 'CDITFORMULACAOSUBSTITUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdssubstitutoCDITFORMULACAO: TIntegerField
      FieldName = 'CDITFORMULACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssubstitutoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssubstitutoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssubstitutoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssubstitutoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssubstitutoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssubstitutoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssubstitutoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssubstitutoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdssubstitutoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdssubstitutoNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdssubstitutoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdssubstituto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdssubstituto
    Params = <>
    BeforePost = cdssubstitutoBeforePost
    OnNewRecord = cdssubstitutoNewRecord
    Left = 471
    Top = 300
    object cdssubstitutoCDITFORMULACAOSUBSTITUTO: TIntegerField
      FieldName = 'CDITFORMULACAOSUBSTITUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdssubstitutoCDITFORMULACAO: TIntegerField
      FieldName = 'CDITFORMULACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssubstitutoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssubstitutoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssubstitutoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssubstitutoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssubstitutoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssubstitutoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssubstitutoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssubstitutoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdssubstitutoCDDIGITADOValidate
      Size = 30
    end
    object cdssubstitutoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdssubstitutoNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdssubstitutoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtssubstituto: TDataSource
    DataSet = cdssubstituto
    Left = 500
    Top = 300
  end
  object dts2: TDataSource
    DataSet = sdsdetail
    Left = 528
    Top = 272
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <>
    UseOwnFont = False
    Left = 899
    Top = 137
  end
  object sdsproduto: TSQLDataSet
    CommandText = 
      'SELECT F.*, P.NMPRODUTO,P.CDALTERNATIVO,U.NMUNIDADE'#13#10'FROM PRODUT' +
      'OFORMULACAO F'#13#10'LEFT JOIN PRODUTO P ON F.CDPRODUTO=P.CDPRODUTO AN' +
      'D F.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOIN UNIDADE U ON U.CDEMPRESA=P.' +
      'CDEMPRESA AND P.CDUNIDADE=U.CDUNIDADE'#13#10'WHERE F.CDEMPRESA=:CDEMPR' +
      'ESA AND F.CDFORMULACAO=:CDFORMULACAO'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDFORMULACAO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 417
    Top = 328
    object sdsprodutoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsprodutoCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsprodutoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsprodutoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsprodutoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsprodutoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsprodutoCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsprodutoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsprodutoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsprodutoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsprodutoCDALTERNATIVO: TStringField
      FieldName = 'CDALTERNATIVO'
      ProviderFlags = []
      Size = 30
    end
    object sdsprodutoNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsprodutoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsprodutoBOQUOCIENTE: TStringField
      FieldName = 'BOQUOCIENTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsprodutoBOMETODOPROCESSO: TStringField
      FieldName = 'BOMETODOPROCESSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object cdsproduto: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsproduto
    Params = <>
    BeforePost = cdsprodutoBeforePost
    Left = 471
    Top = 328
    object cdsprodutoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsprodutoCDPRODUTOValidate
    end
    object cdsprodutoCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsprodutoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsprodutoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsprodutoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsprodutoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsprodutoCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsprodutoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsprodutoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsprodutoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsprodutoCDALTERNATIVO: TStringField
      FieldName = 'CDALTERNATIVO'
      ProviderFlags = []
      Size = 30
    end
    object cdsprodutoNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsprodutoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsprodutoBOQUOCIENTE: TStringField
      FieldName = 'BOQUOCIENTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsprodutoBOMETODOPROCESSO: TStringField
      FieldName = 'BOMETODOPROCESSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dtsproduto: TDataSource
    DataSet = cdsproduto
    Left = 500
    Top = 328
  end
end

object frmEtapa: TfrmEtapa
  Left = 739
  Top = 178
  ClientHeight = 486
  ClientWidth = 1010
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
    Width = 1010
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
    Width = 1010
    Height = 363
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tbsetafunc
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 363
    ClientRectRight = 1010
    ClientRectTop = 25
    object tbsetafunc: TcxTabSheet
      Caption = 'Funcion'#225'rio'
      ImageIndex = 89
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdetapafuncionario: TcxGrid
        Left = 0
        Top = 0
        Width = 1010
        Height = 338
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdetapafuncionarioDBTableView1: TcxGridDBTableView
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
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsetapafuncionario
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CDFUNCIONARIO'
              Column = grdetapafuncionarioDBTableView1CDFUNCIONARIO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdetapafuncionarioDBTableView1CDFUNCIONARIO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDFUNCIONARIO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grdetapafuncionarioDBTableView1CDFUNCIONARIOPropertiesButtonClick
            Width = 91
          end
          object grdetapafuncionarioDBTableView1NMFUNCIONARIO: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMFUNCIONARIO'
          end
        end
        object grdetapafuncionarioLevel1: TcxGridLevel
          GridView = grdetapafuncionarioDBTableView1
        end
      end
    end
    object tbsconfiguracao: TcxTabSheet
      Caption = 'Configura'#231#227'o'
      ImageIndex = 40
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbx1: TcxGroupBox
        Left = 3
        Top = 64
        TabOrder = 3
        Height = 71
        Width = 394
        object Label6: TLabel
          Left = 5
          Top = 48
          Width = 56
          Height = 13
          Caption = 'mudar para '
          Transparent = True
        end
        object Label10: TLabel
          Left = 5
          Top = 8
          Width = 235
          Height = 13
          Caption = 'Quando Ordem de Servi'#231'o mudar para esta etapa'
          Transparent = True
        end
        object Label11: TLabel
          Left = 5
          Top = 27
          Width = 123
          Height = 13
          Caption = 'Se o status do servi'#231'o for '
          Transparent = True
        end
        object cbxcdstitordservi: TcxDBLookupComboBox
          Left = 129
          Top = 22
          DataBinding.DataField = 'CDSTITORDSERVI'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDSTITORDSERV'
          Properties.ListColumns = <
            item
              FieldName = 'NMSTITORDSERV'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 260
        end
        object cbxcdstitordservf: TcxDBLookupComboBox
          Left = 128
          Top = 45
          DataBinding.DataField = 'CDSTITORDSERVF'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDSTITORDSERV'
          Properties.ListColumns = <
            item
              FieldName = 'NMSTITORDSERV'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 260
        end
      end
      object ckbboalterartecnico: TcxDBCheckBox
        Left = 2
        Top = 42
        Caption = 'Alterar o t'#233'cnico da Ordem de Servi'#231'o para o Responsavel'
        DataBinding.DataField = 'BOALTERARTECNICO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Transparent = True
      end
      object ckbboexibirpeca: TcxDBCheckBox
        Left = 2
        Top = 24
        Caption = 'Exibir Pe'#231'a na Caixa de Trabalho'
        DataBinding.DataField = 'BOEXIBIRPECA'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Transparent = True
      end
      object ckbboexibirservico: TcxDBCheckBox
        Left = 2
        Top = 6
        Caption = 'Exibir Servi'#231'o na Caixa de Trabalho'
        DataBinding.DataField = 'BOEXIBIRSERVICO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Transparent = True
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 82
    Width = 1010
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 64
      Top = 1
      Width = 28
      Height = 13
      Caption = 'Nome'
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 354
      Top = 1
      Width = 26
      Height = 13
      Caption = 'N'#237'vel'
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 425
      Top = 1
      Width = 31
      Height = 13
      Caption = 'Ordem'
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object edtnuordem: TcxDBTextEdit
      Left = 425
      Top = 15
      DataBinding.DataField = 'NUORDEM'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 61
    end
    object edtnunivel: TcxDBTextEdit
      Left = 354
      Top = 15
      DataBinding.DataField = 'NUNIVEL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 70
    end
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 15
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 58
    end
    object edtnome: TcxDBTextEdit
      Left = 64
      Top = 15
      DataBinding.DataField = 'NMETAPA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 291
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 372
    Top = 9
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
    object actetapaanterior: TAction
      Caption = 'Etapa Anterior'
      OnExecute = actetapaanteriorExecute
    end
    object actetapaproxima: TAction
      Caption = 'Pr'#243'xima Etapa'
      OnExecute = actetapaproximaExecute
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
    Left = 400
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
      Caption = 'etapa'
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
          ItemName = 'dxbrlrgbtnimprimir'
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
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton1: TdxBarButton
      Action = actetapaanterior
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actetapaproxima
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM ETAPA WHERE CDEMPRESA=:CDEMPRESA AND CDETAPA=:CDET' +
      'APA'
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
        Name = 'CDETAPA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 557
    Top = 67
    object sdsCDETAPA: TIntegerField
      FieldName = 'CDETAPA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDSTITORDSERVF: TIntegerField
      FieldName = 'CDSTITORDSERVF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTITORDSERVI: TIntegerField
      FieldName = 'CDSTITORDSERVI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMETAPA: TStringField
      FieldName = 'NMETAPA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsBOEXIBIRSERVICO: TStringField
      FieldName = 'BOEXIBIRSERVICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOEXIBIRPECA: TStringField
      FieldName = 'BOEXIBIRPECA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUNIVEL: TStringField
      FieldName = 'NUNIVEL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNUORDEM: TIntegerField
      FieldName = 'NUORDEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOALTERARTECNICO: TStringField
      FieldName = 'BOALTERARTECNICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
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
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsetapafuncionario: TSQLDataSet
    CommandText = 
      'SELECT E.*'#13#10',F.NMFUNCIONARIO '#13#10'FROM ETAPAFUNCIONARIO E '#13#10'LEFT JO' +
      'IN FUNCIONARIO F ON F.CDFUNCIONARIO=E.CDFUNCIONARIO AND E.CDEMPR' +
      'ESA=F.CDEMPRESA'#13#10'WHERE E.CDEMPRESA=:CDEMPRESA AND E.CDETAPA=:CDE' +
      'TAPA'
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
        Name = 'CDETAPA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 634
    Top = 67
    object sdsetapafuncionarioCDETAPAFUNCIONARIO: TIntegerField
      FieldName = 'CDETAPAFUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsetapafuncionarioCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsetapafuncionarioCDETAPA: TIntegerField
      FieldName = 'CDETAPA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsetapafuncionarioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsetapafuncionarioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsetapafuncionarioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsetapafuncionarioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsetapafuncionarioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsetapafuncionarioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsetapafuncionarioNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object sdsetapafuncionarioCDEMPRESA: TLargeintField
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
    Left = 508
    Top = 67
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    OnNewRecord = cdsNewRecord
    Left = 557
    Top = 116
    object cdsCDETAPA: TIntegerField
      FieldName = 'CDETAPA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDSTITORDSERVF: TIntegerField
      FieldName = 'CDSTITORDSERVF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSTITORDSERVI: TIntegerField
      FieldName = 'CDSTITORDSERVI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMETAPA: TStringField
      FieldName = 'NMETAPA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsBOEXIBIRSERVICO: TStringField
      FieldName = 'BOEXIBIRSERVICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOEXIBIRPECA: TStringField
      FieldName = 'BOEXIBIRPECA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUNIVEL: TStringField
      FieldName = 'NUNIVEL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNUORDEM: TIntegerField
      FieldName = 'NUORDEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOALTERARTECNICO: TStringField
      FieldName = 'BOALTERARTECNICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
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
    object cdssdsetapafuncionario: TDataSetField
      FieldName = 'sdsetapafuncionario'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts: TDataSource
    DataSet = cds
    Left = 556
    Top = 171
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 509
    Top = 116
  end
  object cdsetapafuncionario: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsetapafuncionario
    Params = <>
    BeforePost = cdsetapafuncionarioBeforePost
    OnNewRecord = cdsetapafuncionarioNewRecord
    Left = 634
    Top = 116
    object cdsetapafuncionarioCDETAPAFUNCIONARIO: TIntegerField
      FieldName = 'CDETAPAFUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsetapafuncionarioCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsetapafuncionarioCDFUNCIONARIOValidate
    end
    object cdsetapafuncionarioCDETAPA: TIntegerField
      FieldName = 'CDETAPA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsetapafuncionarioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsetapafuncionarioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsetapafuncionarioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsetapafuncionarioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsetapafuncionarioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsetapafuncionarioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsetapafuncionarioNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsetapafuncionarioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsetapafuncionario: TDataSource
    DataSet = cdsetapafuncionario
    Left = 633
    Top = 171
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
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 912
    Top = 27
  end
end

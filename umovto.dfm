object frmmovto: Tfrmmovto
  Left = 462
  Top = 208
  ClientHeight = 378
  ClientWidth = 893
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
  object pnltop: TPanel
    Left = 0
    Top = 86
    Width = 893
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 1
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 72
      Top = 1
      Width = 53
      Height = 13
      Caption = 'Dt Emiss'#227'o'
      Transparent = True
    end
    object Label7: TLabel
      Left = 154
      Top = 1
      Width = 21
      Height = 13
      Caption = 'Tipo'
      Transparent = True
    end
    object lblNUSAIDA: TLabel
      Left = 296
      Top = 6
      Width = 53
      Height = 13
      Caption = 'Nota Fiscal'
      Transparent = True
      Visible = False
    end
    object txtnusaida: TDBText
      Left = 296
      Top = 20
      Width = 65
      Height = 17
      DataField = 'NUSAIDA'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      Visible = False
      OnDblClick = txtnusaidaDblClick
    end
    object lblnuentrada: TLabel
      Left = 369
      Top = 6
      Width = 36
      Height = 13
      Caption = 'Compra'
      Transparent = True
      Visible = False
    end
    object txtnuentrada: TDBText
      Left = 369
      Top = 20
      Width = 65
      Height = 17
      DataField = 'NUSAIDA'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      Visible = False
      OnDblClick = txtnuentradaDblClick
    end
    object lblnuordserv: TLabel
      Left = 446
      Top = 6
      Width = 70
      Height = 13
      Caption = 'Ordem Servi'#231'o'
      Transparent = True
      Visible = False
    end
    object txtnuordserv: TDBText
      Left = 446
      Top = 20
      Width = 65
      Height = 17
      DataField = 'NUORDSERV'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      Visible = False
      OnDblClick = txtnuordservDblClick
    end
    object lblcdordproducao: TLabel
      Left = 524
      Top = 6
      Width = 80
      Height = 13
      Caption = 'Ordem Produ'#231#227'o'
      Transparent = True
      Visible = False
    end
    object txtcdordproducao: TDBText
      Left = 524
      Top = 20
      Width = 80
      Height = 17
      Alignment = taCenter
      DataField = 'CDORDPRODUCAO'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      Visible = False
      OnDblClick = txtcdordproducaoDblClick
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 15
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
    object edtdtemissao: TcxDBDateEdit
      Left = 72
      Top = 15
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 82
    end
    object cbxcdtpmovto: TcxDBLookupComboBox
      Left = 154
      Top = 15
      DataBinding.DataField = 'CDTPMOVTO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPMOVTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPMOVTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = cbxcdtpmovtoEnter
      OnExit = colorExit
      Width = 129
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
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object grd: TcxGrid
    Left = 0
    Top = 126
    Width = 893
    Height = 252
    Align = alClient
    TabOrder = 6
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
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLTOTAL'
          Column = tbvVLTOTAL
        end
        item
          Kind = skSum
          FieldName = 'QTITEM2'
          Column = tbvQTITEM2
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Appending = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tbvCDCNTCUSTO: TcxGridDBColumn
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
        Styles.Content = dtmmain.cxStyle1
        Width = 100
      end
      object tbvNMPRODUTO: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'NMPRODUTO'
        Options.Editing = False
        Options.Focusing = False
        Width = 341
      end
      object tbvNMUNIDADE: TcxGridDBColumn
        Caption = 'Unidade'
        DataBinding.FieldName = 'NMUNIDADE'
        Options.Focusing = False
        Width = 47
      end
      object tbvQTITEM: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'QTITEM'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 75
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
        Width = 75
      end
      object tbvVLUNITARIO: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'VLUNITARIO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      end
      object tbvVLTOTAL: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'VLTOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Focusing = False
      end
      object tbvDSOBSERVACAO: TcxGridDBColumn
        Caption = 'Observa'#231#227'o'
        DataBinding.FieldName = 'DSOBSERVACAO'
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekMemo
        Properties.BlobPaintStyle = bpsText
        Width = 150
      end
    end
    object grlLevel1: TcxGridLevel
      GridView = tbv
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
      Caption = 'Abrir Produto'
      Hint = 'Produto'
      OnExecute = actAbrirProdutoExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actabrirsaida: TAction
      Hint = 'saida'
      OnExecute = actabrirsaidaExecute
    end
    object actabrirentrada: TAction
      Hint = 'entrada'
      OnExecute = actabrirentradaExecute
    end
    object actabrirordserv: TAction
      Hint = 'ordserv'
      OnExecute = actabrirordservExecute
    end
    object actabrirordproducao: TAction
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
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
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT M.*,S.NUSAIDA,S.CDSAIDA,E.NUENTRADA,E.CDENTRADA,O.NUORDSE' +
      'RV,O.CDORDSERV'#13#10'FROM MOVTO M '#13#10'LEFT JOIN ITSAIDA I ON I.CDEMPRES' +
      'A=M.CDEMPRESA AND M.CDITSAIDA=I.CDITSAIDA '#13#10'LEFT JOIN SAIDA S ON' +
      ' S.CDEMPRESA=I.CDEMPRESA AND S.CDSAIDA=I.CDSAIDA '#13#10'LEFT JOIN ITE' +
      'NTRADA IE ON IE.CDEMPRESA=M.CDEMPRESA AND IE.CDITENTRADA=M.CDITE' +
      'NTRADA'#13#10'LEFT JOIN ENTRADA E ON E.CDEMPRESA=IE.CDEMPRESA AND E.CD' +
      'ENTRADA=IE.CDENTRADA'#13#10'LEFT JOIN ITORDSERV IO ON IO.CDEMPRESA=M.C' +
      'DEMPRESA AND IO.CDITORDSERV=M.CDITORDSERV'#13#10'LEFT JOIN ORDSERV O O' +
      'N O.CDORDSERV=IO.CDORDSERV AND O.CDEMPRESA=IO.CDEMPRESA'#13#10'WHERE M' +
      '.CDEMPRESA=:CDEMPRESA AND M.CDMOVTO=:CDMOVTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'CDMOVTO'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = dtmmain.sqlc
    Left = 760
    Top = 16
    object sdsCDMOVTO: TIntegerField
      FieldName = 'CDMOVTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDTPMOVTO: TIntegerField
      FieldName = 'CDTPMOVTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDITRIM: TIntegerField
      FieldName = 'CDITRIM'
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
    object sdsCDITSAIDA: TIntegerField
      FieldName = 'CDITSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDITORDSERV: TIntegerField
      FieldName = 'CDITORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDITMOVTOBAIXA: TIntegerField
      FieldName = 'CDITMOVTOBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDITLOCACAOACESSORIO: TIntegerField
      FieldName = 'CDITLOCACAOACESSORIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
    end
    object sdsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = []
    end
    object sdsNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = []
    end
    object sdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = []
    end
    object sdsNUORDSERV: TIntegerField
      FieldName = 'NUORDSERV'
      ProviderFlags = []
    end
    object sdsCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = []
    end
    object sdsCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDITORDPRODUCAORECURSO: TIntegerField
      FieldName = 'CDITORDPRODUCAORECURSO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDITORDPRODUCAOMATERIAL: TIntegerField
      FieldName = 'CDITORDPRODUCAOMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDITORDPRODUCAO: TIntegerField
      FieldName = 'CDITORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDAPONTAMENTO: TIntegerField
      FieldName = 'CDAPONTAMENTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 788
    Top = 16
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 816
    Top = 16
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMOVTO: TIntegerField
      FieldName = 'CDMOVTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDTPMOVTO: TIntegerField
      FieldName = 'CDTPMOVTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPMOVTOValidate
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsDTEMISSAOValidate
    end
    object cdsCDITRIM: TIntegerField
      FieldName = 'CDITRIM'
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
    object cdsCDITSAIDA: TIntegerField
      FieldName = 'CDITSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDITORDSERV: TIntegerField
      FieldName = 'CDITORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDITMOVTOBAIXA: TIntegerField
      FieldName = 'CDITMOVTOBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDITLOCACAOACESSORIO: TIntegerField
      FieldName = 'CDITLOCACAOACESSORIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
    end
    object cdsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = []
    end
    object cdsNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = []
    end
    object cdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = []
    end
    object cdsNUORDSERV: TIntegerField
      FieldName = 'NUORDSERV'
      ProviderFlags = []
    end
    object cdsCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = []
    end
    object cdsCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDITORDPRODUCAORECURSO: TIntegerField
      FieldName = 'CDITORDPRODUCAORECURSO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDITORDPRODUCAOMATERIAL: TIntegerField
      FieldName = 'CDITORDPRODUCAOMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDITORDPRODUCAO: TIntegerField
      FieldName = 'CDITORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDAPONTAMENTO: TIntegerField
      FieldName = 'CDAPONTAMENTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 844
    Top = 16
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 872
    Top = 16
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 844
    Top = 44
  end
  object cdsdetail: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'vltotal'
        Expression = 'sum(vltotal)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'vlicms'
        Expression = 'sum(vlicms)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'vlipi'
        Expression = 'sum(vlipi)'
        Visible = False
      end>
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    AfterScroll = cdsdetailAfterScroll
    OnNewRecord = cdsdetailNewRecord
    Left = 816
    Top = 44
    object cdsdetailCDMOVTO: TIntegerField
      FieldName = 'CDMOVTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailQTITEMValidate
    end
    object cdsdetailVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailQTITEMValidate
      Precision = 15
    end
    object cdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailCDDIGITADOValidate
      Size = 30
    end
    object cdsdetailVLSALDOVALOR: TFMTBCDField
      FieldName = 'VLSALDOVALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
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
    object cdsdetailCDITMOVTO: TIntegerField
      FieldName = 'CDITMOVTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsdetailNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsdetailCDITLOTE: TIntegerField
      FieldName = 'CDITLOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsdetailQTITEM2: TFloatField
      FieldName = 'QTITEM2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTITEM2Validate
    end
    object cdsdetailNMUNIDADE2: TStringField
      FieldName = 'NMUNIDADE2'
      ProviderFlags = []
      Size = 100
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
    object cdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField
      FieldName = 'CDITORDPRODUCAOMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT I.*,P.NMPRODUTO,U.NMUNIDADE,P.PRUNIDADE,U2.NMUNIDADE NMUN' +
      'IDADE2'#13#10'FROM ITMOVTO I '#13#10'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CD' +
      'PRODUTO AND I.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOIN UNIDADE U ON U.CD' +
      'EMPRESA=P.CDEMPRESA AND U.CDUNIDADE=P.CDUNIDADE'#13#10'LEFT JOIN UNIDA' +
      'DE U2 ON U2.CDEMPRESA=P.CDEMPRESA AND U2.CDUNIDADE=P.CDUNIDADE2'#13 +
      #10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDMOVTO=:CDMOVTO'
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
        Name = 'CDMOVTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 760
    Top = 44
    object sdsdetailCDMOVTO: TIntegerField
      FieldName = 'CDMOVTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
    end
    object sdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsdetailVLSALDOVALOR: TFMTBCDField
      FieldName = 'VLSALDOVALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
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
    object sdsdetailCDITMOVTO: TIntegerField
      FieldName = 'CDITMOVTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object sdsdetailCDITLOTE: TIntegerField
      FieldName = 'CDITLOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsdetailQTITEM2: TFloatField
      FieldName = 'QTITEM2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNMUNIDADE2: TStringField
      FieldName = 'NMUNIDADE2'
      ProviderFlags = []
      Size = 100
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
    object sdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField
      FieldName = 'CDITORDPRODUCAOMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
  end
end

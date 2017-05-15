object frmRegrast: TfrmRegrast
  Left = 429
  Top = 113
  ClientHeight = 553
  ClientWidth = 1216
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
    Width = 1216
    Height = 62
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 26
      Width = 40
      Height = 13
      Caption = 'Contrato'
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
      DataBinding.DataField = 'NMREGRAST'
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
  end
  object grd: TcxGrid
    Left = 0
    Top = 125
    Width = 1216
    Height = 220
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBBandedTableView
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
      DataController.DataSource = dtsdetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'CFOP'
        end
        item
          Caption = 'ICMS'
          Width = 265
        end
        item
          Caption = 'IPI'
          Width = 200
        end
        item
          Caption = 'PIS'
          Width = 200
        end
        item
          Caption = 'COFINS'
          Width = 200
        end
        item
          Caption = 'Tipo'
          Width = 255
        end>
      object tbvCDCFOP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDCFOP'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CDCFOP'
        Properties.ListColumns = <
          item
            FieldName = 'CDCFOP'
          end>
        Properties.ListOptions.ShowHeader = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object tbvNUSTICMS: TcxGridDBBandedColumn
        Caption = 'Situa'#231#227'o Tribut'#225'ria'
        DataBinding.FieldName = 'NUSTICMS'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 550
        Properties.KeyFieldNames = 'NUSTICMS'
        Properties.ListColumns = <
          item
            FieldName = 'NMSTICMS'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 98
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvALICMS: TcxGridDBBandedColumn
        Caption = 'Al'#237'quota'
        DataBinding.FieldName = 'ALICMS'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 46
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvALICMSRED: TcxGridDBBandedColumn
        Caption = '% Redu'#231#227'o'
        DataBinding.FieldName = 'ALICMSRED'
        PropertiesClassName = 'TcxCalcEditProperties'
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvBORECUPERAICMS: TcxGridDBBandedColumn
        Caption = 'Recupera'
        DataBinding.FieldName = 'BORECUPERAICMS'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 55
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvNUSTIPI: TcxGridDBBandedColumn
        Caption = 'Situa'#231#227'o Tribut'#225'ria'
        DataBinding.FieldName = 'NUSTIPI'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'NUSTIPI'
        Properties.ListColumns = <
          item
            FieldName = 'NMSTIPI'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 98
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvALIPI: TcxGridDBBandedColumn
        Caption = 'Al'#237'quota'
        DataBinding.FieldName = 'ALIPI'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 46
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvBORECUPERAIPI: TcxGridDBBandedColumn
        Caption = 'Recupera'
        DataBinding.FieldName = 'BORECUPERAIPI'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 55
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvNUSTPIS: TcxGridDBBandedColumn
        Caption = 'Situa'#231#227'o Tribut'#225'ria'
        DataBinding.FieldName = 'NUSTPIS'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 700
        Properties.KeyFieldNames = 'NUSTPIS'
        Properties.ListColumns = <
          item
            FieldName = 'NMSTPIS'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 98
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvALPIS: TcxGridDBBandedColumn
        Caption = 'Al'#237'quota'
        DataBinding.FieldName = 'ALPIS'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 46
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvBORECUPERAPIS: TcxGridDBBandedColumn
        Caption = 'Recupera'
        DataBinding.FieldName = 'BORECUPERAPIS'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 55
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvNUSTCOFINS: TcxGridDBBandedColumn
        Caption = 'Situa'#231#227'o Tribut'#225'ria'
        DataBinding.FieldName = 'NUSTCOFINS'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 700
        Properties.KeyFieldNames = 'NUSTCOFINS'
        Properties.ListColumns = <
          item
            FieldName = 'NMSTCOFINS'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 98
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvALCOFINS: TcxGridDBBandedColumn
        Caption = 'Al'#237'quota'
        DataBinding.FieldName = 'ALCOFINS'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 46
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvBORECUPERACOFINS: TcxGridDBBandedColumn
        Caption = 'Recupera'
        DataBinding.FieldName = 'BORECUPERACOFINS'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 55
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvTPREGIME: TcxGridDBBandedColumn
        Caption = 'Regime'
        DataBinding.FieldName = 'TPREGIME'
        PropertiesClassName = 'TcxRadioGroupProperties'
        Properties.Columns = 4
        Properties.DefaultValue = 'S'
        Properties.Items = <
          item
            Caption = 'D'#233'b/Cr'#233
            Value = 'D'
          end
          item
            Caption = 'Simples'
            Value = 'S'
          end
          item
            Caption = 'F'#237'sica'
            Value = 'F'
          end>
        Width = 100
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
    end
  end
  object grditregrastmva: TcxGrid
    Left = 0
    Top = 353
    Width = 1216
    Height = 200
    Align = alBottom
    TabOrder = 6
    LookAndFeel.NativeStyle = False
    object grditregrastmvaDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dtsitregrastmva
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsView.GroupByBox = False
      object grditregrastmvaDBTableView1CDUF: TcxGridDBColumn
        Caption = 'UF'
        DataBinding.FieldName = 'CDUF'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CDUF'
        Properties.ListColumns = <
          item
            FieldName = 'NMUF'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 132
      end
      object grditregrastmvaDBTableView1ALICMSSUBTRIB: TcxGridDBColumn
        Caption = 'Aliq ICMS Substitui'#231#227'o Tribut'#225'ria'
        DataBinding.FieldName = 'ALICMSSUBTRIB'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 213
      end
      object grditregrastmvaDBTableView1ALMVA: TcxGridDBColumn
        Caption = 'Al'#237'quota MVA'
        DataBinding.FieldName = 'ALMVA'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 131
      end
    end
    object grditregrastmvaLevel1: TcxGridLevel
      GridView = grditregrastmvaDBTableView1
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 345
    Width = 1216
    Height = 8
    AlignSplitter = salBottom
    Control = grditregrastmva
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
          ItemName = 'dxBarLargeButton2'
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
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM REGRAST WHERE CDEMPRESA=:CDEMPRESA AND CDREGRAST=:' +
      'CDREGRAST'
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
        Name = 'CDREGRAST'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 656
    Top = 307
    object sdsCDREGRAST: TIntegerField
      FieldName = 'CDREGRAST'
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
    object sdsNMREGRAST: TStringField
      FieldName = 'NMREGRAST'
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
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITREGRAST WHERE CDEMPRESA=:CDEMPRESA AND CDREGRAST' +
      '=:CDREGRAST'
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
        Name = 'CDREGRAST'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 659
    Top = 336
    object sdsdetailCDITREGRAST: TIntegerField
      FieldName = 'CDITREGRAST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDREGRAST: TIntegerField
      FieldName = 'CDREGRAST'
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
    object sdsdetailCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object sdsdetailNUSTIPI: TStringField
      FieldName = 'NUSTIPI'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsdetailNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsdetailNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsdetailALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsdetailBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsdetailBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsdetailBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
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
    object sdsdetailTPREGIME: TStringField
      FieldName = 'TPREGIME'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsdetailALICMSRED: TFloatField
      FieldName = 'ALICMSRED'
      ProviderFlags = [pfInUpdate]
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
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 688
    Top = 307
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    OnNewRecord = cdsNewRecord
    Left = 720
    Top = 307
    object cdsCDREGRAST: TIntegerField
      FieldName = 'CDREGRAST'
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
    object cdsNMREGRAST: TStringField
      FieldName = 'NMREGRAST'
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
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
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
    OnStateChange = dtsStateChange
    Left = 752
    Top = 307
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 784
    Top = 307
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    FieldDefs = <
      item
        Name = 'CDITREGRAST'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CDREGRAST'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CDUSUARIOI'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CDUSUARIOA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CDCOMPUTADORI'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CDCOMPUTADORA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CDCFOP'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NUSTICMS'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NUSTIPI'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NUSTPIS'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NUSTCOFINS'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ALICMS'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ALIPI'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ALPIS'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ALCOFINS'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'BORECUPERAICMS'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BORECUPERAIPI'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BORECUPERAPIS'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BORECUPERACOFINS'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TSINCLUSAO'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'TSALTERACAO'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'TPREGIME'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ALICMSRED'
        DataType = ftFloat
      end
      item
        Name = 'CDEMPRESA'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'sdsitregrastmva'
        DataType = ftDataSet
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforePost = cdsdetailBeforePost
    OnNewRecord = cdsdetailNewRecord
    Left = 720
    Top = 335
    object cdsdetailCDITREGRAST: TIntegerField
      FieldName = 'CDITREGRAST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDREGRAST: TIntegerField
      FieldName = 'CDREGRAST'
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
    object cdsdetailCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object cdsdetailNUSTIPI: TStringField
      FieldName = 'NUSTIPI'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsdetailNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsdetailNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsdetailALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsdetailBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsdetailBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsdetailBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
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
    object cdsdetailsdsitregrastmva: TDataSetField
      FieldName = 'sdsitregrastmva'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailTPREGIME: TStringField
      FieldName = 'TPREGIME'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsdetailALICMSRED: TFloatField
      FieldName = 'ALICMSRED'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 751
    Top = 335
  end
  object sdsitregrastmva: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITREGRASTMVA WHERE CDEMPRESA=:CDEMPRESA AND CDITRE' +
      'GRAST=:CDITREGRAST'
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
        Name = 'CDITREGRAST'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 659
    Top = 365
    object sdsitregrastmvaCDITREGRASTMVA: TIntegerField
      FieldName = 'CDITREGRASTMVA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitregrastmvaCDITREGRAST: TIntegerField
      FieldName = 'CDITREGRAST'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregrastmvaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregrastmvaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregrastmvaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregrastmvaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregrastmvaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregrastmvaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregrastmvaCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregrastmvaALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregrastmvaALMVA: TFloatField
      FieldName = 'ALMVA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregrastmvaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitregrastmva: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsitregrastmva
    Params = <>
    BeforePost = cdsitregrastmvaBeforePost
    OnNewRecord = cdsitregrastmvaNewRecord
    Left = 720
    Top = 364
    object cdsitregrastmvaCDITREGRASTMVA: TIntegerField
      FieldName = 'CDITREGRASTMVA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitregrastmvaCDITREGRAST: TIntegerField
      FieldName = 'CDITREGRAST'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregrastmvaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregrastmvaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregrastmvaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregrastmvaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregrastmvaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregrastmvaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregrastmvaCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregrastmvaALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregrastmvaALMVA: TFloatField
      FieldName = 'ALMVA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregrastmvaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitregrastmva: TDataSource
    DataSet = cdsitregrastmva
    Left = 751
    Top = 364
  end
  object dts2: TDataSource
    DataSet = sdsdetail
    Left = 784
    Top = 337
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <>
    UseOwnFont = False
    Left = 784
    Top = 87
  end
end

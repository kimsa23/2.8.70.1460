object frmAdntFornecedor: TfrmAdntFornecedor
  Left = 408
  Top = 116
  ClientHeight = 613
  ClientWidth = 1139
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
  object grdbaixa: TcxGrid
    Left = 0
    Top = 268
    Width = 1139
    Height = 345
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object grdbaixaDBTableView1: TcxGridDBTableView
      OnKeyDown = grdbaixaDBTableView1KeyDown
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
      OnCellDblClick = grdbaixaDBTableView1CellDblClick
      DataController.DataSource = dtsbaixa
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'CDMOVBANCARIO'
          Column = grdbaixaDBTableView1CDMOVBANCARIO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLABATIMENTO'
          Column = grdbaixaDBTableView1VLABATIMENTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLBAIXA'
          Column = grdbaixaDBTableView1VLBAIXA
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLDESCONTO'
          Column = grdbaixaDBTableView1VLDESCONTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLDEVOLUCAO'
          Column = grdbaixaDBTableView1VLDEVOLUCAO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLJURO'
          Column = grdbaixaDBTableView1VLJURO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLLIQUIDO'
          Column = grdbaixaDBTableView1VLLIQUIDO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLMULTA'
          Column = grdbaixaDBTableView1VLMULTA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object grdbaixaDBTableView1CDMOVBANCARIO: TcxGridDBColumn
        Caption = 'Cd Mov Banc'#225'rio'
        DataBinding.FieldName = 'CDMOVBANCARIO'
        Styles.Content = dtmmain.cxStyle1
        Width = 64
      end
      object grdbaixaDBTableView1NMTPBAIXA: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'NMTPBAIXA'
        Width = 65
      end
      object grdbaixaDBTableView1NUBAIXA: TcxGridDBColumn
        Caption = 'N'#250'mero'
        DataBinding.FieldName = 'NUBAIXA'
        Styles.Content = dtmmain.cxStyle1
      end
      object grdbaixaDBTableView1DTBAIXA: TcxGridDBColumn
        Caption = 'Dt Baixa'
        DataBinding.FieldName = 'DTBAIXA'
      end
      object grdbaixaDBTableView1VLMULTA: TcxGridDBColumn
        Caption = 'Multa'
        DataBinding.FieldName = 'VLMULTA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdbaixaDBTableView1VLJURO: TcxGridDBColumn
        Caption = 'Juros'
        DataBinding.FieldName = 'VLJURO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdbaixaDBTableView1VLBAIXA: TcxGridDBColumn
        Caption = 'Baixa'
        DataBinding.FieldName = 'VLBAIXA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdbaixaDBTableView1VLDESCONTO: TcxGridDBColumn
        Caption = 'Desconto'
        DataBinding.FieldName = 'VLDESCONTO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdbaixaDBTableView1VLABATIMENTO: TcxGridDBColumn
        Caption = 'Abatimento'
        DataBinding.FieldName = 'VLABATIMENTO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdbaixaDBTableView1VLDEVOLUCAO: TcxGridDBColumn
        Caption = 'Devolu'#231#227'o'
        DataBinding.FieldName = 'VLDEVOLUCAO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdbaixaDBTableView1VLLIQUIDO: TcxGridDBColumn
        Caption = 'L'#237'quido'
        DataBinding.FieldName = 'VLLIQUIDO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object grdbaixaLevel1: TcxGridLevel
      GridView = grdbaixaDBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 190
    Align = alTop
    Caption = 'Observa'#231#227'o'
    TabOrder = 1
    Height = 78
    Width = 1139
    object edtdsobservacao: TcxDBMemo
      Left = 2
      Top = 18
      Align = alClient
      DataBinding.DataField = 'DSOBSERVACAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 58
      Width = 1135
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 59
    Width = 1139
    Height = 131
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object Label3: TLabel
      Left = 629
      Top = 27
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Saldo'
      Transparent = True
    end
    object Label18: TLabel
      Left = 494
      Top = 27
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Utilizado'
      Transparent = True
    end
    object Label16: TLabel
      Left = 291
      Top = 27
      Width = 24
      Height = 13
      Caption = 'Valor'
      Transparent = True
    end
    object Label4: TLabel
      Left = 194
      Top = 27
      Width = 53
      Height = 13
      Caption = 'Dt Emiss'#227'o'
      Transparent = True
    end
    object Label2: TLabel
      Left = 95
      Top = 27
      Width = 51
      Height = 13
      Caption = 'Dt Entrada'
      Transparent = True
    end
    object Label1: TLabel
      Left = 6
      Top = 27
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label14: TLabel
      Left = 182
      Top = 69
      Width = 26
      Height = 13
      Caption = 'Baixa'
      Transparent = True
    end
    object Label6: TLabel
      Left = 7
      Top = 71
      Width = 97
      Height = 13
      Caption = 'Movimento Banc'#225'rio'
      Transparent = True
    end
    object lblfornecedor: TLabel
      Left = 5
      Top = 91
      Width = 65
      Height = 13
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblfornecedorDblClick
    end
    object Label24: TLabel
      Left = 5
      Top = 112
      Width = 41
      Height = 13
      Caption = 'Hist'#243'rico'
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 0
      Top = 23
      Width = 1139
      Height = 43
      Align = alTop
      ExplicitWidth = 1000
    end
    object lblnmfornecedor: TDBText
      Left = 173
      Top = 91
      Width = 493
      Height = 17
      DataField = 'NMFORNECEDOR'
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
    end
    object txtcdfornecedor: TDBText
      Left = 73
      Top = 91
      Width = 95
      Height = 17
      DataField = 'CDFORNECEDOR'
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
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtvlsaldo: TcxDBCalcEdit
      Left = 537
      Top = 41
      DataBinding.DataField = 'VLSALDO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnKeyPress = nextcontrol
      Width = 121
    end
    object edtvlutilizado: TcxDBCalcEdit
      Left = 415
      Top = 41
      DataBinding.DataField = 'VLUTILIZADO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 121
    end
    object edtVLADNTFORNECEDOR: TcxDBCalcEdit
      Left = 293
      Top = 41
      DataBinding.DataField = 'VLADNTFORNECEDOR'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnKeyPress = nextcontrol
      Width = 121
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 194
      Top = 41
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnKeyPress = nextcontrol
      Width = 98
    end
    object edtdtentrada: TcxDBDateEdit
      Left = 95
      Top = 41
      DataBinding.DataField = 'DTENTRADA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnKeyPress = nextcontrol
      Width = 98
    end
    object edtCODIGO: TcxTextEdit
      Left = 4
      Top = 41
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = edtCODIGOEnter
      OnKeyDown = edtCODIGOKeyDown
      OnKeyPress = edtCODIGOKeyPress
      Width = 88
    end
    object cxDBLabel3: TcxDBLabel
      Left = 235
      Top = 68
      DataBinding.DataField = 'DTBAIXA'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 121
    end
    object cxDBLabel2: TcxDBLabel
      Left = 109
      Top = 69
      DataBinding.DataField = 'CDMOVBANCARIO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      OnClick = cxDBLabel2Click
      Height = 17
      Width = 65
    end
    object edtdshistorico: TcxDBTextEdit
      Left = 71
      Top = 108
      DataBinding.DataField = 'DSHISTORICO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnKeyPress = nextcontrol
      Width = 595
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 784
    Top = 145
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
    object actAbrirFornecedor: TAction
      Hint = 'fornecedor'
      ImageIndex = 36
      OnExecute = actAbrirFornecedorExecute
    end
    object actabrirmovbancario: TAction
      Hint = 'movbancario'
      ImageIndex = 18
      OnExecute = actabrirmovbancarioExecute
    end
    object actabrirmovbancariobaixa: TAction
      Hint = 'movbancario'
      ImageIndex = 18
      OnExecute = actabrirmovbancariobaixaExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actabrirautpagto: TAction
      Hint = 'autpagto'
      OnExecute = actabrirautpagtoExecute
    end
  end
  object sdsbaixa: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT B.*,NMTPBAIXA FROM BAIXA B'#13#10'LEFT JOIN TPBAIXA T ON T.CDTP' +
      'BAIXA=B.CDTPBAIXA'#13#10'WHERE CDMOVBANCARIO IS NULL '#13#10'AND CDEMPRESA=:' +
      'CDEMPRESA '#13#10'AND CDADNTFORNECEDOR = :CDADNTFORNECEDOR '#13#10'ORDER BY ' +
      'DTBAIXA'
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
        Name = 'CDADNTFORNECEDOR'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 812
    Top = 198
    object sdsbaixaCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = []
    end
    object sdsbaixaNMTPBAIXA: TStringField
      FieldName = 'NMTPBAIXA'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaNUBAIXA: TStringField
      FieldName = 'NUBAIXA'
      ProviderFlags = []
      Size = 10
    end
    object sdsbaixaDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = []
    end
    object sdsbaixaVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaCDBAIXA: TIntegerField
      FieldName = 'CDBAIXA'
      ProviderFlags = []
      Required = True
    end
    object sdsbaixaCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
      ProviderFlags = []
    end
    object sdsbaixaCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = []
    end
    object sdsbaixaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsbaixaCDTPBAIXA: TIntegerField
      FieldName = 'CDTPBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDADNTCLIENTE: TIntegerField
      FieldName = 'CDADNTCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDCHEQUE: TIntegerField
      FieldName = 'CDCHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaCDADNTCLIENTEDESTINO: TIntegerField
      FieldName = 'CDADNTCLIENTEDESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaVLJURONRECEBIDO: TFMTBCDField
      FieldName = 'VLJURONRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsbaixaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsbaixaPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT A.*,F.NMFORNECEDOR FROM ADNTFORNECEDOR A LEFT JOIN FORNEC' +
      'EDOR F ON F.CDEMPRESA=A.CDEMPRESA AND A.CDFORNECEDOR=F.CDFORNECE' +
      'DOR WHERE A.CDEMPRESA=:CDEMPRESA AND A.CDADNTFORNECEDOR=:CDADNTF' +
      'ORNECEDOR'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDADNTFORNECEDOR'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 812
    Top = 147
    object sdsCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
      Required = True
    end
    object sdsCDSTADNTFORNECEDOR: TIntegerField
      FieldName = 'CDSTADNTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLADNTFORNECEDOR: TFMTBCDField
      FieldName = 'VLADNTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLUTILIZADO: TFMTBCDField
      FieldName = 'VLUTILIZADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
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
    object sdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 840
    Top = 147
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    ReadOnly = True
    BeforePost = cdsBeforePost
    OnNewRecord = cdsNewRecord
    Left = 868
    Top = 147
    object cdsCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
      Required = True
    end
    object cdsCDSTADNTFORNECEDOR: TIntegerField
      FieldName = 'CDSTADNTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Required = True
    end
    object cdsDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object cdsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object cdsVLADNTFORNECEDOR: TFMTBCDField
      FieldName = 'VLADNTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLUTILIZADO: TFMTBCDField
      FieldName = 'VLUTILIZADO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Precision = 15
      Size = 2
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdssdsbaixa: TDataSetField
      FieldName = 'sdsbaixa'
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
    object cdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object cdsbaixa: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsbaixa
    Params = <>
    Left = 867
    Top = 199
    object cdsbaixaCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = []
    end
    object cdsbaixaNMTPBAIXA: TStringField
      FieldName = 'NMTPBAIXA'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaNUBAIXA: TStringField
      FieldName = 'NUBAIXA'
      ProviderFlags = []
      Size = 10
    end
    object cdsbaixaDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = []
    end
    object cdsbaixaVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaCDBAIXA: TIntegerField
      FieldName = 'CDBAIXA'
      ProviderFlags = []
      Required = True
    end
    object cdsbaixaCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
      ProviderFlags = []
    end
    object cdsbaixaCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = []
    end
    object cdsbaixaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsbaixaCDTPBAIXA: TIntegerField
      FieldName = 'CDTPBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaCDADNTCLIENTE: TIntegerField
      FieldName = 'CDADNTCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaCDCHEQUE: TIntegerField
      FieldName = 'CDCHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaCDADNTCLIENTEDESTINO: TIntegerField
      FieldName = 'CDADNTCLIENTEDESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaVLJURONRECEBIDO: TFMTBCDField
      FieldName = 'VLJURONRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsbaixaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsbaixaPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dtsbaixa: TDataSource
    DataSet = cdsbaixa
    Left = 896
    Top = 198
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 896
    Top = 147
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 924
    Top = 147
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
    Left = 1048
    Top = 144
    DockControlHeights = (
      0
      0
      59
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'adntfornecedor'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 392
      FloatTop = 299
      FloatClientWidth = 62
      FloatClientHeight = 494
      ItemLinks = <
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
      BorderStyle = bbsNone
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
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <>
    UseOwnFont = False
    Left = 984
    Top = 147
  end
end

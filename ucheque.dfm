object frmcheque: Tfrmcheque
  Left = 556
  Top = 159
  ClientHeight = 430
  ClientWidth = 759
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
    Width = 759
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 1
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lbldtemissao: TLabel
      Left = 92
      Top = 1
      Width = 53
      Height = 13
      Caption = 'Dt Emiss'#227'o'
      Transparent = True
    end
    object lbldtentrada: TLabel
      Left = 176
      Top = 1
      Width = 51
      Height = 13
      Caption = 'Dt Entrada'
      Transparent = True
    end
    object lbldtvencimento: TLabel
      Left = 261
      Top = 1
      Width = 70
      Height = 13
      Caption = 'Dt Vencimento'
      Transparent = True
    end
    object lbldtprorrogacao: TLabel
      Left = 345
      Top = 1
      Width = 72
      Height = 13
      Caption = 'Dt Prorroga'#231#227'o'
      Transparent = True
    end
    object lblstcheque: TLabel
      Left = 427
      Top = 1
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lblbancodevolucao: TLabel
      Left = 594
      Top = 1
      Width = 86
      Height = 13
      Caption = 'Banco Devolu'#231#227'o'
      Transparent = True
    end
    object lbldsbancodevolucao: TLabel
      Left = 594
      Top = 18
      Width = 103
      Height = 16
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 4
      Top = 15
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCODIGOEnter
      OnKeyDown = edtCODIGOKeyDown
      OnKeyPress = edtCODIGOKeyPress
      Width = 84
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 92
      Top = 15
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
    object edtdtentrada: TcxDBDateEdit
      Left = 176
      Top = 15
      DataBinding.DataField = 'DTENTRADA'
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
    object edtdtvencimento: TcxDBDateEdit
      Left = 261
      Top = 15
      DataBinding.DataField = 'DTVENCIMENTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 84
    end
    object edtdtprorrogacao: TcxDBDateEdit
      Left = 345
      Top = 15
      DataBinding.DataField = 'DTPRORROGACAO'
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
    object cbxcdstcheque: TcxDBLookupComboBox
      Left = 428
      Top = 15
      DataBinding.DataField = 'CDSTCHEQUE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDSTCHEQUE'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTCHEQUE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 145
    end
  end
  object pnl: TcxLabel
    Left = 0
    Top = 63
    Align = alTop
    Caption = 'Cheque'
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
  object gbxemitente: TcxGroupBox
    Left = 0
    Top = 161
    Align = alTop
    Caption = 'Emitente'
    TabOrder = 2
    Height = 64
    Width = 759
    object Label14: TLabel
      Left = 4
      Top = 22
      Width = 29
      Height = 13
      Caption = 'Titular'
      Transparent = True
    end
    object Label15: TLabel
      Left = 447
      Top = 22
      Width = 52
      Height = 13
      Caption = 'CNPJ/CPF'
      Transparent = True
    end
    object Label17: TLabel
      Left = 4
      Top = 44
      Width = 29
      Height = 13
      Caption = 'Titular'
      Transparent = True
    end
    object Label18: TLabel
      Left = 447
      Top = 44
      Width = 52
      Height = 13
      Caption = 'CNPJ/CPF'
      Transparent = True
    end
    object edtnucpfcnpj2: TcxDBMaskEdit
      Left = 501
      Top = 38
      DataBinding.DataField = 'NUCPFCNPJ2'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 134
    end
    object edtnucpfcnpj: TcxDBMaskEdit
      Left = 501
      Top = 16
      DataBinding.DataField = 'NUCPFCNPJ'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 134
    end
    object edtnmemitente2: TcxDBTextEdit
      Left = 48
      Top = 38
      DataBinding.DataField = 'NMEMITENTE2'
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
      Width = 309
    end
    object edtnmemitente: TcxDBTextEdit
      Left = 48
      Top = 16
      DataBinding.DataField = 'NMEMITENTE'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 309
    end
    object rdgtppessoa: TcxDBRadioGroup
      Left = 360
      Top = 9
      Caption = 'Tipo Pessoa'
      DataBinding.DataField = 'TPPESSOA'
      DataBinding.DataSource = dts
      Properties.Items = <
        item
          Caption = 'F'#237'sica'
          Value = 'F'
        end
        item
          Caption = 'Jur'#237'dica'
          Value = 'J'
        end>
      Properties.OnChange = rdgtppessoaPropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Height = 48
      Width = 83
    end
  end
  object gbxcliente: TcxGroupBox
    Left = 0
    Top = 126
    Align = alTop
    Caption = 'Cliente'
    TabOrder = 1
    Height = 35
    Width = 759
    object lblcodigocliente: TLabel
      Left = 4
      Top = 17
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lblNMCLIENTE: TDBText
      Left = 152
      Top = 12
      Width = 421
      Height = 17
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
    end
    object edtcdcliente: TcxDBButtonEdit
      Left = 50
      Top = 9
      DataBinding.DataField = 'CDCLIENTE'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdclientePropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = edtcdclienteExit
      OnKeyDown = edtcdclienteKeyDown
      OnKeyPress = eventokeypress
      Width = 99
    end
  end
  object gbxconta: TcxGroupBox
    Left = 0
    Top = 225
    Align = alTop
    Caption = 'Conta'
    TabOrder = 3
    Height = 40
    Width = 759
    object Label8: TLabel
      Left = 4
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Banco'
      Transparent = True
    end
    object Label21: TLabel
      Left = 324
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Ag'#234'ncia'
      Transparent = True
    end
    object Label9: TLabel
      Left = 442
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Conta'
      Transparent = True
    end
    object Label10: TLabel
      Left = 549
      Top = 16
      Width = 15
      Height = 13
      Caption = 'N'#186' '
      Transparent = True
    end
    object cbxcdbanco: TcxDBLookupComboBox
      Left = 48
      Top = 12
      DataBinding.DataField = 'CDBANCO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDBANCO'
      Properties.ListColumns = <
        item
          FieldName = 'NMBANCO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 270
    end
    object edtnucheque: TcxDBTextEdit
      Left = 567
      Top = 12
      DataBinding.DataField = 'NUCHEQUE'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 71
    end
    object edtnucontacorrente: TcxDBTextEdit
      Left = 475
      Top = 12
      DataBinding.DataField = 'NUCONTACORRENTE'
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
      Width = 71
    end
    object edtnuagencia: TcxDBTextEdit
      Left = 368
      Top = 12
      DataBinding.DataField = 'NUAGENCIA'
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
      Width = 71
    end
  end
  object gbxvalor: TcxGroupBox
    Left = 0
    Top = 265
    Align = alTop
    Caption = 'Valor'
    TabOrder = 4
    Height = 34
    Width = 759
    object Label16: TLabel
      Left = 4
      Top = 19
      Width = 37
      Height = 13
      Caption = 'Cheque'
      Transparent = True
    end
    object Label7: TLabel
      Left = 202
      Top = 19
      Width = 27
      Height = 13
      Caption = 'Saldo'
      Transparent = True
    end
    object edtvlsaldo: TcxDBCalcEdit
      Left = 258
      Top = 11
      DataBinding.DataField = 'VLSALDO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 134
    end
    object edtvlcheque: TcxDBCalcEdit
      Left = 58
      Top = 11
      DataBinding.DataField = 'VLCHEQUE'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 134
    end
  end
  object memdsobservacao: TcxDBMemo
    Left = 0
    Top = 299
    Align = alClient
    DataBinding.DataField = 'DSOBSERVACAO'
    DataBinding.DataSource = dts
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    OnEnter = colorenter
    OnExit = colorexit
    Height = 131
    Width = 759
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 464
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
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
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
    Left = 722
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
      Caption = 'cheque'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 240
      FloatTop = 96
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
      FloatLeft = 235
      FloatTop = 192
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
  object dts: TDataSource
    DataSet = qry
    OnStateChange = dtsStateChange
    Left = 702
    Top = 116
  end
  object qry: TFDQuery
    AfterOpen = qryAfterOpen
    BeforePost = qryBeforePost
    AfterScroll = qryAfterScroll
    OnNewRecord = qryNewRecord
    Connection = dtmmain.confire
    SQL.Strings = (
      'SELECT H.*,C.NMCLIENTE'
      'FROM CHEQUE H '
      
        'LEFT JOIN CLIENTE C ON C.CDEMPRESA=H.CDEMPRESA AND C.CDCLIENTE=H' +
        '.CDCLIENTE'
      'WHERE H.CDEMPRESA=:CDEMPRESA AND H.CDCHEQUE=:CDCHEQUE')
    Left = 608
    Top = 110
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CDCHEQUE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end

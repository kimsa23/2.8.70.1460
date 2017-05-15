object frmativopiscofins: Tfrmativopiscofins
  Left = 379
  Top = 81
  ClientHeight = 481
  ClientWidth = 938
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
  object bvl1: TBevel
    Left = 0
    Top = 128
    Width = 938
    Height = 169
    Align = alTop
    ExplicitWidth = 784
  end
  object grddetail: TcxGrid
    Left = 0
    Top = 297
    Width = 938
    Height = 184
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
      DataController.DataSource = dtsdetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLBASECOFINS'
          Column = grddetailDBTableView1VLBASECOFINS
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLBASEPIS'
          Column = grddetailDBTableView1VLBASEPIS
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLCOFINS'
          Column = grddetailDBTableView1VLCOFINS
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLDEDUCAO'
          Column = grddetailDBTableView1VLDEDUCAO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLENTRADA'
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLPIS'
          Column = grddetailDBTableView1VLPIS
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grddetailDBTableView1CDLP1A: TcxGridDBColumn
        Caption = 'Livro'
        DataBinding.FieldName = 'CDLP1A'
        Width = 49
      end
      object grddetailDBTableView1DTINICIO: TcxGridDBColumn
        Caption = 'In'#237'cio'
        DataBinding.FieldName = 'DTINICIO'
      end
      object grddetailDBTableView1DTFINAL: TcxGridDBColumn
        Caption = 'Final'
        DataBinding.FieldName = 'DTFINAL'
      end
      object grddetailDBTableView1NUPARCELA: TcxGridDBColumn
        Caption = 'Parcela'
        DataBinding.FieldName = 'NUPARCELA'
        Width = 44
      end
      object grddetailDBTableView1VLDEDUCAO: TcxGridDBColumn
        Caption = 'Dedu'#231#227'o'
        DataBinding.FieldName = 'VLDEDUCAO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 80
      end
      object grddetailDBTableView1VLSALDO: TcxGridDBColumn
        Caption = 'Saldo'
        DataBinding.FieldName = 'VLSALDO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 80
      end
      object grddetailDBTableView1VLBASEPIS: TcxGridDBColumn
        Caption = 'Base PIS'
        DataBinding.FieldName = 'VLBASEPIS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 80
      end
      object grddetailDBTableView1VLPIS: TcxGridDBColumn
        Caption = 'Valor PIS'
        DataBinding.FieldName = 'VLPIS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 80
      end
      object grddetailDBTableView1VLBASECOFINS: TcxGridDBColumn
        Caption = 'Base Cofins'
        DataBinding.FieldName = 'VLBASECOFINS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 80
      end
      object grddetailDBTableView1VLCOFINS: TcxGridDBColumn
        Caption = 'Valor COFINS'
        DataBinding.FieldName = 'VLCOFINS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 80
      end
    end
    object grddetailLevel1: TcxGridLevel
      GridView = grddetailDBTableView1
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
    Style.Font.Height = -17
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object pnltopp: TPanel
    Left = 0
    Top = 86
    Width = 938
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 0
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 70
      Top = 0
      Width = 37
      Height = 13
      Caption = 'Produto'
      Transparent = True
    end
    object txtnmproduto: TDBText
      Left = 172
      Top = 17
      Width = 190
      Height = 17
      DataField = 'NMPRODUTO'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = txtnmprodutoDblClick
    end
    object Label2: TLabel
      Left = 364
      Top = 0
      Width = 23
      Height = 13
      Caption = 'Nota'
      Transparent = True
    end
    object Label4: TLabel
      Left = 449
      Top = 1
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object lbl1: TLabel
      Left = 541
      Top = 2
      Width = 54
      Height = 13
      Caption = 'Fornecedor'
      Transparent = True
    end
    object txtnmfornecedor: TDBText
      Left = 663
      Top = 17
      Width = 190
      Height = 17
      DataField = 'NMFORNECEDOR'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = txtnmfornecedorDblClick
    end
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 14
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnExit = colorexit
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 66
    end
    object edtcdproduto: TcxDBButtonEdit
      Left = 73
      Top = 13
      DataBinding.DataField = 'CDPRODUTO'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdprodutoPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = edtcdprodutoExit
      OnKeyDown = edtcdprodutoKeyDown
      Width = 98
    end
    object edtnudocumento: TcxDBTextEdit
      Left = 364
      Top = 14
      DataBinding.DataField = 'NUDOCUMENTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 82
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 449
      Top = 14
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 90
    end
    object edtcdfornecedor: TcxDBButtonEdit
      Left = 541
      Top = 14
      DataBinding.DataField = 'CDFORNECEDOR'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdfornecedorPropertiesButtonClick
      Properties.OnChange = edtcdfornecedorPropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = edtcdfornecedorExit
      OnKeyDown = edtcdfornecedorKeyDown
      Width = 121
    end
  end
  object gbxconfiguracao: TcxGroupBox
    Left = 5
    Top = 130
    Caption = 'PIS'
    TabOrder = 1
    Height = 59
    Width = 388
    object Label5: TLabel
      Left = 5
      Top = 20
      Width = 89
      Height = 13
      Caption = 'Situa'#231#227'o Tribut'#225'ria'
      Transparent = True
    end
    object Label11: TLabel
      Left = 5
      Top = 39
      Width = 40
      Height = 13
      Caption = 'Al'#237'quota'
      Transparent = True
    end
    object cbxnustpis: TcxDBLookupComboBox
      Left = 98
      Top = 13
      DataBinding.DataField = 'NUSTPIS'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'NUSTPIS'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTPIS'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 286
    end
    object edtalpis: TcxDBCalcEdit
      Left = 98
      Top = 33
      DataBinding.DataField = 'ALPIS'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 286
    end
  end
  object gbxtributacao: TcxGroupBox
    Left = 395
    Top = 130
    Caption = 'COFINS'
    TabOrder = 2
    Height = 59
    Width = 388
    object Label6: TLabel
      Left = 5
      Top = 20
      Width = 89
      Height = 13
      Caption = 'Situa'#231#227'o Tribut'#225'ria'
      Transparent = True
    end
    object Label12: TLabel
      Left = 5
      Top = 39
      Width = 40
      Height = 13
      Caption = 'Al'#237'quota'
      Transparent = True
    end
    object cbxnustcofins: TcxDBLookupComboBox
      Left = 98
      Top = 13
      DataBinding.DataField = 'NUSTCOFINS'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'NUSTCOFINS'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTCOFINS'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 286
    end
    object edtalcofins: TcxDBCalcEdit
      Left = 98
      Top = 33
      DataBinding.DataField = 'ALCOFINS'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 286
    end
  end
  object gbxpdv: TcxGroupBox
    Left = 5
    Top = 190
    Caption = 'Valores'
    TabOrder = 3
    Height = 104
    Width = 388
    object lbl2: TLabel
      Left = 5
      Top = 22
      Width = 37
      Height = 13
      Caption = 'Entrada'
      Transparent = True
    end
    object lbl3: TLabel
      Left = 197
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Saldo'
      Transparent = True
    end
    object lbl4: TLabel
      Left = 5
      Top = 43
      Width = 44
      Height = 13
      Caption = 'Dedu'#231#227'o'
      Transparent = True
    end
    object lbl5: TLabel
      Left = 197
      Top = 43
      Width = 63
      Height = 13
      Caption = 'Parcela Atual'
      Transparent = True
    end
    object lblinicio: TLabel
      Left = 5
      Top = 84
      Width = 27
      Height = 13
      Caption = 'In'#237'cio'
      Transparent = True
    end
    object lbl6: TLabel
      Left = 196
      Top = 84
      Width = 38
      Height = 13
      Caption = 'T'#233'rmino'
      Transparent = True
    end
    object lbl7: TLabel
      Left = 197
      Top = 22
      Width = 61
      Height = 13
      Caption = 'Qtd Parcelas'
      Transparent = True
    end
    object edtvlentrada: TcxDBCurrencyEdit
      Left = 73
      Top = 16
      DataBinding.DataField = 'VLENTRADA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtvlsaldo: TcxDBCurrencyEdit
      Left = 265
      Top = 58
      DataBinding.DataField = 'VLSALDO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtvldeducao: TcxDBCurrencyEdit
      Left = 73
      Top = 37
      DataBinding.DataField = 'VLDEDUCAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtnuparcela: TcxDBSpinEdit
      Left = 265
      Top = 37
      DataBinding.DataField = 'NUPARCELA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtdtinicio: TcxDBDateEdit
      Left = 73
      Top = 79
      DataBinding.DataField = 'DTINICIO'
      DataBinding.DataSource = dts
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edttermino: TcxDBDateEdit
      Left = 265
      Top = 79
      DataBinding.DataField = 'DTTERMINO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtqtparcela: TcxDBSpinEdit
      Left = 265
      Top = 16
      DataBinding.DataField = 'QTPARCELA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
  end
  object gbxcfop: TcxGroupBox
    Left = 396
    Top = 190
    Caption = 'Configura'#231#227'o'
    TabOrder = 4
    Height = 104
    Width = 388
    object lblmodelo: TLabel
      Left = 4
      Top = 85
      Width = 153
      Height = 13
      Caption = 'Utiliza'#231#227'o dos Bens Incorporado'
      Transparent = True
    end
    object Label17: TLabel
      Left = 4
      Top = 64
      Width = 117
      Height = 13
      Caption = 'Origem Bem Incorporado'
      Transparent = True
    end
    object Label7: TLabel
      Left = 4
      Top = 42
      Width = 181
      Height = 13
      Caption = 'Bens Incorporado ao Ativo Imobilizado'
      Transparent = True
    end
    object Label8: TLabel
      Left = 4
      Top = 20
      Width = 98
      Height = 13
      Caption = 'Base C'#225'lculo Cr'#233'dito'
      Transparent = True
    end
    object cbxcdbccalculocredito: TcxDBLookupComboBox
      Left = 186
      Top = 12
      DataBinding.DataField = 'CDBCCALCULOCREDITO'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 700
      Properties.KeyFieldNames = 'CDBCCALCULOCREDITO'
      Properties.ListColumns = <
        item
          FieldName = 'NMBCCALCULOCREDITO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 198
    end
    object cbxcdpiscofinsbemativo: TcxDBLookupComboBox
      Left = 186
      Top = 34
      DataBinding.DataField = 'CDPISCOFINSBEMATIVO'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 350
      Properties.KeyFieldNames = 'CDPISCOFINSBEMATIVO'
      Properties.ListColumns = <
        item
          FieldName = 'NMPISCOFINSBEMATIVO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 198
    end
    object cbxcdpiscofinsbemorigem: TcxDBLookupComboBox
      Left = 186
      Top = 56
      DataBinding.DataField = 'CDPISCOFINSBEMORIGEM'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDPISCOFINSBEMORIGEM'
      Properties.ListColumns = <
        item
          FieldName = 'NMPISCOFINSBEMORIGEM'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 198
    end
    object cbxcdpiscofinsbemutilizacao: TcxDBLookupComboBox
      Left = 186
      Top = 77
      DataBinding.DataField = 'CDPISCOFINSBEMUTILIZACAO'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 275
      Properties.KeyFieldNames = 'CDPISCOFINSBEMUTILIZACAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMPISCOFINSBEMUTILIZACAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 198
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 590
    Top = 28
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
    object actabrirfornecedor: TAction
      Caption = 'actabrirfornecedor'
      Hint = 'fornecedor'
      OnExecute = actabrirfornecedorExecute
    end
    object actabrirproduto: TAction
      Caption = 'actabrirproduto'
      Hint = 'produto'
      OnExecute = actabrirprodutoExecute
    end
    object actajustar: TAction
      Caption = 'Ajustar'
      OnExecute = actajustarExecute
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT A.*,F.NMFORNECEDOR,P.NMPRODUTO FROM ATIVOPISCOFINS A LEFT' +
      ' JOIN PRODUTO P ON P.CDPRODUTO=A.CDPRODUTO AND P.CDEMPRESA=A.CDE' +
      'MPRESA LEFT JOIN FORNECEDOR F ON F.CDFORNECEDOR=A.CDFORNECEDOR A' +
      'ND F.CDEMPRESA=A.CDEMPRESA WHERE A.CDEMPRESA=:CDEMPRESA AND A.CD' +
      'ATIVOPISCOFINS=:CDATIVOPISCOFINS'
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
        Name = 'CDATIVOPISCOFINS'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 618
    Top = 28
    object sdsCDATIVOPISCOFINS: TIntegerField
      FieldName = 'CDATIVOPISCOFINS'
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
    object sdsCDEMPRESA: TFMTBCDField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 15
      Size = 0
    end
    object sdsCDBCCALCULOCREDITO: TStringField
      FieldName = 'CDBCCALCULOCREDITO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsCDPISCOFINSBEMATIVO: TStringField
      FieldName = 'CDPISCOFINSBEMATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsCDPISCOFINSBEMORIGEM: TIntegerField
      FieldName = 'CDPISCOFINSBEMORIGEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
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
    object sdsNUPARCELA: TIntegerField
      FieldName = 'NUPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPISCOFINSBEMUTILIZACAO: TIntegerField
      FieldName = 'CDPISCOFINSBEMUTILIZACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLENTRADA: TFMTBCDField
      FieldName = 'VLENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsQTPARCELA: TIntegerField
      FieldName = 'QTPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDFORNECEDOR: TFMTBCDField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 0
    end
    object sdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 646
    Top = 28
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    OnNewRecord = cdsNewRecord
    Left = 674
    Top = 28
    object cdsCDATIVOPISCOFINS: TIntegerField
      FieldName = 'CDATIVOPISCOFINS'
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
    object cdsCDEMPRESA: TFMTBCDField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 15
      Size = 0
    end
    object cdsCDBCCALCULOCREDITO: TStringField
      FieldName = 'CDBCCALCULOCREDITO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsCDPISCOFINSBEMATIVO: TStringField
      FieldName = 'CDPISCOFINSBEMATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsCDPISCOFINSBEMORIGEM: TIntegerField
      FieldName = 'CDPISCOFINSBEMORIGEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDPRODUTOValidate
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
    object cdsNUPARCELA: TIntegerField
      FieldName = 'NUPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPISCOFINSBEMUTILIZACAO: TIntegerField
      FieldName = 'CDPISCOFINSBEMUTILIZACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDTEMISSAOValidate
    end
    object cdsVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLENTRADA: TFMTBCDField
      FieldName = 'VLENTRADA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDTEMISSAOValidate
      Precision = 15
      Size = 2
    end
    object cdsQTPARCELA: TIntegerField
      FieldName = 'QTPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsDTEMISSAOValidate
    end
    object cdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDFORNECEDOR: TFMTBCDField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDFORNECEDORValidate
      Precision = 15
      Size = 0
    end
    object cdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = []
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 702
    Top = 28
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
    Left = 562
    Top = 28
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
      Caption = 'tpsaida'
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
          ItemName = 'dxBarButton1'
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
    object dxBarButton1: TdxBarButton
      Action = actajustar
      Category = 0
    end
  end
  object dts1: TDataSource
    DataSet = sds
    OnStateChange = dtsStateChange
    Left = 730
    Top = 28
  end
  object sdsdetail: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT A.*,L.DTINICIO,L.DTFINAL '#13#10'FROM LP1AATIVOPISCOFINS A LEFT' +
      ' JOIN LP1A L ON L.CDLP1A=A.CDLP1A AND L.CDEMPRESA=A.CDEMPRESA WH' +
      'ERE A.CDEMPRESA=:CDEMPRESA AND A.CDATIVOPISCOFINS=:CDATIVOPISCOF' +
      'INS'
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
        Name = 'CDATIVOPISCOFINS'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 618
    Top = 56
    object sdsdetailCDLP1AATIVOPISCOFINS: TIntegerField
      FieldName = 'CDLP1AATIVOPISCOFINS'
      Required = True
    end
    object sdsdetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Required = True
    end
    object sdsdetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Required = True
    end
    object sdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Required = True
    end
    object sdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      Required = True
    end
    object sdsdetailCDEMPRESA: TFMTBCDField
      FieldName = 'CDEMPRESA'
      Precision = 15
      Size = 0
    end
    object sdsdetailCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      Required = True
    end
    object sdsdetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Required = True
    end
    object sdsdetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Required = True
    end
    object sdsdetailNUPARCELA: TIntegerField
      FieldName = 'NUPARCELA'
      Required = True
    end
    object sdsdetailVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      Precision = 15
      Size = 2
    end
    object sdsdetailCDATIVOPISCOFINS: TIntegerField
      FieldName = 'CDATIVOPISCOFINS'
      Required = True
    end
    object sdsdetailDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object sdsdetailDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsBeforePost
    OnNewRecord = cdsNewRecord
    Left = 674
    Top = 56
    object cdsdetailCDLP1AATIVOPISCOFINS: TIntegerField
      FieldName = 'CDLP1AATIVOPISCOFINS'
      Required = True
    end
    object cdsdetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Required = True
    end
    object cdsdetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Required = True
    end
    object cdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Required = True
    end
    object cdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      Required = True
    end
    object cdsdetailCDEMPRESA: TFMTBCDField
      FieldName = 'CDEMPRESA'
      Precision = 15
      Size = 0
    end
    object cdsdetailCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      Required = True
    end
    object cdsdetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Required = True
    end
    object cdsdetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Required = True
    end
    object cdsdetailNUPARCELA: TIntegerField
      FieldName = 'NUPARCELA'
      Required = True
    end
    object cdsdetailVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      Precision = 15
      Size = 2
    end
    object cdsdetailCDATIVOPISCOFINS: TIntegerField
      FieldName = 'CDATIVOPISCOFINS'
      Required = True
    end
    object cdsdetailDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsdetailDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsdetailVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    OnStateChange = dtsStateChange
    Left = 703
    Top = 56
  end
end

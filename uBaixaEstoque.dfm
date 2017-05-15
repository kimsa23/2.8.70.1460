object frmBaixaEstoque: TfrmBaixaEstoque
  Left = 385
  Top = 230
  BorderStyle = bsDialog
  Caption = 'Baixa Estoque'
  ClientHeight = 320
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 4
    Top = 8
    Width = 557
    Height = 274
    Shape = bsFrame
  end
  object lblcntcusto: TLabel
    Left = 8
    Top = 112
    Width = 61
    Height = 13
    Caption = 'Centro Custo'
    Transparent = True
  end
  object Label1: TLabel
    Left = 8
    Top = 65
    Width = 37
    Height = 13
    Caption = 'Produto'
    Transparent = True
  end
  object lbllote: TLabel
    Left = 8
    Top = 89
    Width = 21
    Height = 13
    Caption = 'Lote'
    Transparent = True
    Visible = False
  end
  object lblqtitem: TLabel
    Left = 8
    Top = 134
    Width = 55
    Height = 13
    Caption = 'Quantidade'
    Transparent = True
  end
  object Label6: TLabel
    Left = 8
    Top = 45
    Width = 21
    Height = 13
    Caption = 'Tipo'
    Transparent = True
  end
  object lblqtestoque: TLabel
    Left = 206
    Top = 131
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblestoque: TLabel
    Left = 160
    Top = 130
    Width = 39
    Height = 13
    Caption = 'Estoque'
    Transparent = True
  end
  object Label3: TLabel
    Left = 8
    Top = 22
    Width = 23
    Height = 13
    Caption = 'Data'
    Transparent = True
  end
  object lblnmunidade: TLabel
    Left = 498
    Top = 65
    Width = 38
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 453
    Top = 65
    Width = 40
    Height = 13
    Caption = 'Unidade'
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 173
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
    Transparent = True
  end
  object lblvlunitario: TLabel
    Left = 8
    Top = 156
    Width = 63
    Height = 13
    Caption = 'Valor Unit'#225'rio'
    Transparent = True
    Visible = False
  end
  object lblQTESTOQUE2: TLabel
    Left = 499
    Top = 131
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblESTOQUE2: TLabel
    Left = 453
    Top = 130
    Width = 39
    Height = 13
    Caption = 'Estoque'
    Transparent = True
    Visible = False
  end
  object lblQTITEM2: TLabel
    Left = 298
    Top = 134
    Width = 64
    Height = 13
    Caption = 'Quantidade 2'
    Transparent = True
    Visible = False
  end
  object lblnmproduto: TLabel
    Left = 163
    Top = 64
    Width = 283
    Height = 13
    AutoSize = False
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object cbxcditlote: TcxComboBox
    Left = 71
    Top = 81
    Properties.DropDownListStyle = lsFixedList
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Visible = False
    OnEnter = colorenter
    OnExit = colorexit
    OnKeyPress = cbxcditloteKeyPress
    Width = 88
  end
  object edtcdproduto: TcxButtonEdit
    Left = 71
    Top = 59
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
    OnExit = edtcdprodutoExit
    OnKeyDown = edtcdprodutoKeyDown
    OnKeyPress = edtcdprodutoKeyPress
    Width = 88
  end
  object edtdtbaixa: TcxDateEdit
    Left = 71
    Top = 14
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 11
    OnEnter = colorenter
    OnExit = edtdtbaixaExit
    OnKeyPress = nextcontrol
    Width = 88
  end
  object ckbinsercao: TcxCheckBox
    Left = 416
    Top = 291
    Caption = 'Continuar inser'#231#227'o'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 10
    Transparent = True
  end
  object btncancelar: TcxButton
    Left = 287
    Top = 287
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    LookAndFeel.NativeStyle = False
    TabOrder = 9
    OnClick = btncancelarClick
  end
  object btnok: TcxButton
    Left = 207
    Top = 287
    Width = 75
    Height = 25
    Caption = '&Ok'
    LookAndFeel.NativeStyle = False
    TabOrder = 8
    OnClick = btnokClick
  end
  object edtqtitem: TcxCalcEdit
    Left = 71
    Top = 126
    EditValue = 0.000000000000000000
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',0.#######'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    OnEnter = colorenter
    OnExit = edtqtitemExit
    OnKeyPress = edtqtitemKeyPress
    Width = 88
  end
  object memdsobservacao: TcxMemo
    Left = 8
    Top = 188
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 7
    OnEnter = colorenter
    OnExit = colorexit
    Height = 89
    Width = 545
  end
  object edtvlunitario: TcxCalcEdit
    Left = 71
    Top = 148
    EditValue = 0.000000000000000000
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 6
    Visible = False
    OnEnter = colorenter
    OnExit = colorexit
    OnKeyPress = edtqtitemKeyPress
    Width = 88
  end
  object cbxcdtpmovto: TcxLookupComboBox
    Left = 71
    Top = 37
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
    TabOrder = 0
    OnEnter = colorenter
    OnExit = cbxcdtpmovtoExit
    Width = 380
  end
  object cbxcdcntcusto: TcxLookupComboBox
    Left = 71
    Top = 104
    Properties.KeyFieldNames = 'CDCNTCUSTO'
    Properties.ListColumns = <
      item
        FieldName = 'NMCNTCUSTO2'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.MaxLength = 100
    Properties.OEMConvert = True
    EditValue = 0
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    OnEnter = colorenter
    OnExit = colorexit
    Width = 380
  end
  object edtQTITEM2: TcxCalcEdit
    Left = 364
    Top = 126
    EditValue = 0.000000000000000000
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',0.#######'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Visible = False
    OnEnter = colorenter
    OnExit = edtQTITEM2Exit
    OnKeyPress = edtQTITEM2KeyPress
    Width = 88
  end
end

object frmNovoProduto: TfrmNovoProduto
  Left = 750
  Top = 160
  BorderStyle = bsDialog
  Caption = 'Novo Produto'
  ClientHeight = 414
  ClientWidth = 771
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
  object bvl: TBevel
    Left = 0
    Top = 0
    Width = 771
    Height = 42
    Align = alTop
  end
  object Label3: TLabel
    Left = 2
    Top = 5
    Width = 28
    Height = 13
    Caption = 'Nome'
    Transparent = True
  end
  object Label8: TLabel
    Left = 402
    Top = 5
    Width = 29
    Height = 13
    Caption = 'Grupo'
    Transparent = True
  end
  object lblcodigo: TLabel
    Left = 674
    Top = 6
    Width = 69
    Height = 13
    Caption = 'Definir C'#243'digo '
    Transparent = True
    Visible = False
  end
  object edtnome: TcxDBTextEdit
    Left = 3
    Top = 19
    DataBinding.DataField = 'NMPRODUTO'
    DataBinding.DataSource = dts
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    OnEnter = colorenter
    OnExit = edtnomeExit
    OnKeyDown = nexcontrol
    Width = 388
  end
  object cxButton1: TcxButton
    Left = 320
    Top = 385
    Width = 75
    Height = 25
    Action = actSalvar1
    LookAndFeel.NativeStyle = False
    TabOrder = 9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object cxButton2: TcxButton
    Left = 401
    Top = 385
    Width = 75
    Height = 25
    Action = actCancelar1
    LookAndFeel.NativeStyle = False
    ModalResult = 2
    TabOrder = 10
  end
  object edtcodigo: TcxDBTextEdit
    Left = 674
    Top = 20
    DataBinding.DataField = 'CDPRODUTO'
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Visible = False
    OnEnter = colorenter
    OnExit = edtcodigoExit
    OnKeyDown = nexcontrol
    OnKeyPress = eventokeypress
    Width = 89
  end
  object ckbinsercao: TcxCheckBox
    Left = 659
    Top = 388
    Caption = 'Continuar Inser'#231#227'o'
    TabOrder = 11
    Transparent = True
  end
  object gbxcadastro: TcxGroupBox
    Left = 1
    Top = 47
    Caption = 'Cadastro'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Height = 268
    Width = 395
    object Label5: TLabel
      Left = 5
      Top = 47
      Width = 55
      Height = 13
      Caption = 'Tip Produto'
      Transparent = True
    end
    object Label7: TLabel
      Left = 5
      Top = 68
      Width = 33
      Height = 13
      Caption = 'Origem'
      Transparent = True
    end
    object Label2: TLabel
      Left = 5
      Top = 91
      Width = 40
      Height = 13
      Caption = 'Unidade'
      Transparent = True
    end
    object Label17: TLabel
      Left = 5
      Top = 158
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      Transparent = True
    end
    object lblcodfornecedor: TLabel
      Left = 5
      Top = 180
      Width = 57
      Height = 13
      Caption = 'C'#243'd F'#225'brica'
      Transparent = True
    end
    object lblcdalternativo: TLabel
      Left = 5
      Top = 203
      Width = 61
      Height = 13
      Caption = 'C'#243'd. Alternat'
      Transparent = True
    end
    object Label21: TLabel
      Left = 5
      Top = 114
      Width = 24
      Height = 13
      Caption = 'NCM'
      Transparent = True
    end
    object Label14: TLabel
      Left = 5
      Top = 26
      Width = 38
      Height = 13
      Caption = 'Tip Item'
      Transparent = True
    end
    object Label1: TLabel
      Left = 5
      Top = 137
      Width = 43
      Height = 13
      Caption = 'ST ICMS'
      Transparent = True
    end
    object Label34: TLabel
      Left = 5
      Top = 226
      Width = 27
      Height = 13
      Caption = 'Custo'
      Transparent = True
    end
    object Label33: TLabel
      Left = 5
      Top = 248
      Width = 31
      Height = 13
      Caption = 'Venda'
      Transparent = True
    end
    object cbxcdunidade: TcxDBLookupComboBox
      Left = 69
      Top = 86
      DataBinding.DataField = 'CDUNIDADE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDUNIDADE'
      Properties.ListColumns = <
        item
          FieldName = 'NMUNIDADE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = cbxcdunidadeEnter
      OnExit = colorexit
      Width = 290
    end
    object cbxcdorigem: TcxDBLookupComboBox
      Left = 69
      Top = 64
      DataBinding.DataField = 'CDORIGEM'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDORIGEM'
      Properties.ListColumns = <
        item
          FieldName = 'NMORIGEM'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 320
    end
    object cbxcdtpproduto: TcxDBLookupComboBox
      Left = 69
      Top = 42
      DataBinding.DataField = 'CDTPPRODUTO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPPRODUTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPPRODUTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnChange = cbxcdtpprodutoPropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = cbxcdtpprodutoEnter
      OnExit = colorexit
      Width = 320
    end
    object cbxcdtpitem: TcxDBLookupComboBox
      Left = 69
      Top = 21
      DataBinding.DataField = 'CDTPITEM'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPITEM'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPITEM'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 320
    end
    object edtnuclfiscal: TcxDBTextEdit
      Left = 69
      Top = 108
      DataBinding.DataField = 'NUCLFISCAL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
      Width = 320
    end
    object edtdsproduto: TcxDBTextEdit
      Left = 69
      Top = 152
      DataBinding.DataField = 'dsproduto'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
      Width = 320
    end
    object edtcdcodfornecedor: TcxDBTextEdit
      Left = 69
      Top = 174
      DataBinding.DataField = 'cdcodfornecedor'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
      Width = 320
    end
    object edtcdalternativo: TcxDBTextEdit
      Left = 69
      Top = 197
      DataBinding.DataField = 'cdalternativo'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
      Width = 320
    end
    object btnaddunidade: TcxButton
      Left = 361
      Top = 86
      Width = 28
      Height = 21
      OptionsImage.ImageIndex = 136
      OptionsImage.Images = dtmmain.imlMain
      PaintStyle = bpsGlyph
      TabOrder = 4
      OnClick = btnaddunidadeClick
    end
    object cbxnusticms: TcxDBLookupComboBox
      Left = 69
      Top = 129
      DataBinding.DataField = 'NUSTICMS'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 450
      Properties.KeyFieldNames = 'NUSTICMS'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTICMS'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      Width = 320
    end
    object edtVLCUSTO: TcxDBCalcEdit
      Left = 69
      Top = 220
      DataBinding.DataField = 'VLCUSTO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnEnter = colorenter
      Width = 101
    end
    object edtVLVENDA: TcxDBCalcEdit
      Left = 69
      Top = 242
      DataBinding.DataField = 'VLVENDA'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 11
      OnEnter = colorenter
      Width = 101
    end
  end
  object gbxImposto: TcxGroupBox
    Left = 397
    Top = 47
    Caption = 'Tributa'#231#227'o'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Height = 138
    Width = 370
    object lblaliquota: TLabel
      Left = 112
      Top = 14
      Width = 40
      Height = 13
      Caption = 'Al'#237'quota'
      Transparent = True
    end
    object lblrecupera: TLabel
      Left = 61
      Top = 14
      Width = 47
      Height = 13
      Caption = 'Recupera'
      Transparent = True
    end
    object lblimposto: TLabel
      Left = 2
      Top = 14
      Width = 37
      Height = 13
      Caption = 'Imposto'
      Transparent = True
    end
    object lblCDBCCALCULOCREDITO: TLabel
      Left = 3
      Top = 122
      Width = 50
      Height = 13
      Caption = 'BC Cr'#233'dito'
      Transparent = True
    end
    object lblsituacaotributaria: TLabel
      Left = 164
      Top = 14
      Width = 86
      Height = 13
      Caption = 'Situa'#231#227'oTribut'#225'ria'
      Transparent = True
    end
    object edtalcofins: TcxDBCalcEdit
      Left = 112
      Top = 93
      DataBinding.DataField = 'ALCOFINS'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 13
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
      Width = 50
    end
    object edtalpis: TcxDBCalcEdit
      Left = 112
      Top = 71
      DataBinding.DataField = 'ALPIS'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
      Width = 50
    end
    object edtalipi: TcxDBCalcEdit
      Left = 112
      Top = 49
      DataBinding.DataField = 'ALIPI'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
      Width = 50
    end
    object edtalicms: TcxDBCalcEdit
      Left = 112
      Top = 28
      DataBinding.DataField = 'ALICMS'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
      Width = 50
    end
    object ckbBORECUPERAIPI: TcxDBCheckBox
      Left = 75
      Top = 53
      DataBinding.DataField = 'BORECUPERAIPI'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbBOIPI: TcxDBCheckBox
      Left = 0
      Top = 53
      Caption = 'IPI'
      DataBinding.DataField = 'BOIPI'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbBORECUPERAICMS: TcxDBCheckBox
      Left = 75
      Top = 32
      DataBinding.DataField = 'BORECUPERAICMS'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbBOICMS: TcxDBCheckBox
      Left = 0
      Top = 32
      Caption = 'ICMS'
      DataBinding.DataField = 'BOICMS'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbBORECUPERAPIS: TcxDBCheckBox
      Left = 75
      Top = 75
      DataBinding.DataField = 'BORECUPERAPIS'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbBOPIS: TcxDBCheckBox
      Left = 0
      Top = 75
      Caption = 'PIS'
      DataBinding.DataField = 'BOPIS'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbBORECUPERACOFINS: TcxDBCheckBox
      Left = 75
      Top = 97
      DataBinding.DataField = 'BORECUPERACOFINS'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 12
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbBOCOFINS: TcxDBCheckBox
      Left = 0
      Top = 97
      Caption = 'COFINS'
      DataBinding.DataField = 'BOCOFINS'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 11
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object cbxnustipi: TcxDBLookupComboBox
      Left = 164
      Top = 49
      DataBinding.DataField = 'NUSTIPI'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 450
      Properties.KeyFieldNames = 'NUSTIPI'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTIPI'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      Width = 204
    end
    object cbxnustpis: TcxDBLookupComboBox
      Left = 164
      Top = 71
      DataBinding.DataField = 'NUSTPIS'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 450
      Properties.KeyFieldNames = 'NUSTPIS'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTPIS'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnEnter = colorenter
      OnExit = colorexit
      Width = 204
    end
    object cbxnustcofins: TcxDBLookupComboBox
      Left = 164
      Top = 93
      DataBinding.DataField = 'NUSTCOFINS'
      DataBinding.DataSource = dts
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 450
      Properties.KeyFieldNames = 'NUSTCOFINS'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTCOFINS'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 14
      OnEnter = colorenter
      OnExit = colorexit
      Width = 204
    end
    object edtCDBCCALCULOCREDITO: TcxDBTextEdit
      Left = 69
      Top = 115
      DataBinding.DataField = 'CDBCCALCULOCREDITO'
      DataBinding.DataSource = dts
      TabOrder = 15
      OnEnter = colorenter
      OnExit = colorexit
      Width = 301
    end
  end
  object gbxcaracteristicas: TcxGroupBox
    Left = 397
    Top = 188
    Caption = 'Caracter'#237'sticas'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 6
    Height = 60
    Width = 370
    object lblcor: TLabel
      Left = 5
      Top = 19
      Width = 16
      Height = 13
      Caption = 'Cor'
      Transparent = True
    end
    object Label43: TLabel
      Left = 5
      Top = 41
      Width = 45
      Height = 13
      Caption = 'Tamanho'
      Transparent = True
    end
    object cbxcdtamanho: TcxDBLookupComboBox
      Left = 69
      Top = 35
      DataBinding.DataField = 'CDTAMANHO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTAMANHO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTAMANHO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = cbxcdtamanhoEnter
      OnExit = colorexit
      Width = 270
    end
    object cbxcdcor: TcxDBLookupComboBox
      Left = 69
      Top = 13
      DataBinding.DataField = 'CDCOR'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDCOR'
      Properties.ListColumns = <
        item
          FieldName = 'NMCOR'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = cbxcdcorEnter
      OnExit = colorexit
      Width = 270
    end
    object btnaddcor: TcxButton
      Left = 342
      Top = 13
      Width = 28
      Height = 21
      OptionsImage.ImageIndex = 136
      OptionsImage.Images = dtmmain.imlMain
      PaintStyle = bpsGlyph
      TabOrder = 1
      OnClick = btnaddcorClick
    end
    object btnaddtamanho: TcxButton
      Left = 342
      Top = 35
      Width = 28
      Height = 21
      OptionsImage.ImageIndex = 136
      OptionsImage.Images = dtmmain.imlMain
      PaintStyle = bpsGlyph
      TabOrder = 3
      OnClick = btnaddtamanhoClick
    end
  end
  object gbxdimensionavel: TcxGroupBox
    Left = 397
    Top = 249
    Caption = 'Dimension'#225'vel'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 7
    Height = 66
    Width = 370
    object Label42: TLabel
      Left = 5
      Top = 25
      Width = 29
      Height = 13
      Caption = 'Forma'
      Transparent = True
    end
    object Label45: TLabel
      Left = 5
      Top = 47
      Width = 37
      Height = 13
      Caption = 'Material'
      Transparent = True
    end
    object cbxcdmaterial: TcxDBLookupComboBox
      Left = 70
      Top = 40
      DataBinding.DataField = 'CDMATERIAL'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDMATERIAL'
      Properties.ListColumns = <
        item
          FieldName = 'NMMATERIAL'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = cbxcdmaterialEnter
      OnExit = colorexit
      Width = 297
    end
    object cbxcdforma: TcxDBLookupComboBox
      Left = 69
      Top = 19
      DataBinding.DataField = 'CDforma'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDforma'
      Properties.ListColumns = <
        item
          FieldName = 'NMforma'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = cbxcdformaEnter
      OnExit = colorexit
      Width = 297
    end
  end
  object gbxpeso: TcxGroupBox
    Left = 0
    Top = 316
    Caption = 'Peso'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    Height = 67
    Width = 395
    object Label11: TLabel
      Left = 5
      Top = 25
      Width = 36
      Height = 13
      Caption = 'L'#237'quido'
      Transparent = True
    end
    object Label12: TLabel
      Left = 5
      Top = 47
      Width = 25
      Height = 13
      Caption = 'Bruto'
      Transparent = True
    end
    object edtpsbruto: TcxDBCalcEdit
      Left = 69
      Top = 41
      DataBinding.DataField = 'psbruto'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
      Width = 121
    end
    object edtpsliquido: TcxDBCalcEdit
      Left = 69
      Top = 19
      DataBinding.DataField = 'psliquido'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
      Width = 121
    end
  end
  object gbxusarproduto: TcxGroupBox
    Left = 397
    Top = 316
    Caption = 'Usar Produto em '
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 8
    Height = 67
    Width = 370
    object ckbsaida: TcxDBCheckBox
      Left = 4
      Top = 16
      Caption = 'Nota Fiscal'
      DataBinding.DataField = 'BOSAIDA'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbpedido: TcxDBCheckBox
      Left = 78
      Top = 16
      Caption = 'Pedido'
      DataBinding.DataField = 'BOPEDIDO'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbentrada: TcxDBCheckBox
      Left = 4
      Top = 37
      Caption = 'Compra'
      DataBinding.DataField = 'BOENTRADA'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbordcompra: TcxDBCheckBox
      Left = 78
      Top = 37
      Caption = 'Ordem de Compra'
      DataBinding.DataField = 'BOORDCOMPRA'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbordserv: TcxDBCheckBox
      Left = 261
      Top = 16
      Caption = 'Ordem de Servi'#231'o'
      DataBinding.DataField = 'BOORDSERV'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbpedidomaterial: TcxDBCheckBox
      Left = 185
      Top = 37
      Caption = 'Cota'#231#227'o'
      DataBinding.DataField = 'BOPEDIDOMATERIAL'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckborcamento: TcxDBCheckBox
      Left = 185
      Top = 16
      Caption = 'Or'#231'amento'
      DataBinding.DataField = 'BOORCAMENTO'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
    object ckbmovto: TcxDBCheckBox
      Left = 261
      Top = 37
      Caption = 'Mov de Estoque'
      DataBinding.DataField = 'BOMOVTO'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nexcontrol
    end
  end
  object edtnunivel: TcxDBButtonEdit
    Left = 401
    Top = 19
    DataBinding.DataField = 'NUNIVEL'
    DataBinding.DataSource = dts
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = edtnunivelPropertiesButtonClick
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    OnEnter = colorenter
    OnExit = edtnunivelExit
    OnKeyDown = edtnunivelKeyDown
    Width = 112
  end
  object lblnmgrupo: TcxLabel
    Left = 515
    Top = 21
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Height = 17
    Width = 153
  end
  object act: TActionList
    Left = 227
    Top = 344
    object actNovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
      ShortCut = 16462
    end
    object actSalvar1: TAction
      Caption = '&Salvar'
      Hint = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvar1Execute
    end
    object actCancelar1: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelar1Execute
    end
  end
  object dts: TDataSource
    DataSet = qry
    Left = 352
    Top = 344
  end
  object qry: TFDQuery
    BeforePost = qryBeforePost
    OnNewRecord = qryNewRecord
    Connection = dtmmain.confire
    SQL.Strings = (
      'SELECT * FROM PRODUTO WHERE CDEMPRESA=0 AND CDPRODUTO = 0')
    Left = 272
    Top = 344
  end
end

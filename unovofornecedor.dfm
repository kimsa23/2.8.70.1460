object frmNovoFornecedor: TfrmNovoFornecedor
  Left = 438
  Top = 136
  BorderStyle = bsDialog
  Caption = 'Novo Fornecedor'
  ClientHeight = 314
  ClientWidth = 784
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
  object Label3: TLabel
    Left = 2
    Top = 4
    Width = 28
    Height = 13
    Caption = 'Nome'
    Transparent = True
  end
  object lblrzsocial: TLabel
    Left = 365
    Top = 4
    Width = 63
    Height = 13
    Caption = 'Raz'#227'o Social'
    Transparent = True
  end
  object gbxFisica: TcxGroupBox
    Left = 2
    Top = 188
    Caption = 'Dados Pessoal F'#237'sica'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Visible = False
    Height = 92
    Width = 778
    object Label27: TLabel
      Left = 3
      Top = 22
      Width = 20
      Height = 13
      Caption = 'CPF'
      Transparent = True
    end
    object Label61: TLabel
      Left = 429
      Top = 22
      Width = 38
      Height = 13
      Caption = 'Insc Est'
      Transparent = True
    end
    object Label14: TLabel
      Left = 3
      Top = 43
      Width = 21
      Height = 13
      Caption = 'M'#227'e'
      Transparent = True
    end
    object Label2: TLabel
      Left = 429
      Top = 43
      Width = 15
      Height = 13
      Caption = 'Pai'
      Transparent = True
    end
    object Label15: TLabel
      Left = 2
      Top = 65
      Width = 24
      Height = 13
      Caption = 'Sexo'
      Transparent = True
    end
    object Label25: TLabel
      Left = 429
      Top = 65
      Width = 39
      Height = 13
      Caption = 'Conjuge'
      Transparent = True
    end
    object Label28: TLabel
      Left = 229
      Top = 22
      Width = 50
      Height = 13
      Caption = 'Identidade'
      Transparent = True
    end
    object Label16: TLabel
      Left = 142
      Top = 66
      Width = 55
      Height = 13
      Caption = 'Estado Civil'
      Transparent = True
    end
    object Label13: TLabel
      Left = 281
      Top = 67
      Width = 42
      Height = 13
      Caption = 'Dt Nasc.'
      Transparent = True
    end
    object edtnmconjuge: TcxDBTextEdit
      Left = 475
      Top = 59
      DataBinding.DataField = 'NMCONJUGE'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 297
    end
    object edtdtnascimento: TcxDBDateEdit
      Left = 332
      Top = 59
      DataBinding.DataField = 'DTNASCIMENTO'
      DataBinding.DataSource = dts
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 97
    end
    object cbxcdestcivil: TcxDBComboBox
      Left = 199
      Top = 58
      DataBinding.DataField = 'CDESTCIVIL'
      DataBinding.DataSource = dts
      Properties.Items.Strings = (
        'SOLTEIRO'
        'CASADO'
        'DIVORCIADO'
        'VI'#218'VO'
        'AMASIADO')
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 76
    end
    object cbxcdsexo: TcxDBComboBox
      Left = 58
      Top = 58
      DataBinding.DataField = 'CDSEXO'
      DataBinding.DataSource = dts
      Properties.Items.Strings = (
        'MASCULINO'
        'FEMININO'
        'INDETERMINADO')
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 76
    end
    object edtnmpai: TcxDBTextEdit
      Left = 475
      Top = 36
      DataBinding.DataField = 'NMPAI'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 299
    end
    object edtnmmae: TcxDBTextEdit
      Left = 58
      Top = 36
      DataBinding.DataField = 'NMMAE'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 371
    end
    object edtnuinscest2: TcxDBTextEdit
      Left = 475
      Top = 14
      DataBinding.DataField = 'NUINSCEST'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 299
    end
    object edtnuidentid: TcxDBTextEdit
      Left = 286
      Top = 14
      DataBinding.DataField = 'NUIDENTID'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 143
    end
    object edtnucpf: TcxDBMaskEdit
      Left = 58
      Top = 14
      DataBinding.DataField = 'NUCPF'
      DataBinding.DataSource = dts
      Properties.CharCase = ecLowerCase
      Properties.EditMask = '999.999.999-99'
      Properties.MaxLength = 0
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 156
    end
  end
  object gbxJuridica: TcxGroupBox
    Left = 2
    Top = 184
    Caption = 'Dados Pessoa Jur'#237'dica'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    Height = 96
    Width = 778
    object Label24: TLabel
      Left = 4
      Top = 27
      Width = 27
      Height = 13
      Caption = 'CNPJ'
      Transparent = True
    end
    object Label29: TLabel
      Left = 420
      Top = 24
      Width = 38
      Height = 13
      Caption = 'Insc Est'
      Transparent = True
    end
    object lblCDINDIEDEST: TLabel
      Left = 420
      Top = 44
      Width = 57
      Height = 13
      Caption = 'Indicador IE'
      Transparent = True
    end
    object edtnucnpj: TcxDBMaskEdit
      Left = 61
      Top = 19
      DataBinding.DataField = 'NUCNPJ'
      DataBinding.DataSource = dts
      Properties.EditMask = '99.999.999/9999-99'
      Properties.MaxLength = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 355
    end
    object edtnuinscest: TcxDBTextEdit
      Left = 480
      Top = 19
      DataBinding.DataField = 'NUINSCEST'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 295
    end
    object cbxcdindiedest: TcxDBLookupComboBox
      Left = 480
      Top = 39
      DataBinding.DataField = 'CDINDIEDEST'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDINDIEDEST'
      Properties.ListColumns = <
        item
          FieldName = 'NMINDIEDEST'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 295
    end
  end
  object gbxComercial: TcxGroupBox
    Left = 2
    Top = 41
    Caption = 'Endere'#231'o Comercial'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Transparent = True
    Height = 145
    Width = 778
    object Label10: TLabel
      Left = 3
      Top = 23
      Width = 21
      Height = 13
      Caption = 'CEP'
      Transparent = True
    end
    object Label11: TLabel
      Left = 3
      Top = 44
      Width = 54
      Height = 13
      Caption = 'Logradouro'
      Transparent = True
    end
    object Label66: TLabel
      Left = 420
      Top = 42
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      Transparent = True
    end
    object Label67: TLabel
      Left = 564
      Top = 40
      Width = 64
      Height = 13
      Caption = 'Complemento'
      Transparent = True
    end
    object Label5: TLabel
      Left = 3
      Top = 65
      Width = 27
      Height = 13
      Caption = 'Bairro'
      Transparent = True
    end
    object Label7: TLabel
      Left = 420
      Top = 65
      Width = 44
      Height = 13
      Caption = 'Cx Postal'
      Transparent = True
    end
    object Label9: TLabel
      Left = 6
      Top = 86
      Width = 14
      Height = 13
      Caption = 'UF'
      Transparent = True
    end
    object Label8: TLabel
      Left = 420
      Top = 85
      Width = 33
      Height = 13
      Caption = 'Cidade'
      Transparent = True
    end
    object Label23: TLabel
      Left = 6
      Top = 104
      Width = 24
      Height = 13
      Caption = 'Fone'
      Transparent = True
    end
    object Label20: TLabel
      Left = 420
      Top = 104
      Width = 17
      Height = 13
      Caption = 'Fax'
      Transparent = True
    end
    object lbl1: TLabel
      Left = 6
      Top = 128
      Width = 27
      Height = 13
      Caption = 'e-mail'
      Transparent = True
    end
    object Label35: TLabel
      Left = 420
      Top = 128
      Width = 42
      Height = 13
      Caption = 'Cadastro'
      Transparent = True
    end
    object edtnufax: TcxDBMaskEdit
      Left = 480
      Top = 99
      DataBinding.DataField = 'NUFAX'
      DataBinding.DataSource = dts
      Properties.EditMask = '(99)9999-9999'
      Properties.MaxLength = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 11
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 81
    end
    object edtnufone2: TcxDBMaskEdit
      Left = 140
      Top = 99
      DataBinding.DataField = 'NUFONE2'
      DataBinding.DataSource = dts
      Properties.EditMask = '(99)9999-9999'
      Properties.MaxLength = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 81
    end
    object edtnufone1: TcxDBMaskEdit
      Left = 57
      Top = 99
      DataBinding.DataField = 'NUFONE1'
      DataBinding.DataSource = dts
      Properties.EditMask = '(99)9999-9999'
      Properties.MaxLength = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 81
    end
    object edtnucxpostal: TcxDBMaskEdit
      Left = 480
      Top = 57
      DataBinding.DataField = 'NUCXPOSTAL'
      DataBinding.DataSource = dts
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 85
    end
    object edtnucep: TcxDBMaskEdit
      Left = 58
      Top = 15
      DataBinding.DataField = 'NUCEP'
      DataBinding.DataSource = dts
      Properties.EditMask = '99999-999'
      Properties.MaxLength = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = edtnucepExit
      OnKeyDown = nextcontrol
      Width = 59
    end
    object edtNmbairro: TcxDBTextEdit
      Left = 58
      Top = 57
      DataBinding.DataField = 'NMBAIRRO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 355
    end
    object edtdscomplemento: TcxDBTextEdit
      Left = 627
      Top = 34
      DataBinding.DataField = 'DSCOMPLEMENTO'
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
      Width = 148
    end
    object edtdsnumero: TcxDBTextEdit
      Left = 480
      Top = 34
      DataBinding.DataField = 'DSNUMERO'
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
      Width = 85
    end
    object edtDsEndereco: TcxDBTextEdit
      Left = 58
      Top = 36
      DataBinding.DataField = 'DSENDERECO'
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
      Width = 355
    end
    object cbxcduf: TcxDBLookupComboBox
      Left = 58
      Top = 78
      DataBinding.DataField = 'CDUF'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDUF'
      Properties.ListColumns = <
        item
          FieldName = 'NMUF'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = cbxcdufExit
      OnKeyDown = nextcontrol
      Width = 355
    end
    object cbxcdmunicipio: TcxDBLookupComboBox
      Left = 480
      Top = 78
      DataBinding.DataField = 'CDMUNICIPIO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDMUNICIPIO'
      Properties.ListColumns = <
        item
          FieldName = 'NMMUNICIPIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 295
    end
    object edtemail: TcxDBTextEdit
      Left = 58
      Top = 120
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 12
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 355
    end
    object edtnufone3: TcxDBMaskEdit
      Left = 222
      Top = 99
      DataBinding.DataField = 'NUFONE3'
      DataBinding.DataSource = dts
      Properties.EditMask = '(99)9999-9999'
      Properties.MaxLength = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 81
    end
    object edtdtcadastro: TcxDBDateEdit
      Left = 480
      Top = 120
      DataBinding.DataField = 'DTCADASTRO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 13
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 94
    end
  end
  object rdbtppessoa: TcxDBRadioGroup
    Left = 658
    Top = -2
    Caption = 'Tipo Pessoal'
    DataBinding.DataField = 'TPPESSOA'
    DataBinding.DataSource = dts
    Properties.Columns = 2
    Properties.DefaultValue = 'J'
    Properties.Items = <
      item
        Caption = 'Jur'#237'dica'
        Value = 'J'
      end
      item
        Caption = 'F'#237'sica'
        Value = 'F'
      end>
    Properties.OnChange = rdbtppessoaPropertiesChange
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    OnEnter = colorenter
    OnExit = colorexit
    Height = 38
    Width = 123
  end
  object edtRzSocial: TcxDBTextEdit
    Left = 365
    Top = 18
    DataBinding.DataField = 'RZSOCIAL'
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
    Width = 290
  end
  object edtNome: TcxDBTextEdit
    Left = 2
    Top = 18
    DataBinding.DataField = 'NMFORNECEDOR'
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Properties.OnChange = edtNomePropertiesChange
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    OnEnter = colorenter
    OnExit = edtNomeExit
    OnKeyDown = nextcontrol
    Width = 362
  end
  object btncancelar: TcxButton
    Left = 410
    Top = 285
    Width = 75
    Height = 25
    Action = actCancelar1
    Cancel = True
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 7
  end
  object btnsalvar: TcxButton
    Left = 322
    Top = 285
    Width = 75
    Height = 25
    Action = actSalvar1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 6
  end
  object act: TActionList
    Images = dtmmain.imlMain
    Left = 524
    Top = 42
    object actSalvar1: TAction
      Caption = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvar1Execute
    end
    object actCancelar1: TAction
      Caption = 'Cancelar'
      ImageIndex = 5
      ShortCut = 16474
      OnExecute = actCancelar1Execute
    end
  end
  object dts: TDataSource
    DataSet = qry
    Left = 636
    Top = 42
  end
  object qry: TFDQuery
    BeforePost = qryBeforePost
    OnNewRecord = qryNewRecord
    CachedUpdates = True
    Connection = dtmmain.confire
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR WHERE CDEMPRESA=0 AND CDFORNECEDOR=0')
    Left = 458
    Top = 49
  end
end

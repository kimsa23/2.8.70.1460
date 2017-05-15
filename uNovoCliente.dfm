object frmNovoCliente: TfrmNovoCliente
  Left = 412
  Top = 164
  BorderStyle = bsDialog
  Caption = 'Novo Cliente'
  ClientHeight = 430
  ClientWidth = 786
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
    Left = 0
    Top = 0
    Width = 786
    Height = 44
    Align = alTop
    Shape = bsBottomLine
  end
  object Label3: TLabel
    Left = 91
    Top = 0
    Width = 28
    Height = 13
    Caption = 'Nome'
    Transparent = True
  end
  object lblrzsocial: TLabel
    Left = 375
    Top = 0
    Width = 63
    Height = 13
    Caption = 'Raz'#227'o Social'
    Transparent = True
  end
  object lblcodigo: TLabel
    Left = 2
    Top = 0
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    Transparent = True
  end
  object gbxFisica: TcxGroupBox
    Left = 3
    Top = 174
    Caption = 'Dados Pessoal F'#237'sica'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Height = 92
    Width = 781
    object Label27: TLabel
      Left = 3
      Top = 22
      Width = 20
      Height = 13
      Caption = 'CPF'
      Transparent = True
    end
    object Label61: TLabel
      Left = 3
      Top = 44
      Width = 38
      Height = 13
      Caption = 'Insc Est'
      Transparent = True
    end
    object Label14: TLabel
      Left = 400
      Top = 22
      Width = 21
      Height = 13
      Caption = 'M'#227'e'
      Transparent = True
    end
    object Label2: TLabel
      Left = 403
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
      Left = 403
      Top = 65
      Width = 39
      Height = 13
      Caption = 'Conjuge'
      Transparent = True
    end
    object Label28: TLabel
      Left = 203
      Top = 22
      Width = 50
      Height = 13
      Caption = 'Identidade'
      Transparent = True
    end
    object Label16: TLabel
      Left = 123
      Top = 66
      Width = 55
      Height = 13
      Caption = 'Estado Civil'
      Transparent = True
    end
    object Label13: TLabel
      Left = 262
      Top = 67
      Width = 42
      Height = 13
      Caption = 'Dt Nasc.'
      Transparent = True
    end
    object edtnucpf: TcxDBMaskEdit
      Left = 43
      Top = 14
      DataBinding.DataField = 'NUCPF'
      DataBinding.DataSource = dts
      Properties.EditMask = '999.999.999-99'
      Properties.MaxLength = 0
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 156
    end
    object edtnmconjuge: TcxDBTextEdit
      Left = 445
      Top = 59
      DataBinding.DataField = 'NMCONJUGE'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 332
    end
    object edtdtnascimento: TcxDBDateEdit
      Left = 303
      Top = 59
      DataBinding.DataField = 'DTNASCIMENTO'
      DataBinding.DataSource = dts
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 97
    end
    object cbxcdestcivil: TcxDBComboBox
      Left = 180
      Top = 58
      DataBinding.DataField = 'CDESTCIVIL'
      DataBinding.DataSource = dts
      Properties.Items.Strings = (
        'SOLTEIRO'
        'CASADO'
        'DIVORCIADO'
        'VI'#218'VO'
        'AMASIADO')
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 76
    end
    object cbxcdsexo: TcxDBComboBox
      Left = 44
      Top = 58
      DataBinding.DataField = 'CDSEXO'
      DataBinding.DataSource = dts
      Properties.Items.Strings = (
        'MASCULINO'
        'FEMININO'
        'INDETERMINADO')
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 76
    end
    object edtnmpai: TcxDBTextEdit
      Left = 445
      Top = 36
      DataBinding.DataField = 'NMPAI'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 332
    end
    object edtnmmae: TcxDBTextEdit
      Left = 445
      Top = 14
      DataBinding.DataField = 'NMMAE'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 332
    end
    object edtnuinscest2: TcxDBTextEdit
      Left = 43
      Top = 36
      DataBinding.DataField = 'NUINSCEST'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 356
    end
    object edtnuidentid: TcxDBTextEdit
      Left = 256
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
  end
  object edtRzSocial: TcxDBTextEdit
    Left = 375
    Top = 14
    DataBinding.DataField = 'RZSOCIAL'
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
    Width = 283
  end
  object edtNome: TcxDBTextEdit
    Left = 91
    Top = 14
    DataBinding.DataField = 'nmcliente'
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Properties.OnChange = edtNomePropertiesChange
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    OnEnter = colorenter
    OnExit = edtNomeExit
    OnKeyDown = nextcontrol
    Width = 283
  end
  object cxButton2: TcxButton
    Left = 394
    Top = 400
    Width = 75
    Height = 25
    Action = actCancelar1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 9
  end
  object cxButton1: TcxButton
    Left = 314
    Top = 400
    Width = 75
    Height = 25
    Action = actSalvar1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 8
  end
  object gbxComercial: TcxGroupBox
    Left = 0
    Top = 44
    Align = alTop
    Caption = 'Endere'#231'o Comercial'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    Transparent = True
    Height = 127
    Width = 786
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
      Left = 429
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
      Left = 429
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
      Left = 429
      Top = 85
      Width = 33
      Height = 13
      Caption = 'Cidade'
      Transparent = True
    end
    object Label23: TLabel
      Left = 6
      Top = 103
      Width = 24
      Height = 13
      Caption = 'Fone'
      Transparent = True
    end
    object Label20: TLabel
      Left = 310
      Top = 103
      Width = 17
      Height = 13
      Caption = 'Fax'
      Transparent = True
    end
    object edtnucxpostal: TcxDBMaskEdit
      Left = 475
      Top = 57
      DataBinding.DataField = 'NUCXPOSTAL'
      DataBinding.DataSource = dts
      Properties.EditMask = '99999'
      Properties.MaxLength = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 85
    end
    object edtnufax: TcxDBMaskEdit
      Left = 348
      Top = 98
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
      OnKeyPress = edtnufaxKeyPress
      Width = 81
    end
    object edtnufone1: TcxDBMaskEdit
      Left = 58
      Top = 98
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
    object edtnufone2: TcxDBMaskEdit
      Left = 140
      Top = 98
      DataBinding.DataField = 'NUFONE2'
      DataBinding.DataSource = dts
      Properties.EditMask = '(99)9999-9999'
      Properties.MaxLength = 0
      TabOrder = 9
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 81
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
      Width = 106
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
      Width = 371
    end
    object edtdscomplemento: TcxDBTextEdit
      Left = 630
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
      Width = 109
    end
    object edtdsnumero: TcxDBTextEdit
      Left = 475
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
      Width = 371
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
      Width = 371
    end
    object cbxcdmunicipio: TcxDBLookupComboBox
      Left = 475
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
      Width = 305
    end
    object edtnufone3: TcxDBMaskEdit
      Left = 223
      Top = 98
      DataBinding.DataField = 'NUFONE3'
      DataBinding.DataSource = dts
      Properties.EditMask = '(99)9999-9999'
      Properties.MaxLength = 0
      TabOrder = 10
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 81
    end
  end
  object rdbtppessoa: TcxDBRadioGroup
    Left = 659
    Top = 2
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
    TabOrder = 3
    OnEnter = colorenter
    OnExit = colorexit
    Height = 38
    Width = 123
  end
  object gbxJuridica: TcxGroupBox
    Left = 3
    Top = 174
    Caption = 'Dados Pessoa Jur'#237'dica'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 6
    Height = 92
    Width = 781
    object Label24: TLabel
      Left = 4
      Top = 27
      Width = 27
      Height = 13
      Caption = 'CNPJ'
      Transparent = True
    end
    object Label29: TLabel
      Left = 431
      Top = 24
      Width = 38
      Height = 13
      Caption = 'Insc Est'
      Transparent = True
    end
    object Label26: TLabel
      Left = 4
      Top = 44
      Width = 48
      Height = 13
      Caption = 'Funda'#231#227'o'
      Transparent = True
    end
    object lblCDINDIEDEST: TLabel
      Left = 423
      Top = 44
      Width = 57
      Height = 13
      Caption = 'Indicador IE'
      Transparent = True
    end
    object Label115: TLabel
      Left = 3
      Top = 67
      Width = 71
      Height = 13
      Caption = 'Insc. Municipal'
      Transparent = True
    end
    object Label116: TLabel
      Left = 423
      Top = 67
      Width = 21
      Height = 13
      Caption = 'CAE'
      Transparent = True
    end
    object edtnucnpj: TcxDBMaskEdit
      Left = 51
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
      Width = 364
    end
    object edtnuinscest: TcxDBTextEdit
      Left = 482
      Top = 16
      DataBinding.DataField = 'NUINSCEST'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 297
    end
    object edtdtfundacao: TcxDBDateEdit
      Left = 51
      Top = 39
      DataBinding.DataField = 'DTFUNDACAO'
      DataBinding.DataSource = dts
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
      Width = 364
    end
    object cbxcdindiedest: TcxDBLookupComboBox
      Left = 482
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
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      Width = 297
    end
    object edtnuinscmunicipal: TcxDBTextEdit
      Left = 51
      Top = 60
      DataBinding.DataField = 'NUINSCMUNICIPAL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      Width = 364
    end
    object edtnucae: TcxDBTextEdit
      Left = 482
      Top = 60
      DataBinding.DataField = 'NUCAE'
      DataBinding.DataSource = dts
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      Width = 296
    end
  end
  object edtcodigo: TcxDBTextEdit
    Left = 2
    Top = 14
    DataBinding.DataField = 'CDCLIENTE'
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    OnEnter = colorenter
    OnExit = edtcodigoExit
    OnKeyDown = nextcontrol
    OnKeyPress = eventokeypress
    Width = 89
  end
  object cxGroupBox1: TcxGroupBox
    Left = 2
    Top = 266
    Caption = 'Outros'
    Style.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 7
    Height = 127
    Width = 781
    object Label38: TLabel
      Left = 2
      Top = 42
      Width = 18
      Height = 13
      Caption = 'Site'
      Transparent = True
    end
    object Label1: TLabel
      Left = 422
      Top = 42
      Width = 27
      Height = 13
      Caption = 'e-mail'
      Transparent = True
    end
    object Label60: TLabel
      Left = 2
      Top = 24
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lblrmatividade: TLabel
      Left = 422
      Top = 20
      Width = 57
      Height = 13
      Caption = 'Ramo Ativid'
      Transparent = True
    end
    object lblrepresentante: TLabel
      Left = 2
      Top = 63
      Width = 37
      Height = 13
      Caption = 'Repres.'
      Transparent = True
    end
    object lblcdtpcliente: TLabel
      Left = 422
      Top = 64
      Width = 21
      Height = 13
      Caption = 'Tipo'
      Transparent = True
      Visible = False
    end
    object Label35: TLabel
      Left = 2
      Top = 85
      Width = 42
      Height = 13
      Caption = 'Cadastro'
      Transparent = True
    end
    object lbltecnico: TLabel
      Left = 422
      Top = 83
      Width = 46
      Height = 13
      Caption = 'Vendedor'
      Transparent = True
    end
    object lblnucntcontabil: TLabel
      Left = 144
      Top = 82
      Width = 57
      Height = 13
      Caption = 'Cnt Cont'#225'bil'
      Transparent = True
    end
    object lbltpregimne: TLabel
      Left = 422
      Top = 107
      Width = 52
      Height = 13
      Caption = 'Tp Regime'
      Transparent = True
    end
    object edtemail: TcxDBTextEdit
      Left = 475
      Top = 36
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 297
    end
    object edthomepage: TcxDBTextEdit
      Left = 50
      Top = 36
      DataBinding.DataField = 'HOMEPAGE'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 371
    end
    object cbxcdstcliente: TcxDBLookupComboBox
      Left = 50
      Top = 15
      DataBinding.DataField = 'CDSTCLIENTE'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
      Properties.KeyFieldNames = 'CDSTCLIENTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTCLIENTE'
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
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 371
    end
    object cbxcdrmatividade: TcxDBLookupComboBox
      Left = 475
      Top = 15
      DataBinding.DataField = 'CDRMATIVIDADE'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
      Properties.KeyFieldNames = 'CDRMATIVIDADE'
      Properties.ListColumns = <
        item
          FieldName = 'NMRMATIVIDADE'
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
      TabOrder = 1
      OnEnter = cbxcdrmatividadeEnter
      OnExit = colorexit
      Width = 267
    end
    object chkBOCONSUMIDORFINAL: TcxDBCheckBox
      Left = 311
      Top = 79
      Caption = 'Consumidor Final'
      DataBinding.DataField = 'BOCONSUMIDORFINAL'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
    end
    object edtnucntcontabil: TcxDBTextEdit
      Left = 204
      Top = 78
      DataBinding.DataField = 'NUCNTCONTABIL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 104
    end
    object edtdtcadastro: TcxDBDateEdit
      Left = 50
      Top = 78
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
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 94
    end
    object cbxcdfuncionariovendedor: TcxDBLookupComboBox
      Left = 475
      Top = 78
      DataBinding.DataField = 'CDFUNCIONARIOVENDEDOR'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDFUNCIONARIO'
      Properties.ListColumns = <
        item
          FieldName = 'NMFUNCIONARIO'
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
      TabOrder = 10
      OnEnter = cbxcdfuncionariovendedorEnter
      OnExit = colorexit
      Width = 297
    end
    object cbxcdtpcliente: TcxDBLookupComboBox
      Left = 475
      Top = 57
      DataBinding.DataField = 'CDTPCLIENTE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPCLIENTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPCLIENTE'
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
      TabOrder = 6
      OnEnter = cbxcdtpclienteEnter
      OnExit = colorexit
      Width = 297
    end
    object cbxcdrepresentante: TcxDBLookupComboBox
      Left = 50
      Top = 57
      DataBinding.DataField = 'CDREPRESENTANTE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDREPRESENTANTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMREPRESENTANTE'
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
      TabOrder = 5
      OnEnter = cbxcdrepresentanteEnter
      OnExit = colorexit
      Width = 370
    end
    object cbxcdtpregime: TcxDBLookupComboBox
      Left = 475
      Top = 100
      DataBinding.DataField = 'CDTPREGIME'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPREGIME'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPREGIME'
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
      TabOrder = 11
      OnExit = colorexit
      Width = 297
    end
    object btnrmatividade: TcxButton
      Left = 744
      Top = 15
      Width = 28
      Height = 21
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 136
      OptionsImage.Images = dtmmain.imlMain
      PaintStyle = bpsGlyph
      TabOrder = 2
      OnClick = btnrmatividadeClick
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    Left = 108
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actNovoExecute
    end
    object actSalvar1: TAction
      Caption = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvar1Execute
    end
    object actCancelar1: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelar1Execute
    end
  end
  object dts: TDataSource
    DataSet = qry
    Left = 229
    Top = 3
  end
  object qry: TFDQuery
    BeforePost = qryBeforePost
    OnNewRecord = qryNewRecord
    CachedUpdates = True
    Connection = dtmmain.confire
    SQL.Strings = (
      
        'select * from CLIENTE WHERE CDEMPRESA=:CDEMPRESA AND CDCLIENTE=:' +
        'CDCLIENTE')
    Left = 200
    Top = 4
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CDCLIENTE'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
  end
end

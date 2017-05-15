object frmNovoPaciente: TfrmNovoPaciente
  Left = 691
  Top = 149
  BorderStyle = bsDialog
  Caption = 'Novo Paciente'
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
    TabOrder = 3
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
      Left = 423
      Top = 22
      Width = 25
      Height = 13
      Caption = 'INSS'
      Transparent = True
    end
    object Label14: TLabel
      Left = 3
      Top = 61
      Width = 21
      Height = 13
      Caption = 'M'#227'e'
      Transparent = True
    end
    object Label13: TLabel
      Left = 423
      Top = 61
      Width = 15
      Height = 13
      Caption = 'Pai'
      Transparent = True
    end
    object Label15: TLabel
      Left = 2
      Top = 79
      Width = 24
      Height = 13
      Caption = 'Sexo'
      Transparent = True
    end
    object Label25: TLabel
      Left = 423
      Top = 79
      Width = 39
      Height = 13
      Caption = 'Conjuge'
      Transparent = True
    end
    object Label28: TLabel
      Left = 222
      Top = 22
      Width = 50
      Height = 13
      Caption = 'Identidade'
      Transparent = True
    end
    object Label16: TLabel
      Left = 135
      Top = 79
      Width = 55
      Height = 13
      Caption = 'Estado Civil'
      Transparent = True
    end
    object Label17: TLabel
      Left = 274
      Top = 79
      Width = 42
      Height = 13
      Caption = 'Dt Nasc.'
      Transparent = True
    end
    object lbl3: TLabel
      Left = 3
      Top = 42
      Width = 41
      Height = 13
      Caption = 'Tit. Eleit.'
      Transparent = True
    end
    object lbl5: TLabel
      Left = 222
      Top = 42
      Width = 50
      Height = 13
      Caption = 'Cart. Trab.'
      Transparent = True
    end
    object lbl4: TLabel
      Left = 423
      Top = 42
      Width = 34
      Height = 13
      Caption = 'Crach'#225
      Transparent = True
    end
    object edtnmconjuge: TcxDBTextEdit
      Left = 475
      Top = 71
      DataBinding.DataField = 'NMCONJUGE'
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
      Width = 299
    end
    object edtdtnascimento: TcxDBDateEdit
      Left = 325
      Top = 71
      DataBinding.DataField = 'DTNASCIMENTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 97
    end
    object cbxcdestcivil: TcxDBComboBox
      Left = 192
      Top = 71
      DataBinding.DataField = 'CDESTCIVIL'
      DataBinding.DataSource = dts
      Properties.Items.Strings = (
        'SOLTEIRO'
        'CASADO'
        'DIVORCIADO'
        'VI'#218'VO'
        'AMASIADO')
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 76
    end
    object cbxcdsexo: TcxDBComboBox
      Left = 51
      Top = 71
      DataBinding.DataField = 'CDSEXO'
      DataBinding.DataSource = dts
      Properties.Items.Strings = (
        'MASCULINO'
        'FEMININO'
        'INDETERMINADO')
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 76
    end
    object edtnmpai: TcxDBTextEdit
      Left = 475
      Top = 54
      DataBinding.DataField = 'NMPAI'
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
      Width = 299
    end
    object edtnmmae: TcxDBTextEdit
      Left = 51
      Top = 54
      DataBinding.DataField = 'NMMAE'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 371
    end
    object edtNUINSS: TcxDBTextEdit
      Left = 475
      Top = 14
      DataBinding.DataField = 'NUINSS'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 299
    end
    object edtnuidentid: TcxDBTextEdit
      Left = 279
      Top = 14
      DataBinding.DataField = 'NUIDENTID'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 143
    end
    object edtnucpf: TcxDBMaskEdit
      Left = 51
      Top = 14
      DataBinding.DataField = 'NUCPF'
      DataBinding.DataSource = dts
      Properties.CharCase = ecLowerCase
      Properties.EditMask = '999.999.999-99'
      Properties.MaxLength = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 156
    end
    object edtNUCRACHA: TcxDBTextEdit
      Left = 475
      Top = 34
      DataBinding.DataField = 'NUCRACHA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 299
    end
    object edtNUCARTEIRATRABALHO: TcxDBTextEdit
      Left = 279
      Top = 34
      DataBinding.DataField = 'NUCARTEIRATRABALHO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 143
    end
    object edtNUTITULOELEITOR: TcxDBTextEdit
      Left = 51
      Top = 34
      DataBinding.DataField = 'NUTITULOELEITOR'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 11
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 156
    end
  end
  object edtNome: TcxDBTextEdit
    Left = 91
    Top = 14
    DataBinding.DataField = 'NMPACIENTE'
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    OnEnter = colorenter
    OnExit = colorexit
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
    TabOrder = 6
  end
  object cxButton1: TcxButton
    Left = 314
    Top = 400
    Width = 75
    Height = 25
    Action = actSalvar1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 5
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
    TabOrder = 2
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
    object lbl2: TLabel
      Left = 423
      Top = 107
      Width = 22
      Height = 13
      Caption = 'Pa'#237's'
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
    object cbxcdpais: TcxDBLookupComboBox
      Left = 475
      Top = 99
      DataBinding.DataField = 'CDPAIS'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDPAIS'
      Properties.ListColumns = <
        item
          FieldName = 'NMPAIS'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 11
      OnEnter = colorenter
      OnExit = colorexit
      Width = 303
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
    TabOrder = 4
    Height = 83
    Width = 781
    object Label38: TLabel
      Left = 2
      Top = 42
      Width = 18
      Height = 13
      Caption = 'Site'
      Transparent = True
    end
    object Label58: TLabel
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
    object lblfuncao: TLabel
      Left = 422
      Top = 20
      Width = 43
      Height = 13
      Caption = 'Profiss'#227'o'
      Transparent = True
    end
    object lblescolaridade: TLabel
      Left = 422
      Top = 63
      Width = 46
      Height = 13
      Caption = 'Escolarid.'
      Transparent = True
    end
    object edthomepage: TcxDBTextEdit
      Left = 50
      Top = 36
      DataBinding.DataField = 'HOMEPAGE'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 371
    end
    object edtemail: TcxDBTextEdit
      Left = 475
      Top = 35
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 297
    end
    object cbxcdstpaciente: TcxDBLookupComboBox
      Left = 50
      Top = 15
      DataBinding.DataField = 'CDSTPACIENTE'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
      Properties.KeyFieldNames = 'CDSTPACIENTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTPACIENTE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnExit = colorexit
      Width = 371
    end
    object cbxcdprofissao: TcxDBLookupComboBox
      Left = 475
      Top = 15
      DataBinding.DataField = 'CDPROFISSAO'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
      Properties.KeyFieldNames = 'CDPROFISSAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMPROFISSAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnExit = colorexit
      Width = 297
    end
    object cbxcdescolaridade: TcxDBLookupComboBox
      Left = 475
      Top = 57
      DataBinding.DataField = 'CDESCOLARIDADE'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
      Properties.KeyFieldNames = 'CDESCOLARIDADE'
      Properties.ListColumns = <
        item
          FieldName = 'NMESCOLARIDADE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnExit = colorexit
      Width = 297
    end
  end
  object gbxcadastro: TcxGroupBox
    Left = 2
    Top = 351
    Caption = 'Cadastro'
    TabOrder = 7
    Height = 44
    Width = 781
    object Label1: TLabel
      Left = 3
      Top = 23
      Width = 45
      Height = 13
      Caption = 'Admiss'#227'o'
      Transparent = True
    end
    object Label2: TLabel
      Left = 173
      Top = 23
      Width = 46
      Height = 13
      Caption = 'Demiss'#227'o'
      Transparent = True
    end
    object Label35: TLabel
      Left = 344
      Top = 21
      Width = 42
      Height = 13
      Caption = 'Cadastro'
      Transparent = True
    end
    object edtDTADMISSAO: TcxDBDateEdit
      Left = 52
      Top = 15
      DataBinding.DataField = 'DTADMISSAO'
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
    object edtDTDEMISSAO: TcxDBDateEdit
      Left = 220
      Top = 15
      DataBinding.DataField = 'DTDEMISSAO'
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
    object edtdtcadastro: TcxDBDateEdit
      Left = 392
      Top = 13
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
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 94
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
    Connection = dtmmain.confire
    SQL.Strings = (
      
        'select * from PACIENTE WHERE CDEMPRESA=:CDEMPRESA AND CDPACIENTE' +
        '=:CDPACIENTE')
    Left = 512
    Top = 368
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CDPACIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end

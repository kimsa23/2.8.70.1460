object frmRepresentante: TfrmRepresentante
  Left = 492
  Top = 142
  ClientHeight = 644
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgc: TcxPageControl
    Left = 0
    Top = 126
    Width = 1026
    Height = 518
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tbscadastro
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    OnChange = pgcChange
    ClientRectBottom = 518
    ClientRectRight = 1026
    ClientRectTop = 25
    object tbscadastro: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 40
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbxFisica: TcxGroupBox
        Left = 0
        Top = 240
        Align = alTop
        Caption = 'Dados Pessoal F'#237'sica'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Transparent = True
        Visible = False
        Height = 111
        Width = 1026
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
          Left = 423
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
          Left = 423
          Top = 65
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
          Top = 66
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
          Transparent = True
        end
        object Label13: TLabel
          Left = 274
          Top = 67
          Width = 42
          Height = 13
          Caption = 'Dt Nasc.'
          Transparent = True
        end
        object Label6: TLabel
          Left = 3
          Top = 85
          Width = 25
          Height = 13
          Caption = 'INSS'
          Transparent = True
        end
        object Label19: TLabel
          Left = 242
          Top = 85
          Width = 79
          Height = 13
          Caption = 'N'#186' Dependentes'
          Transparent = True
        end
        object edtnudependentes: TcxDBSpinEdit
          Left = 325
          Top = 80
          DataBinding.DataField = 'NUDEPENDENTES'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Width = 97
        end
        object edtnuinss: TcxDBTextEdit
          Left = 51
          Top = 80
          DataBinding.DataField = 'NUINSS'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 133
        end
        object edtnmconjuge: TcxDBTextEdit
          Left = 475
          Top = 59
          DataBinding.DataField = 'NMCONJUGE'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 297
        end
        object edtdtnascimento: TcxDBDateEdit
          Left = 325
          Top = 59
          DataBinding.DataField = 'DTNASCIMENTO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 97
        end
        object cbxcdestcivil: TcxDBComboBox
          Left = 192
          Top = 58
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
          TabOrder = 6
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 76
        end
        object cbxcdsexo: TcxDBComboBox
          Left = 51
          Top = 58
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
          Top = 36
          DataBinding.DataField = 'NMMAE'
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
          Width = 371
        end
        object edtnuinscest2: TcxDBTextEdit
          Left = 475
          Top = 14
          DataBinding.DataField = 'NUINSCEST'
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
          TabOrder = 1
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
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 156
        end
      end
      object gbxJuridica: TcxGroupBox
        Left = 0
        Top = 129
        Align = alTop
        Caption = 'Dados Pessoa Jur'#237'dica'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Transparent = True
        Height = 111
        Width = 1026
        object Label24: TLabel
          Left = 4
          Top = 27
          Width = 27
          Height = 13
          Caption = 'CNPJ'
          Transparent = True
        end
        object Label29: TLabel
          Left = 423
          Top = 24
          Width = 38
          Height = 13
          Caption = 'Insc Est'
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
          Left = 475
          Top = 19
          DataBinding.DataField = 'NUINSCEST'
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
          Width = 302
        end
      end
      object gbxComercial: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Endere'#231'o Comercial'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Transparent = True
        Height = 129
        Width = 1026
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
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          Transparent = True
        end
        object Label66: TLabel
          Left = 423
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
          Left = 423
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
          Left = 423
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
          Left = 423
          Top = 104
          Width = 17
          Height = 13
          Caption = 'Fax'
          Transparent = True
        end
        object edtnufax: TcxDBMaskEdit
          Left = 475
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
          Left = 133
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
          Left = 51
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
          Left = 475
          Top = 57
          DataBinding.DataField = 'NUCXPOSTAL'
          DataBinding.DataSource = dts
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
        object edtnucep: TcxDBMaskEdit
          Left = 51
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
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 59
        end
        object edtNmbairro: TcxDBTextEdit
          Left = 51
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
          Width = 148
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
          Left = 51
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
          Left = 51
          Top = 78
          DataBinding.DataField = 'CDUF'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDUF'
          Properties.ListColumns = <
            item
              FieldName = 'NMUF'
            end>
          Properties.ListOptions.ShowHeader = False
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
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          OnEnter = colorenter
          OnExit = colorexit
          Width = 303
        end
        object edtnufone3: TcxDBMaskEdit
          Left = 219
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
      end
      object gbxoutros: TcxGroupBox
        Left = 0
        Top = 351
        Align = alTop
        Caption = 'Outros'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Transparent = True
        Height = 108
        Width = 1026
        object Label38: TLabel
          Left = 5
          Top = 44
          Width = 18
          Height = 13
          Caption = 'Site'
          Transparent = True
        end
        object Label58: TLabel
          Left = 422
          Top = 44
          Width = 27
          Height = 13
          Caption = 'e-mail'
          Transparent = True
        end
        object Label60: TLabel
          Left = 5
          Top = 24
          Width = 30
          Height = 13
          Caption = 'Status'
          Transparent = True
        end
        object Label32: TLabel
          Left = 422
          Top = 24
          Width = 45
          Height = 13
          Caption = 'Comiss'#227'o'
          Transparent = True
        end
        object Label1: TLabel
          Left = 524
          Top = 24
          Width = 21
          Height = 13
          Caption = 'Tipo'
          Transparent = True
        end
        object lblusuario: TLabel
          Left = 2
          Top = 67
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
          Transparent = True
        end
        object lblcdfuncionario: TLabel
          Left = 422
          Top = 67
          Width = 55
          Height = 13
          Caption = 'Funcion'#225'rio'
          Transparent = True
        end
        object edtprcomissao: TcxDBCalcEdit
          Left = 478
          Top = 15
          DataBinding.DataField = 'PRCOMISSAO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 46
        end
        object edthomepage: TcxDBTextEdit
          Left = 50
          Top = 38
          DataBinding.DataField = 'HOMEPAGE'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 371
        end
        object edtemail: TcxDBTextEdit
          Left = 478
          Top = 37
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 297
        end
        object cbxcdstrepresentante: TcxDBLookupComboBox
          Left = 50
          Top = 15
          DataBinding.DataField = 'CDSTREPRESENTANTE'
          DataBinding.DataSource = dts
          Properties.Alignment.Horz = taLeftJustify
          Properties.KeyFieldNames = 'CDSTREPRESENTANTE'
          Properties.ListColumns = <
            item
              FieldName = 'NMSTREPRESENTANTE'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnExit = colorexit
          Width = 371
        end
        object cbxcdtpcomissaorepresentante: TcxDBLookupComboBox
          Left = 550
          Top = 15
          DataBinding.DataField = 'CDTPCOMISSAOREPRESENTANTE'
          DataBinding.DataSource = dts
          Properties.Alignment.Horz = taLeftJustify
          Properties.KeyFieldNames = 'CDTPCOMISSAOREPRESENTANTE'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPCOMISSAOREPRESENTANTE'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnExit = colorexit
          Width = 225
        end
        object cbxcdusuario: TcxDBLookupComboBox
          Left = 50
          Top = 61
          DataBinding.DataField = 'CDUSUARIO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDUSUARIO'
          Properties.ListColumns = <
            item
              FieldName = 'NMUSUARIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnEnter = cbxcdusuarioEnter
          OnExit = colorexit
          Width = 370
        end
        object cbxcdfuncionario: TcxDBLookupComboBox
          Left = 478
          Top = 61
          DataBinding.DataField = 'CDFUNCIONARIO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDFUNCIONARIO'
          Properties.ListColumns = <
            item
              FieldName = 'NMFUNCIONARIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnEnter = cbxcdfuncionarioEnter
          OnExit = colorexit
          Width = 297
        end
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 62
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memdsobservacao: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 493
        Width = 1026
      end
    end
    object tbscontato: TcxTabSheet
      Caption = 'Contato'
      ImageIndex = 41
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditcontrepresentante: TcxGrid
        Left = 0
        Top = 0
        Width = 1026
        Height = 493
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvitcontrepresentante: TcxGridDBTableView
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
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsitcontrepresentante
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'NMITCONTFORNECEDOR'
              Column = tbvitcontrepresentanteNMITCONTFORNECEDOR
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvitcontrepresentanteNMITCONTFORNECEDOR: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMITCONTREPRESENTANTE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 156
          end
          object tbvitcontrepresentanteEMAIL: TcxGridDBColumn
            Caption = 'e-mail'
            DataBinding.FieldName = 'EMAIL'
            Width = 114
          end
          object tbvitcontrepresentanteHOMEPAGE: TcxGridDBColumn
            Caption = 'Site'
            DataBinding.FieldName = 'HOMEPAGE'
            Width = 109
          end
          object tbvitcontrepresentanteNUFONE1: TcxGridDBColumn
            Caption = 'Telefone 1'
            DataBinding.FieldName = 'NUFONE1'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '(99)9999-9999'
          end
          object tbvitcontrepresentanteNURAMAL: TcxGridDBColumn
            Caption = 'Ramal'
            DataBinding.FieldName = 'NURAMAL'
            Width = 40
          end
          object tbvitcontrepresentanteNUFONE2: TcxGridDBColumn
            Caption = 'Telefone 2'
            DataBinding.FieldName = 'NUFONE2'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '(99)9999-9999'
          end
          object tbvitcontrepresentanteNUFAX: TcxGridDBColumn
            Caption = 'Fax'
            DataBinding.FieldName = 'NUFAX'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '(99)9999-9999'
          end
          object tbvitcontrepresentanteNMDEPARTAMENTO: TcxGridDBColumn
            Caption = 'Departamento'
            DataBinding.FieldName = 'NMDEPARTAMENTO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 107
          end
          object tbvitcontrepresentanteNMSETOR: TcxGridDBColumn
            Caption = 'Setor'
            DataBinding.FieldName = 'NMSETOR'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 83
          end
          object tbvitcontrepresentanteNMFUNCAO: TcxGridDBColumn
            Caption = 'Fun'#231#227'o'
            DataBinding.FieldName = 'NMFUNCAO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 131
          end
        end
        object grditcontrepresentanteLevel1: TcxGridLevel
          GridView = tbvitcontrepresentante
        end
      end
    end
    object tbsconsulta: TcxTabSheet
      Caption = 'Consulta'
      ImageIndex = 41
      ExplicitHeight = 456
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1026
        Height = 38
        Align = dalTop
        BarManager = bmg1
      end
      object grdconsulta: TcxGrid
        Left = 0
        Top = 38
        Width = 1026
        Height = 455
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object grdconsultapedido: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
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
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsconsulta
          DataController.DetailKeyFieldNames = 'CDPEDIDO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grdconsultapedidoVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object grdconsultapedidoNUPEDIDO: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'NUPEDIDO'
          end
          object grdconsultapedidoDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object grdconsultapedidoNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Width = 129
          end
          object grdconsultapedidoNMCONDPAGTO: TcxGridDBColumn
            Caption = 'Condi'#231#227'o Pagamento'
            DataBinding.FieldName = 'NMCONDPAGTO'
            Width = 157
          end
          object grdconsultapedidoNMSTPEDIDO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTPEDIDO'
            Width = 124
          end
          object grdconsultapedidoVLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdconsultaitpedido: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Enabled = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Edit.Enabled = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Enabled = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Enabled = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsitconsulta
          DataController.DetailKeyFieldNames = 'CDPEDIDO'
          DataController.KeyFieldNames = 'CDPEDIDO'
          DataController.MasterKeyFieldNames = 'CDPEDIDO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTATENDIDA'
              Column = grdconsultaitpedidoQTATENDIDA
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = grdconsultaitpedidoQTITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grdconsultaitpedidoVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdconsultaitpedidoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            Width = 93
          end
          object grdconsultaitpedidoNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 281
          end
          object grdconsultaitpedidoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
          end
          object grdconsultaitpedidoQTATENDIDA: TcxGridDBColumn
            Caption = 'Atendida'
            DataBinding.FieldName = 'QTATENDIDA'
          end
          object grdconsultaitpedidoVLUNITARIO: TcxGridDBColumn
            Caption = 'Valor Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdconsultaitpedidoVLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdconsultasaida: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
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
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsconsulta
          DataController.DetailKeyFieldNames = 'CDSAIDA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grdconsultasaidaVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdconsultasaidaNUSAIDA: TcxGridDBColumn
            Caption = 'Nota Fiscal'
            DataBinding.FieldName = 'NUSAIDA'
          end
          object grdconsultasaidaDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object grdconsultasaidaNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Width = 315
          end
          object grdconsultasaidaNMCONDPAGTO: TcxGridDBColumn
            Caption = 'Condi'#231#227'o Pagamento'
            DataBinding.FieldName = 'NMCONDPAGTO'
            Width = 197
          end
          object grdconsultasaidaVLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdconsultaitsaida: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = True
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
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsitconsulta
          DataController.DetailKeyFieldNames = 'CDSAIDA'
          DataController.KeyFieldNames = 'CDSAIDA'
          DataController.MasterKeyFieldNames = 'CDSAIDA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = grdconsultaitsaidaQTITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grdconsultaitsaidaVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdconsultaitsaidaNUPEDIDO: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'NUPEDIDO'
          end
          object grdconsultaitsaidaCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            Width = 100
          end
          object grdconsultaitsaidaNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 451
          end
          object grdconsultaitsaidaQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
          end
          object grdconsultaitsaidaVLUNITARIO: TcxGridDBColumn
            Caption = 'Valor Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdconsultaitsaidaVLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdconsultaduplicata: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
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
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDUPLICATA'
              Column = grdconsultaduplicataVLDUPLICATA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLRECEBIDO'
              Column = grdconsultaduplicataVLRECEBIDO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLSALDO'
              Column = grdconsultaduplicataVLSALDO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdconsultaduplicataNUDUPLICATA: TcxGridDBColumn
            Caption = 'Contas a Receber'
            DataBinding.FieldName = 'NUDUPLICATA'
            Width = 82
          end
          object grdconsultaduplicataNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Width = 325
          end
          object grdconsultaduplicataDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object grdconsultaduplicataDTVENCIMENTO: TcxGridDBColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'DTVENCIMENTO'
          end
          object grdconsultaduplicataVLDUPLICATA: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLDUPLICATA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdconsultaduplicataVLSALDO: TcxGridDBColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'VLSALDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdconsultaduplicataVLRECEBIDO: TcxGridDBColumn
            Caption = 'Recebido'
            DataBinding.FieldName = 'VLRECEBIDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdconsultaduplicataNMSTDUPLICATA: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTDUPLICATA'
            Width = 70
          end
        end
        object grdconsultacliente: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
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
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdconsultaclienteCDCLIENTE: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDCLIENTE'
          end
          object grdconsultaclienteNMCLIENTE: TcxGridDBColumn
            Caption = 'Nome Fantasia'
            DataBinding.FieldName = 'NMCLIENTE'
            Width = 218
          end
          object grdconsultaclienteRZSOCIAL: TcxGridDBColumn
            Caption = 'Raz'#227'o Social'
            DataBinding.FieldName = 'RZSOCIAL'
            Width = 222
          end
          object grdconsultaclienteTPPESSOA: TcxGridDBColumn
            Caption = 'Pessoa'
            DataBinding.FieldName = 'TPPESSOA'
          end
          object grdconsultaclienteDSENDERECO: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'DSENDERECO'
            Width = 241
          end
          object grdconsultaclienteNMBAIRRO: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'NMBAIRRO'
            Width = 133
          end
          object grdconsultaclienteNMMUNICIPIO: TcxGridDBColumn
            Caption = 'Munic'#237'pio'
            DataBinding.FieldName = 'NMMUNICIPIO'
            Width = 96
          end
          object grdconsultaclienteSGUF: TcxGridDBColumn
            Caption = 'UF'
            DataBinding.FieldName = 'SGUF'
          end
          object grdconsultaclienteNUCEP: TcxGridDBColumn
            Caption = 'CEP'
            DataBinding.FieldName = 'NUCEP'
          end
          object grdconsultaclienteDTCADASTRO: TcxGridDBColumn
            Caption = 'Cadastro'
            DataBinding.FieldName = 'DTCADASTRO'
          end
        end
        object grdconsultaLevel1: TcxGridLevel
          GridView = grdconsultapedido
          object grdconsultaLevel2: TcxGridLevel
            GridView = grdconsultaitpedido
          end
        end
      end
    end
  end
  object pnltop: TPanel
    Left = 0
    Top = 86
    Width = 1026
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object lblcodigo: TLabel
      Left = 6
      Top = 2
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 111
      Top = 2
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object lblrzsocial: TLabel
      Left = 383
      Top = 2
      Width = 63
      Height = 13
      Caption = 'Raz'#227'o Social'
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 16
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 105
    end
    object edtnome: TcxDBTextEdit
      Left = 110
      Top = 16
      DataBinding.DataField = 'NMREPRESENTANTE'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = edtnomeExit
      OnKeyDown = nextcontrol
      Width = 272
    end
    object edtrzsocial: TcxDBTextEdit
      Left = 382
      Top = 16
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
      Width = 274
    end
    object rdbtppessoa: TcxDBRadioGroup
      Left = 657
      Top = 4
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
      Height = 33
      Width = 123
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
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 324
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
    object actImpCadastroG: TAction
      Caption = 'Cadastro'
      Hint = 'Imprimir Cadastro Modo Gr'#225'fico'
      OnExecute = actImpCadastroGExecute
    end
    object actimpContatoG: TAction
      Caption = 'Contato'
      Hint = 'Contato'
      OnExecute = actimpContatoGExecute
    end
    object actabrirPedido: TAction
      Hint = 'Pedido'
      ImageIndex = 25
      OnExecute = actabrirPedidoExecute
    end
    object actAbrirSaida: TAction
      Hint = 'saida'
      ImageIndex = 19
      OnExecute = actAbrirSaidaExecute
    end
    object actAbrirDuplicata: TAction
      Hint = 'Duplicata'
      ImageIndex = 32
      OnExecute = actAbrirDuplicataExecute
    end
    object actabrircliente: TAction
      Hint = 'Cliente'
      ImageIndex = 35
      OnExecute = actabrirclienteExecute
    end
    object actconsultapedido: TAction
      AutoCheck = True
      Caption = 'Pedido'
      Hint = 'Consulta Pedido'
      ImageIndex = 25
      OnExecute = actconsultapedidoExecute
    end
    object actconsultasaida: TAction
      AutoCheck = True
      Caption = 'Nota Fiscal'
      Hint = 'Consulta Nota Fiscal'
      ImageIndex = 19
      OnExecute = actconsultasaidaExecute
    end
    object actconsultaduplicata: TAction
      AutoCheck = True
      Caption = 'Contas a Receber'
      Hint = 'Consulta Contas a Receber'
      ImageIndex = 32
      OnExecute = actconsultaduplicataExecute
    end
    object actconsultacliente: TAction
      AutoCheck = True
      Caption = 'Cliente'
      Hint = 'Consulta Cliente'
      ImageIndex = 35
      OnExecute = actconsultaclienteExecute
    end
    object actAlterarRepresentante: TAction
      Caption = 'Transferir Cliente'
      Enabled = False
      Hint = 'Alterar Representante'
      ImageIndex = 43
      Visible = False
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
    Left = 296
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
      Caption = 'representante'
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
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
    object bmg1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'consulta'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 311
      FloatTop = 66
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btncliente'
        end
        item
          Visible = True
          ItemName = 'btnduplicata'
        end
        item
          Visible = True
          ItemName = 'btnpedido'
        end
        item
          Visible = True
          ItemName = 'btnsaida'
        end>
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
          ItemName = 'dxBarLargeButton1'
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
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actAlterarRepresentante
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actImpCadastroG
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actimpContatoG
      Category = 0
    end
    object btncliente: TdxBarLargeButton
      Action = actconsultacliente
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnduplicata: TdxBarLargeButton
      Action = actconsultaduplicata
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnpedido: TdxBarLargeButton
      Action = actconsultapedido
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnsaida: TdxBarLargeButton
      Action = actconsultasaida
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM REPRESENTANTE WHERE CDEMPRESA=:CDEMPRESA AND CDREP' +
      'RESENTANTE=:CDREPRESENTANTE'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'CDREPRESENTANTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 765
    Top = 67
    object sdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTREPRESENTANTE: TIntegerField
      FieldName = 'CDSTREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNMREPRESENTANTE: TStringField
      FieldName = 'NMREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsRZSOCIAL: TStringField
      FieldName = 'RZSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDSENDERECO: TStringField
      FieldName = 'DSENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUCXPOSTAL: TStringField
      FieldName = 'NUCXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsNUCEP: TStringField
      FieldName = 'NUCEP'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsNUFONE1: TStringField
      FieldName = 'NUFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsNUFONE2: TStringField
      FieldName = 'NUFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsNUFONE3: TStringField
      FieldName = 'NUFONE3'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsNUFAX: TStringField
      FieldName = 'NUFAX'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUINSCEST: TStringField
      FieldName = 'NUINSCEST'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCNPJ: TStringField
      FieldName = 'NUCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUIDENTID: TStringField
      FieldName = 'NUIDENTID'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNUCPF: TStringField
      FieldName = 'NUCPF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNMPAI: TStringField
      FieldName = 'NMPAI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMMAE: TStringField
      FieldName = 'NMMAE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMCONJUGE: TStringField
      FieldName = 'NMCONJUGE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSEXO: TStringField
      FieldName = 'CDSEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDESTCIVIL: TStringField
      FieldName = 'CDESTCIVIL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNUINSS: TStringField
      FieldName = 'NUINSS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDEPENDENTES: TIntegerField
      FieldName = 'NUDEPENDENTES'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSNUMERO: TStringField
      FieldName = 'DSNUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsDSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
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
    object sdsCDTPCOMISSAOREPRESENTANTE: TIntegerField
      FieldName = 'CDTPCOMISSAOREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitcontrepresentante: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITCONTREPRESENTANTE WHERE CDEMPRESA=:CDEMPRESA AND' +
      ' CDREPRESENTANTE=:CDREPRESENTANTE'
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
        Name = 'CDREPRESENTANTE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 793
    Top = 67
    object sdsitcontrepresentanteCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcontrepresentanteNMITCONTREPRESENTANTE: TStringField
      FieldName = 'NMITCONTREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsitcontrepresentanteEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitcontrepresentanteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitcontrepresentanteNURAMAL: TStringField
      FieldName = 'NURAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsitcontrepresentanteNUFONE1: TStringField
      FieldName = 'NUFONE1'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsitcontrepresentanteNUFONE2: TStringField
      FieldName = 'NUFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsitcontrepresentanteNUFAX: TStringField
      FieldName = 'NUFAX'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsitcontrepresentanteNMDEPARTAMENTO: TStringField
      FieldName = 'NMDEPARTAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitcontrepresentanteNMSETOR: TStringField
      FieldName = 'NMSETOR'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitcontrepresentanteNMFUNCAO: TStringField
      FieldName = 'NMFUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitcontrepresentanteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcontrepresentanteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcontrepresentanteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcontrepresentanteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcontrepresentanteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcontrepresentanteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcontrepresentanteCDITCONTREPRESENTANTE: TIntegerField
      FieldName = 'CDITCONTREPRESENTANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitcontrepresentanteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsconsulta: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 821
    Top = 67
  end
  object sdsitconsulta: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 849
    Top = 67
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 737
    Top = 67
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 763
    Top = 95
    object cdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDUFValidate
    end
    object cdsCDSTREPRESENTANTE: TIntegerField
      FieldName = 'CDSTREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNMREPRESENTANTE: TStringField
      FieldName = 'NMREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsNMREPRESENTANTEValidate
      Size = 100
    end
    object cdsRZSOCIAL: TStringField
      FieldName = 'RZSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDSENDERECO: TStringField
      FieldName = 'DSENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUCXPOSTAL: TStringField
      FieldName = 'NUCXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsNUCEP: TStringField
      FieldName = 'NUCEP'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCEPValidate
      Size = 9
    end
    object cdsNUFONE1: TStringField
      FieldName = 'NUFONE1'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUFONE1Validate
      Size = 14
    end
    object cdsNUFONE2: TStringField
      FieldName = 'NUFONE2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUFONE2Validate
      Size = 14
    end
    object cdsNUFONE3: TStringField
      FieldName = 'NUFONE3'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUFONE3Validate
      Size = 14
    end
    object cdsNUFAX: TStringField
      FieldName = 'NUFAX'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUFAXValidate
      Size = 14
    end
    object cdsPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUINSCEST: TStringField
      FieldName = 'NUINSCEST'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCNPJ: TStringField
      FieldName = 'NUCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUIDENTID: TStringField
      FieldName = 'NUIDENTID'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNUCPF: TStringField
      FieldName = 'NUCPF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNMPAI: TStringField
      FieldName = 'NMPAI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNMMAE: TStringField
      FieldName = 'NMMAE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNMCONJUGE: TStringField
      FieldName = 'NMCONJUGE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDTNASCIMENTOValidate
    end
    object cdsCDSEXO: TStringField
      FieldName = 'CDSEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDESTCIVIL: TStringField
      FieldName = 'CDESTCIVIL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUINSS: TStringField
      FieldName = 'NUINSS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUDEPENDENTES: TIntegerField
      FieldName = 'NUDEPENDENTES'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSNUMERO: TStringField
      FieldName = 'DSNUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsDSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
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
    object cdssdsitcontrepresentante: TDataSetField
      FieldName = 'sdsitcontrepresentante'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCOMISSAOREPRESENTANTE: TIntegerField
      FieldName = 'CDTPCOMISSAOREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
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
    Left = 764
    Top = 123
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 709
    Top = 67
  end
  object cdsitcontrepresentante: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitcontrepresentante
    Params = <>
    BeforePost = cdsitcontrepresentanteBeforePost
    OnNewRecord = cdsitcontrepresentanteNewRecord
    Left = 792
    Top = 95
    object cdsitcontrepresentanteCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcontrepresentanteNMITCONTREPRESENTANTE: TStringField
      FieldName = 'NMITCONTREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsitcontrepresentanteEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsitcontrepresentanteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsitcontrepresentanteNURAMAL: TStringField
      FieldName = 'NURAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsitcontrepresentanteNUFONE1: TStringField
      FieldName = 'NUFONE1'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitcontrepresentanteNUFONE1Validate
      Size = 14
    end
    object cdsitcontrepresentanteNUFONE2: TStringField
      FieldName = 'NUFONE2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitcontrepresentanteNUFONE2Validate
      Size = 14
    end
    object cdsitcontrepresentanteNUFAX: TStringField
      FieldName = 'NUFAX'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitcontrepresentanteNUFAXValidate
      Size = 14
    end
    object cdsitcontrepresentanteNMDEPARTAMENTO: TStringField
      FieldName = 'NMDEPARTAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsitcontrepresentanteNMSETOR: TStringField
      FieldName = 'NMSETOR'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsitcontrepresentanteNMFUNCAO: TStringField
      FieldName = 'NMFUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsitcontrepresentanteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcontrepresentanteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcontrepresentanteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcontrepresentanteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcontrepresentanteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcontrepresentanteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcontrepresentanteCDITCONTREPRESENTANTE: TIntegerField
      FieldName = 'CDITCONTREPRESENTANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitcontrepresentanteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspconsulta'
    Left = 821
    Top = 95
  end
  object cdsitconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitconsulta'
    Left = 849
    Top = 95
  end
  object dtsitcontrepresentante: TDataSource
    DataSet = cdsitcontrepresentante
    Left = 793
    Top = 123
  end
  object dtsconsulta: TDataSource
    DataSet = cdsconsulta
    Left = 821
    Top = 123
  end
  object dtsitconsulta: TDataSource
    DataSet = cdsitconsulta
    Left = 849
    Top = 123
  end
  object dspconsulta: TDataSetProvider
    DataSet = sdsconsulta
    Left = 821
    Top = 151
  end
  object dspitconsulta: TDataSetProvider
    DataSet = sdsitconsulta
    Left = 849
    Top = 150
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 856
    Top = 184
  end
end

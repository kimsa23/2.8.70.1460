object frmFornecedor: TfrmFornecedor
  Left = 426
  Top = 310
  ClientHeight = 565
  ClientWidth = 1049
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
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 63
    Width = 1049
    Height = 502
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1049
      Height = 39
      Align = alTop
      ExplicitWidth = 899
    end
    object lblcodigo: TLabel
      Left = 8
      Top = 23
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 110
      Top = 23
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
      Transparent = True
    end
    object lblrzsocial: TLabel
      Left = 382
      Top = 23
      Width = 63
      Height = 13
      Caption = 'Raz'#227'o Social'
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 36
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 105
    end
    object edtrzsocial: TcxDBTextEdit
      Left = 382
      Top = 36
      DataBinding.DataField = 'RZSOCIAL'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 274
    end
    object pgc: TcxPageControl
      Left = 0
      Top = 62
      Width = 1049
      Height = 440
      Align = alClient
      TabOrder = 4
      Properties.ActivePage = tbscadastro
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dtmmain.imlMain
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 440
      ClientRectRight = 1049
      ClientRectTop = 25
      object tbscadastro: TcxTabSheet
        Caption = 'Cadastro'
        ImageIndex = 40
        object gbxFisica: TcxGroupBox
          Left = 2
          Top = 148
          Caption = 'Dados Pessoal F'#237'sica'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Visible = False
          Height = 96
          Width = 781
          object Label27: TLabel
            Left = 3
            Top = 22
            Width = 20
            Height = 13
            Caption = 'CPF'
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
            Left = 422
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
            Left = 422
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
          object lblnuinscest2: TLabel
            Left = 582
            Top = 22
            Width = 38
            Height = 13
            Caption = 'Insc Est'
            Transparent = True
          end
          object Label12: TLabel
            Left = 422
            Top = 22
            Width = 57
            Height = 13
            Caption = 'Indicador IE'
            Transparent = True
          end
          object edtnmconjuge: TcxDBTextEdit
            Left = 478
            Top = 59
            DataBinding.DataField = 'NMCONJUGE'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            TabOrder = 9
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 299
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
            TabOrder = 8
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
            TabOrder = 7
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
            TabOrder = 6
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 76
          end
          object edtnmpai: TcxDBTextEdit
            Left = 478
            Top = 36
            DataBinding.DataField = 'NMPAI'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            TabOrder = 5
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
            TabOrder = 4
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 371
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
          object edtnuinscest2: TcxDBTextEdit
            Left = 627
            Top = 14
            DataBinding.DataField = 'NUINSCEST'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 150
          end
          object cbxCDINDIEDEST2: TcxDBLookupComboBox
            Left = 479
            Top = 14
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
            Width = 100
          end
        end
        object gbxJuridica: TcxGroupBox
          Left = 2
          Top = 148
          Caption = 'Dados Pessoa Jur'#237'dica'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 96
          Width = 781
          object Label24: TLabel
            Left = 4
            Top = 27
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            Transparent = True
          end
          object lblnuinscest: TLabel
            Left = 423
            Top = 44
            Width = 38
            Height = 13
            Caption = 'Insc Est'
            Transparent = True
          end
          object lblCDINDIEDEST: TLabel
            Left = 4
            Top = 44
            Width = 57
            Height = 13
            Caption = 'Indicador IE'
            Transparent = True
          end
          object edtnucnpj: TcxDBMaskEdit
            Left = 62
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
            Width = 359
          end
          object edtnuinscest: TcxDBTextEdit
            Left = 480
            Top = 39
            DataBinding.DataField = 'NUINSCEST'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 302
          end
          object cbxcdindiedest: TcxDBLookupComboBox
            Left = 62
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
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 359
          end
        end
        object gbxoutros: TcxGroupBox
          Left = 2
          Top = 246
          Caption = 'Outros'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Height = 109
          Width = 781
          object Label38: TLabel
            Left = 1
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
            Left = 1
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
          object Label4: TLabel
            Left = 1
            Top = 86
            Width = 60
            Height = 13
            Caption = 'Tipo Regime'
            Transparent = True
          end
          object Label6: TLabel
            Left = 422
            Top = 89
            Width = 42
            Height = 13
            Caption = 'Cadastro'
            Transparent = True
          end
          object lblcdtpfornecedor: TLabel
            Left = 1
            Top = 69
            Width = 21
            Height = 13
            Caption = 'Tipo'
            Transparent = True
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
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 371
          end
          object edtemail: TcxDBTextEdit
            Left = 475
            Top = 37
            DataBinding.DataField = 'EMAIL'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 297
          end
          object cbxcdstfornecedor: TcxDBLookupComboBox
            Left = 50
            Top = 15
            DataBinding.DataField = 'CDSTFORNECEDOR'
            DataBinding.DataSource = dts
            Properties.Alignment.Horz = taLeftJustify
            Properties.KeyFieldNames = 'CDSTFORNECEDOR'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTFORNECEDOR'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = cbxcdstfornecedorEnter
            OnExit = colorexit
            Width = 371
          end
          object cbxcdrmatividadE: TcxDBLookupComboBox
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
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = cbxcdrmatividadEEnter
            OnExit = colorexit
            Width = 297
          end
          object chk1: TcxDBCheckBox
            Left = 475
            Top = 60
            Caption = 'Optante pelo simples'
            DataBinding.DataField = 'BOOPTANTESIMPLES'
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
          end
          object cbxcdtpregime: TcxDBLookupComboBox
            Left = 50
            Top = 82
            DataBinding.DataField = 'CDTPREGIME'
            DataBinding.DataSource = dts
            Properties.Alignment.Horz = taLeftJustify
            Properties.KeyFieldNames = 'CDTPREGIME'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPREGIME'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            OnEnter = cbxcdstfornecedorEnter
            OnExit = colorexit
            Width = 371
          end
          object ckbbocteseguradora: TcxDBCheckBox
            Left = 571
            Top = 81
            Caption = 'Seguradora para CTE'
            DataBinding.DataField = 'BOCTESEGURADORA'
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
          end
          object edtdtcadastro: TcxDBDateEdit
            Left = 475
            Top = 82
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
          object cbxcdtpfornecedor: TcxDBLookupComboBox
            Left = 50
            Top = 60
            DataBinding.DataField = 'CDTPFORNECEDOR'
            DataBinding.DataSource = dts
            Properties.Alignment.Horz = taLeftJustify
            Properties.KeyFieldNames = 'CDTPFORNECEDOR'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPFORNECEDOR'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = cbxcdstfornecedorEnter
            OnExit = colorexit
            Width = 371
          end
          object chkbonenviarpdf: TcxDBCheckBox
            Left = 596
            Top = 60
            Caption = 'N'#227'o enviar pdf para nfe no email'
            DataBinding.DataField = 'BONENVIARPDF'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Transparent = True
          end
        end
        object gbxComercial: TcxGroupBox
          Left = 2
          Top = 1
          Caption = 'Endere'#231'o Comercial'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Transparent = True
          Height = 145
          Width = 781
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
          object Label1: TLabel
            Left = 564
            Top = 104
            Width = 24
            Height = 13
            Caption = 'DDG'
            Transparent = True
          end
          object lbl2: TLabel
            Left = 6
            Top = 128
            Width = 22
            Height = 13
            Caption = 'Pa'#237's'
            Transparent = True
          end
          object edtNUDDG1: TcxDBMaskEdit
            Left = 593
            Top = 99
            DataBinding.DataField = 'NUDDG1'
            DataBinding.DataSource = dts
            Properties.EditMask = '9999-9999999'
            Properties.MaxLength = 0
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 12
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 81
          end
          object edtNUDDG2: TcxDBMaskEdit
            Left = 675
            Top = 99
            DataBinding.DataField = 'NUDDG2'
            DataBinding.DataSource = dts
            Properties.EditMask = '9999-9999999'
            Properties.MaxLength = 0
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 81
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
            Left = 480
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
            Left = 635
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
          object cbxcdpais: TcxDBLookupComboBox
            Left = 51
            Top = 120
            DataBinding.DataField = 'CDPAIS'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDPAIS'
            Properties.ListColumns = <
              item
                FieldName = 'NMPAIS'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 14
            OnEnter = colorenter
            OnExit = cbxcdufExit
            OnKeyDown = nextcontrol
            Width = 371
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
          Height = 415
          Width = 1049
        end
      end
      object tbsconsulta: TcxTabSheet
        Caption = 'Consulta'
        ImageIndex = 41
        ExplicitHeight = 378
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1049
          Height = 38
          Align = dalTop
          BarManager = bmg1
        end
        object grdconsulta: TcxGrid
          Left = 0
          Top = 38
          Width = 1049
          Height = 377
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object grdconsultaautpagto: TcxGridDBBandedTableView
            OnDblClick = grdconsultaautpagtoDblClick
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
            OnCustomDrawCell = grdconsultaautpagtoCustomDrawCell
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLAUTPAGTO'
                Column = grdconsultaautpagtoVLAUTPAGTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLRECEBIDO'
                Column = grdconsultaautpagtoVLRECEBIDO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLSALDO'
                Column = grdconsultaautpagtoVLSALDO
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Contas a Pagar'
              end
              item
                Caption = 'Valores'
              end>
            object grdconsultaautpagtoCDAUTPAGTO: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDAUTPAGTO'
              Styles.Content = cxStyle1
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaautpagtoNUAUTPAGTO: TcxGridDBBandedColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'NUAUTPAGTO'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaautpagtoDTEMISSAO: TcxGridDBBandedColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdconsultaautpagtoDTVENCIMENTO: TcxGridDBBandedColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'DTVENCIMENTO'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object grdconsultaautpagtoDTBAIXA: TcxGridDBBandedColumn
              Caption = 'Baixa'
              DataBinding.FieldName = 'DTBAIXA'
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object grdconsultaautpagtoNMSTAUTPAGTO: TcxGridDBBandedColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTAUTPAGTO'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object grdconsultaautpagtoVLAUTPAGTO: TcxGridDBBandedColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLAUTPAGTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaautpagtoVLSALDO: TcxGridDBBandedColumn
              Caption = 'Saldo'
              DataBinding.FieldName = 'VLSALDO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaautpagtoVLRECEBIDO: TcxGridDBBandedColumn
              Caption = 'Recebido'
              DataBinding.FieldName = 'VLRECEBIDO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdconsultaautpagtoNUCOR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NUCOR'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
          object grdconsultaadntfornecedor: TcxGridDBBandedTableView
            OnKeyDown = exportarGradeExcel
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Insert.Enabled = False
            Navigator.Buttons.Insert.Visible = False
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
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLADNTFORNECEDOR'
                Column = grdconsultaadntfornecedorVLADNTFORNECEDOR
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLSALDO'
                Column = grdconsultaadntfornecedorVLSALDO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLUTILIZADO'
                Column = grdconsultaadntfornecedorVLUTILIZADO
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Adiantamento Fornecedor'
              end
              item
                Caption = 'Valores'
              end>
            object grdconsultaadntfornecedorCDADNTFORNECEDOR: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDADNTFORNECEDOR'
              Styles.Content = cxStyle1
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaadntfornecedorDTEMISSAO: TcxGridDBBandedColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaadntfornecedorVLADNTFORNECEDOR: TcxGridDBBandedColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLADNTFORNECEDOR'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaadntfornecedorVLSALDO: TcxGridDBBandedColumn
              Caption = 'Saldo'
              DataBinding.FieldName = 'VLSALDO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaadntfornecedorVLUTILIZADO: TcxGridDBBandedColumn
              Caption = 'Utilizado'
              DataBinding.FieldName = 'VLUTILIZADO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object grdconsultaproduto: TcxGridDBBandedTableView
            OnDblClick = grdconsultaprodutoDblClick
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
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = grdconsultaprodutoQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = grdconsultaprodutoVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Produto'
              end
              item
                Caption = 'Valores'
              end>
            object grdconsultaprodutoCDPRODUTO: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDPRODUTO'
              Styles.Content = cxStyle1
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaprodutoNMPRODUTO: TcxGridDBBandedColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'NMPRODUTO'
              Width = 246
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaprodutoNMTPPRODUTO: TcxGridDBBandedColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'NMTPPRODUTO'
              Width = 82
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdconsultaprodutoNUNIVEL: TcxGridDBBandedColumn
              Caption = 'N'#237'vel'
              DataBinding.FieldName = 'NUNIVEL'
              Width = 57
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object grdconsultaprodutoNMGRUPO: TcxGridDBBandedColumn
              Caption = 'Grupo'
              DataBinding.FieldName = 'NMGRUPO'
              Width = 92
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object grdconsultaprodutoCDITEM: TcxGridDBBandedColumn
              Caption = #205'tem'
              DataBinding.FieldName = 'CDITEM'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object grdconsultaprodutoQTITEM: TcxGridDBBandedColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaprodutoVLUNITARIO: TcxGridDBBandedColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaprodutoVLTOTAL: TcxGridDBBandedColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object grdconsultapedidomaterial: TcxGridDBBandedTableView
            OnDblClick = grdconsultapedidomaterialDblClick
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
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = grdconsultapedidomaterialVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Cota'#231#227'o'
              end>
            object grdconsultapedidomaterialCDPEDIDOMATERIAL: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDPEDIDOMATERIAL'
              Styles.Content = cxStyle1
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultapedidomaterialDTEMISSAO: TcxGridDBBandedColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultapedidomaterialVLTOTAL: TcxGridDBBandedColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdconsultapedidomaterialNMCNTCUSTO: TcxGridDBBandedColumn
              Caption = 'Centro Custo'
              DataBinding.FieldName = 'NMCNTCUSTO'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
          object grdconsultaordcompra: TcxGridDBBandedTableView
            OnDblClick = grdconsultaordcompraDblClick
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
            DataController.DataSource = dtsconsulta
            DataController.DetailKeyFieldNames = 'CDORDCOMPRA'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = grdconsultaordcompraVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Ordem Compra'
              end>
            object grdconsultaordcompraCDORDCOMPRA: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDORDCOMPRA'
              Styles.Content = cxStyle1
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaordcompraDTEMISSAO: TcxGridDBBandedColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaordcompraDTENTREGA: TcxGridDBBandedColumn
              Caption = 'Entrega'
              DataBinding.FieldName = 'DTENTREGA'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdconsultaordcompraVLTOTAL: TcxGridDBBandedColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object grdconsultaordcompraNMTPORDCOMPRA: TcxGridDBBandedColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'NMTPORDCOMPRA'
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object grdconsultaordcompraNMCONDPAGTO: TcxGridDBBandedColumn
              Caption = 'Condi'#231#227'o Pagamento'
              DataBinding.FieldName = 'NMCONDPAGTO'
              Width = 111
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object grdconsultaordcompraNMSTORDCOMPRA: TcxGridDBBandedColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTORDCOMPRA'
              Width = 66
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object grdconsultaordcompraCDPEDIDOMATERIAL: TcxGridDBBandedColumn
              Caption = 'Pedido Material'
              DataBinding.FieldName = 'CDPEDIDOMATERIAL'
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object grdconsultaordcompraRZSOCIAL: TcxGridDBBandedColumn
              Caption = 'Transportadora'
              DataBinding.FieldName = 'RZSOCIAL'
              Width = 168
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
          object grdconsultaitordcompra: TcxGridDBBandedTableView
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
            DataController.DataSource = dtsitconsulta
            DataController.DetailKeyFieldNames = 'CDORDCOMPRA'
            DataController.KeyFieldNames = 'CDORDCOMPRA'
            DataController.MasterKeyFieldNames = 'CDORDCOMPRA'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = grdconsultaitordcompraQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = grdconsultaitordcompraVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Produto'
                Width = 502
              end
              item
                Caption = 'Valores'
              end>
            object grdconsultaitordcompraCDDIGITADO: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDDIGITADO'
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaitordcompraNMPRODUTO: TcxGridDBBandedColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'NMPRODUTO'
              Width = 415
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaitordcompraQTITEM: TcxGridDBBandedColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaitordcompraVLUNITARIO: TcxGridDBBandedColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaitordcompraVLTOTAL: TcxGridDBBandedColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object grdconsultaentrada: TcxGridDBBandedTableView
            OnDblClick = grdconsultaentradaDblClick
            OnKeyDown = exportarGradeExcel
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Enabled = False
            Navigator.Buttons.Last.Visible = False
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
            DataController.DataSource = dtsconsulta
            DataController.DetailKeyFieldNames = 'CDENTRADA'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = grdconsultaentradaVLTOTAL
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLBASEICMS'
                Column = grdconsultaentradaVLBASEICMS
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLBASEICMSSUBTRIB'
                Column = grdconsultaentradaVLBASEICMSSUBTRIB
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLFRETE'
                Column = grdconsultaentradaVLFRETE
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLICMS'
                Column = grdconsultaentradaVLICMS
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLICMSSUBTRIB'
                Column = grdconsultaentradaVLICMSSUBTRIB
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLIPI'
                Column = grdconsultaentradaVLIPI
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLISS'
                Column = grdconsultaentradaVLISS
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLPRODUTO'
                Column = grdconsultaentradaVLPRODUTO
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Compra'
                Width = 425
              end
              item
                Caption = 'Valores'
              end>
            object grdconsultaentradaNUENTRADA: TcxGridDBBandedColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'NUENTRADA'
              Styles.Content = cxStyle1
              Width = 51
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaentradaNUDOCFISCALICMS: TcxGridDBBandedColumn
              Caption = 'Doc Fisc ICMS'
              DataBinding.FieldName = 'NUDOCFISCALICMS'
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object grdconsultaentradaDTEMISSAO: TcxGridDBBandedColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaentradaNMCONDPAGTO: TcxGridDBBandedColumn
              Caption = 'Condi'#231#227'o Pagamento'
              DataBinding.FieldName = 'NMCONDPAGTO'
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object grdconsultaentradaDTSAIDA: TcxGridDBBandedColumn
              Caption = 'Entrada'
              DataBinding.FieldName = 'DTSAIDA'
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdconsultaentradaCDCFOP: TcxGridDBBandedColumn
              Caption = 'CFOP'
              DataBinding.FieldName = 'CDCFOP'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object grdconsultaentradaVLTOTAL: TcxGridDBBandedColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaentradaVLPRODUTO: TcxGridDBBandedColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'VLPRODUTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaentradaVLFRETE: TcxGridDBBandedColumn
              Caption = 'Frete'
              DataBinding.FieldName = 'VLFRETE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdconsultaentradaVLBASEICMS: TcxGridDBBandedColumn
              Caption = 'Base ICMS'
              DataBinding.FieldName = 'VLBASEICMS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object grdconsultaentradaVLICMS: TcxGridDBBandedColumn
              Caption = 'ICMS'
              DataBinding.FieldName = 'VLICMS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object grdconsultaentradaVLICMSSUBTRIB: TcxGridDBBandedColumn
              Caption = 'ICMS ST'
              DataBinding.FieldName = 'VLICMSSUBTRIB'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object grdconsultaentradaVLBASEICMSSUBTRIB: TcxGridDBBandedColumn
              Caption = 'Base ICMS ST'
              DataBinding.FieldName = 'VLBASEICMSSUBTRIB'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object grdconsultaentradaVLIPI: TcxGridDBBandedColumn
              Caption = 'IPI'
              DataBinding.FieldName = 'VLIPI'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object grdconsultaentradaVLISS: TcxGridDBBandedColumn
              Caption = 'ISS'
              DataBinding.FieldName = 'VLISS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
          object grdconsultaitentrada: TcxGridDBBandedTableView
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
            DataController.DataSource = dtsitconsulta
            DataController.DetailKeyFieldNames = 'CDENTRADA'
            DataController.KeyFieldNames = 'CDENTRADA'
            DataController.MasterKeyFieldNames = 'CDENTRADA'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = grdconsultaitentradaQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLBASEICMS'
                Column = grdconsultaitentradaVLBASEICMS
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLICMS'
                Column = grdconsultaitentradaVLICMS
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = grdconsultaitentradaVLTOTAL
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLIPI'
                Column = grdconsultaitentradaVLIPI
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLISS'
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Produto'
                Width = 383
              end
              item
                Caption = 'Valores'
              end
              item
                Caption = 'ICMS'
              end>
            object grdconsultaitentradaCDDIGITADO: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDDIGITADO'
              Width = 62
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaitentradaNMPRODUTO: TcxGridDBBandedColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'NMPRODUTO'
              Width = 321
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaitentradaQTITEM: TcxGridDBBandedColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaitentradaVLUNITARIO: TcxGridDBBandedColumn
              Caption = 'Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaitentradaVLTOTAL: TcxGridDBBandedColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdconsultaitentradaNUSTICMS: TcxGridDBBandedColumn
              Caption = 'ST ICMS'
              DataBinding.FieldName = 'NUSTICMS'
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object grdconsultaitentradaVLBASEICMS: TcxGridDBBandedColumn
              Caption = 'Base ICMS'
              DataBinding.FieldName = 'VLBASEICMS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 64
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdconsultaitentradaALICMS: TcxGridDBBandedColumn
              Caption = 'Aliquota'
              DataBinding.FieldName = 'ALICMS'
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdconsultaitentradaVLICMS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VLICMS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 64
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdconsultaitentradaVLIPI: TcxGridDBBandedColumn
              Caption = 'IPI'
              DataBinding.FieldName = 'VLIPI'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object grdconsultaitentradaCDCFOP: TcxGridDBBandedColumn
              Caption = 'CFOP'
              DataBinding.FieldName = 'CDCFOP'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object grdconsultaLevel1: TcxGridLevel
            GridView = grdconsultaentrada
            object grdconsultaLevel4: TcxGridLevel
              GridView = grdconsultaitentrada
              Visible = False
            end
          end
        end
      end
      object tbsFinanceiro: TcxTabSheet
        Caption = 'Financeiro'
        ImageIndex = 18
        object lblnucntcontabil: TLabel
          Left = 2
          Top = 89
          Width = 69
          Height = 13
          Caption = 'Conta Cont'#225'bil'
          Transparent = True
        end
        object Label35: TLabel
          Left = 2
          Top = 49
          Width = 19
          Height = 13
          Caption = 'C/C'
          Transparent = True
        end
        object Label37: TLabel
          Left = 2
          Top = 28
          Width = 39
          Height = 13
          Caption = 'Ag'#234'ncia'
          Transparent = True
        end
        object Label33: TLabel
          Left = 2
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Banco'
          Transparent = True
        end
        object Label19: TLabel
          Left = 2
          Top = 69
          Width = 41
          Height = 13
          Caption = 'Hist'#243'rico'
          Transparent = True
        end
        object lblplconta: TLabel
          Left = 2
          Top = 109
          Width = 63
          Height = 13
          Caption = 'Plano Contas'
          Transparent = True
        end
        object lblcntcusto: TLabel
          Left = 2
          Top = 125
          Width = 61
          Height = 13
          Caption = 'Centro Custo'
          Transparent = True
        end
        object edtNUCNTCORRENTE: TcxDBTextEdit
          Left = 74
          Top = 41
          DataBinding.DataField = 'NUCNTCORRENTE'
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
        object edtnuagencia: TcxDBTextEdit
          Left = 74
          Top = 20
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
          Width = 371
        end
        object cbxcdbanco: TcxDBLookupComboBox
          Left = 74
          Top = 0
          DataBinding.DataField = 'CDBANCO'
          DataBinding.DataSource = dts
          Properties.Alignment.Horz = taLeftJustify
          Properties.KeyFieldNames = 'CDBANCO'
          Properties.ListColumns = <
            item
              FieldName = 'NMBANCO'
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
          Width = 371
        end
        object edtNUCODIGOHISTORICOPAGTO: TcxDBTextEdit
          Left = 74
          Top = 61
          DataBinding.DataField = 'NUCODIGOHISTORICOPAGTO'
          DataBinding.DataSource = dts
          Properties.Alignment.Horz = taLeftJustify
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
        object edtNUCNTCONTABIL: TcxDBTextEdit
          Left = 74
          Top = 81
          DataBinding.DataField = 'NUCNTCONTABIL'
          DataBinding.DataSource = dts
          Properties.Alignment.Horz = taLeftJustify
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
        object txtnmplconta: TcxDBLabel
          Left = 187
          Top = 101
          DataBinding.DataField = 'NMPLCONTA'
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
          Width = 191
        end
        object edtnuplconta: TcxDBButtonEdit
          Left = 74
          Top = 101
          DataBinding.DataField = 'NUPLCONTA'
          DataBinding.DataSource = dts
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edtnuplcontaPropertiesButtonClick
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtnuplcontaKeyDown
          Width = 112
        end
        object edtnucntcusto: TcxDBButtonEdit
          Left = 74
          Top = 122
          DataBinding.DataField = 'NUCNTCUSTO'
          DataBinding.DataSource = dts
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edtnucntcustoPropertiesButtonClick
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtnucntcustoKeyDown
          Width = 112
        end
        object txtnmcntcusto: TcxDBLabel
          Left = 187
          Top = 123
          DataBinding.DataField = 'NMCNTCUSTO'
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
          Width = 191
        end
      end
      object tbsiqf: TcxTabSheet
        Caption = 'IQF'
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lblclfornecedor: TLabel
          Left = 210
          Top = 7
          Width = 62
          Height = 13
          Caption = 'Classifica'#231#227'o'
          Transparent = True
        end
        object lbl1: TLabel
          Left = 456
          Top = 7
          Width = 72
          Height = 13
          Caption = 'Pontua'#231#227'o IQF'
          Transparent = True
        end
        object bvl2: TBevel
          Left = 0
          Top = 0
          Width = 1049
          Height = 31
          Align = alTop
          ExplicitWidth = 899
        end
        object cbxcdclfornecedor: TcxDBLookupComboBox
          Left = 276
          Top = 2
          DataBinding.DataField = 'CDCLFORNECEDOR'
          DataBinding.DataSource = dts
          Properties.Alignment.Horz = taLeftJustify
          Properties.KeyFieldNames = 'CDCLFORNECEDOR'
          Properties.ListColumns = <
            item
              FieldName = 'NMCLFORNECEDOR2'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = cbxcdclfornecedorEnter
          OnExit = colorexit
          Width = 170
        end
        object lblnupontuacaoiqf: TcxDBLabel
          Left = 529
          Top = 4
          DataBinding.DataField = 'NUPONTUACAOIQF'
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
          Width = 50
        end
        object chkbocritico: TcxDBCheckBox
          Left = 3
          Top = 4
          Caption = 'Fornecedor cr'#237'tico para compras'
          DataBinding.DataField = 'BOCRITICO'
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
        end
        object pgciqf: TcxPageControl
          Left = 0
          Top = 31
          Width = 1049
          Height = 384
          Align = alClient
          TabOrder = 3
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          LookAndFeel.NativeStyle = False
          ClientRectBottom = 384
          ClientRectRight = 1049
          ClientRectTop = 24
          object cxTabSheet1: TcxTabSheet
            Caption = 'Hist'#243'rico Avalia'#231#227'o'
            ImageIndex = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object grdhclfornecedor: TcxGrid
              Left = 0
              Top = 0
              Width = 1049
              Height = 360
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object grdhclfornecedorDBTableView1: TcxGridDBTableView
                Tag = 99
                OnDblClick = grdhclfornecedorDBTableView1DblClick
                OnKeyDown = grdhclfornecedorDBTableView1KeyDown
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.PriorPage.Enabled = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.NextPage.Enabled = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Insert.Enabled = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Enabled = False
                Navigator.Buttons.Delete.Visible = True
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
                DataController.DataSource = dtshclfornecedor
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Inserting = False
                OptionsView.CellAutoHeight = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object grdhclfornecedorDBTableView1CDCLFORNECEDOR: TcxGridDBColumn
                  Caption = 'Classifica'#231#227'o'
                  DataBinding.FieldName = 'CDCLFORNECEDOR'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.DropDownListStyle = lsFixedList
                  Properties.KeyFieldNames = 'CDCLFORNECEDOR'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NMCLFORNECEDOR'
                    end>
                  Properties.ListOptions.ShowHeader = False
                  Width = 196
                end
                object grdhclfornecedorDBTableView1TSAVALIACAO: TcxGridDBColumn
                  Caption = 'Data/Hora'
                  DataBinding.FieldName = 'TSAVALIACAO'
                  Width = 117
                end
                object grdhclfornecedorDBTableView1VLIQF: TcxGridDBColumn
                  Caption = 'Pontua'#231#227'o'
                  DataBinding.FieldName = 'VLIQF'
                end
                object grdhclfornecedorDBTableView1CDUSUARIOI: TcxGridDBColumn
                  Caption = 'Alterado por'
                  DataBinding.FieldName = 'CDUSUARIOI'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'CDUSUARIO'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NMUSUARIO'
                    end>
                  Properties.ListOptions.ShowHeader = False
                  Width = 133
                end
                object grdhclfornecedorDBTableView1DSOBSERVACAO: TcxGridDBColumn
                  Caption = 'Observa'#231#227'o'
                  DataBinding.FieldName = 'DSOBSERVACAO'
                  Width = 360
                end
                object grdhclfornecedorDBTableView1CDORDCOMPRA: TcxGridDBColumn
                  Caption = 'Ordem Compra'
                  DataBinding.FieldName = 'CDORDCOMPRA'
                  Styles.Content = dtmmain.cxStyle1
                  Width = 80
                end
              end
              object grdhclfornecedorLevel1: TcxGridLevel
                GridView = grdhclfornecedorDBTableView1
              end
            end
          end
          object tbspreselecao: TcxTabSheet
            Caption = 'Motivo de Pr'#233'-Sele'#231#227'o'
            ImageIndex = 1
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object grditpreselecaofornecedor: TcxGrid
              Left = 0
              Top = 0
              Width = 1049
              Height = 360
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object cxGridDBTableView2: TcxGridDBTableView
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
                DataController.DataSource = dtsitpreselecaofornecedor
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.NavigatorHints = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsData.Appending = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGridDBTableView2CDPRESELECAOFORNECEDOR: TcxGridDBColumn
                  Caption = 'Motivo Pr'#233'-Sele'#231#227'o'
                  DataBinding.FieldName = 'CDPRESELECAOFORNECEDOR'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'CDPRESELECAOFORNECEDOR'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NMPRESELECAOFORNECEDOR'
                    end>
                  Properties.ListOptions.ShowHeader = False
                  Width = 643
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cxGridDBTableView2
              end
            end
          end
        end
      end
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      AutoSize = False
      Caption = 'Fornecedor'
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 23
      Width = 1049
    end
    object edtnome: TcxDBTextEdit
      Left = 110
      Top = 36
      DataBinding.DataField = 'NMFORNECEDOR'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      TabOrder = 1
      OnEnter = colorenter
      OnExit = edtnomeExit
      OnKeyDown = nextcontrol
      Width = 272
    end
    object rdbtppessoa: TcxDBRadioGroup
      Left = 657
      Top = 23
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
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 856
    Top = 405
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
    object actImpCadG: TAction
      Caption = 'Cadastro'
      Hint = 'Imprimir Cadastro Modo Gr'#225'fico'
      OnExecute = actImpCadGExecute
    end
    object actabriradntfornecedor: TAction
      Hint = 'adntfornecedor'
      ImageIndex = 20
      OnExecute = actabriradntfornecedorExecute
    end
    object actabrirautpagto: TAction
      Hint = 'autpagto'
      ImageIndex = 31
      OnExecute = actabrirautpagtoExecute
    end
    object actabrirentrada: TAction
      Hint = 'entrada'
      ImageIndex = 27
      OnExecute = actabrirentradaExecute
    end
    object actabrirsaida: TAction
      Hint = 'saida'
      ImageIndex = 19
      OnExecute = actabrirsaidaExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      ImageIndex = 24
      OnExecute = actabrirprodutoExecute
    end
    object actconsultaentrada: TAction
      AutoCheck = True
      Caption = 'Compra'
      GroupIndex = 1
      Hint = 'Consulta Compra'
      ImageIndex = 27
      OnExecute = actconsultaentradaExecute
    end
    object actconsultaautpagto: TAction
      AutoCheck = True
      Caption = 'Contas a Pagar'
      GroupIndex = 1
      Hint = 'Consulta Contas a Pagar'
      ImageIndex = 31
      OnExecute = actconsultaautpagtoExecute
    end
    object actconsultaadntfornecedor: TAction
      AutoCheck = True
      Caption = 'Adiantamento'
      GroupIndex = 1
      Hint = 'Consulta Adiantamento de Fornecedor'
      ImageIndex = 20
      OnExecute = actconsultaadntfornecedorExecute
    end
    object actconsultasaida: TAction
      AutoCheck = True
      Caption = 'Nota Fiscal'
      GroupIndex = 1
      Hint = 'Consulta Nota Fiscal'
      ImageIndex = 19
      OnExecute = actconsultasaidaExecute
    end
    object actconsultaordcompra: TAction
      AutoCheck = True
      Caption = 'Ordem Compra'
      Hint = 'Ordem Compra'
      ImageIndex = 77
      OnExecute = actconsultaordcompraExecute
    end
    object actconsultaproduto: TAction
      AutoCheck = True
      Caption = 'Produto'
      Hint = 'Produto'
      ImageIndex = 24
      OnExecute = actconsultaprodutoExecute
    end
    object actconsultaPedidoMaterial: TAction
      AutoCheck = True
      Caption = 'Cota'#231#227'o'
      ImageIndex = 82
      OnExecute = actconsultaPedidoMaterialExecute
    end
    object actimprimirhistoricoClassificacao: TAction
      Caption = 'Hist'#243'rico de Classifica'#231#245'es'
      OnExecute = actimprimirhistoricoClassificacaoExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actimprimircontato: TAction
      Caption = 'Contato'
      OnExecute = actimprimircontatoExecute
    end
    object actabrirordcompra: TAction
      Hint = 'ordcompra'
      OnExecute = actabrirordcompraExecute
    end
    object actabrirpedidomaterial: TAction
      Hint = 'pedidomaterial'
      OnExecute = actabrirpedidomaterialExecute
    end
    object actabrirordcomprahclfornecedor: TAction
      Hint = 'ordcompra'
      OnExecute = actabrirordcomprahclfornecedorExecute
    end
    object actproduto: TAction
      Caption = 'Produto'
      OnExecute = actprodutoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actitcontfornecedor: TAction
      Caption = 'Contato'
      OnExecute = actitcontfornecedorExecute
    end
    object actitfornecedoremail: TAction
      Caption = 'Email'
      OnExecute = actitfornecedoremailExecute
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
    Left = 828
    Top = 286
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
      Caption = 'fornecedor'
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
          ItemName = 'btnopcoes'
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
      WholeRow = True
    end
    object dxbrManager1Bar1: TdxBar
      AllowQuickCustomizing = False
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
      FloatLeft = 412
      FloatTop = 357
      FloatClientWidth = 99
      FloatClientHeight = 266
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnentrada'
        end
        item
          Visible = True
          ItemName = 'btnautpagto'
        end
        item
          Visible = True
          ItemName = 'btnadntfornecedor'
        end
        item
          Visible = True
          ItemName = 'btnsaida'
        end
        item
          Visible = True
          ItemName = 'btnpedidomaterial'
        end
        item
          Visible = True
          ItemName = 'btnordcompra'
        end
        item
          Visible = True
          ItemName = 'btnproduto'
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
    object dxBarButton1: TdxBarButton
      Action = actImpCadG
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actimprimirhistoricoClassificacao
      Category = 0
    end
    object btnentrada: TdxBarLargeButton
      Action = actconsultaentrada
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnautpagto: TdxBarLargeButton
      Action = actconsultaautpagto
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnadntfornecedor: TdxBarLargeButton
      Action = actconsultaadntfornecedor
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
    object btnproduto: TdxBarLargeButton
      Action = actconsultaproduto
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnordcompra: TdxBarLargeButton
      Action = actconsultaordcompra
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnpedidomaterial: TdxBarLargeButton
      Action = actconsultaPedidoMaterial
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxBarButton4: TdxBarButton
      Action = actimprimircontato
      Category = 0
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton3: TdxBarButton
      Action = actproduto
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actitcontfornecedor
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actitfornecedoremail
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT F.*,P.NMPLCONTA,C.NMCNTCUSTO FROM FORNECEDOR F LEFT JOIN ' +
      'CNTCUSTO C ON C.CDEMPRESA=F.CDEMPRESA AND C.CDCNTCUSTO=F.CDCNTCU' +
      'STO LEFT JOIN PLCONTA P ON P.CDPLCONTA=F.CDPLCONTA WHERE F.CDEMP' +
      'RESA=:CDEMPRESA AND F.CDFORNECEDOR=:CDFORNECEDOR'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDFORNECEDOR'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 825
    Top = 47
    object sdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTFORNECEDOR: TIntegerField
      FieldName = 'CDSTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDBANCO: TIntegerField
      FieldName = 'CDBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCLFORNECEDOR: TIntegerField
      FieldName = 'CDCLFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsRZSOCIAL: TStringField
      FieldName = 'RZSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    object sdsNUCEP: TStringField
      FieldName = 'NUCEP'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsNUCXPOSTAL: TStringField
      FieldName = 'NUCXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
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
    object sdsTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsNUINSCEST: TStringField
      FieldName = 'NUINSCEST'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCNPJ: TStringField
      FieldName = 'NUCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCPF: TStringField
      FieldName = 'NUCPF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNUIDENTID: TStringField
      FieldName = 'NUIDENTID'
      ProviderFlags = [pfInUpdate]
      Size = 15
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
    object sdsNMMAE: TStringField
      FieldName = 'NMMAE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMPAI: TStringField
      FieldName = 'NMPAI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMCONJUGE: TStringField
      FieldName = 'NMCONJUGE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUAGENCIA: TStringField
      FieldName = 'NUAGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdsNUCNTCORRENTE: TStringField
      FieldName = 'NUCNTCORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
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
    object sdsDTINICIOAVALIACAO: TDateField
      FieldName = 'DTINICIOAVALIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTDESCREDENCIAMENTO: TDateField
      FieldName = 'DTDESCREDENCIAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOAVALIACAO: TStringField
      FieldName = 'BOAVALIACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUDDG1: TStringField
      FieldName = 'NUDDG1'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsNUDDG2: TStringField
      FieldName = 'NUDDG2'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsDTFUNDACAO: TDateField
      FieldName = 'DTFUNDACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    object sdsNMNATURALIDADE: TStringField
      FieldName = 'NMNATURALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUCODIGOHISTORICOPAGTO: TIntegerField
      FieldName = 'NUCODIGOHISTORICOPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOOPTANTESIMPLES: TStringField
      FieldName = 'BOOPTANTESIMPLES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDRMATIVIDADE: TIntegerField
      FieldName = 'CDRMATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPFORNECEDOR: TIntegerField
      FieldName = 'CDTPFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFORNECEDORANTIGO: TStringField
      FieldName = 'CDFORNECEDORANTIGO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
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
    object sdsBOCRITICO: TStringField
      FieldName = 'BOCRITICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBONENVIARPDF: TStringField
      FieldName = 'BONENVIARPDF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUPONTUACAOIQF: TFloatField
      FieldName = 'NUPONTUACAOIQF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPAIS: TIntegerField
      FieldName = 'CDPAIS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDTPREGIME: TIntegerField
      FieldName = 'CDTPREGIME'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOCTESEGURADORA: TStringField
      FieldName = 'BOCTESEGURADORA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNUCNTCONTABIL: TStringField
      FieldName = 'NUCNTCONTABIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsCDINDIEDEST: TIntegerField
      FieldName = 'CDINDIEDEST'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 853
    Top = 47
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 881
    Top = 47
    object cdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDUFValidate
    end
    object cdsCDSTFORNECEDOR: TIntegerField
      FieldName = 'CDSTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDBANCO: TIntegerField
      FieldName = 'CDBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCLFORNECEDOR: TIntegerField
      FieldName = 'CDCLFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsNMFORNECEDORValidate
      Size = 100
    end
    object cdsRZSOCIAL: TStringField
      FieldName = 'RZSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    object cdsNUCEP: TStringField
      FieldName = 'NUCEP'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCEPValidate
      Size = 9
    end
    object cdsNUCXPOSTAL: TStringField
      FieldName = 'NUCXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
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
    object cdsTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsNUINSCEST: TStringField
      FieldName = 'NUINSCEST'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCNPJ: TStringField
      FieldName = 'NUCNPJ'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCNPJValidate
    end
    object cdsNUCPF: TStringField
      FieldName = 'NUCPF'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCPFValidate
      Size = 15
    end
    object cdsNUIDENTID: TStringField
      FieldName = 'NUIDENTID'
      ProviderFlags = [pfInUpdate]
      Size = 15
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
    object cdsNMMAE: TStringField
      FieldName = 'NMMAE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNMPAI: TStringField
      FieldName = 'NMPAI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNMCONJUGE: TStringField
      FieldName = 'NMCONJUGE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUAGENCIA: TStringField
      FieldName = 'NUAGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsNUCNTCORRENTE: TStringField
      FieldName = 'NUCNTCORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
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
    object cdsDTINICIOAVALIACAO: TDateField
      FieldName = 'DTINICIOAVALIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTDESCREDENCIAMENTO: TDateField
      FieldName = 'DTDESCREDENCIAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOAVALIACAO: TStringField
      FieldName = 'BOAVALIACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUDDG1: TStringField
      FieldName = 'NUDDG1'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNUDDG2: TStringField
      FieldName = 'NUDDG2'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsDTFUNDACAO: TDateField
      FieldName = 'DTFUNDACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    object cdsNMNATURALIDADE: TStringField
      FieldName = 'NMNATURALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUCODIGOHISTORICOPAGTO: TIntegerField
      FieldName = 'NUCODIGOHISTORICOPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOOPTANTESIMPLES: TStringField
      FieldName = 'BOOPTANTESIMPLES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDRMATIVIDADE: TIntegerField
      FieldName = 'CDRMATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPFORNECEDOR: TIntegerField
      FieldName = 'CDTPFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFORNECEDORANTIGO: TStringField
      FieldName = 'CDFORNECEDORANTIGO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
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
    object cdsBOCRITICO: TStringField
      FieldName = 'BOCRITICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBONENVIARPDF: TStringField
      FieldName = 'BONENVIARPDF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUPONTUACAOIQF: TFloatField
      FieldName = 'NUPONTUACAOIQF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPAIS: TIntegerField
      FieldName = 'CDPAIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUPLCONTAValidate
    end
    object cdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDTPREGIME: TIntegerField
      FieldName = 'CDTPREGIME'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdshclfornecedor: TDataSetField
      FieldName = 'sdshclfornecedor'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOCTESEGURADORA: TStringField
      FieldName = 'BOCTESEGURADORA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUCNTCONTABIL: TStringField
      FieldName = 'NUCNTCONTABIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsCDINDIEDEST: TIntegerField
      FieldName = 'CDINDIEDEST'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDINDIEDESTValidate
    end
    object cdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCNTCUSTOValidate
      Size = 100
    end
    object cdsNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdssdsitpreselecaofornecedor: TDataSetField
      FieldName = 'sdsitpreselecaofornecedor'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 909
    Top = 47
  end
  object dtsitcontfornecedor: TDataSource
    Left = 880
    Top = 200
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 941
    Top = 47
  end
  object dtsconsulta: TDataSource
    DataSet = cdsconsulta
    Left = 913
    Top = 199
  end
  object cdsconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspconsulta'
    ReadOnly = True
    Left = 885
    Top = 199
  end
  object dspconsulta: TDataSetProvider
    DataSet = sdsconsulta
    Left = 857
    Top = 199
  end
  object sdsconsulta: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 829
    Top = 199
  end
  object sdsitconsulta: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 829
    Top = 227
  end
  object dspitconsulta: TDataSetProvider
    DataSet = sdsitconsulta
    Left = 858
    Top = 227
  end
  object cdsitconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitconsulta'
    ReadOnly = True
    Left = 885
    Top = 227
  end
  object dtsitconsulta: TDataSource
    DataSet = cdsitconsulta
    Left = 913
    Top = 227
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      TextColor = clBlue
    end
  end
  object sdsitpreselecaofornecedor: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITPRESELECAOFORNECEDOR '#13#10'WHERE CDEMPRESA=:CDEMPRES' +
      'A AND CDFORNECEDOR=:CDFORNECEDOR'
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
        DataType = ftString
        Name = 'CDFORNECEDOR'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = dtmmain.sqlc
    Left = 825
    Top = 96
    object sdsitpreselecaofornecedorCDITPRESELECAOFORNECEDOR: TIntegerField
      FieldName = 'CDITPRESELECAOFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitpreselecaofornecedorCDPRESELECAOFORNECEDOR: TIntegerField
      FieldName = 'CDPRESELECAOFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpreselecaofornecedorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpreselecaofornecedorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpreselecaofornecedorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpreselecaofornecedorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpreselecaofornecedorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitpreselecaofornecedorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitpreselecaofornecedorCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitpreselecaofornecedorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object cdsitpreselecaofornecedor: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitpreselecaofornecedor
    Params = <>
    BeforePost = cdsitpreselecaofornecedorBeforePost
    OnNewRecord = cdsitpreselecaofornecedorNewRecord
    Left = 881
    Top = 96
    object cdsitpreselecaofornecedorCDITPRESELECAOFORNECEDOR: TIntegerField
      FieldName = 'CDITPRESELECAOFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitpreselecaofornecedorCDPRESELECAOFORNECEDOR: TIntegerField
      FieldName = 'CDPRESELECAOFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpreselecaofornecedorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpreselecaofornecedorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpreselecaofornecedorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpreselecaofornecedorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpreselecaofornecedorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitpreselecaofornecedorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitpreselecaofornecedorCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitpreselecaofornecedorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dtsitpreselecaofornecedor: TDataSource
    DataSet = cdsitpreselecaofornecedor
    Left = 909
    Top = 96
  end
  object sdshclfornecedor: TSQLDataSet
    CommandText = 
      'SELECT * FROM HCLFORNECEDOR '#13#10'WHERE CDEMPRESA=:CDEMPRESA AND CDF' +
      'ORNECEDOR=:CDFORNECEDOR'
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
        DataType = ftString
        Name = 'CDFORNECEDOR'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = dtmmain.sqlc
    Left = 825
    Top = 165
    object sdshclfornecedorCDHCLFORNECEDOR: TIntegerField
      FieldName = 'CDHCLFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdshclfornecedorCDCLFORNECEDOR: TIntegerField
      FieldName = 'CDCLFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshclfornecedorVLIQF: TIntegerField
      FieldName = 'VLIQF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshclfornecedorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshclfornecedorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshclfornecedorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshclfornecedorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshclfornecedorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshclfornecedorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshclfornecedorCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdshclfornecedorTSAVALIACAO: TSQLTimeStampField
      FieldName = 'TSAVALIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdshclfornecedorDSOBSERVACAO: TStringField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 2000
    end
    object sdshclfornecedorCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshclfornecedorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdshclfornecedor: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdshclfornecedor
    Params = <>
    BeforePost = cdshclfornecedorBeforePost
    OnNewRecord = cdshclfornecedorNewRecord
    Left = 881
    Top = 165
    object cdshclfornecedorCDHCLFORNECEDOR: TIntegerField
      FieldName = 'CDHCLFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdshclfornecedorCDCLFORNECEDOR: TIntegerField
      FieldName = 'CDCLFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshclfornecedorVLIQF: TIntegerField
      FieldName = 'VLIQF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshclfornecedorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshclfornecedorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshclfornecedorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshclfornecedorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshclfornecedorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshclfornecedorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshclfornecedorCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdshclfornecedorTSAVALIACAO: TSQLTimeStampField
      FieldName = 'TSAVALIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdshclfornecedorDSOBSERVACAO: TStringField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 2000
    end
    object cdshclfornecedorCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshclfornecedorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtshclfornecedor: TDataSource
    DataSet = cdshclfornecedor
    Left = 909
    Top = 165
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
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 936
    Top = 286
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 976
    Top = 286
  end
end

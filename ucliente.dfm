object frmCliente: TfrmCliente
  Left = 262
  Top = 180
  ClientHeight = 693
  ClientWidth = 1362
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
  object pgc: TcxPageControl
    Left = 0
    Top = 125
    Width = 1362
    Height = 568
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tbscadastro
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    OnChange = pgcChange
    ClientRectBottom = 568
    ClientRectRight = 1362
    ClientRectTop = 25
    object tbscadastro: TcxTabSheet
      Caption = '&Cadastro'
      ImageIndex = 40
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbxFisica: TcxGroupBox
        Left = 2
        Top = 130
        Caption = 'Dados Pessoal F'#237'sica'
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        Visible = False
        Height = 89
        Width = 781
        object Label27: TLabel
          Left = 3
          Top = 22
          Width = 20
          Height = 13
          Caption = 'CPF'
          Transparent = True
        end
        object lblnuinscest2: TLabel
          Left = 576
          Top = 20
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
        object lbl1: TLabel
          Left = 423
          Top = 17
          Width = 44
          Height = 13
          Caption = 'Indicador'
          Transparent = True
        end
        object edtnmconjuge: TcxDBTextEdit
          Left = 475
          Top = 59
          DataBinding.DataField = 'NMCONJUGE'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          TabOrder = 9
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
          Left = 475
          Top = 36
          DataBinding.DataField = 'NMPAI'
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
        object edtnuinscest2: TcxDBTextEdit
          Left = 624
          Top = 12
          DataBinding.DataField = 'NUINSCEST'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 150
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
        object cbxCDINDIEDEST2: TcxDBLookupComboBox
          Left = 475
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
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          Width = 100
        end
      end
      object gbxJuridica: TcxGroupBox
        Left = 2
        Top = 130
        Caption = 'Dados Pessoa Jur'#237'dica'
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 2
        Height = 89
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
          Left = 420
          Top = 44
          Width = 38
          Height = 13
          Caption = 'Insc Est'
          Transparent = True
        end
        object Label26: TLabel
          Left = 420
          Top = 22
          Width = 48
          Height = 13
          Caption = 'Funda'#231#227'o'
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
        object lblCDINDIEDEST: TLabel
          Left = 4
          Top = 43
          Width = 57
          Height = 13
          Caption = 'Indicador IE'
          Transparent = True
        end
        object edtnucnpj: TcxDBMaskEdit
          Left = 76
          Top = 19
          DataBinding.DataField = 'NUCNPJ'
          DataBinding.DataSource = dts
          Properties.EditMask = '99.999.999/9999-99'
          Properties.MaxLength = 0
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
          Width = 342
        end
        object edtnuinscest: TcxDBTextEdit
          Left = 482
          Top = 39
          DataBinding.DataField = 'NUINSCEST'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          Width = 296
        end
        object edtdtfundacao: TcxDBDateEdit
          Left = 482
          Top = 17
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
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          Width = 296
        end
        object edtnuinscmunicipal: TcxDBTextEdit
          Left = 76
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
          Width = 342
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
        object cbxcdindiedest: TcxDBLookupComboBox
          Left = 76
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
          Width = 342
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 2
        Top = 223
        Caption = 'Outros'
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 3
        Height = 150
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
        object lblcdstcliente: TLabel
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
          Width = 69
          Height = 13
          Caption = 'Conta Cont'#225'bil'
          Transparent = True
        end
        object lblcdtpmensalidade: TLabel
          Left = 2
          Top = 105
          Width = 34
          Height = 13
          Caption = 'Mensal'
          Transparent = True
          Visible = False
        end
        object lbldtcadastrosocio: TLabel
          Left = 422
          Top = 105
          Width = 27
          Height = 13
          Caption = 'S'#243'cio'
          Transparent = True
        end
        object lblnudiamensalidade: TLabel
          Left = 295
          Top = 104
          Width = 64
          Height = 13
          Caption = 'Dia Mensalid.'
          Transparent = True
        end
        object lbldtdesfiliacao: TLabel
          Left = 626
          Top = 105
          Width = 52
          Height = 13
          Caption = 'Desfilia'#231#227'o'
          Transparent = True
        end
        object lblcontrato: TLabel
          Left = 2
          Top = 124
          Width = 49
          Height = 13
          Caption = 'Contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnDblClick = lblcontratoDblClick
        end
        object lbltpregimne: TLabel
          Left = 422
          Top = 124
          Width = 52
          Height = 13
          Caption = 'Tp Regime'
          Transparent = True
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
          TabOrder = 2
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 371
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
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 297
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
          Width = 297
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
          TabOrder = 8
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
        end
        object edtnucntcontabil: TcxDBTextEdit
          Left = 219
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
          TabOrder = 7
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 89
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
          TabOrder = 6
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
          TabOrder = 9
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
          Properties.OnValidate = cbxcdtpclientePropertiesValidate
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 5
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
          TabOrder = 4
          OnEnter = cbxcdrepresentanteEnter
          OnExit = colorexit
          Width = 370
        end
        object cbxcdtpclientemensalidade: TcxDBLookupComboBox
          Left = 50
          Top = 98
          DataBinding.DataField = 'CDTPCLIENTEMENSALIDADE'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDTPCLIENTEMENSALIDADE'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPCLIENTEMENSALIDADE'
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
          OnEnter = cbxcdtpclientemensalidadeEnter
          OnExit = colorexit
          Width = 246
        end
        object edtdtcadastrosocio: TcxDBDateEdit
          Left = 475
          Top = 98
          DataBinding.DataField = 'DTCADASTROSOCIO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 12
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 93
        end
        object edtnudiamensalidade: TcxDBSpinEdit
          Left = 361
          Top = 98
          DataBinding.DataField = 'NUDIAMENSALIDADE'
          DataBinding.DataSource = dts
          Properties.MaxValue = 31.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 11
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 59
        end
        object edtdtdesfiliacao: TcxDBDateEdit
          Left = 679
          Top = 98
          DataBinding.DataField = 'DTDESFILIACAO'
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
        object cbxcdcontrato: TcxDBLookupComboBox
          Left = 50
          Top = 117
          DataBinding.DataField = 'CDCONTRATO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDCONTRATO'
          Properties.ListColumns = <
            item
              FieldName = 'NMCONTRATO'
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
          TabOrder = 14
          OnEnter = cbxcdcontratoEnter
          OnExit = colorexit
          Width = 370
        end
        object cbxcdtpregime: TcxDBLookupComboBox
          Left = 475
          Top = 117
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
          TabOrder = 15
          OnEnter = colorenter
          OnExit = colorexit
          Width = 297
        end
      end
      object gbxComercial: TcxGroupBox
        Left = 2
        Top = 1
        Caption = 'Endere'#231'o Comercial'
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 0
        Transparent = True
        Height = 126
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
          Left = 560
          Top = 40
          Width = 32
          Height = 13
          Caption = 'Compl.'
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
          Left = 560
          Top = 62
          Width = 14
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object Label8: TLabel
          Left = 3
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
          Left = 304
          Top = 104
          Width = 17
          Height = 13
          Caption = 'Fax'
          Transparent = True
        end
        object lbl2: TLabel
          Left = 423
          Top = 85
          Width = 22
          Height = 13
          Caption = 'Pa'#237's'
          Transparent = True
        end
        object Label4: TLabel
          Left = 423
          Top = 104
          Width = 24
          Height = 13
          Caption = 'DDG'
          Transparent = True
        end
        object edtnufax: TcxDBMaskEdit
          Left = 341
          Top = 99
          DataBinding.DataField = 'NUFAX'
          DataBinding.DataSource = dts
          Properties.EditMask = '(99)9999-9999'
          Properties.MaxLength = 0
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 12
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
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 10
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
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 9
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
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
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
          Width = 371
        end
        object edtdscomplemento: TcxDBTextEdit
          Left = 592
          Top = 34
          DataBinding.DataField = 'DSCOMPLEMENTO'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
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
          Width = 187
        end
        object edtdsnumero: TcxDBTextEdit
          Left = 475
          Top = 34
          DataBinding.DataField = 'DSNUMERO'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
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
          Width = 85
        end
        object edtDsEndereco: TcxDBTextEdit
          Left = 51
          Top = 36
          DataBinding.DataField = 'DSENDERECO'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
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
          OnKeyDown = nextcontrol
          Width = 371
        end
        object cbxcduf: TcxDBLookupComboBox
          Left = 592
          Top = 54
          DataBinding.DataField = 'CDUF'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDUF'
          Properties.ListColumns = <
            item
              FieldName = 'NMUF'
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
          OnEnter = colorenter
          OnExit = cbxcdufExit
          Width = 187
        end
        object cbxcdmunicipio: TcxDBLookupComboBox
          Left = 51
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
          Width = 371
        end
        object edtnufone3: TcxDBMaskEdit
          Left = 219
          Top = 99
          DataBinding.DataField = 'NUFONE3'
          DataBinding.DataSource = dts
          Properties.EditMask = '(99)9999-9999'
          Properties.MaxLength = 0
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 11
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 81
        end
        object cbxcdpais: TcxDBLookupComboBox
          Left = 475
          Top = 78
          DataBinding.DataField = 'CDPAIS'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDPAIS'
          Properties.ListColumns = <
            item
              FieldName = 'NMPAIS'
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
          TabOrder = 8
          OnEnter = colorenter
          OnExit = colorexit
          Width = 303
        end
        object edtNUDDG1: TcxDBMaskEdit
          Left = 475
          Top = 99
          DataBinding.DataField = 'NUDDG1'
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
        object edtNUDDG2: TcxDBMaskEdit
          Left = 592
          Top = 99
          DataBinding.DataField = 'NUDDG2'
          DataBinding.DataSource = dts
          Properties.EditMask = '9999-9999999'
          Properties.MaxLength = 0
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 81
        end
      end
    end
    object tbsoutros: TcxTabSheet
      Caption = 'Outros'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblproduto: TLabel
        Left = 2
        Top = 251
        Width = 37
        Height = 13
        Caption = 'Produto'
        Transparent = True
      end
      object lblPRICMSDUPLICATACTE: TLabel
        Left = 2
        Top = 275
        Width = 241
        Height = 13
        Caption = '% Acr'#233'scimo do ICMS no contas a receber do CTE'
        Transparent = True
      end
      object txtnmproduto: TDBText
        Left = 171
        Top = 251
        Width = 310
        Height = 17
        DataField = 'NMPRODUTO'
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
        OnDblClick = txtnmprodutoDblClick
      end
      object cxGroupBox14: TcxGroupBox
        Left = 10
        Top = 4
        Caption = 'Endere'#231'o Cobran'#231'a'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 0
        Transparent = True
        Height = 127
        Width = 781
        object Label18: TLabel
          Left = 3
          Top = 23
          Width = 21
          Height = 13
          Caption = 'CEP'
          Transparent = True
        end
        object Label44: TLabel
          Left = 3
          Top = 44
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          Transparent = True
        end
        object Label56: TLabel
          Left = 423
          Top = 42
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Transparent = True
        end
        object Label57: TLabel
          Left = 564
          Top = 40
          Width = 64
          Height = 13
          Caption = 'Complemento'
          Transparent = True
        end
        object Label59: TLabel
          Left = 3
          Top = 65
          Width = 27
          Height = 13
          Caption = 'Bairro'
          Transparent = True
        end
        object Label63: TLabel
          Left = 423
          Top = 65
          Width = 44
          Height = 13
          Caption = 'Cx Postal'
          Transparent = True
        end
        object Label68: TLabel
          Left = 6
          Top = 86
          Width = 14
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object Label69: TLabel
          Left = 423
          Top = 85
          Width = 33
          Height = 13
          Caption = 'Cidade'
          Transparent = True
        end
        object Label75: TLabel
          Left = 6
          Top = 104
          Width = 24
          Height = 13
          Caption = 'Fone'
          Transparent = True
        end
        object Label76: TLabel
          Left = 423
          Top = 104
          Width = 17
          Height = 13
          Caption = 'Fax'
          Transparent = True
        end
        object lbldtconsultaspc: TLabel
          Left = 564
          Top = 104
          Width = 65
          Height = 13
          Caption = 'Consulta SPC'
          Transparent = True
        end
        object edtnufaxcbrnc: TcxDBMaskEdit
          Left = 475
          Top = 99
          DataBinding.DataField = 'NUFAXCBRNC'
          DataBinding.DataSource = dts
          Properties.EditMask = '(99)9999-9999'
          Properties.MaxLength = 0
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 11
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 81
        end
        object edtnufone2cbrnc: TcxDBMaskEdit
          Left = 133
          Top = 99
          DataBinding.DataField = 'NUFONE2CBRNC'
          DataBinding.DataSource = dts
          Properties.EditMask = '(99)9999-9999'
          Properties.MaxLength = 0
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 9
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 81
        end
        object edtnufone1cbrnc: TcxDBMaskEdit
          Left = 51
          Top = 99
          DataBinding.DataField = 'NUFONE1CBRNC'
          DataBinding.DataSource = dts
          Properties.EditMask = '(99)9999-9999'
          Properties.MaxLength = 0
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
          Width = 81
        end
        object edtNUCXPCBRNC: TcxDBMaskEdit
          Left = 475
          Top = 57
          DataBinding.DataField = 'NUCXPCBRNC'
          DataBinding.DataSource = dts
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 5
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 85
        end
        object edtNUCEPCBRNC: TcxDBMaskEdit
          Left = 51
          Top = 15
          DataBinding.DataField = 'NUCEPCBRNC'
          DataBinding.DataSource = dts
          Properties.EditMask = '99999-999'
          Properties.MaxLength = 0
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
          OnKeyDown = nextcontrol
          Width = 59
        end
        object edtNMBAICBRNC: TcxDBTextEdit
          Left = 51
          Top = 57
          DataBinding.DataField = 'NMBAICBRNC'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
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
          Width = 371
        end
        object edtdscomcbrnc: TcxDBTextEdit
          Left = 630
          Top = 34
          DataBinding.DataField = 'DSCOMCBRNC'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
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
          Width = 148
        end
        object edtdsnumcbrnc: TcxDBTextEdit
          Left = 475
          Top = 34
          DataBinding.DataField = 'DSNUMCBRNC'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
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
          Width = 85
        end
        object edtDSENDCBRNC: TcxDBTextEdit
          Left = 51
          Top = 36
          DataBinding.DataField = 'DSENDCBRNC'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
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
          OnKeyDown = nextcontrol
          Width = 371
        end
        object cbxcdufcbrnc: TcxDBLookupComboBox
          Left = 51
          Top = 78
          DataBinding.DataField = 'CDUFCBRNC'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDUF'
          Properties.ListColumns = <
            item
              FieldName = 'NMUF'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 6
          OnEnter = colorenter
          OnExit = cbxcdufcbrncExit
          Width = 371
        end
        object cbxcdmunicipiocbrnc: TcxDBLookupComboBox
          Left = 475
          Top = 78
          DataBinding.DataField = 'CDMUNICIPIOCBRNC'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDMUNICIPIO'
          Properties.ListColumns = <
            item
              FieldName = 'NMMUNICIPIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
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
          Width = 303
        end
        object edtnufone3cbrnc: TcxDBMaskEdit
          Left = 219
          Top = 99
          DataBinding.DataField = 'NUFONE3CBRNC'
          DataBinding.DataSource = dts
          Properties.EditMask = '(99)9999-9999'
          Properties.MaxLength = 0
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 10
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 81
        end
        object edtdtconsultaspc: TcxDBDateEdit
          Left = 657
          Top = 99
          DataBinding.DataField = 'DTCONSULTASPC'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 12
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 121
        end
      end
      object gbxsuframa: TcxGroupBox
        Left = 2
        Top = 129
        Caption = 'Suframa'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 1
        Height = 57
        Width = 781
        object lblcdsuframa: TLabel
          Left = 7
          Top = 22
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object Label48: TLabel
          Left = 168
          Top = 22
          Width = 41
          Height = 13
          Caption = 'Validade'
          Transparent = True
        end
        object edtdtvalidade: TcxDBDateEdit
          Left = 215
          Top = 14
          DataBinding.DataField = 'DTVALIDADE'
          DataBinding.DataSource = dts
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
          OnKeyDown = nextcontrol
          Width = 121
        end
        object edtcdsuframa: TcxDBTextEdit
          Left = 46
          Top = 14
          DataBinding.DataField = 'CDSUFRAMA'
          DataBinding.DataSource = dts
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
          OnKeyDown = nextcontrol
          Width = 121
        end
        object cxGroupBox11: TcxGroupBox
          Left = 353
          Top = 8
          Caption = 'Isen'#231#245'es'
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 2
          Height = 44
          Width = 312
          object ckbboicms: TcxDBCheckBox
            Left = 44
            Top = 16
            Caption = 'ICMS'
            DataBinding.DataField = 'BOICMS'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 1
            Transparent = True
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
          end
          object ckbbocofins: TcxDBCheckBox
            Left = 129
            Top = 16
            Caption = 'COFINS'
            DataBinding.DataField = 'BOCOFINS'
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
            Transparent = True
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
          end
          object ckbbopis: TcxDBCheckBox
            Left = 91
            Top = 16
            Caption = 'PIS'
            DataBinding.DataField = 'BOPIS'
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
            Transparent = True
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
          end
          object ckbboipi: TcxDBCheckBox
            Left = 7
            Top = 16
            Caption = 'IPI'
            DataBinding.DataField = 'BOIPI'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            TabOrder = 0
            Transparent = True
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
          end
        end
      end
      object ckbbosincronizado: TcxDBCheckBox
        Left = 2
        Top = 228
        Caption = 'Sincronizado com o PDV'
        DataBinding.DataField = 'BOSINCRONIZADO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Transparent = True
      end
      object edtcdproduto: TcxDBButtonEdit
        Left = 48
        Top = 248
        DataBinding.DataField = 'CDPRODUTO'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdprodutoPropertiesButtonClick
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
        OnKeyDown = edtcdprodutoKeyDown
        OnKeyPress = eventokeypress
        Width = 121
      end
      object edtPRICMSDUPLICATACTE: TcxDBCalcEdit
        Left = 249
        Top = 269
        DataBinding.DataField = 'PRICMSDUPLICATACTE'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Width = 121
      end
      object gbxceimei: TcxGroupBox
        Left = 2
        Top = 187
        Caption = 'Outros Documentos'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 2
        Height = 41
        Width = 781
        object lblnucei: TLabel
          Left = 7
          Top = 22
          Width = 17
          Height = 13
          Caption = 'CEI'
          Transparent = True
        end
        object lblnumei: TLabel
          Left = 175
          Top = 22
          Width = 19
          Height = 13
          Caption = 'MEI'
          Transparent = True
        end
        object edtnucei: TcxDBTextEdit
          Left = 46
          Top = 14
          DataBinding.DataField = 'NUCEI'
          DataBinding.DataSource = dts
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
          OnKeyDown = nextcontrol
          Width = 121
        end
        object edtnumei: TcxDBTextEdit
          Left = 214
          Top = 14
          DataBinding.DataField = 'NUMEI'
          DataBinding.DataSource = dts
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
          OnKeyDown = nextcontrol
          Width = 121
        end
      end
      object gbxseguradora: TcxGroupBox
        Left = 2
        Top = 293
        Caption = 'Dados para o CTE'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 6
        Height = 66
        Width = 781
        object lbl3: TLabel
          Left = 7
          Top = 22
          Width = 55
          Height = 13
          Caption = 'Seguradora'
          Transparent = True
        end
        object lblnuapolice: TLabel
          Left = 423
          Top = 22
          Width = 35
          Height = 13
          Caption = 'Apolice'
          Transparent = True
        end
        object lblcdcondpagto: TLabel
          Left = 7
          Top = 44
          Width = 56
          Height = 13
          Caption = 'Cond Pagto'
          Transparent = True
        end
        object lblcdtpcobranca: TLabel
          Left = 423
          Top = 44
          Width = 70
          Height = 13
          Caption = 'Tipo Cobran'#231'a'
          Transparent = True
        end
        object cbxcdfornecedorseguradora: TcxDBLookupComboBox
          Left = 66
          Top = 16
          DataBinding.DataField = 'CDFORNECEDORSEGURADORA'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'CDFORNECEDOR'
          Properties.ListColumns = <
            item
              FieldName = 'NMFORNECEDOR'
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
          OnEnter = cbxcdfornecedorseguradoraEnter
          OnExit = colorexit
          Width = 356
        end
        object edtnuapolice: TcxDBTextEdit
          Left = 475
          Top = 16
          DataBinding.DataField = 'NUAPOLICE'
          DataBinding.DataSource = dts
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
          OnKeyDown = nextcontrol
          Width = 121
        end
        object cbxcdcondpagto: TcxDBLookupComboBox
          Left = 66
          Top = 38
          DataBinding.DataField = 'CDCONDPAGTO'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'CDCONDPAGTO'
          Properties.ListColumns = <
            item
              FieldName = 'NMCONDPAGTO'
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
          OnEnter = cbxcdcondpagtoEnter
          OnExit = colorexit
          Width = 356
        end
        object cbxcdtpcobranca: TcxDBLookupComboBox
          Left = 475
          Top = 38
          DataBinding.DataField = 'CDTPCOBRANCA'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'CDTPCOBRANCA'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPCOBRANCA'
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
          OnEnter = cbxcdtpcobrancaEnter
          OnExit = colorexit
          Width = 303
        end
      end
      object ckbbonenviarpdf: TcxDBCheckBox
        Left = 8
        Top = 360
        Caption = 'N'#227'o enviar pdf para nfe no email'
        DataBinding.DataField = 'BONENVIARPDF'
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
        OnKeyDown = nextcontrol
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = 'Obser&va'#231#227'o'
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
        Height = 543
        Width = 1362
      end
    end
    object tbsproprietario: TcxTabSheet
      Caption = 'Propriet'#225'rio'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditproprietario: TcxGrid
        Left = 0
        Top = 0
        Width = 1362
        Height = 543
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = ''
        object tbvitproprietario: TcxGridDBTableView
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
          DataController.DataSource = dtsitproprietario
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvitproprietarioNMPROPRIETARIO: TcxGridDBColumn
            Caption = 'Propriet'#225'rio'
            DataBinding.FieldName = 'NMPROPRIETARIO'
            Width = 261
          end
          object tbvitproprietarioTPPESSOA: TcxGridDBColumn
            Caption = 'Tipo Pessoa'
            DataBinding.FieldName = 'TPPESSOA'
            Width = 71
          end
          object tbvitproprietarioNUCPFCNPJ: TcxGridDBColumn
            Caption = 'CPF/CNPJ'
            DataBinding.FieldName = 'NUCPFCNPJ'
          end
          object tbvitproprietarioPRSOCIEDADE: TcxGridDBColumn
            Caption = '% Sociedade'
            DataBinding.FieldName = 'PRSOCIEDADE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 83
          end
          object tbvitproprietarioDTNASCIMENTO: TcxGridDBColumn
            Caption = 'Data Nascimento'
            DataBinding.FieldName = 'DTNASCIMENTO'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 103
          end
          object tbvitproprietarioNUIDENTID: TcxGridDBColumn
            Caption = 'Identidade'
            DataBinding.FieldName = 'NUIDENTID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
          object tbvitproprietarioCDMUNICIPIO: TcxGridDBColumn
            Caption = 'Municipio'
            DataBinding.FieldName = 'CDMUNICIPIO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDMUNICIPIO'
            Properties.ListColumns = <
              item
                FieldName = 'NMMUNICIPIO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 100
          end
          object tbvitproprietarioCDUF: TcxGridDBColumn
            Caption = 'UF'
            DataBinding.FieldName = 'CDUF'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDUF'
            Properties.ListColumns = <
              item
                FieldName = 'SGUF'
              end>
            Properties.ListOptions.ShowHeader = False
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = tbvitproprietario
        end
      end
    end
    object tbsfinanceiro: TcxTabSheet
      Caption = '&Financeiro'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 80
        Width = 4
        Height = 463
      end
      object memDSOBSFINANC: TcxDBMemo
        Left = 4
        Top = 80
        Align = alClient
        DataBinding.DataField = 'DSOBSFINANC'
        DataBinding.DataSource = dts
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
        Height = 463
        Width = 1358
      end
      object gbxCredito: TcxGroupBox
        Left = 0
        Top = 40
        Align = alTop
        Caption = 'Cr'#233'dito'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 2
        Height = 40
        Width = 1362
        object Label45: TLabel
          Left = 256
          Top = 20
          Width = 27
          Height = 13
          Caption = 'Limite'
          Transparent = True
        end
        object Label46: TLabel
          Left = 394
          Top = 20
          Width = 24
          Height = 13
          Caption = 'Valor'
          Transparent = True
        end
        object Label41: TLabel
          Left = 528
          Top = 20
          Width = 40
          Height = 13
          Caption = 'Utilizado'
          Transparent = True
        end
        object lblvlcredidotutilizado: TLabel
          Left = 573
          Top = 19
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblvlfat6meses: TLabel
          Left = 4
          Top = 20
          Width = 136
          Height = 13
          Caption = 'Faturamento '#250'ltimos 6 meses'
          Transparent = True
        end
        object edtvllimite: TcxDBCalcEdit
          Left = 423
          Top = 16
          DataBinding.DataField = 'VLLIMITE'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
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
          Width = 100
        end
        object edtdtlimite: TcxDBDateEdit
          Left = 291
          Top = 16
          DataBinding.DataField = 'DTLIMITE'
          DataBinding.DataSource = dts
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
          OnKeyDown = nextcontrol
          Width = 100
        end
        object edtvlfat6meses: TcxDBCalcEdit
          Left = 141
          Top = 16
          DataBinding.DataField = 'VLFAT6MESES'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
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
          OnKeyDown = nextcontrol
          Width = 108
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Contabilidade'
        TabOrder = 3
        Height = 40
        Width = 1362
        object lblplconta: TLabel
          Left = 2
          Top = 16
          Width = 63
          Height = 13
          Caption = 'Plano Contas'
          Transparent = True
        end
        object lblcntcusto: TLabel
          Left = 378
          Top = 16
          Width = 61
          Height = 13
          Caption = 'Centro Custo'
          Transparent = True
        end
        object edtnuplconta: TcxDBButtonEdit
          Left = 74
          Top = 12
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
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtnuplcontaKeyDown
          Width = 112
        end
        object txtnmplconta: TcxDBLabel
          Left = 187
          Top = 8
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
        object cbxcdcntcusto: TcxDBLookupComboBox
          Left = 450
          Top = 12
          DataBinding.DataField = 'CDCNTCUSTO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDCNTCUSTO'
          Properties.ListColumns = <
            item
              FieldName = 'NMCNTCUSTO2'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 371
        end
      end
    end
    object tbsconsulta: TcxTabSheet
      Caption = 'Con&sulta'
      ImageIndex = 41
      ExplicitHeight = 502
      object grdconsulta: TcxGrid
        Left = 0
        Top = 38
        Width = 1362
        Height = 505
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = ''
        object grdconsultaduplicata: TcxGridDBBandedTableView
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
          OnCellDblClick = grdconsultaduplicataCellDblClick
          OnCustomDrawCell = grdconsultaduplicataCustomDrawCell
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
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Contas a Receber'
              Width = 746
            end
            item
              Caption = 'Valores'
              Width = 270
            end>
          object grdconsultaduplicataNUDUPLICATA: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'NUDUPLICATA'
            Styles.Content = cxStyle1
            Width = 107
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaduplicataDTEMISSAO: TcxGridDBBandedColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaduplicataDTPRORROGACAO: TcxGridDBBandedColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'DTPRORROGACAO'
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdconsultaduplicataDTBAIXA: TcxGridDBBandedColumn
            Caption = 'Baixa'
            DataBinding.FieldName = 'DTBAIXA'
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdconsultaduplicataVLDUPLICATA: TcxGridDBBandedColumn
            Caption = 'Original'
            DataBinding.FieldName = 'VLDUPLICATA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaduplicataVLSALDO: TcxGridDBBandedColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'VLSALDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaduplicataVLRECEBIDO: TcxGridDBBandedColumn
            Caption = 'Recebido'
            DataBinding.FieldName = 'VLRECEBIDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdconsultaduplicataDSHISTORICO: TcxGridDBBandedColumn
            Caption = 'Historico'
            DataBinding.FieldName = 'DSHISTORICO'
            Width = 176
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grdconsultaduplicataNMTPCOBRANCA: TcxGridDBBandedColumn
            Caption = 'Tipo Cobran'#231'a'
            DataBinding.FieldName = 'NMTPCOBRANCA'
            Width = 163
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdconsultaduplicataNMSTDUPLICATA: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTDUPLICATA'
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdconsultaduplicataNUCOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUCOR'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        object grdconsultaadntcliente: TcxGridDBBandedTableView
          OnDblClick = grdconsultaadntclienteDblClick
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
              FieldName = 'VLUTILIZADO'
              Column = grdconsultaadntclienteVLUTILIZADO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLSALDO'
              Column = grdconsultaadntclienteVLSALDO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLADNTCLIENTE'
              Column = grdconsultaadntclienteVLADNTCLIENTE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Adiantamento Cliente'
              Width = 240
            end
            item
              Caption = 'Valores'
              Width = 418
            end>
          object grdconsultaadntclienteCDADNTCLIENTE: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDADNTCLIENTE'
            Styles.Content = cxStyle1
            Width = 124
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaadntclienteDTEMISSAO: TcxGridDBBandedColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 207
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaadntclienteVLADNTCLIENTE: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLADNTCLIENTE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaadntclienteVLSALDO: TcxGridDBBandedColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'VLSALDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdconsultaadntclienteVLUTILIZADO: TcxGridDBBandedColumn
            Caption = 'Utilizado'
            DataBinding.FieldName = 'VLUTILIZADO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object grdconsultasaida: TcxGridDBBandedTableView
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
          OnCellDblClick = grdconsultasaidaCellDblClick
          DataController.DataSource = dtsconsulta
          DataController.DetailKeyFieldNames = 'CDSAIDA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMS'
              Column = grdconsultasaidavlicms
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPI'
              Column = grdconsultasaidaVLIPI
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grdconsultasaidavltotal
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Nota Fiscal'
            end
            item
              Caption = 'Data'
            end
            item
              Caption = 'Fiscal'
            end
            item
              Caption = 'Valores'
            end>
          object grdconsultasaidaNUSAIDA: TcxGridDBBandedColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUSAIDA'
            Styles.Content = dtmmain.cxStyle1
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultasaidanmtpsaida: TcxGridDBBandedColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'nmtpsaida'
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdconsultasaidaDTEMISSAO: TcxGridDBBandedColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultasaidaDTSAIDA: TcxGridDBBandedColumn
            Caption = 'Sa'#237'da'
            DataBinding.FieldName = 'DTSAIDA'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultasaidanudocfiscalicms: TcxGridDBBandedColumn
            Caption = 'Doc Fiscal'
            DataBinding.FieldName = 'NUDOCFISCALICMS'
            Width = 60
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultasaidanmstdocumento: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'nmstdocumento'
            Width = 120
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultasaidacdcfop: TcxGridDBBandedColumn
            Caption = 'CFOP'
            DataBinding.FieldName = 'cdcfop'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdconsultasaidanmrepresentante: TcxGridDBBandedColumn
            Caption = 'Representante'
            DataBinding.FieldName = 'nmrepresentante'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultasaidaNMCONDPAGTO: TcxGridDBBandedColumn
            Caption = 'Cond Pagto'
            DataBinding.FieldName = 'NMCONDPAGTO'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdconsultasaidavltotal: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultasaidavlicms: TcxGridDBBandedColumn
            Caption = 'ICMS'
            DataBinding.FieldName = 'vlicms'
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultasaidaVLIPI: TcxGridDBBandedColumn
            Caption = 'IPI'
            DataBinding.FieldName = 'vlipi'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object grdconsultaordserv: TcxGridDBBandedTableView
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
          OnCellDblClick = grdconsultaordservCellDblClick
          DataController.DataSource = dtsconsulta
          DataController.DetailKeyFieldNames = 'CDORDSERV'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vltotal'
              Column = grdconsultaordservvltotal
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Ordem Servi'#231'o'
            end
            item
              Caption = 'Data'
            end
            item
              Caption = 'Valor'
            end>
          object grdconsultaordservnuordserv: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'nuordserv'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaordservdtentrada: TcxGridDBBandedColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'dtentrada'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaordservdtsaida: TcxGridDBBandedColumn
            Caption = 'Sa'#237'da'
            DataBinding.FieldName = 'dtsaida'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaordservnmetapa: TcxGridDBBandedColumn
            Caption = 'Etapa'
            DataBinding.FieldName = 'nmetapa'
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaordservnmstordserv: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'nmstordserv'
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdconsultaordservColumn1: TcxGridDBBandedColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'NMTPORDSERV'
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdconsultaordservvltotal: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'vltotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object grdconsultacheque: TcxGridDBBandedTableView
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
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Cheque'
            end
            item
              Caption = 'Data'
            end
            item
              Caption = 'Identifica'#231#227'o'
            end>
          object grdconsultachequeCDCHEQUE: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDCHEQUE'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultachequeNUCHEQUE: TcxGridDBBandedColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUCHEQUE'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultachequeDTEMISSAO: TcxGridDBBandedColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultachequeDTENTRADA: TcxGridDBBandedColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'DTENTRADA'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultachequeVLCHEQUE: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLCHEQUE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdconsultachequeNMBANCO: TcxGridDBBandedColumn
            Caption = 'Banco'
            DataBinding.FieldName = 'NMBANCO'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultachequeNUAGENCIA: TcxGridDBBandedColumn
            Caption = 'Ag'#234'ncia'
            DataBinding.FieldName = 'NUAGENCIA'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultachequeNUCONTACORRENTE: TcxGridDBBandedColumn
            Caption = 'Conta Corrente'
            DataBinding.FieldName = 'NUCONTACORRENTE'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdconsultachequeNMSTCHEQUE: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTCHEQUE'
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object grdconsultaequipamento: TcxGridDBTableView
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
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdconsultaequipamentoCDEQUIPAMENTO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDEQUIPAMENTO'
          end
          object grdconsultaequipamentoNUSERIE: TcxGridDBColumn
            Caption = 'S'#233'rie'
            DataBinding.FieldName = 'NUSERIE'
          end
          object grdconsultaequipamentoNUPATRIMONIO: TcxGridDBColumn
            Caption = 'Patrim'#244'nio'
            DataBinding.FieldName = 'NUPATRIMONIO'
          end
          object grdconsultaequipamentonmtpequipamento: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'NMTPEQUIPAMENTO'
          end
          object grdconsultaequipamentonmmarca: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'nmmarca'
          end
          object grdconsultaequipamentonmmodelo: TcxGridDBColumn
            Caption = 'Modelo'
            DataBinding.FieldName = 'nmmodelo'
          end
          object grdconsultaequipamentonmcor: TcxGridDBColumn
            Caption = 'Cor'
            DataBinding.FieldName = 'nmcor'
          end
        end
        object grdconsultamovbancario: TcxGridDBTableView
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
              FieldName = 'vllancamento'
              Column = grdconsultamovbancariovllancamento
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdconsultamovbancariocdmovbancario: TcxGridDBColumn
            Caption = 'Mov. Banc'#225'rio'
            DataBinding.FieldName = 'cdmovbancario'
            Width = 82
          end
          object grdconsultamovbancariodtemissao: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'dtemissao'
            Width = 114
          end
          object grdconsultamovbancarionmmovimentacao: TcxGridDBColumn
            Caption = 'Movimenta'#231#227'o'
            DataBinding.FieldName = 'nmmovimentacao'
            Width = 201
          end
          object grdconsultamovbancarionmconta: TcxGridDBColumn
            Caption = 'Conta'
            DataBinding.FieldName = 'nmconta'
            Width = 121
          end
          object grdconsultamovbancariovllancamento: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLLANCAMENTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 135
          end
        end
        object grdconsultaitsaida: TcxGridDBBandedTableView
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
          DataController.DetailKeyFieldNames = 'CDSAIDA'
          DataController.KeyFieldNames = 'CDITSAIDA'
          DataController.MasterKeyFieldNames = 'CDSAIDA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vltotal'
              Column = grdconsultaitsaidaVLTOTAL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vlipi'
              Column = grdconsultaitsaidavlipi
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vlicms'
              Column = grdconsultaitsaidaVLICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'QTITEM'
              Column = grdconsultaitsaidaQTITEM
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Produto'
            end
            item
              Caption = 'Pedido'
            end
            item
              Caption = 'Valores'
            end>
          object grdconsultaitsaidaCDDIGITADO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitsaidaNMPRODUTO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 350
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaitsaidaNUPEDIDO: TcxGridDBBandedColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'NUPEDIDO'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitsaidaQTITEM: TcxGridDBBandedColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitsaidaVLUNITARIO: TcxGridDBBandedColumn
            Caption = 'Valor Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaitsaidaVLTOTAL: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdconsultaitsaidaVLICMS: TcxGridDBBandedColumn
            Caption = 'ICMS'
            DataBinding.FieldName = 'vlicms'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdconsultaitsaidavlipi: TcxGridDBBandedColumn
            Caption = 'IPI'
            DataBinding.FieldName = 'vlipi'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object grdconsultaitordserv: TcxGridDBBandedTableView
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
          DataController.DetailKeyFieldNames = 'CDORDSERV'
          DataController.KeyFieldNames = 'CDORDSERV'
          DataController.MasterKeyFieldNames = 'CDORDSERV'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'qtitem'
              Column = grdconsultaitordservqtitem
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vltotal'
              Column = grdconsultaitordservvltotal
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
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
          object grdconsultaitordservcddigitado: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'cddigitado'
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitordservnmproduto: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'nmproduto'
            Width = 350
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaitordservqtitem: TcxGridDBBandedColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'qtitem'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitordservvlunitario: TcxGridDBBandedColumn
            Caption = 'Valor Unit'#225'rio'
            DataBinding.FieldName = 'vlunitario'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaitordservvltotal: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'vltotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object grdconsultaitpedido: TcxGridDBBandedTableView
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
          DataController.DetailKeyFieldNames = 'CDPEDIDO'
          DataController.KeyFieldNames = 'CDPEDIDO'
          DataController.MasterKeyFieldNames = 'CDPEDIDO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'qtatendida'
              Column = grdconsultaitpedidoqtatendida
            end
            item
              Kind = skSum
              FieldName = 'qtitem'
              Column = grdconsultaitpedidoqtitem
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vltotal'
              Column = grdconsultaitpedidovltotal
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Produto'
            end
            item
              Caption = 'Quantidade'
            end
            item
              Caption = 'Valores'
            end>
          object grdconsultaitpedidocddigitado: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitpedidonmproduto: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaitpedidoqtitem: TcxGridDBBandedColumn
            Caption = 'Pedida'
            DataBinding.FieldName = 'qtitem'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitpedidoqtatendida: TcxGridDBBandedColumn
            Caption = 'Atendida'
            DataBinding.FieldName = 'qtatendida'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaitpedidovlunitario: TcxGridDBBandedColumn
            Caption = 'Valor Unit'#225'rio'
            DataBinding.FieldName = 'vlunitario'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitpedidovltotal: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'vltotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
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
          DataController.DetailKeyFieldNames = 'CDPEDIDO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grdconsultapedidovltotal
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdconsultapedidonupedido: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'nupedido'
          end
          object grdconsultapedidodtemissao: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'dtemissao'
          end
          object grdconsultapedidonmcondpagto: TcxGridDBColumn
            Caption = 'Cond Pagto'
            DataBinding.FieldName = 'nmcondpagto'
            Width = 138
          end
          object grdconsultapedidonmtpcobranca: TcxGridDBColumn
            Caption = 'Tipo Cobran'#231'a'
            DataBinding.FieldName = 'nmtpcobranca'
            Width = 112
          end
          object grdconsultapedidonmrepresentante: TcxGridDBColumn
            Caption = 'Representante'
            DataBinding.FieldName = 'nmrepresentante'
            Width = 146
          end
          object grdconsultapedidonmstpedido: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'nmstpedido'
            Width = 100
          end
          object grdconsultapedidovltotal: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'vltotal'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdconsultaorcamento: TcxGridDBTableView
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
          DataController.DetailKeyFieldNames = 'CDORCAMENTO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object grdconsultaorcamentocdorcamento: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDORCAMENTO'
          end
          object grdconsultaorcamentodtemissao: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object grdconsultaorcamentonmcondpagto: TcxGridDBColumn
            Caption = 'Condi'#231#227'o Pagamento'
            DataBinding.FieldName = 'CDCONDPAGTO'
            Width = 150
          end
          object grdconsultaorcamentonmtpcobranca: TcxGridDBColumn
            Caption = 'Tipo Cobran'#231'a'
            DataBinding.FieldName = 'NMTPCOBRANCA'
            Width = 150
          end
          object grdconsultaorcamentonmrepresentante: TcxGridDBColumn
            Caption = 'Representante'
            DataBinding.FieldName = 'NMREPRESENTANTE'
            Width = 150
          end
          object grdconsultaorcamentonmstorcamento: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTORCAMENTO'
            Width = 150
          end
          object grdconsultaorcamentovltotal: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdconsultaitorcamento: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dtsitconsulta
          DataController.DetailKeyFieldNames = 'CDORCAMENTO'
          DataController.KeyFieldNames = 'CDORCAMENTO'
          DataController.MasterKeyFieldNames = 'CDORCAMENTO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'Produto'
            end
            item
              Caption = 'Quantidade'
            end
            item
              Caption = 'Valores'
            end>
          object grdconsultaitorcamentocddigitado: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitorcamentonmproduto: TcxGridDBBandedColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaitorcamentoqtitem: TcxGridDBBandedColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitorcamentoqtatendida: TcxGridDBBandedColumn
            Caption = 'Qtd Aprovada'
            DataBinding.FieldName = 'qtaprovado'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdconsultaitorcamentovlunitario: TcxGridDBBandedColumn
            Caption = 'Valor Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdconsultaitorcamentovltotal: TcxGridDBBandedColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object grdconsultalocacao: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = grdconsultalocacaoCellDblClick
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLLOCACAO'
              Column = grdconsultalocacaoVLLOCACAO
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = grdconsultalocacaoQTITEM
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object grdconsultalocacaoCDLOCACAO: TcxGridDBColumn
            Caption = 'Loca'#231#227'o'
            DataBinding.FieldName = 'CDLOCACAO'
            Styles.Content = dtmmain.cxStyle1
          end
          object grdconsultalocacaoNMSTLOCACAO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTLOCACAO'
            Width = 80
          end
          object grdconsultalocacaoDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object grdconsultalocacaoDTPREVISTA: TcxGridDBColumn
            Caption = 'Prevista'
            DataBinding.FieldName = 'DTPREVISTA'
          end
          object grdconsultalocacaoVLLOCACAO: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLLOCACAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdconsultalocacaoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
          end
          object grdconsultalocacaoCDEQUIPAMENTO: TcxGridDBColumn
            Caption = 'C'#243'd Equipamento'
            DataBinding.FieldName = 'CDEQUIPAMENTO'
          end
          object grdconsultalocacaoNUSERIE: TcxGridDBColumn
            Caption = 'N'#186' S'#233'rie'
            DataBinding.FieldName = 'NUSERIE'
            Width = 80
          end
          object grdconsultalocacaoNUPATRIMONIO: TcxGridDBColumn
            Caption = 'N'#186' Patrim'#244'nio'
            DataBinding.FieldName = 'NUPATRIMONIO'
            Width = 80
          end
          object grdconsultalocacaoNMTPEQUIPAMENTO: TcxGridDBColumn
            Caption = 'Tipo Equipamento'
            DataBinding.FieldName = 'NMTPEQUIPAMENTO'
            Width = 100
          end
          object grdconsultalocacaoNMMARCA: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'NMMARCA'
            Width = 100
          end
          object grdconsultalocacaoNMMODELO: TcxGridDBColumn
            Caption = 'Modelo'
            DataBinding.FieldName = 'NMMODELO'
            Width = 100
          end
        end
        object grdconsultaLevel1: TcxGridLevel
          object grdconsultaLevel2: TcxGridLevel
          end
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1362
        Height = 38
        Align = dalTop
        BarManager = bmg1
      end
    end
    object tbsopcoes: TcxTabSheet
      Caption = 'Op'#231#245'es'
      ImageIndex = 139
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ckb1: TcxDBCheckBox
        Left = 0
        Top = 4
        Caption = 'N'#227'o gerar boleto'
        DataBinding.DataField = 'BONGERARBOLETOFATURAMENTO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 0
        Transparent = True
        OnKeyDown = nextcontrol
      end
      object rdgfaturamento: TcxDBRadioGroup
        Left = 0
        Top = 25
        Caption = 'Processar valor do produto da seguinte maneira:'
        DataBinding.DataField = 'TPFATURAMENTOVALOR'
        DataBinding.DataSource = dts
        Properties.Items = <
          item
            Caption = 'Igual a origem'
            Value = 'O'
          end
          item
            Caption = 'Aplicar tabela grade do produto no final'
            Value = 'P'
          end
          item
            Caption = 'Aplicar tabela grade do produto do cliente no final'
            Value = 'C'
          end>
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 1
        Height = 85
        Width = 272
      end
    end
    object tbsRisco: TcxTabSheet
      Caption = 'Risco'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdclienteprofissao: TcxGrid
        Left = 0
        Top = 0
        Width = 1362
        Height = 200
        Align = alTop
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvclienteprofissao: TcxGridDBTableView
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
          DataController.DataSource = dtsclienteprofissao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvclienteprofissaoCDPROFISSAO: TcxGridDBColumn
            Caption = 'Profiss'#227'o'
            DataBinding.FieldName = 'CDPROFISSAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDPROFISSAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMPROFISSAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 300
          end
        end
        object grdclienteprofissaoLevel1: TcxGridLevel
          GridView = tbvclienteprofissao
        end
      end
      object grdclienteprofissaorisco: TcxGrid
        Left = 0
        Top = 208
        Width = 1362
        Height = 335
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbvclienteprofissaorisco: TcxGridDBTableView
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
          DataController.DataSource = dtsclienteprofissaorisco
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvclienteprofissaoriscoCDRISCO: TcxGridDBColumn
            Caption = 'Risco'
            DataBinding.FieldName = 'CDRISCO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDRISCO'
            Properties.ListColumns = <
              item
                FieldName = 'NMRISCO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 300
          end
        end
        object grdclienteprofissaoriscoLevel1: TcxGridLevel
          GridView = tbvclienteprofissaorisco
        end
      end
      object cxSplitter3: TcxSplitter
        Left = 0
        Top = 200
        Width = 1362
        Height = 8
        AlignSplitter = salTop
        Control = grdclienteprofissao
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 59
    Width = 1362
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblcodigo: TLabel
      Left = 7
      Top = 23
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lblnome: TLabel
      Left = 104
      Top = 23
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
      Transparent = True
    end
    object lblrzsocial: TLabel
      Left = 342
      Top = 23
      Width = 63
      Height = 13
      Caption = 'Raz'#227'o Social'
      Transparent = True
    end
    object edtrzsocial: TcxDBTextEdit
      Left = 342
      Top = 37
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
      Width = 243
    end
    object edtnome: TcxDBTextEdit
      Left = 104
      Top = 37
      DataBinding.DataField = 'NMCLIENTE'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = edtnomeExit
      OnKeyDown = nextcontrol
      Width = 240
    end
    object edtcodigo: TcxTextEdit
      Left = 7
      Top = 37
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 98
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object rdbtppessoa: TcxDBRadioGroup
      Left = 586
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
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 3
      Height = 33
      Width = 123
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 300
    Top = 32
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
    object actImpCadg: TAction
      Caption = 'Cadastro (Laser)'
      Hint = 'Imprimir Cadastro Modo Gr'#225'fico'
      OnExecute = actImpCadgExecute
    end
    object actAbrirPedido: TAction
      Hint = 'pedido'
      ImageIndex = 25
      OnExecute = actAbrirPedidoExecute
    end
    object actAbrirSaida: TAction
      Hint = 'saida'
      ImageIndex = 19
      OnExecute = actAbrirSaidaExecute
    end
    object actAbrirDuplicata: TAction
      Hint = 'duplicata'
      ImageIndex = 32
      OnExecute = actAbrirDuplicataExecute
    end
    object actabrirlocacao: TAction
      Hint = 'locacao'
      OnExecute = actabrirlocacaoExecute
    end
    object actAbrirDuplicata2: TAction
      Hint = 'Duplicata'
      ImageIndex = 32
    end
    object actabriradntcliente: TAction
      Hint = 'adntcliente'
      ImageIndex = 20
      OnExecute = actabriradntclienteExecute
    end
    object actabrirmovbancario: TAction
      Hint = 'movbancario'
      ImageIndex = 18
      OnExecute = actabrirmovbancarioExecute
    end
    object actconsultapedido: TAction
      Caption = 'Pedido'
      GroupIndex = 1
      Hint = 'Consulta Pedido'
      ImageIndex = 25
      OnExecute = actconsultapedidoExecute
    end
    object actabrirCheque: TAction
      Hint = 'cheque'
      ImageIndex = 101
      OnExecute = actabrirChequeExecute
    end
    object actabrirordserv: TAction
      Hint = 'ordserv'
      ImageIndex = 64
      OnExecute = actabrirordservExecute
    end
    object actconsultasaida: TAction
      AutoCheck = True
      Caption = 'Nota Fiscal'
      GroupIndex = 1
      Hint = 'Consulta Nota Fiscal'
      ImageIndex = 19
      OnExecute = actconsultasaidaExecute
    end
    object actconsultaduplicata: TAction
      AutoCheck = True
      Caption = 'Contas a Receber'
      GroupIndex = 1
      Hint = 'Consulta Duplicata'
      ImageIndex = 32
      OnExecute = actconsultaduplicataExecute
    end
    object actconsultaadntcliente: TAction
      AutoCheck = True
      Caption = 'Adiantamento'
      GroupIndex = 1
      Hint = 'Consulta Adiantamento de Cliente'
      ImageIndex = 20
      OnExecute = actconsultaadntclienteExecute
    end
    object actconsultaEquipamento: TAction
      AutoCheck = True
      Caption = 'Equipamento do Cliente'
      GroupIndex = 1
      ImageIndex = 95
      OnExecute = actconsultaEquipamentoExecute
    end
    object actconsultamovbancario: TAction
      AutoCheck = True
      Caption = 'Mov. Banc'#225'rio'
      GroupIndex = 1
      Hint = 'Consulta Movimento Banc'#225'rio'
      ImageIndex = 18
      OnExecute = actconsultamovbancarioExecute
    end
    object actconsultacheque: TAction
      AutoCheck = True
      Caption = 'Cheque'
      GroupIndex = 1
      ImageIndex = 101
      OnExecute = actconsultachequeExecute
    end
    object actconsultaordserv: TAction
      AutoCheck = True
      Caption = 'Ordem Servi'#231'o'
      GroupIndex = 1
      ImageIndex = 64
      OnExecute = actconsultaordservExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actabrirequipamento: TAction
      Caption = 'Abrir Equipamento'
      Hint = 'equipamento1'
      ImageIndex = 95
      OnExecute = actabrirequipamentoExecute
    end
    object actfichasaldoadntcliente: TAction
      Caption = 'Ficha Saldo de Adiantamento'
      OnExecute = actfichasaldoadntclienteExecute
    end
    object actabrircontrato: TAction
      Hint = 'Contrato'
      OnExecute = actabrircontratoExecute
    end
    object actconsultaorcamento: TAction
      AutoCheck = True
      Caption = 'Or'#231'amento'
      ImageIndex = 156
      OnExecute = actconsultaorcamentoExecute
    end
    object actconsultalocacao: TAction
      AutoCheck = True
      Caption = 'Loca'#231#227'o'
      ImageIndex = 108
      OnExecute = actconsultalocacaoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actcampanha: TAction
      Caption = 'Campanha'
      Visible = False
      OnExecute = actcampanhaExecute
    end
    object actfilial: TAction
      Caption = 'Filial'
      Visible = False
      OnExecute = actfilialExecute
    end
    object actestatisica: TAction
      Caption = 'Estat'#237'stica Financeira'
      OnExecute = actestatisicaExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutoExecute
    end
    object actclientecondpagto: TAction
      Caption = 'Condi'#231#227'o de Pagamento'
      OnExecute = actclientecondpagtoExecute
    end
    object actclientetpcobranca: TAction
      Caption = 'Tipo de Cobran'#231'a'
      OnExecute = actclientetpcobrancaExecute
    end
    object actclienteentrega: TAction
      Caption = 'Endere'#231'o de Entrega'
      OnExecute = actclienteentregaExecute
    end
    object actitcontcliente: TAction
      Caption = 'Contato'
      OnExecute = actitcontclienteExecute
    end
    object actitbanco: TAction
      Caption = 'Banco'
      OnExecute = actitbancoExecute
    end
    object actitrefcomercial: TAction
      Caption = 'Refer'#234'ncia Comercial'
      OnExecute = actitrefcomercialExecute
    end
    object actitclienteemail: TAction
      Caption = 'Email'
      OnExecute = actitclienteemailExecute
    end
    object actitclienteinfcomercial: TAction
      Caption = 'Informa'#231#227'o Comercial'
      OnExecute = actitclienteinfcomercialExecute
    end
    object actitclienteproduto: TAction
      Caption = 'Produto'
      OnExecute = actitclienteprodutoExecute
    end
  end
  object pumCobranca: TPopupMenu
    Left = 384
    Top = 8
    object CopiarEndereoComercialparaCobrana1: TMenuItem
      Caption = 'Copiar Endere'#231'o'
      Enabled = False
      Hint = 'Copiar Endere'#231'o comercial para Endere'#231'o de Cobran'#231'a'
      ImageIndex = 57
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
    LookAndFeel.SkinName = ''
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 152
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
      Caption = 'cliente'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 369
      FloatTop = 161
      FloatClientWidth = 62
      FloatClientHeight = 456
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
      WholeRow = False
    end
    object dxbrManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrsbtmRegistro'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
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
      FloatLeft = 331
      FloatTop = 99
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnorcamento'
        end
        item
          Visible = True
          ItemName = 'btnpedido'
        end
        item
          Visible = True
          ItemName = 'btnsaida'
        end
        item
          Visible = True
          ItemName = 'btnduplicata'
        end
        item
          Visible = True
          ItemName = 'btnadntcliente'
        end
        item
          Visible = True
          ItemName = 'btnmovbancario'
        end
        item
          Visible = True
          ItemName = 'btncheque'
        end
        item
          Visible = True
          ItemName = 'btnordserv'
        end
        item
          Visible = True
          ItemName = 'btnequipamento'
        end
        item
          Visible = True
          ItemName = 'btnlocacao'
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
          ItemName = 'dxbrsprtr3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr2'
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
      Action = actImpCadg
      Caption = 'Cadastro (Laser cds)'
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actfichasaldoadntcliente
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actNovo
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actAbrir
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actEditar
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actSalvar
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actCancelar
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actExcluir
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actPrimeiro
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actAnterior
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actProximo
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = actUltimo
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Caption = 'Copiar Endere'#231'o'
      Category = 0
      Enabled = False
      Hint = 'Copiar Endere'#231'o comercial para Endere'#231'o de Cobran'#231'a'
      Visible = ivAlways
      ImageIndex = 57
    end
    object dxBarButton15: TdxBarButton
      Caption = 'Exportar NFE'
      Category = 0
      Enabled = False
      Visible = ivAlways
      ImageIndex = 134
    end
    object dxBarButton16: TdxBarButton
      Action = actfechar
      Category = 0
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
    object btnduplicata: TdxBarLargeButton
      Action = actconsultaduplicata
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnadntcliente: TdxBarLargeButton
      Action = actconsultaadntcliente
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnmovbancario: TdxBarLargeButton
      Action = actconsultamovbancario
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btncheque: TdxBarLargeButton
      Action = actconsultacheque
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnordserv: TdxBarLargeButton
      Action = actconsultaordserv
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnequipamento: TdxBarLargeButton
      Action = actconsultaEquipamento
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnorcamento: TdxBarLargeButton
      Action = actconsultaorcamento
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
    object btnlocacao: TdxBarLargeButton
      Action = actconsultalocacao
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton2: TdxBarButton
      Action = actcampanha
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Action = actopcoes
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end>
    end
    object dxBarButton13: TdxBarButton
      Action = actcampanha
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = actfilial
      Category = 0
    end
    object dxBarButton18: TdxBarButton
      Action = actestatisica
      Category = 0
    end
    object dxBarButton19: TdxBarButton
      Action = actclientecondpagto
      Category = 0
    end
    object dxBarButton20: TdxBarButton
      Action = actclientetpcobranca
      Category = 0
    end
    object dxBarButton21: TdxBarButton
      Action = actclienteentrega
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = actitcontcliente
      Category = 0
    end
    object dxBarButton23: TdxBarButton
      Action = actitbanco
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = actitrefcomercial
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = actitclienteemail
      Category = 0
    end
    object dxBarButton26: TdxBarButton
      Action = actitclienteinfcomercial
      Category = 0
    end
    object dxBarButton27: TdxBarButton
      Action = actitclienteproduto
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT CLIENTE.*,PRODUTO.NMPRODUTO FROM CLIENTE LEFT JOIN PRODUT' +
      'O ON PRODUTO.CDPRODUTO=CLIENTE.CDPRODUTO AND PRODUTO.CDEMPRESA=C' +
      'LIENTE.CDEMPRESA WHERE CLIENTE.CDCLIENTE=:CDCLIENTE AND CLIENTE.' +
      'CDEMPRESA=:CDEMPRESA'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 827
    Top = 179
    object sdsCDSTCLIENTE: TIntegerField
      FieldName = 'CDSTCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUFCBRNC: TIntegerField
      FieldName = 'CDUFCBRNC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
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
    object sdsDSNUMERO: TStringField
      FieldName = 'DSNUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsDSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUCXPOSTAL: TStringField
      FieldName = 'NUCXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
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
    object sdsDSENDCBRNC: TStringField
      FieldName = 'DSENDCBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSNUMCBRNC: TStringField
      FieldName = 'DSNUMCBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsDSCOMCBRNC: TStringField
      FieldName = 'DSCOMCBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMBAICBRNC: TStringField
      FieldName = 'NMBAICBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUCXPCBRNC: TStringField
      FieldName = 'NUCXPCBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsNUCEPCBRNC: TStringField
      FieldName = 'NUCEPCBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object sdsNUFONE1CBRNC: TStringField
      FieldName = 'NUFONE1CBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsNUFONE2CBRNC: TStringField
      FieldName = 'NUFONE2CBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsNUFONE3CBRNC: TStringField
      FieldName = 'NUFONE3CBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsNUFAXCBRNC: TStringField
      FieldName = 'NUFAXCBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUINSCEST: TStringField
      FieldName = 'NUINSCEST'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUCNPJ: TStringField
      FieldName = 'NUCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUINSCMUNICIPAL: TStringField
      FieldName = 'NUINSCMUNICIPAL'
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
    object sdsCDESTCIVIL: TStringField
      FieldName = 'CDESTCIVIL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDSEXO: TStringField
      FieldName = 'CDSEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
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
    object sdsDTFUNDACAO: TDateField
      FieldName = 'DTFUNDACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTLIMITE: TDateField
      FieldName = 'DTLIMITE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLLIMITE: TFMTBCDField
      FieldName = 'VLLIMITE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLFAT6MESES: TFMTBCDField
      FieldName = 'VLFAT6MESES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsBOCONSUMIDORFINAL: TStringField
      FieldName = 'BOCONSUMIDORFINAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNURAMAL: TStringField
      FieldName = 'NURAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sdsNUCAE: TStringField
      FieldName = 'NUCAE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object sdsDSOBSFINANC: TBlobField
      FieldName = 'DSOBSFINANC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDTPCLIENTE: TIntegerField
      FieldName = 'CDTPCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCLIENTEMENSALIDADE: TIntegerField
      FieldName = 'CDTPCLIENTEMENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDIAMENSALIDADE: TIntegerField
      FieldName = 'NUDIAMENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTCADASTROSOCIO: TDateField
      FieldName = 'DTCADASTROSOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMNATURALIDADE: TStringField
      FieldName = 'NMNATURALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUCNTCORRENTE: TStringField
      FieldName = 'NUCNTCORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsCDRMATIVIDADE: TIntegerField
      FieldName = 'CDRMATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIOVENDEDOR: TIntegerField
      FieldName = 'CDFUNCIONARIOVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOPENDENTECOBRANCA: TStringField
      FieldName = 'BOPENDENTECOBRANCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsTPFATURAMENTOVALOR: TStringField
      FieldName = 'TPFATURAMENTOVALOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMUNICIPIOCBRNC: TIntegerField
      FieldName = 'CDMUNICIPIOCBRNC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBONGERARBOLETOFATURAMENTO: TStringField
      FieldName = 'BONGERARBOLETOFATURAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDTDESFILIACAO: TDateField
      FieldName = 'DTDESFILIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCELULAR: TStringField
      FieldName = 'NUCELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsBONFEENVIARPDF: TStringField
      FieldName = 'BONFEENVIARPDF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOSINCRONIZADO: TStringField
      FieldName = 'BOSINCRONIZADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDPAIS: TIntegerField
      FieldName = 'CDPAIS'
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
    object sdsCDCLIENTEANTIGO: TStringField
      FieldName = 'CDCLIENTEANTIGO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBONENVIARPDF: TStringField
      FieldName = 'BONENVIARPDF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDSUFRAMA: TIntegerField
      FieldName = 'CDSUFRAMA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOIPI: TStringField
      FieldName = 'BOIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsBOPIS: TStringField
      FieldName = 'BOPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOCOFINS: TStringField
      FieldName = 'BOCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOICMS: TStringField
      FieldName = 'BOICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPREGIME: TIntegerField
      FieldName = 'CDTPREGIME'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
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
    object sdsPRICMSDUPLICATACTE: TFloatField
      FieldName = 'PRICMSDUPLICATACTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTCONSULTASPC: TDateField
      FieldName = 'DTCONSULTASPC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUCEI: TStringField
      FieldName = 'NUCEI'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sdsNUMEI: TStringField
      FieldName = 'NUMEI'
      ProviderFlags = [pfInUpdate]
      Size = 12
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
    object sdsNUAPOLICE: TStringField
      FieldName = 'NUAPOLICE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDFORNECEDORSEGURADORA: TLargeintField
      FieldName = 'CDFORNECEDORSEGURADORA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sdsitproprietario: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM ITPROPRIETARIO '#13#10'WHERE CDCLIENTE=:CDCLIENTE AND ' +
      'CDEMPRESA=:CDEMPRESA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDCLIENTE'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = dtmmain.sqlc
    Left = 827
    Top = 325
    object sdsitproprietarioNMPROPRIETARIO: TStringField
      FieldName = 'NMPROPRIETARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsitproprietarioNUCPFCNPJ: TStringField
      FieldName = 'NUCPFCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitproprietarioPRSOCIEDADE: TFloatField
      FieldName = 'PRSOCIEDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitproprietarioDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitproprietarioTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitproprietarioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitproprietarioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitproprietarioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitproprietarioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitproprietarioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitproprietarioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitproprietarioCDITPROPRIETARIO: TIntegerField
      FieldName = 'CDITPROPRIETARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitproprietarioTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitproprietarioCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitproprietarioCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitproprietarioCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitproprietarioCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitproprietarioNUIDENTID: TStringField
      FieldName = 'NUIDENTID'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsitproprietarioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitproprietarioCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 855
    Top = 179
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 885
    Top = 179
    object cdsCDSTCLIENTE: TIntegerField
      FieldName = 'CDSTCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDREPRESENTANTEValidate
    end
    object cdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDUFValidate
    end
    object cdsCDUFCBRNC: TIntegerField
      FieldName = 'CDUFCBRNC'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDUFCBRNCValidate
    end
    object cdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsNMCLIENTEValidate
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
    object cdsDSNUMERO: TStringField
      FieldName = 'DSNUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsDSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUCXPOSTAL: TStringField
      FieldName = 'NUCXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 5
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
    object cdsDSENDCBRNC: TStringField
      FieldName = 'DSENDCBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDSNUMCBRNC: TStringField
      FieldName = 'DSNUMCBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsDSCOMCBRNC: TStringField
      FieldName = 'DSCOMCBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNMBAICBRNC: TStringField
      FieldName = 'NMBAICBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUCXPCBRNC: TStringField
      FieldName = 'NUCXPCBRNC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsNUCEPCBRNC: TStringField
      FieldName = 'NUCEPCBRNC'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCEPCBRNCValidate
      Size = 9
    end
    object cdsNUFONE1CBRNC: TStringField
      FieldName = 'NUFONE1CBRNC'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUFONE1CBRNCValidate
      Size = 14
    end
    object cdsNUFONE2CBRNC: TStringField
      FieldName = 'NUFONE2CBRNC'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUFONE2CBRNCValidate
      Size = 14
    end
    object cdsNUFONE3CBRNC: TStringField
      FieldName = 'NUFONE3CBRNC'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUFONE3CBRNCValidate
      Size = 14
    end
    object cdsNUFAXCBRNC: TStringField
      FieldName = 'NUFAXCBRNC'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUFAXCBRNCValidate
      Size = 14
    end
    object cdsTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUINSCEST: TStringField
      FieldName = 'NUINSCEST'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUCNPJ: TStringField
      FieldName = 'NUCNPJ'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCNPJValidate
    end
    object cdsNUINSCMUNICIPAL: TStringField
      FieldName = 'NUINSCMUNICIPAL'
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
      OnValidate = cdsNUCPFValidate
      Size = 15
    end
    object cdsCDESTCIVIL: TStringField
      FieldName = 'CDESTCIVIL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDSEXO: TStringField
      FieldName = 'CDSEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDTNASCIMENTOValidate
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
    object cdsDTFUNDACAO: TDateField
      FieldName = 'DTFUNDACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTLIMITE: TDateField
      FieldName = 'DTLIMITE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLLIMITE: TFMTBCDField
      FieldName = 'VLLIMITE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLFAT6MESES: TFMTBCDField
      FieldName = 'VLFAT6MESES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsBOCONSUMIDORFINAL: TStringField
      FieldName = 'BOCONSUMIDORFINAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNURAMAL: TStringField
      FieldName = 'NURAMAL'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsNUCAE: TStringField
      FieldName = 'NUCAE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsDSOBSFINANC: TBlobField
      FieldName = 'DSOBSFINANC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDTPCLIENTE: TIntegerField
      FieldName = 'CDTPCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCLIENTEMENSALIDADE: TIntegerField
      FieldName = 'CDTPCLIENTEMENSALIDADE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPCLIENTEMENSALIDADEValidate
    end
    object cdsNUDIAMENSALIDADE: TIntegerField
      FieldName = 'NUDIAMENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTCADASTROSOCIO: TDateField
      FieldName = 'DTCADASTROSOCIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMNATURALIDADE: TStringField
      FieldName = 'NMNATURALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUCNTCORRENTE: TStringField
      FieldName = 'NUCNTCORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsCDRMATIVIDADE: TIntegerField
      FieldName = 'CDRMATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIOVENDEDOR: TIntegerField
      FieldName = 'CDFUNCIONARIOVENDEDOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIOVENDEDORValidate
    end
    object cdsBOPENDENTECOBRANCA: TStringField
      FieldName = 'BOPENDENTECOBRANCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsTPFATURAMENTOVALOR: TStringField
      FieldName = 'TPFATURAMENTOVALOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMUNICIPIOCBRNC: TIntegerField
      FieldName = 'CDMUNICIPIOCBRNC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBONGERARBOLETOFATURAMENTO: TStringField
      FieldName = 'BONGERARBOLETOFATURAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDTDESFILIACAO: TDateField
      FieldName = 'DTDESFILIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCELULAR: TStringField
      FieldName = 'NUCELULAR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCELULARValidate
      Size = 14
    end
    object cdsBONFEENVIARPDF: TStringField
      FieldName = 'BONFEENVIARPDF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOSINCRONIZADO: TStringField
      FieldName = 'BOSINCRONIZADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDPAIS: TIntegerField
      FieldName = 'CDPAIS'
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
    object cdsCDCLIENTEANTIGO: TStringField
      FieldName = 'CDCLIENTEANTIGO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsBONENVIARPDF: TStringField
      FieldName = 'BONENVIARPDF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdssdsitproprietario: TDataSetField
      FieldName = 'sdsitproprietario'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsclienteprofissao: TDataSetField
      FieldName = 'sdsclienteprofissao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSUFRAMA: TIntegerField
      FieldName = 'CDSUFRAMA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOIPI: TStringField
      FieldName = 'BOIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsBOPIS: TStringField
      FieldName = 'BOPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOCOFINS: TStringField
      FieldName = 'BOCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOICMS: TStringField
      FieldName = 'BOICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCONTRATOValidate
    end
    object cdsCDTPREGIME: TIntegerField
      FieldName = 'CDTPREGIME'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDPRODUTOValidate
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
    object cdsPRICMSDUPLICATACTE: TFloatField
      FieldName = 'PRICMSDUPLICATACTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTCONSULTASPC: TDateField
      FieldName = 'DTCONSULTASPC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUCEI: TStringField
      FieldName = 'NUCEI'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsNUMEI: TStringField
      FieldName = 'NUMEI'
      ProviderFlags = [pfInUpdate]
      Size = 12
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
    object cdsNUAPOLICE: TStringField
      FieldName = 'NUAPOLICE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDFORNECEDORSEGURADORA: TLargeintField
      FieldName = 'CDFORNECEDORSEGURADORA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsitproprietario: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitproprietario
    Params = <>
    BeforePost = cdsitproprietarioBeforePost
    Left = 883
    Top = 324
    object cdsitproprietarioNMPROPRIETARIO: TStringField
      FieldName = 'NMPROPRIETARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsitproprietarioNUCPFCNPJ: TStringField
      FieldName = 'NUCPFCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitproprietarioPRSOCIEDADE: TFloatField
      FieldName = 'PRSOCIEDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitproprietarioDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitproprietarioDTNASCIMENTOValidate
    end
    object cdsitproprietarioTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitproprietarioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitproprietarioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitproprietarioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitproprietarioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitproprietarioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitproprietarioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitproprietarioCDITPROPRIETARIO: TIntegerField
      FieldName = 'CDITPROPRIETARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitproprietarioTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitproprietarioCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitproprietarioCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitproprietarioCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitproprietarioCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitproprietarioNUIDENTID: TStringField
      FieldName = 'NUIDENTID'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsitproprietarioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitproprietarioCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 913
    Top = 179
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 942
    Top = 179
  end
  object dtsitproprietario: TDataSource
    DataSet = cdsitproprietario
    Left = 911
    Top = 324
  end
  object sdsconsulta: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 975
    Top = 192
  end
  object dspconsulta: TDataSetProvider
    DataSet = sdsconsulta
    Left = 1003
    Top = 192
  end
  object cdsconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspconsulta'
    ReadOnly = True
    Left = 1031
    Top = 192
  end
  object dtsconsulta: TDataSource
    DataSet = cdsconsulta
    Left = 1059
    Top = 192
  end
  object dtsitconsulta: TDataSource
    DataSet = cdsitconsulta
    Left = 1059
    Top = 220
  end
  object cdsitconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitconsulta'
    ReadOnly = True
    Left = 1031
    Top = 220
  end
  object dspitconsulta: TDataSetProvider
    DataSet = sdsitconsulta
    Left = 1004
    Top = 220
  end
  object sdsitconsulta: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 975
    Top = 220
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
  object pumexportar: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <>
    UseOwnFont = False
    Left = 848
    Top = 24
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
        ItemName = 'dxBarLargeButton3'
      end>
    UseOwnFont = False
    Left = 976
    Top = 30
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton23'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end
      item
        Visible = True
        ItemName = 'dxBarButton25'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxBarButton26'
      end
      item
        Visible = True
        ItemName = 'dxBarButton27'
      end
      item
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end>
    UseOwnFont = False
    Left = 912
    Top = 27
  end
  object sdsclienteprofissao: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM CLIENTEPROFISSAO '#13#10'WHERE CDCLIENTE=:CDCLIENTE AN' +
      'D CDEMPRESA=:CDEMPRESA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDCLIENTE'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = dtmmain.sqlc
    Left = 827
    Top = 444
    object IntegerField1: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLTimeStampField5: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLTimeStampField6: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsclienteprofissaoCDCLIENTEPROFISSAO: TIntegerField
      FieldName = 'CDCLIENTEPROFISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsclienteprofissaoCDPROFISSAO: TIntegerField
      FieldName = 'CDPROFISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsclienteprofissaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsclienteprofissaoCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object cdsclienteprofissao: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsclienteprofissao
    Params = <>
    BeforePost = cdsclienteprofissaoBeforePost
    Left = 884
    Top = 444
    object IntegerField15: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField16: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField17: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField18: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLTimeStampField7: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLTimeStampField8: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsclienteprofissaoCDCLIENTEPROFISSAO: TIntegerField
      FieldName = 'CDCLIENTEPROFISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsclienteprofissaoCDPROFISSAO: TIntegerField
      FieldName = 'CDPROFISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsclienteprofissaosdsclienteprofissaorisco: TDataSetField
      FieldName = 'sdsclienteprofissaorisco'
      ProviderFlags = [pfInUpdate]
    end
    object cdsclienteprofissaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsclienteprofissaoCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dtsclienteprofissao: TDataSource
    DataSet = cdsclienteprofissao
    Left = 913
    Top = 444
  end
  object dts2: TDataSource
    DataSet = sdsclienteprofissao
    Left = 952
    Top = 441
  end
  object sdsclienteprofissaorisco: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM CLIENTEPROFISSAORISCO '#13#10'WHERE CDCLIENTEPROFISSAO' +
      '=:CDCLIENTEPROFISSAO AND CDEMPRESA=:CDEMPRESA'
    DataSource = dts2
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CDCLIENTEPROFISSAO'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = dtmmain.sqlc
    Left = 828
    Top = 493
    object sdsclienteprofissaoriscoCDCLIENTEPROFISSAORISCO: TIntegerField
      FieldName = 'CDCLIENTEPROFISSAORISCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsclienteprofissaoriscoCDCLIENTEPROFISSAO: TIntegerField
      FieldName = 'CDCLIENTEPROFISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsclienteprofissaoriscoCDRISCO: TIntegerField
      FieldName = 'CDRISCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsclienteprofissaoriscoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsclienteprofissaoriscoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsclienteprofissaoriscoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsclienteprofissaoriscoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsclienteprofissaoriscoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsclienteprofissaoriscoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsclienteprofissaoriscoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsclienteprofissaorisco: TClientDataSet
    Aggregates = <>
    DataSetField = cdsclienteprofissaosdsclienteprofissaorisco
    Params = <>
    BeforePost = cdsclienteprofissaoriscoBeforePost
    Left = 885
    Top = 493
    object IntegerField27: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField28: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField29: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IntegerField30: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLTimeStampField11: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLTimeStampField12: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsclienteprofissaoriscoCDCLIENTEPROFISSAORISCO: TIntegerField
      FieldName = 'CDCLIENTEPROFISSAORISCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsclienteprofissaoriscoCDCLIENTEPROFISSAO: TIntegerField
      FieldName = 'CDCLIENTEPROFISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsclienteprofissaoriscoCDRISCO: TIntegerField
      FieldName = 'CDRISCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsclienteprofissaoriscoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsclienteprofissaorisco: TDataSource
    DataSet = cdsclienteprofissaorisco
    Left = 914
    Top = 493
  end
end

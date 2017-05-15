object frmTransportadora: TfrmTransportadora
  Left = 499
  Top = 53
  ClientHeight = 699
  ClientWidth = 1086
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
    Width = 1086
    Height = 636
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1086
      Height = 39
      Align = alTop
      ExplicitWidth = 1091
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
      Width = 28
      Height = 13
      Caption = 'Nome'
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
    object edtrzsocial: TcxDBTextEdit
      Left = 382
      Top = 36
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
    object pgc: TcxPageControl
      Left = 0
      Top = 62
      Width = 1086
      Height = 574
      Align = alClient
      TabOrder = 4
      Properties.ActivePage = tbscadastro
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dtmmain.imlMain
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 574
      ClientRectRight = 1086
      ClientRectTop = 25
      object tbscadastro: TcxTabSheet
        Caption = 'Cadastro'
        ImageIndex = 40
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object gbxJuridica: TcxGroupBox
          Left = 0
          Top = 255
          Align = alTop
          Caption = 'Dados Pessoa Jur'#237'dica'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 110
          Width = 1086
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
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 302
          end
        end
        object gbxFisica: TcxGroupBox
          Left = 0
          Top = 145
          Align = alTop
          Caption = 'Dados Pessoal F'#237'sica'
          TabOrder = 1
          Visible = False
          Height = 110
          Width = 1086
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
          object Label4: TLabel
            Left = 3
            Top = 88
            Width = 25
            Height = 13
            Caption = 'INSS'
            Transparent = True
          end
          object Label19: TLabel
            Left = 198
            Top = 88
            Width = 79
            Height = 13
            Caption = 'N'#186' Dependentes'
            Transparent = True
          end
          object edtnudependentes: TcxDBTextEdit
            Left = 279
            Top = 80
            DataBinding.DataField = 'NUDEPENDENTES'
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
          object edtnuinss: TcxDBTextEdit
            Left = 51
            Top = 80
            DataBinding.DataField = 'NUINSS'
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
        object gbxoutros: TcxGroupBox
          Left = 0
          Top = 365
          Align = alTop
          Caption = 'Outros'
          TabOrder = 3
          Height = 126
          Width = 1086
          object Label38: TLabel
            Left = 5
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
            Left = 5
            Top = 24
            Width = 30
            Height = 13
            Caption = 'Status'
            Transparent = True
          end
          object Label17: TLabel
            Left = 5
            Top = 63
            Width = 43
            Height = 13
            Caption = 'Motorista'
            Transparent = True
          end
          object lbl1: TLabel
            Left = 422
            Top = 63
            Width = 23
            Height = 13
            Caption = 'CNH'
            Transparent = True
          end
          object lblveiculo: TLabel
            Left = 5
            Top = 82
            Width = 37
            Height = 13
            Caption = 'Ve'#237'culo'
            Transparent = True
          end
          object lblcarreta: TLabel
            Left = 5
            Top = 104
            Width = 34
            Height = 13
            Caption = 'Carreta'
            Transparent = True
          end
          object lblcarreta2: TLabel
            Left = 422
            Top = 104
            Width = 43
            Height = 13
            Caption = 'Carreta 2'
            Transparent = True
          end
          object txtNUPLACAVEICULO: TDBText
            Left = 120
            Top = 78
            Width = 299
            Height = 17
            DataField = 'NUPLACAVEICULO'
            DataSource = dts
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnDblClick = txtNUPLACAVEICULODblClick
          end
          object txtNUPLACACARRETA: TDBText
            Left = 120
            Top = 100
            Width = 299
            Height = 17
            DataField = 'NUPLACACARRETA'
            DataSource = dts
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnDblClick = txtNUPLACACARRETADblClick
          end
          object txtNUPLACACARRETA2: TDBText
            Left = 544
            Top = 100
            Width = 229
            Height = 17
            DataField = 'NUPLACACARRETA2'
            DataSource = dts
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnDblClick = txtNUPLACACARRETA2DblClick
          end
          object lbldtcadastro: TLabel
            Left = 422
            Top = 21
            Width = 42
            Height = 13
            Caption = 'Cadastro'
            Transparent = True
          end
          object lblcdtpcnh: TLabel
            Left = 422
            Top = 82
            Width = 47
            Height = 13
            Caption = 'Tipo CNH'
            Transparent = True
          end
          object lbldtvencimentocnh: TLabel
            Left = 618
            Top = 82
            Width = 56
            Height = 13
            Caption = 'Vencimento'
            Transparent = True
          end
          object edtcdveiculocarreta2: TcxDBButtonEdit
            Left = 475
            Top = 98
            DataBinding.DataField = 'CDVEICULOCARRETA2'
            DataBinding.DataSource = dts
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = edtcdveiculocarreta2PropertiesButtonClick
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            OnKeyDown = edtcdveiculocarreta2KeyDown
            Width = 69
          end
          object edtcdveiculocarreta: TcxDBButtonEdit
            Left = 51
            Top = 98
            DataBinding.DataField = 'CDVEICULOCARRETA'
            DataBinding.DataSource = dts
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = edtcdveiculocarretaPropertiesButtonClick
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            OnKeyDown = edtcdveiculocarretaKeyDown
            Width = 69
          end
          object edtcdveiculo: TcxDBButtonEdit
            Left = 51
            Top = 76
            DataBinding.DataField = 'CDVEICULO'
            DataBinding.DataSource = dts
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = edtcdveiculoPropertiesButtonClick
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            OnKeyDown = edtcdveiculoKeyDown
            Width = 69
          end
          object edtnmmotorista: TcxDBTextEdit
            Left = 50
            Top = 56
            DataBinding.DataField = 'NMMOTORISTA'
            DataBinding.DataSource = dts
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
          object edthomepage: TcxDBTextEdit
            Left = 50
            Top = 36
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
            Top = 35
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
          object cbxcdsttransportadora: TcxDBLookupComboBox
            Left = 50
            Top = 15
            DataBinding.DataField = 'CDSTTRANSPORTADORA'
            DataBinding.DataSource = dts
            Properties.Alignment.Horz = taLeftJustify
            Properties.KeyFieldNames = 'CDSTTRANSPORTADORA'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTTRANSPORTADORA'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = cbxcdsttransportadoraEnter
            OnExit = colorexit
            Width = 371
          end
          object edtnucnh: TcxDBTextEdit
            Left = 475
            Top = 55
            DataBinding.DataField = 'NUCNH'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 297
          end
          object edtdtcadastro: TcxDBDateEdit
            Left = 475
            Top = 14
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
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 94
          end
          object cbxcdtpcnh: TcxDBLookupComboBox
            Left = 475
            Top = 76
            DataBinding.DataField = 'CDTPCNH'
            DataBinding.DataSource = dts
            Properties.Alignment.Horz = taLeftJustify
            Properties.KeyFieldNames = 'CDTPCNH'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPCNH'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            OnExit = colorexit
            Width = 141
          end
          object edtdtvencimentocnh: TcxDBDateEdit
            Left = 675
            Top = 76
            DataBinding.DataField = 'DTVENCIMENTOCNH'
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
          object chkbonenviarpdf: TcxDBCheckBox
            Left = 575
            Top = 13
            Caption = 'N'#227'o enviar pdf para nfe no email'
            DataBinding.DataField = 'BONENVIARPDF'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 11
            Transparent = True
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
          Height = 145
          Width = 1086
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
          object lbl2: TLabel
            Left = 6
            Top = 128
            Width = 22
            Height = 13
            Caption = 'Pa'#237's'
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
            TabOrder = 12
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
          Height = 549
          Width = 1086
        end
      end
      object tbsconsulta: TcxTabSheet
        Caption = 'Consulta'
        ImageIndex = 41
        ExplicitHeight = 512
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1086
          Height = 38
          Align = dalTop
          BarManager = bmg1
        end
        object grdconsulta: TcxGrid
          Left = 0
          Top = 38
          Width = 1086
          Height = 511
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = False
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
                Width = 322
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
            object grdconsultaentradaVLTOTAL: TcxGridDBBandedColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 1
              Position.ColIndex = 0
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
            object grdconsultaentradaNMCONDPAGTO: TcxGridDBBandedColumn
              Caption = 'Condi'#231#227'o Pagamento'
              DataBinding.FieldName = 'NMCONDPAGTO'
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 3
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
                Column = grdconsultaitentradaVLISS
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
            object grdconsultaitentradaVLISS: TcxGridDBBandedColumn
              Caption = 'ISS'
              DataBinding.FieldName = 'VLISS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 4
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
      object tbsmunicipio: TcxTabSheet
        Caption = 'Frete por Munic'#237'pio'
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdtransportadoramunicipio: TcxGrid
          Left = 0
          Top = 0
          Width = 1086
          Height = 549
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
            DataController.DataSource = dtstransportadoramunicipio
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
            object cxGridDBTableView2CDMUNICIPIO: TcxGridDBColumn
              Caption = 'Mun'#237'cipio'
              DataBinding.FieldName = 'CDMUNICIPIO'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CDMUNICIPIO'
              Properties.ListColumns = <
                item
                  FieldName = 'NMMUNICIPIO'
                end>
              Properties.ListOptions.ShowHeader = False
              Width = 247
            end
            object cxGridDBTableView2PRFRETE: TcxGridDBColumn
              Caption = 'Porcentagem Acr'#233'scimo Frete'
              DataBinding.FieldName = 'PRFRETE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.AssignedValues.DisplayFormat = True
              Width = 156
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      AutoSize = False
      Caption = 'Transportadora'
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
      Width = 1086
    end
    object edtnome: TcxDBTextEdit
      Left = 110
      Top = 36
      DataBinding.DataField = 'NMTRANSPORTADORA'
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
    Left = 872
    Top = 278
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
    object actconsultaentrada: TAction
      AutoCheck = True
      Caption = 'Compra'
      GroupIndex = 1
      Hint = 'Consulta Compra'
      ImageIndex = 27
      OnExecute = actconsultaentradaExecute
    end
    object actconsultasaida: TAction
      AutoCheck = True
      Caption = 'Nota Fiscal'
      GroupIndex = 1
      Hint = 'Consulta Nota Fiscal'
      ImageIndex = 19
      OnExecute = actconsultasaidaExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actimprimircadastro: TAction
      Caption = 'Cadastro'
      OnExecute = actimprimircadastroExecute
    end
    object actabrirveiculo: TAction
      Hint = 'veiculo'
      OnExecute = actabrirveiculoExecute
    end
    object actabrirveiculo2: TAction
      Hint = 'veiculo'
      OnExecute = actabrirveiculo2Execute
    end
    object actabrirveiculo3: TAction
      Hint = 'veiculo'
      OnExecute = actabrirveiculo3Execute
    end
    object actitconttransportadora: TAction
      Caption = 'Contato'
      OnExecute = actitconttransportadoraExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actittransportadoraemail: TAction
      Caption = 'Email'
      OnExecute = actittransportadoraemailExecute
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
          ItemName = 'dxBarLargeButton1'
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
    object btnentrada: TdxBarLargeButton
      Action = actconsultaentrada
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
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object dxBarButton1: TdxBarButton
      Action = actimprimircadastro
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton2: TdxBarButton
      Action = actitconttransportadora
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actittransportadoraemail
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT T.*'#13#10',V.NUPLACA NUPLACAVEICULO'#13#10',C.NUPLACA NUPLACACARRETA' +
      #13#10',C2.NUPLACA NUPLACACARRETA2 '#13#10'FROM TRANSPORTADORA T'#13#10'LEFT JOIN' +
      ' VEICULO V ON V.CDVEICULO=T.CDVEICULO AND T.CDEMPRESA=V.CDEMPRES' +
      'A'#13#10'LEFT JOIN VEICULO C ON C.CDVEICULO=T.CDVEICULOCARRETA AND C.C' +
      'DEMPRESA=T.CDEMPRESA'#13#10'LEFT JOIN VEICULO C2 ON C2.CDVEICULO=T.CDV' +
      'EICULOCARRETA2 AND C2.CDEMPRESA=T.CDEMPRESA'#13#10'WHERE T.CDEMPRESA=:' +
      'CDEMPRESA AND T.CDTRANSPORTADORA=:CDTRANSPORTADORA'
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
        Name = 'CDTRANSPORTADORA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 796
    Top = 168
    object sdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTTRANSPORTADORA: TIntegerField
      FieldName = 'CDSTTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
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
    object sdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDVEICULOCARRETA: TIntegerField
      FieldName = 'CDVEICULOCARRETA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDVEICULOCARRETA2: TIntegerField
      FieldName = 'CDVEICULOCARRETA2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
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
    object sdsNMMOTORISTA: TStringField
      FieldName = 'NMMOTORISTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    object sdsDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
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
    object sdsNUINSS: TStringField
      FieldName = 'NUINSS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDEPENDENTES: TIntegerField
      FieldName = 'NUDEPENDENTES'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDOUTROTRANSPORTADORA: TIntegerField
      FieldName = 'CDOUTROTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object sdsNUCNH: TStringField
      FieldName = 'NUCNH'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object sdsNURNTRC: TStringField
      FieldName = 'NURNTRC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsCDPAIS: TIntegerField
      FieldName = 'CDPAIS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBONENVIARPDF: TStringField
      FieldName = 'BONENVIARPDF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUPLACAVEICULO: TStringField
      FieldName = 'NUPLACAVEICULO'
      ProviderFlags = []
      Size = 8
    end
    object sdsNUPLACACARRETA: TStringField
      FieldName = 'NUPLACACARRETA'
      ProviderFlags = []
      Size = 8
    end
    object sdsNUPLACACARRETA2: TStringField
      FieldName = 'NUPLACACARRETA2'
      ProviderFlags = []
      Size = 8
    end
    object sdsDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCNH: TIntegerField
      FieldName = 'CDTPCNH'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTVENCIMENTOCNH: TDateField
      FieldName = 'DTVENCIMENTOCNH'
    end
    object sdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 824
    Top = 168
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 852
    Top = 168
    object cdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDUFValidate
    end
    object cdsCDSTTRANSPORTADORA: TIntegerField
      FieldName = 'CDSTTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
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
    object cdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDVEICULOValidate
    end
    object cdsCDVEICULOCARRETA: TIntegerField
      FieldName = 'CDVEICULOCARRETA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDVEICULOCARRETAValidate
    end
    object cdsCDVEICULOCARRETA2: TIntegerField
      FieldName = 'CDVEICULOCARRETA2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDVEICULOCARRETA2Validate
    end
    object cdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsNMTRANSPORTADORAValidate
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
    end
    object cdsNMMOTORISTA: TStringField
      FieldName = 'NMMOTORISTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUCPF: TStringField
      FieldName = 'NUCPF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNUIDENTID: TStringField
      FieldName = 'NUIDENTID'
      ProviderFlags = [pfInUpdate]
      Size = 15
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
    object cdsDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDTNASCIMENTOValidate
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
    object cdsNUINSS: TStringField
      FieldName = 'NUINSS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUDEPENDENTES: TIntegerField
      FieldName = 'NUDEPENDENTES'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDOUTROTRANSPORTADORA: TIntegerField
      FieldName = 'CDOUTROTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object cdsNUCNH: TStringField
      FieldName = 'NUCNH'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsNURNTRC: TStringField
      FieldName = 'NURNTRC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsCDPAIS: TIntegerField
      FieldName = 'CDPAIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBONENVIARPDF: TStringField
      FieldName = 'BONENVIARPDF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUPLACAVEICULO: TStringField
      FieldName = 'NUPLACAVEICULO'
      ProviderFlags = []
      Size = 8
    end
    object cdsNUPLACACARRETA: TStringField
      FieldName = 'NUPLACACARRETA'
      ProviderFlags = []
      Size = 8
    end
    object cdsNUPLACACARRETA2: TStringField
      FieldName = 'NUPLACACARRETA2'
      ProviderFlags = []
      Size = 8
    end
    object cdssdstransportadoramunicipio: TDataSetField
      FieldName = 'sdstransportadoramunicipio'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCNH: TIntegerField
      FieldName = 'CDTPCNH'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTVENCIMENTOCNH: TDateField
      FieldName = 'DTVENCIMENTOCNH'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 880
    Top = 168
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 912
    Top = 168
  end
  object dtsconsulta: TDataSource
    DataSet = cdsconsulta
    Left = 884
    Top = 320
  end
  object cdsconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspconsulta'
    ReadOnly = True
    Left = 856
    Top = 320
  end
  object dspconsulta: TDataSetProvider
    DataSet = sdsconsulta
    Left = 828
    Top = 320
  end
  object sdsconsulta: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 800
    Top = 320
  end
  object sdsitconsulta: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 800
    Top = 348
  end
  object dspitconsulta: TDataSetProvider
    DataSet = sdsitconsulta
    Left = 829
    Top = 348
  end
  object cdsitconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitconsulta'
    ReadOnly = True
    Left = 856
    Top = 348
  end
  object dtsitconsulta: TDataSource
    DataSet = cdsitconsulta
    Left = 884
    Top = 348
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
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 799
    Top = 284
  end
  object sdstransportadoramunicipio: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM TRANSPORTADORAMUNICIPIO '#13#10'WHERE CDEMPRESA=:CDEMP' +
      'RESA AND CDTRANSPORTADORA=:CDTRANSPORTADORA'
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
        Name = 'CDTRANSPORTADORA'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = dtmmain.sqlc
    Left = 796
    Top = 220
    object sdstransportadoramunicipioCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdstransportadoramunicipioPRFRETE: TFloatField
      FieldName = 'PRFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdstransportadoramunicipioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdstransportadoramunicipioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdstransportadoramunicipioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdstransportadoramunicipioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdstransportadoramunicipioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdstransportadoramunicipioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdstransportadoramunicipioCDTRANSPORTADORAMUNICIPIO: TIntegerField
      FieldName = 'CDTRANSPORTADORAMUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdstransportadoramunicipioCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdstransportadoramunicipioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdstransportadoramunicipio: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdstransportadoramunicipio
    Params = <>
    BeforePost = cdstransportadoramunicipioBeforePost
    OnNewRecord = cdstransportadoramunicipioNewRecord
    Left = 852
    Top = 220
    object cdstransportadoramunicipioCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdstransportadoramunicipioPRFRETE: TFloatField
      FieldName = 'PRFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdstransportadoramunicipioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdstransportadoramunicipioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdstransportadoramunicipioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdstransportadoramunicipioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdstransportadoramunicipioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdstransportadoramunicipioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdstransportadoramunicipioCDTRANSPORTADORAMUNICIPIO: TIntegerField
      FieldName = 'CDTRANSPORTADORAMUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdstransportadoramunicipioCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdstransportadoramunicipioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtstransportadoramunicipio: TDataSource
    DataSet = cdstransportadoramunicipio
    Left = 880
    Top = 220
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
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

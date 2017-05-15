object frmEmpresa: TfrmEmpresa
  Left = 285
  Top = 75
  ClientHeight = 709
  ClientWidth = 1160
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
  object Panel1: TPanel
    Left = 0
    Top = 63
    Width = 1160
    Height = 646
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1160
      Height = 45
      Align = alTop
      ExplicitWidth = 1541
    end
    object Label3: TLabel
      Left = 5
      Top = 25
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object Label4: TLabel
      Left = 429
      Top = 25
      Width = 63
      Height = 13
      Caption = 'Raz'#227'o Social'
      Transparent = True
    end
    object pgc: TcxPageControl
      Left = 0
      Top = 68
      Width = 1160
      Height = 578
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Properties.ActivePage = tbscadastro
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dtmmain.imlMain
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 578
      ClientRectRight = 1160
      ClientRectTop = 25
      object tbscadastro: TcxTabSheet
        Caption = 'Cadastro'
        ImageIndex = 40
        object gbxComercial: TcxGroupBox
          Left = 5
          Top = 5
          Caption = 'Endere'#231'o Comercial'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Transparent = True
          Height = 170
          Width = 782
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
            Left = 3
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
            Left = 3
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
          object Label58: TLabel
            Left = 3
            Top = 127
            Width = 27
            Height = 13
            Caption = 'e-mail'
            Transparent = True
          end
          object Label12: TLabel
            Left = 423
            Top = 127
            Width = 51
            Height = 13
            Caption = 'e-mail NFE'
            Transparent = True
          end
          object lblhomepage: TLabel
            Left = 423
            Top = 148
            Width = 18
            Height = 13
            Caption = 'Site'
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
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 81
          end
          object edtnufone2: TcxDBMaskEdit
            Left = 139
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
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 89
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
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 89
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
            OnEnter = ColorEnter
            OnExit = ColorExit
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
            OnEnter = ColorEnter
            OnExit = ColorExit
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
            OnEnter = ColorEnter
            OnExit = ColorExit
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
            OnEnter = ColorEnter
            OnExit = ColorExit
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
            OnEnter = ColorEnter
            OnExit = ColorExit
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
            OnEnter = ColorEnter
            OnExit = ColorExit
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
            OnEnter = ColorEnter
            OnExit = ColorExit
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
            OnEnter = ColorEnter
            OnExit = ColorExit
            Width = 303
          end
          object edtnufone3: TcxDBMaskEdit
            Left = 228
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
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 89
          end
          object edtemail: TcxDBTextEdit
            Left = 51
            Top = 120
            DataBinding.DataField = 'EMAIL'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 12
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 371
          end
          object edtemailnfe: TcxDBTextEdit
            Left = 475
            Top = 120
            DataBinding.DataField = 'emailnfe'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 303
          end
          object edthomepage: TcxDBTextEdit
            Left = 475
            Top = 141
            DataBinding.DataField = 'HOMEPAGE'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 14
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 303
          end
        end
        object gbxJuridica: TcxGroupBox
          Left = 5
          Top = 176
          Caption = 'Dados Pessoa Jur'#237'dica'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 129
          Width = 782
          object Label24: TLabel
            Left = 4
            Top = 27
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            Transparent = True
          end
          object Label29: TLabel
            Left = 417
            Top = 24
            Width = 38
            Height = 13
            Caption = 'Insc Est'
            Transparent = True
          end
          object Label1: TLabel
            Left = 4
            Top = 46
            Width = 44
            Height = 13
            Caption = 'Insc Mun'
            Transparent = True
          end
          object Label13: TLabel
            Left = 417
            Top = 46
            Width = 29
            Height = 13
            Caption = 'CNAE'
            Transparent = True
          end
          object Label14: TLabel
            Left = 4
            Top = 67
            Width = 45
            Height = 13
            Caption = 'Respons.'
            Transparent = True
          end
          object Label15: TLabel
            Left = 585
            Top = 46
            Width = 48
            Height = 13
            Caption = 'Funda'#231#227'o'
            Transparent = True
          end
          object Label37: TLabel
            Left = 4
            Top = 86
            Width = 41
            Height = 13
            Caption = 'Reg Trib'
            Transparent = True
          end
          object Label27: TLabel
            Left = 417
            Top = 68
            Width = 20
            Height = 13
            Caption = 'CPF'
            Transparent = True
          end
          object lbltpempresa: TLabel
            Left = 4
            Top = 108
            Width = 21
            Height = 13
            Caption = 'Tipo'
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
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 364
          end
          object edtnuinscest: TcxDBTextEdit
            Left = 475
            Top = 19
            DataBinding.DataField = 'NUINSCEST'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 302
          end
          object edtNUINSCMUNICIPAL: TcxDBTextEdit
            Left = 51
            Top = 41
            DataBinding.DataField = 'NUINSCMUNICIPAL'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 364
          end
          object edtNUCNAE: TcxDBTextEdit
            Left = 475
            Top = 41
            DataBinding.DataField = 'NUCNAE'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 110
          end
          object edtNMRESPONSAVEL: TcxDBTextEdit
            Left = 51
            Top = 62
            DataBinding.DataField = 'NMRESPONSAVEL'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 364
          end
          object edtDTFUNDACAO: TcxDBDateEdit
            Left = 646
            Top = 41
            DataBinding.DataField = 'DTFUNDACAO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 131
          end
          object cbxCDTPREGIMETRIBUTARIO: TcxDBLookupComboBox
            Left = 51
            Top = 84
            DataBinding.DataField = 'CDTPREGIMETRIBUTARIO'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDTPREGIMETRIBUTARIO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPREGIMETRIBUTARIO'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            OnEnter = ColorEnter
            OnExit = ColorExit
            Width = 364
          end
          object chkbosubstituto: TcxDBCheckBox
            Left = 417
            Top = 84
            Caption = 'Substituto Tribut'#225'rio'
            DataBinding.DataField = 'BOSUBSTITUTO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            Transparent = True
            OnEnter = ColorEnter
            OnExit = ColorExit
          end
          object rdgtpregime: TcxDBRadioGroup
            Left = 542
            Top = 84
            Caption = 'Regime Apura'#231#227'o'
            DataBinding.DataField = 'TPREGIME'
            DataBinding.DataSource = dts
            Properties.Columns = 3
            Properties.Items = <
              item
                Caption = 'Presumido'
                Value = 'P'
              end
              item
                Caption = 'Real'
                Value = 'R'
              end
              item
                Caption = 'Simples'
                Value = 'S'
              end>
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            OnEnter = ColorEnter
            OnExit = ColorExit
            Height = 34
            Width = 235
          end
          object edtnucpf: TcxDBMaskEdit
            Left = 475
            Top = 62
            DataBinding.DataField = 'NUCPF'
            DataBinding.DataSource = dts
            Properties.CharCase = ecLowerCase
            Properties.EditMask = '999.999.999-99'
            Properties.MaxLength = 0
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 156
          end
          object cbxcdtpempresa: TcxDBLookupComboBox
            Left = 51
            Top = 106
            DataBinding.DataField = 'CDTPEMPRESA'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDTPEMPRESA'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPEMPRESA'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            OnEnter = ColorEnter
            OnExit = ColorExit
            Width = 364
          end
        end
        object gbxcontador: TcxGroupBox
          Left = 5
          Top = 307
          Caption = 'Contador'
          TabOrder = 2
          Height = 63
          Width = 782
          object lbl1: TLabel
            Left = 429
            Top = 20
            Width = 22
            Height = 13
            Caption = 'CRC'
            Transparent = True
          end
          object Label2: TLabel
            Left = 577
            Top = 20
            Width = 20
            Height = 13
            Caption = 'CPF'
            Transparent = True
          end
          object lblnmcontabilista: TLabel
            Left = 3
            Top = 20
            Width = 43
            Height = 13
            Caption = 'Contador'
            Transparent = True
          end
          object lblcontabilidade: TLabel
            Left = 3
            Top = 41
            Width = 64
            Height = 13
            Caption = 'Contabilidade'
            Transparent = True
          end
          object lblnmfornecedor: TLabel
            Tag = 1
            Left = 190
            Top = 37
            Width = 3
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = True
            OnDblClick = lblnmfornecedorDblClick
          end
          object edtcdfornecedor: TcxDBButtonEdit
            Left = 68
            Top = 33
            DataBinding.DataField = 'CDFORNECEDOR'
            DataBinding.DataSource = dts
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = edtcdfornecedorPropertiesButtonClick
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = edtcdfornecedorKeyDown
            Width = 121
          end
          object edtnucrc: TcxDBTextEdit
            Left = 475
            Top = 12
            DataBinding.DataField = 'NUCRC'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 86
          end
          object edtnucpfcontador: TcxDBMaskEdit
            Left = 619
            Top = 12
            DataBinding.DataField = 'NUCPFCONTADOR'
            DataBinding.DataSource = dts
            Properties.CharCase = ecLowerCase
            Properties.EditMask = '999.999.999-99'
            Properties.MaxLength = 0
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 156
          end
          object edtnmcontador: TcxDBTextEdit
            Left = 68
            Top = 12
            DataBinding.DataField = 'NMCONTADOR'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = ColorEnter
            OnExit = ColorExit
            OnKeyDown = nextcontrol
            Width = 346
          end
        end
      end
      object tbslogomarca1: TcxTabSheet
        Caption = 'Logomarca'
        ExplicitHeight = 516
        object img1: TcxDBImage
          Left = 0
          Top = 26
          Align = alClient
          Properties.GraphicClassName = 'TdxSmartImage'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 527
          Width = 1160
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1160
          Height = 26
          Align = dalTop
          BarManager = bmg1
        end
      end
      object tbsopcoes: TcxTabSheet
        Caption = 'Op'#231#245'es'
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grd: TcxDBVerticalGrid
          Left = 0
          Top = 0
          Width = 1160
          Height = 553
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LayoutStyle = lsBandsView
          LookAndFeel.NativeStyle = False
          OptionsView.RowHeaderWidth = 1078
          Navigator.Buttons.CustomButtons = <>
          ParentFont = False
          TabOrder = 0
          DataController.DataSource = dts
          Version = 1
          object grdCategoryRow1: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Aquisi'#231#227'o'
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
          object grdDBEditorRow4: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Compra'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.Alignment = taLeftJustify
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOENTRADA'
            ID = 1
            ParentID = 0
            Index = 0
            Version = 1
          end
          object grdDBEditorRow180: TcxDBEditorRow
            Properties.Caption = 'Tipo de Sequencia do N'#250'mero do Contas a Pagar'
            Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
            Properties.EditProperties.Columns = 4
            Properties.EditProperties.Items = <
              item
                Caption = 'N'#250'mero/A'
                Value = '1'
              end
              item
                Caption = 'N'#250'mero/1'
                Value = '2'
              end
              item
                Caption = 'N'#250'mero/A-A'
                Value = '3'
              end
              item
                Caption = 'N'#250'mero/1-1'
                Value = '4'
              end>
            Properties.DataBinding.FieldName = 'TPSEQUENCIANUAUTPAGTO'
            ID = 2
            ParentID = 1
            Index = 0
            Version = 1
          end
          object grdDBEditorRow3: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Ordem de Compra'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORDCOMPRA'
            ID = 3
            ParentID = 0
            Index = 1
            Version = 1
          end
          object grdDBEditorRow285: TcxDBEditorRow
            Properties.Caption = 'Caminho para arquivos'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSPATHORDCOMPRA'
            ID = 4
            ParentID = 3
            Index = 0
            Version = 1
          end
          object grdDBEditorRow2: TcxDBEditorRow
            Properties.Caption = 'Cota'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPEDIDOMATERIAL'
            ID = 5
            ParentID = 0
            Index = 2
            Version = 1
          end
          object grdDBEditorRow5: TcxDBEditorRow
            Properties.Caption = 'Protoloco'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPROTOCOLO'
            ID = 6
            ParentID = 0
            Index = 3
            Version = 1
          end
          object grdDBEditorRow1: TcxDBEditorRow
            Properties.Caption = 'Requisi'#231#227'o Materiais'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BORIM'
            ID = 7
            ParentID = 0
            Index = 4
            Version = 1
          end
          object grdDBEditorRow138: TcxDBEditorRow
            Properties.Caption = 'Solicita'#231#227'o Compra'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOSOLICITACAOCOMPRA'
            ID = 8
            ParentID = 0
            Index = 5
            Version = 1
          end
          object grdCategoryRow20: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Cadastro'
            ID = 9
            ParentID = -1
            Index = 1
            Version = 1
          end
          object grdDBEditorRow6: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Cliente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTE'
            ID = 10
            ParentID = 9
            Index = 0
            Version = 1
          end
          object grdCategoryRow19: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'CNPJ'
            ID = 11
            ParentID = 10
            Index = 0
            Version = 1
          end
          object grdDBEditorRow8: TcxDBEditorRow
            Properties.Caption = 'Obrigat'#243'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTECNPJOBRIGATORIO'
            ID = 12
            ParentID = 11
            Index = 0
            Version = 1
          end
          object grdDBEditorRow14: TcxDBEditorRow
            Properties.Caption = 'Repetido'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTECNPJREPETIDO'
            ID = 13
            ParentID = 11
            Index = 1
            Version = 1
          end
          object grdCategoryRow18: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'CPF'
            ID = 14
            ParentID = 10
            Index = 1
            Version = 1
          end
          object grdDBEditorRow7: TcxDBEditorRow
            Properties.Caption = 'Obrigat'#243'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTECPFOBRIGATORIO'
            ID = 15
            ParentID = 14
            Index = 0
            Version = 1
          end
          object grdDBEditorRow15: TcxDBEditorRow
            Properties.Caption = 'Repetido'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTECPFrepetido'
            ID = 16
            ParentID = 14
            Index = 1
            Version = 1
          end
          object grdCategoryRow15: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Novo'
            ID = 17
            ParentID = 10
            Index = 2
            Version = 1
          end
          object grdDBEditorRow31: TcxDBEditorRow
            Properties.Caption = 'Tipo Pessoa'
            Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
            Properties.EditProperties.Items.Strings = (
              'J'
              'F')
            Properties.DataBinding.FieldName = 'CLIENTENOVOPADRAOTPPESSOA'
            ID = 18
            ParentID = 17
            Index = 0
            Version = 1
          end
          object grdDBEditorRow194: TcxDBEditorRow
            Properties.Caption = 'Gerar c'#243'digo sequencial do registro'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTECDREDUZIDO'
            ID = 19
            ParentID = 17
            Index = 1
            Version = 1
          end
          object grdCategoryRow16: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Guias'
            ID = 20
            ParentID = 10
            Index = 3
            Version = 1
          end
          object grdDBEditorRow26: TcxDBEditorRow
            Properties.Caption = 'Cadastro'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTECADASTRO'
            ID = 21
            ParentID = 20
            Index = 0
            Version = 1
          end
          object grdDBEditorRow28: TcxDBEditorRow
            Properties.Caption = 'Consulta'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTECONSULTA'
            ID = 22
            ParentID = 20
            Index = 1
            Version = 1
          end
          object grdDBEditorRow29: TcxDBEditorRow
            Properties.Caption = 'Financeiro'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEFINANCEIRO'
            ID = 23
            ParentID = 20
            Index = 2
            Version = 1
          end
          object grdDBEditorRow25: TcxDBEditorRow
            Properties.Caption = 'Observa'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEOBSERVACAO'
            ID = 24
            ParentID = 20
            Index = 3
            Version = 1
          end
          object grdDBEditorRow153: TcxDBEditorRow
            Properties.Caption = 'Outros'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEOUTROS'
            ID = 25
            ParentID = 20
            Index = 4
            Version = 1
          end
          object grdDBEditorRow24: TcxDBEditorRow
            Properties.Caption = 'Produto'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEPRODUTO'
            ID = 26
            ParentID = 20
            Index = 5
            Version = 1
          end
          object grdDBEditorRow30: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Propriet'#225'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEPROPRIETARIO'
            ID = 27
            ParentID = 20
            Index = 6
            Version = 1
          end
          object grdDBEditorRow36: TcxDBEditorRow
            Properties.Caption = 'Avisar se o propriet'#225'rio j'#225' existe em outro cliente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEPROPRIETARIOAVISO'
            ID = 28
            ParentID = 27
            Index = 0
            Version = 1
          end
          object grdDBEditorRow16: TcxDBEditorRow
            Properties.Caption = 'Obrigat'#243'rio o preenchimento de pelo menos um'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEPROPRIETARIOOBRIGATO'
            ID = 29
            ParentID = 27
            Index = 1
            Version = 1
          end
          object grdDBEditorRow17: TcxDBEditorRow
            Properties.Caption = 'Obrigat'#243'rio o preenchimento do nome'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEPROPRIETARIONOME'
            ID = 30
            ParentID = 27
            Index = 2
            Version = 1
          end
          object grdDBEditorRow20: TcxDBEditorRow
            Properties.Caption = 'Obrigat'#243'rio o preenchimento do CPF/CNPJ'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEPROPRIETARIOCPFCNPJ'
            ID = 31
            ParentID = 27
            Index = 3
            Version = 1
          end
          object grdDBEditorRow19: TcxDBEditorRow
            Properties.Caption = 'Obrigat'#243'rio o preenchimento da % da sociedade'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEPROPRIETARIOPRSOCIO'
            ID = 32
            ParentID = 27
            Index = 4
            Version = 1
          end
          object grdDBEditorRow18: TcxDBEditorRow
            Properties.Caption = 'Consistir se est'#225' em d'#233'bito'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boclientecpfproprietariodebito'
            ID = 33
            ParentID = 27
            Index = 5
            Version = 1
          end
          object grdDBEditorRow178: TcxDBEditorRow
            Properties.Caption = 'Endere'#231'o Obrigat'#243'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEENDERECOOBRIGATORIO'
            ID = 34
            ParentID = 10
            Index = 4
            Version = 1
          end
          object grdDBEditorRow179: TcxDBEditorRow
            Properties.Caption = 'E-mail pessoa jur'#237'dica obrigat'#243'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEEMAILJURIDICAOBRIGATO'
            ID = 35
            ParentID = 10
            Index = 5
            Version = 1
          end
          object grdDBEditorRow9: TcxDBEditorRow
            Properties.Caption = 'Funcion'#225'rio Vendedor'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boclientefuncionariovendedor'
            ID = 36
            ParentID = 10
            Index = 6
            Version = 1
          end
          object grdDBEditorRow10: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Ramo Atividade'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boclientermatividade'
            ID = 37
            ParentID = 10
            Index = 7
            Version = 1
          end
          object grdDBEditorRow188: TcxDBEditorRow
            Properties.Caption = 'Obrigat'#243'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTERMATIVIDADEOBRIGATO'
            ID = 38
            ParentID = 37
            Index = 0
            Version = 1
          end
          object grdDBEditorRow11: TcxDBEditorRow
            Properties.Caption = 'Mensalidade'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTEMENSALIDADE'
            ID = 39
            ParentID = 10
            Index = 8
            Version = 1
          end
          object grdDBEditorRow13: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Tipo Cliente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTETPCLIENTE'
            ID = 40
            ParentID = 10
            Index = 9
            Version = 1
          end
          object grdDBEditorRow12: TcxDBEditorRow
            Properties.Caption = 'Tipo Cliente Obrigat'#243'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCLIENTETPCLIENTEOBRIGATORIO'
            ID = 41
            ParentID = 40
            Index = 0
            Version = 1
          end
          object grdDBEditorRow168: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Equipamento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boequipamento'
            ID = 42
            ParentID = 9
            Index = 1
            Version = 1
          end
          object grdDBEditorRow216: TcxDBEditorRow
            Properties.Caption = 'Descri'#231#227'o do Patrim'#244'nio'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'EQUIPAMENTONUPATRIMONIONOME'
            ID = 43
            ParentID = 42
            Index = 0
            Version = 1
          end
          object grdDBEditorRow51: TcxDBEditorRow
            Properties.Caption = 'Caminho para arquivos'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSPATHEQUIPAMENTO'
            ID = 44
            ParentID = 42
            Index = 1
            Version = 1
          end
          object grdDBEditorRow215: TcxDBEditorRow
            Properties.Caption = 'Descri'#231#227'o da S'#233'rie'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'EQUIPAMENTONUSERIENOME'
            ID = 45
            ParentID = 42
            Index = 2
            Version = 1
          end
          object grdDBEditorRow208: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Metrologia'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOMETROLOGIA'
            ID = 46
            ParentID = 42
            Index = 3
            Version = 1
          end
          object grdDBEditorRow266: TcxDBEditorRow
            Properties.Caption = 'Caminho para armazenar o arquivo'
            Properties.DataBinding.FieldName = 'DSPATHMETROLOGIA'
            ID = 47
            ParentID = 46
            Index = 0
            Version = 1
          end
          object grdDBEditorRow87: TcxDBEditorRow
            Properties.Caption = 'Parada'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPARADA'
            ID = 48
            ParentID = 42
            Index = 4
            Version = 1
          end
          object grdDBEditorRow50: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Fornecedor'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFORNECEDOR'
            ID = 49
            ParentID = 9
            Index = 2
            Version = 1
          end
          object grdCategoryRow3: TcxCategoryRow
            Expanded = False
            Height = 17
            Properties.Caption = 'CNPJ'
            ID = 50
            ParentID = 49
            Index = 0
            Version = 1
          end
          object grdDBEditorRow58: TcxDBEditorRow
            Properties.Caption = 'Obrigat'#243'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFORNECEDORCNPJOBRIGATORIO'
            ID = 51
            ParentID = 50
            Index = 0
            Version = 1
          end
          object grdDBEditorRow56: TcxDBEditorRow
            Properties.Caption = 'Repetido'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFORNECEDORCNPJREPETIDO'
            ID = 52
            ParentID = 50
            Index = 1
            Version = 1
          end
          object grdCategoryRow17: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'CPF'
            ID = 53
            ParentID = 49
            Index = 1
            Version = 1
          end
          object grdDBEditorRow59: TcxDBEditorRow
            Properties.Caption = 'Obrigat'#243'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFORNECEDORCPFOBRIGATORIO'
            ID = 54
            ParentID = 53
            Index = 0
            Version = 1
          end
          object grdDBEditorRow57: TcxDBEditorRow
            Properties.Caption = 'Repetido'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFORNECEDORCPFREPETIDO'
            ID = 55
            ParentID = 53
            Index = 1
            Version = 1
          end
          object grdDBEditorRow195: TcxDBEditorRow
            Properties.Caption = 'Gerar c'#243'digo sequencial  do registro'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFORNECEDORCDREDUZIDO'
            ID = 56
            ParentID = 49
            Index = 2
            Version = 1
          end
          object grdCategoryRow14: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Guia'
            ID = 57
            ParentID = 49
            Index = 3
            Version = 1
          end
          object grdDBEditorRow105: TcxDBEditorRow
            Properties.Caption = 'Motivo Pr'#233'-Sele'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFORNECEDORPRESELECAO'
            ID = 58
            ParentID = 57
            Index = 0
            Version = 1
          end
          object grdDBEditorRow54: TcxDBEditorRow
            Properties.Caption = 'Consulta'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFORNECEDORCONSULTA'
            ID = 59
            ParentID = 57
            Index = 1
            Version = 1
          end
          object grdDBEditorRow52: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'IQF'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'bofornecedoriqf'
            ID = 60
            ParentID = 49
            Index = 4
            Version = 1
          end
          object grdDBEditorRow68: TcxDBEditorRow
            Properties.Caption = 'N'#186' Avalia'#231#245'es antes de pontuar IQF pela primeira vez'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.DataBinding.FieldName = 'NUIQFAVALIACAO'
            ID = 61
            ParentID = 60
            Index = 0
            Version = 1
          end
          object grdDBEditorRow79: TcxDBEditorRow
            Properties.Caption = 'Data in'#237'cio Avalia'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.DataBinding.FieldName = 'DTINICIOIQF'
            ID = 62
            ParentID = 60
            Index = 1
            Version = 1
          end
          object grdDBEditorRow53: TcxDBEditorRow
            Properties.Caption = 'Ramo Atividade'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'bofornecedorrmatividade'
            ID = 63
            ParentID = 49
            Index = 5
            Version = 1
          end
          object grdDBEditorRow278: TcxDBEditorRow
            Properties.Caption = 'Paciente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPACIENTE'
            ID = 64
            ParentID = 9
            Index = 3
            Version = 1
          end
          object grdDBEditorRow280: TcxDBEditorRow
            Properties.Caption = 'Profissional'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPROFISSIONAL'
            ID = 65
            ParentID = 9
            Index = 4
            Version = 1
          end
          object grdDBEditorRow49: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Transportadora'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOTRANSPORTADORA'
            ID = 66
            ParentID = 9
            Index = 5
            Version = 1
          end
          object grdDBEditorRow71: TcxDBEditorRow
            Properties.Caption = 'Banco'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'botransportadorabanco'
            ID = 67
            ParentID = 66
            Index = 0
            Version = 1
          end
          object grdDBEditorRow74: TcxDBEditorRow
            Properties.Caption = 'Gerar c'#243'digo sequencial do registro'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOTRANSPORTADORACDREDUZIDO'
            ID = 68
            ParentID = 66
            Index = 1
            Version = 1
          end
          object grdDBEditorRow289: TcxDBEditorRow
            Properties.Caption = 'N'#186' INSS obrigat'#243'rio para pessoa f'#237'sica'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOTRANSPORTADORANUINSS'
            ID = 69
            ParentID = 66
            Index = 2
            Version = 1
          end
          object grdCategoryRow4: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Comercial'
            ID = 70
            ParentID = -1
            Index = 2
            Version = 1
          end
          object grdDBEditorRow38: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Pedido'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPEDIDO'
            ID = 71
            ParentID = 70
            Index = 0
            Version = 1
          end
          object grdDBEditorRow76: TcxDBEditorRow
            Properties.Caption = 'Caminho para arquivos'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSPATHPEDIDO'
            ID = 72
            ParentID = 71
            Index = 0
            Version = 1
          end
          object grdDBEditorRow254: TcxDBEditorRow
            Properties.Caption = 'Confer'#234'ncia'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCONFERENCIAPEDIDO'
            ID = 73
            ParentID = 71
            Index = 1
            Version = 1
          end
          object grdDBEditorRow110: TcxDBEditorRow
            Properties.Caption = 'Email para impress'#227'o no modo texto'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'EMAILPEDIDO'
            ID = 74
            ParentID = 71
            Index = 2
            Version = 1
          end
          object grdDBEditorRow37: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Gerenciador de Pedido'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPEDIDOmanager'
            ID = 75
            ParentID = 71
            Index = 3
            Version = 1
          end
          object grdDBEditorRow174: TcxDBEditorRow
            Properties.Caption = 'Temporizador'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPEDIDOTEMPORIZADOR'
            ID = 76
            ParentID = 75
            Index = 0
            Version = 1
          end
          object grdDBEditorRow34: TcxDBEditorRow
            Properties.Caption = 'N'#250'mero Pedido digitado'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BONUPEDIDO'
            ID = 77
            ParentID = 71
            Index = 4
            Version = 1
          end
          object grdDBEditorRow32: TcxDBEditorRow
            Properties.Caption = 'Qtd m'#237'nima atendido'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.DataBinding.FieldName = 'QTPEDIDOATENDIDO'
            ID = 78
            ParentID = 71
            Index = 5
            Version = 1
          end
          object grdDBEditorRow282: TcxDBEditorRow
            Properties.Caption = 'Status do Embarque'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOSTEMBARQUE'
            ID = 79
            ParentID = 71
            Index = 6
            Version = 1
          end
          object grdDBEditorRow281: TcxDBEditorRow
            Properties.Caption = 'Tipo Revis'#227'o Comercial'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOTPREVISAOCOMERCIAL'
            ID = 80
            ParentID = 71
            Index = 7
            Version = 1
          end
          object grdDBEditorRow149: TcxDBEditorRow
            Properties.Caption = 'Contrato'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCONTRATO'
            ID = 81
            ParentID = 70
            Index = 1
            Version = 1
          end
          object grdDBEditorRow189: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Or'#231'amento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORCAMENTO'
            ID = 82
            ParentID = 70
            Index = 2
            Version = 1
          end
          object grdDBEditorRow99: TcxDBEditorRow
            Properties.Caption = 'Caminho para arquivos'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSPATHORCAMENTO'
            ID = 83
            ParentID = 82
            Index = 0
            Version = 1
          end
          object grdDBEditorRow69: TcxDBEditorRow
            Properties.Caption = 'Exibir hor'#225'rio de resposta no localizar'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORCAMENTOLOCALIZARHORARIO'
            ID = 84
            ParentID = 82
            Index = 1
            Version = 1
          end
          object grdDBEditorRow39: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Representante'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOREPRESENTANTE'
            ID = 85
            ParentID = 70
            Index = 3
            Version = 1
          end
          object grdDBEditorRow41: TcxDBEditorRow
            Properties.Caption = 'Pagamento Comiss'#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPAGTOCOMISSAO'
            ID = 86
            ParentID = 85
            Index = 0
            Version = 1
          end
          object grdDBEditorRow42: TcxDBEditorRow
            Properties.Caption = 'Obrigat'#243'rio o v'#237'nculo do representante no cliente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOREPRESENTANTEOBRIGATORIO'
            ID = 87
            ParentID = 85
            Index = 1
            Version = 1
          end
          object grdDBEditorRow225: TcxDBEditorRow
            Properties.Caption = 'Data de in'#237'cio de comiss'#227'o por duplicata paga'
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.DataBinding.FieldName = 'DTDUPLICATAPAGA'
            ID = 88
            ParentID = 85
            Index = 2
            Version = 1
          end
          object grdCategoryRow6: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Faturamento'
            ID = 89
            ParentID = -1
            Index = 3
            Version = 1
          end
          object grdDBEditorRow45: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Conhecimento de Transporte Eletr'#244'nico'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCTE'
            ID = 90
            ParentID = 89
            Index = 0
            Version = 1
          end
          object grdDBEditorRow291: TcxDBEditorRow
            Properties.Caption = 
              'Acrescentar n'#250'mero de dias '#224' data de previs'#227'o de entrega do Rodo' +
              'vi'#225'rio'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.DataBinding.FieldName = 'NUDIAPREVISAOENTREGACTE'
            ID = 91
            ParentID = 90
            Index = 0
            Version = 1
          end
          object grdDBEditorRow268: TcxDBEditorRow
            Properties.Caption = 'Adicionar mensagem de subcontrata'#231#227'o na observa'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCTEMENSAGEMCONTRATADA'
            ID = 92
            ParentID = 90
            Index = 1
            Version = 1
          end
          object grdDBEditorRow128: TcxDBEditorRow
            Properties.Caption = 'Aprova'#231#227'o com assinatura digital na 2 vez da impress'#227'o do RPA'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCTEIMPRESSAORPA'
            ID = 93
            ParentID = 90
            Index = 2
            Version = 1
          end
          object grdDBEditorRow205: TcxDBEditorRow
            Properties.Caption = 'Digitar Data e Hora de emiss'#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCTEDIGITARDTEMISSAO'
            ID = 94
            ParentID = 90
            Index = 3
            Version = 1
          end
          object grdDBEditorRow220: TcxDBEditorRow
            Properties.Caption = 'Empresa possui seguradora?'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCTESEGURADORA'
            ID = 95
            ParentID = 90
            Index = 4
            Version = 1
          end
          object grdDBEditorRow201: TcxDBEditorRow
            Properties.Caption = 'Enviar e-mail somente para remetente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCTEREMETENTEEMAIL'
            ID = 96
            ParentID = 90
            Index = 5
            Version = 1
          end
          object grdCDCTEFORMAPAGAMENTO: TcxDBEditorRow
            Properties.Caption = 'Forma Pagamento'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDCTEFORMAPAGAMENTO'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMCTEFORMAPAGAMENTO'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDCTEFORMAPAGAMENTO'
            ID = 97
            ParentID = 90
            Index = 6
            Version = 1
          end
          object grdDBEditorRow204: TcxDBEditorRow
            Properties.Caption = 'N'#227'o permitir exclus'#227'o de registro'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCTEEXCLUIR'
            ID = 98
            ParentID = 90
            Index = 7
            Version = 1
          end
          object grdDBEditorRow272: TcxDBEditorRow
            Properties.Caption = 
              'Permitir que o valor do frete pago ao motorista seja maior do qu' +
              'e o valor do frete do CTE'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCTEVLFRETEMAIOR'
            ID = 99
            ParentID = 90
            Index = 8
            Version = 1
          end
          object grdCDCTETPPREVISAOENTREGA: TcxDBEditorRow
            Properties.Caption = 'Previs'#227'o de Entrega da Data'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDCTETPPREVISAOENTREGA'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMCTETPPREVISAOENTREGA'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDCTETPPREVISAOENTREGA'
            ID = 100
            ParentID = 90
            Index = 9
            Version = 1
          end
          object grdCDCTETPPREVISAOENTREGAH: TcxDBEditorRow
            Properties.Caption = 'Previs'#227'o de Entrega da Hora'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDCTETPPREVISAOENTREGAH'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMCTETPPREVISAOENTREGAH'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDCTETPPREVISAOENTREGAH'
            ID = 101
            ParentID = 90
            Index = 10
            Version = 1
          end
          object grdCDPRODUTOCTE: TcxDBEditorRow
            Properties.Caption = 'Produto Predominante'
            Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
            Properties.EditProperties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.EditProperties.OnButtonClick = grdCDPRODUTOCTEEditPropertiesButtonClick
            Properties.DataBinding.FieldName = 'CDPRODUTOCTE'
            ID = 102
            ParentID = 90
            Index = 11
            Version = 1
          end
          object grdDBEditorRow70: TcxDBEditorRow
            Properties.Caption = 'RNTRC da empresa'
            Properties.DataBinding.FieldName = 'NURNTRC'
            ID = 103
            ParentID = 90
            Index = 12
            Version = 1
          end
          object grdCategoryRow36: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'RPA'
            ID = 104
            ParentID = 90
            Index = 13
            Version = 1
          end
          object grdDBEditorRow35: TcxDBEditorRow
            Properties.Caption = 'Centro de Custo'
            Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
            Properties.EditProperties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.EditProperties.OnButtonClick = grdDBEditorRow35EditPropertiesButtonClick
            Properties.DataBinding.FieldName = 'NUCNTCUSTOCTERPA'
            ID = 105
            ParentID = 104
            Index = 0
            Version = 1
          end
          object grdDBEditorRow64: TcxDBEditorRow
            Properties.Caption = 'Observa'#231#227'o RPA'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSCTEOBSERVACAORPA'
            ID = 106
            ParentID = 104
            Index = 1
            Version = 1
          end
          object grdDBEditorRow27: TcxDBEditorRow
            Properties.Caption = 'Plano de Contas'
            Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
            Properties.EditProperties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.EditProperties.OnButtonClick = grdDBEditorRow27EditPropertiesButtonClick
            Properties.DataBinding.FieldName = 'NUPLCONTACTERPA'
            ID = 107
            ParentID = 104
            Index = 2
            Version = 1
          end
          object grdCategoryRow22: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Seguro'
            ID = 108
            ParentID = 90
            Index = 14
            Version = 1
          end
          object grdcdtpcteresponsavelseguro: TcxDBEditorRow
            Properties.Caption = 'Respons'#225'vel'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDTPCTERESPONSAVELSEGURO'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMTPCTERESPONSAVELSEGURO'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDTPCTERESPONSAVELSEGURO'
            ID = 109
            ParentID = 108
            Index = 0
            Version = 1
          end
          object grdcdfornedorseguradora: TcxDBEditorRow
            Properties.Caption = 'Seguradora'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDFORNECEDOR'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMFORNECEDOR'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDFORNECEDORSEGURADORA'
            ID = 110
            ParentID = 108
            Index = 1
            Version = 1
          end
          object grdDBEditorRow133: TcxDBEditorRow
            Properties.Caption = 'N'#186' Ap'#243'lice'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'NUAPOLICE'
            ID = 111
            ParentID = 108
            Index = 2
            Version = 1
          end
          object grdDBEditorRow270: TcxDBEditorRow
            Properties.Caption = 'Somar o valor do pedagio ao saldo'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCTESOMARPEDAGIOSALDO'
            ID = 112
            ParentID = 90
            Index = 15
            Version = 1
          end
          object grdCDCTETPTOMADOR: TcxDBEditorRow
            Properties.Caption = 'Tomador Servi'#231'o'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDCTETPTOMADOR'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMCTETPTOMADOR'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDCTETPTOMADOR'
            ID = 113
            ParentID = 90
            Index = 16
            Version = 1
          end
          object grdDBEditorRow269: TcxDBEditorRow
            Properties.Caption = 'Unidade Carga'
            Properties.DataBinding.FieldName = 'NMUNIDADECTECARGA'
            ID = 114
            ParentID = 90
            Index = 17
            Version = 1
          end
          object grdDBEditorRow284: TcxDBEditorRow
            Properties.Caption = 'Embarque'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOEMBARQUE'
            ID = 115
            ParentID = 89
            Index = 1
            Version = 1
          end
          object grdDBEditorRow43: TcxDBEditorRow
            Properties.Caption = 'Faturamento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFATURAMENTO'
            ID = 116
            ParentID = 89
            Index = 2
            Version = 1
          end
          object grdDBEditorRow44: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Nota Fiscal'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOSAIDA'
            ID = 117
            ParentID = 89
            Index = 3
            Version = 1
          end
          object grdDBEditorRow222: TcxDBEditorRow
            Properties.Caption = 'Limitar o n'#250'mero de caracteres na observa'#231#227'o para 250 na nfe?'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOSAIDAOBSERVACAO250'
            ID = 118
            ParentID = 117
            Index = 0
            Version = 1
          end
          object grdDBEditorRow182: TcxDBEditorRow
            Properties.Caption = 'Tipo de Sequ'#234'ncia do N'#250'mero do Contas a Receber'
            Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
            Properties.EditProperties.Columns = 4
            Properties.EditProperties.Items = <
              item
                Caption = 'N'#250'mero/A'
                Value = '1'
              end
              item
                Caption = 'N'#250'mero/1'
                Value = '2'
              end
              item
                Caption = 'N'#250'mero/A-A'
                Value = '3'
              end
              item
                Caption = 'N'#250'mero/1-1'
                Value = '4'
              end>
            Properties.DataBinding.FieldName = 'TPSEQUENCIANUDUPLICATA'
            ID = 119
            ParentID = 117
            Index = 1
            Version = 1
          end
          object grdDBEditorRow229: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'MDFE'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOMDFE'
            ID = 120
            ParentID = 89
            Index = 4
            Version = 1
          end
          object grdDBEditorRow23: TcxDBEditorRow
            Properties.Caption = 'N'#186' m'#237'nimo de dias de encerramento MDFE'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.DataBinding.FieldName = 'NUDIASENCERRAMENTOMDFE'
            ID = 121
            ParentID = 120
            Index = 0
            Version = 1
          end
          object grdDBEditorRow230: TcxDBEditorRow
            Properties.Caption = 'Quantidade de CTE'#39's'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.MinValue = 1.000000000000000000
            Properties.DataBinding.FieldName = 'QTMDFECTE'
            ID = 122
            ParentID = 120
            Index = 1
            Version = 1
          end
          object grdDBEditorRow231: TcxDBEditorRow
            Properties.Caption = 'Quantidade de Reboques'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.MinValue = 1.000000000000000000
            Properties.DataBinding.FieldName = 'QTMDFEREBOQUE'
            ID = 123
            ParentID = 120
            Index = 2
            Version = 1
          end
          object grdDBEditorRow232: TcxDBEditorRow
            Properties.Caption = 'Quantidade de Condutores'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.MinValue = 1.000000000000000000
            Properties.DataBinding.FieldName = 'QTMDFETRANSPORTADORA'
            ID = 124
            ParentID = 120
            Index = 3
            Version = 1
          end
          object grdDBEditorRow233: TcxDBEditorRow
            Properties.Caption = 'Quantidade de NFE'#39's'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.MinValue = 1.000000000000000000
            Properties.DataBinding.FieldName = 'QTMDFENFE'
            ID = 125
            ParentID = 120
            Index = 4
            Version = 1
          end
          object grdDBEditorRow234: TcxDBEditorRow
            Properties.Caption = 'Quantidade de Percursos'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.MinValue = 1.000000000000000000
            Properties.DataBinding.FieldName = 'QTMDFEPERCURSO'
            ID = 126
            ParentID = 120
            Index = 5
            Version = 1
          end
          object grdDBEditorRow235: TcxDBEditorRow
            Properties.Caption = 'Quantidade de Carregamentos'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.MinValue = 1.000000000000000000
            Properties.DataBinding.FieldName = 'QTMDFECARREGAMENTO'
            ID = 127
            ParentID = 120
            Index = 6
            Version = 1
          end
          object grdDBEditorRow236: TcxDBEditorRow
            Properties.Caption = 'Quantidade de Descarregamentos'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.MinValue = 1.000000000000000000
            Properties.DataBinding.FieldName = 'QTMDFEDESCARREGAMENTO'
            ID = 128
            ParentID = 120
            Index = 7
            Version = 1
          end
          object grdCategoryRow7: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Financeiro'
            ID = 129
            ParentID = -1
            Index = 4
            Version = 1
          end
          object grdDBEditorRow86: TcxDBEditorRow
            Properties.Caption = 'Adiantamento Cliente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOADNTCLIENTE'
            ID = 130
            ParentID = 129
            Index = 0
            Version = 1
          end
          object grdDBEditorRow85: TcxDBEditorRow
            Properties.Caption = 'Adiantamento Fornecedor'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOADNTFORNECEDOR'
            ID = 131
            ParentID = 129
            Index = 1
            Version = 1
          end
          object grdDBEditorRow82: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Caixa Financeiro'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'bocaixafinanceiro'
            ID = 132
            ParentID = 129
            Index = 2
            Version = 1
          end
          object grdDBEditorRow290: TcxDBEditorRow
            Properties.Caption = 'Ignorar extrato repetido na importa'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCAIXAFINANCEIROIGNORAR'
            ID = 133
            ParentID = 132
            Index = 0
            Version = 1
          end
          object grdDBEditorRow224: TcxDBEditorRow
            Properties.Caption = 'N'#250'mero dias lan'#231'amento posterior a data atual'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.DataBinding.FieldName = 'NUDIASPOSTERIORMOVBANCARIO'
            ID = 134
            ParentID = 132
            Index = 1
            Version = 1
          end
          object grdDBEditorRow223: TcxDBEditorRow
            Properties.Caption = 'N'#250'mero dias lan'#231'amento anterior a data atual'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.DataBinding.FieldName = 'NUDIASANTERIORMOVBANCARIO'
            ID = 135
            ParentID = 132
            Index = 2
            Version = 1
          end
          object grdDBEditorRow78: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Centro de Custo'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCNTCUSTO'
            ID = 136
            ParentID = 129
            Index = 3
            Version = 1
          end
          object grdDBEditorRow176: TcxDBEditorRow
            Properties.Caption = 'M'#225'scara'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSMASKCNTCUSTO'
            ID = 137
            ParentID = 136
            Index = 0
            Version = 1
          end
          object grdDBEditorRow73: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Cheque'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCHEQUE'
            ID = 138
            ParentID = 129
            Index = 4
            Version = 1
          end
          object grdDBEditorRow72: TcxDBEditorRow
            Properties.Caption = 'Cheque Devolvido'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCHEQUEDEVOLVIDO'
            ID = 139
            ParentID = 138
            Index = 0
            Version = 1
          end
          object grdDBEditorRow88: TcxDBEditorRow
            Properties.Caption = 'Cobran'#231'a Banc'#225'ria'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCOBRANCABANCARIA'
            ID = 140
            ParentID = 129
            Index = 5
            Version = 1
          end
          object grdDBEditorRow115: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'C'#243'digo Cont'#225'bil'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCODIGOCONTABIL'
            ID = 141
            ParentID = 129
            Index = 6
            Version = 1
          end
          object grdCategoryRow23: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Exporta'#231#227'o Financeiro para o cont'#225'bil'
            ID = 142
            ParentID = 141
            Index = 0
            Version = 1
          end
          object grdCategoryRow31: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Adiantamento de Cliente'
            ID = 143
            ParentID = 142
            Index = 0
            Version = 1
          end
          object grdDBEditorRow239: TcxDBEditorRow
            Properties.Caption = 'Conta Cr'#233'dito'
            Properties.DataBinding.FieldName = 'cddebitoadntcliente'
            ID = 144
            ParentID = 143
            Index = 0
            Version = 1
          end
          object grdCategoryRow33: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Adiantamento de Fornecedor'
            ID = 145
            ParentID = 142
            Index = 1
            Version = 1
          end
          object grdDBEditorRow250: TcxDBEditorRow
            Properties.Caption = 'Conta D'#233'bito'
            Properties.DataBinding.FieldName = 'cddebitoadntfornecedor'
            ID = 146
            ParentID = 145
            Index = 0
            Version = 1
          end
          object grdCategoryRow29: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Contas a Pagar'
            ID = 147
            ParentID = 142
            Index = 2
            Version = 1
          end
          object grdDBEditorRow243: TcxDBEditorRow
            Properties.Caption = 'Conta Cr'#233'dito Pessoa F'#237'sica'
            Properties.DataBinding.FieldName = 'cdcreditoautpagtofisica'
            ID = 148
            ParentID = 147
            Index = 0
            Version = 1
          end
          object grdDBEditorRow244: TcxDBEditorRow
            Properties.Caption = 'Conta D'#233'bito Juros'
            Properties.DataBinding.FieldName = 'cddebitoautpagtojuros'
            ID = 149
            ParentID = 147
            Index = 1
            Version = 1
          end
          object grdDBEditorRow246: TcxDBEditorRow
            Properties.Caption = 'Conta D'#233'bito Multa'
            Properties.DataBinding.FieldName = 'cddebitoautpagtomulta'
            ID = 150
            ParentID = 147
            Index = 2
            Version = 1
          end
          object grdDBEditorRow238: TcxDBEditorRow
            Properties.Caption = 'Conta Cr'#233'dito Desconto'
            Properties.DataBinding.FieldName = 'cddebitoautpagtodesconto'
            ID = 151
            ParentID = 147
            Index = 3
            Version = 1
          end
          object grdCategoryRow24: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Contas a Receber'
            ID = 152
            ParentID = 142
            Index = 3
            Version = 1
          end
          object grdDBEditorRow240: TcxDBEditorRow
            Properties.Caption = 'Conta D'#233'bito Pessoa F'#237'sica'
            Properties.DataBinding.FieldName = 'cdcreditoduplicatafisica'
            ID = 153
            ParentID = 152
            Index = 0
            Version = 1
          end
          object grdDBEditorRow241: TcxDBEditorRow
            Properties.Caption = 'Conta Cr'#233'dito Juros'
            Properties.DataBinding.FieldName = 'cdcreditoduplicatajuros'
            ID = 154
            ParentID = 152
            Index = 1
            Version = 1
          end
          object grdDBEditorRow242: TcxDBEditorRow
            Properties.Caption = 'Conta Cr'#233'dito Multa'
            Properties.DataBinding.FieldName = 'cdcreditoduplicatamulta'
            ID = 155
            ParentID = 152
            Index = 2
            Version = 1
          end
          object grdDBEditorRow237: TcxDBEditorRow
            Properties.Caption = 'Conta D'#233'bito Desconto'
            Properties.DataBinding.FieldName = 'cdcreditoduplicatadesconto'
            ID = 156
            ParentID = 152
            Index = 3
            Version = 1
          end
          object grdCategoryRow30: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Transfer'#234'ncia'
            ID = 157
            ParentID = 142
            Index = 4
            Version = 1
          end
          object grdDBEditorRow245: TcxDBEditorRow
            Properties.Caption = 'Conta Cr'#233'dito Recebimento'
            Properties.DataBinding.FieldName = 'cdcreditorecebimento'
            ID = 158
            ParentID = 157
            Index = 0
            Version = 1
          end
          object grdDBEditorRow247: TcxDBEditorRow
            Properties.Caption = 'Conta D'#233'bito Transfer'#234'ncia'
            Properties.DataBinding.FieldName = 'cddebitotransferencia'
            ID = 159
            ParentID = 157
            Index = 1
            Version = 1
          end
          object grdDBEditorRow98: TcxDBEditorRow
            Properties.Caption = 'Condi'#231#227'o de Pagamento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCONDPAGTO'
            ID = 160
            ParentID = 129
            Index = 7
            Version = 1
          end
          object grdDBEditorRow90: TcxDBEditorRow
            Properties.Caption = 'Conta Corrente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCONTA'
            ID = 161
            ParentID = 129
            Index = 8
            Version = 1
          end
          object grdDBEditorRow81: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Contas a Pagar'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOAUTPAGTO'
            ID = 162
            ParentID = 129
            Index = 9
            Version = 1
          end
          object grdDBEditorRow96: TcxDBEditorRow
            Properties.Caption = 'Aprova'#231#227'o de Pagamento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOAUTPAGTOAPROVACAO'
            ID = 163
            ParentID = 162
            Index = 0
            Version = 1
          end
          object grdDBEditorRow40: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Contas a Receber'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BODUPLICATA'
            ID = 164
            ParentID = 129
            Index = 10
            Version = 1
          end
          object grdCategoryRow21: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Cobran'#231'a'
            ID = 165
            ParentID = 164
            Index = 0
            Version = 1
          end
          object grdDBEditorRow62: TcxDBEditorRow
            Properties.Caption = 'Guia cobran'#231'a no cliente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BODUPLICATACOBRANCA'
            ID = 166
            ParentID = 165
            Index = 0
            Version = 1
          end
          object grdDBEditorRow63: TcxDBEditorRow
            Properties.Caption = 'Data Agendamento Obrigat'#243'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BODUPLICATADTAGENDAOBRIGATO'
            ID = 167
            ParentID = 165
            Index = 1
            Version = 1
          end
          object grdDBEditorRow33: TcxDBEditorRow
            Properties.Caption = '% Multa'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.DataBinding.FieldName = 'PRMULTA'
            ID = 168
            ParentID = 164
            Index = 1
            Version = 1
          end
          object grdDBEditorRow60: TcxDBEditorRow
            Properties.Caption = '% Juros Mensal'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.DataBinding.FieldName = 'PRMORADIARIA'
            ID = 169
            ParentID = 164
            Index = 2
            Version = 1
          end
          object grdCDEVENTOEMAILDUPLICATABOLETO: TcxDBEditorRow
            Properties.Caption = 'Evento email Boleto'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDEVENTOEMAIL'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMEVENTOEMAIL'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDEVENTOEMAILDUPLICATABOLETO'
            ID = 170
            ParentID = 164
            Index = 3
            Version = 1
          end
          object grdCDEVENTOEMAILMANAGERDUPLICATA: TcxDBEditorRow
            Properties.Caption = 'Evento email Gerenciador Cobran'#231'a'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDEVENTOEMAIL'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMEVENTOEMAIL'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDEVENTOEMAILMANAGERDUPLICATA'
            ID = 171
            ParentID = 164
            Index = 4
            Version = 1
          end
          object grdDBEditorRow65: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Limite de cr'#233'dito'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BODUPLICATALIMITECREDITO'
            ID = 172
            ParentID = 164
            Index = 5
            Version = 1
          end
          object grdDBEditorRow66: TcxDBEditorRow
            Properties.Caption = 'Aviso'
            Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
            Properties.EditProperties.Items = <
              item
                Caption = 'Avisa mas permite inserir'
                Value = '1'
              end
              item
                Caption = 'Avisa mas n'#227'o permite inserir o registro'
                Value = '2'
              end
              item
                Caption = 'Avisa mas permite inserir com senha'
                Value = '3'
              end>
            Properties.DataBinding.FieldName = 'CDDUPLICATALIMITECREDITO'
            ID = 173
            ParentID = 172
            Index = 0
            Version = 1
          end
          object grdDBEditorRow61: TcxDBEditorRow
            Properties.Caption = 'N'#186' dias venct autom'#225'tico'
            Properties.DataBinding.FieldName = 'NUDIASVENCIMENTODUPLICATA'
            ID = 174
            ParentID = 164
            Index = 6
            Version = 1
          end
          object grdDBEditorRow218: TcxDBEditorRow
            Properties.Caption = 'Negocia'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BODUPLICATANEGOCIACAO'
            ID = 175
            ParentID = 164
            Index = 7
            Version = 1
          end
          object grdDBEditorRow89: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Plano Contas'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boplconta'
            ID = 176
            ParentID = 129
            Index = 11
            Version = 1
          end
          object grdDBEditorRow177: TcxDBEditorRow
            Properties.Caption = 'M'#225'scara'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSMASKPLCONTA'
            ID = 177
            ParentID = 176
            Index = 0
            Version = 1
          end
          object grdDBEditorRow92: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'RPA'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BORPA'
            ID = 178
            ParentID = 129
            Index = 12
            Version = 1
          end
          object grdCategoryRow35: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Impostos'
            ID = 179
            ParentID = 178
            Index = 0
            Version = 1
          end
          object grdDBEditorRow91: TcxDBEditorRow
            Properties.Caption = '% Adiantamento'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.DataBinding.FieldName = 'PRADIANTAMENTORPA'
            ID = 180
            ParentID = 179
            Index = 0
            Version = 1
          end
          object grdDBEditorRow93: TcxDBEditorRow
            Properties.Caption = '% INSS'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.DataBinding.FieldName = 'PRINSSRPA'
            ID = 181
            ParentID = 179
            Index = 1
            Version = 1
          end
          object grdDBEditorRow94: TcxDBEditorRow
            Properties.Caption = '% SEST/SENAT'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.DataBinding.FieldName = 'PRSESTSENAT'
            ID = 182
            ParentID = 179
            Index = 2
            Version = 1
          end
          object grdCategoryRow34: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Padr'#227'o para Contas a Pagar'
            ID = 183
            ParentID = 178
            Index = 1
            Version = 1
          end
          object grdcdcntcustorpa: TcxDBEditorRow
            Properties.Caption = 'Centro Custo Padr'#227'o'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDCNTCUSTO'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMCNTCUSTO2'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDCNTCUSTORPA'
            ID = 184
            ParentID = 183
            Index = 0
            Version = 1
          end
          object grdcdplcontarpa: TcxDBEditorRow
            Properties.Caption = 'Plano de Contas'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDPLCONTA'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NUPLCONTA'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDPLCONTARPA'
            ID = 185
            ParentID = 183
            Index = 1
            Version = 1
          end
          object grdCategoryRow9: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Geral'
            ID = 186
            ParentID = -1
            Index = 5
            Version = 1
          end
          object grdDBEditorRow127: TcxDBEditorRow
            Properties.Caption = 'Aprova'#231#227'o de Usu'#225'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOAPROVACAO'
            ID = 187
            ParentID = 186
            Index = 0
            Version = 1
          end
          object grdDBEditorRow109: TcxDBEditorRow
            Properties.Caption = 'Cor'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCOR'
            ID = 188
            ParentID = 186
            Index = 1
            Version = 1
          end
          object grdCategoryRow12: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Email'
            ID = 189
            ParentID = 186
            Index = 2
            Version = 1
          end
          object grdDBEditorRow186: TcxDBEditorRow
            Properties.Caption = 'Envio de Email'
            Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
            Properties.EditProperties.Columns = 5
            Properties.EditProperties.Items = <
              item
                Caption = 'GMail'
                Value = 'G'
              end
              item
                Caption = 'Cliente Outlook'
                Value = 'O'
              end
              item
                Caption = 'Hotmail/Live/Outlook'
                Value = 'H'
              end
              item
                Caption = 'UOL'
                Value = 'U'
              end
              item
                Caption = 'Outro'
                Value = 'Z'
              end>
            Properties.DataBinding.FieldName = 'TPENVIOEMAIL'
            ID = 190
            ParentID = 189
            Index = 0
            Version = 1
          end
          object grdDBEditorRow286: TcxDBEditorRow
            Properties.Caption = 'SMTP'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'EMAILSMTP'
            ID = 191
            ParentID = 189
            Index = 1
            Version = 1
          end
          object grdDBEditorRow288: TcxDBEditorRow
            Properties.Caption = 'Porta'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.AssignedValues.MinValue = True
            Properties.DataBinding.FieldName = 'EMAILPORTA'
            ID = 192
            ParentID = 189
            Index = 2
            Version = 1
          end
          object grdDBEditorRow287: TcxDBEditorRow
            Properties.Caption = 'Conex'#227'o Segura (SSL)'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOEMAILSSL'
            ID = 193
            ParentID = 189
            Index = 3
            Version = 1
          end
          object grdDBEditorRow112: TcxDBEditorRow
            Properties.Caption = 'Deslocamento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BODESLOCAMENTO'
            ID = 194
            ParentID = 186
            Index = 3
            Version = 1
          end
          object grdDBEditorRow97: TcxDBEditorRow
            Properties.Caption = 'Loca'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'bolocacao'
            ID = 195
            ParentID = 186
            Index = 4
            Version = 1
          end
          object grdDBEditorRow111: TcxDBEditorRow
            Properties.Caption = 'Log'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOLOG'
            ID = 196
            ParentID = 186
            Index = 5
            Version = 1
          end
          object grdDBEditorRow129: TcxDBEditorRow
            Properties.Caption = 'N'#250'mero de registro por p'#225'gina'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.DataBinding.FieldName = 'NUREGISTROPAGINA'
            ID = 197
            ParentID = 186
            Index = 6
            Version = 1
          end
          object grdDBEditorRow114: TcxDBEditorRow
            Properties.Caption = 'Ramo Atividade'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'bormatividade'
            ID = 198
            ParentID = 186
            Index = 7
            Version = 1
          end
          object grdDBEditorRow116: TcxDBEditorRow
            Properties.Caption = 'Unidade Federativa'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOUF'
            ID = 199
            ParentID = 186
            Index = 8
            Version = 1
          end
          object grdDBEditorRow113: TcxDBEditorRow
            Properties.Caption = 'Ve'#237'culo'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOVEICULO'
            ID = 200
            ParentID = 186
            Index = 9
            Version = 1
          end
          object grdCategoryRow10: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Log'#237'stica'
            ID = 201
            ParentID = -1
            Index = 6
            Version = 1
          end
          object grdDBEditorRow121: TcxDBEditorRow
            Properties.Caption = 'Transporte'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOTRANSPORTE'
            ID = 202
            ParentID = 201
            Index = 0
            Version = 1
          end
          object grdDBEditorRow207: TcxDBEditorRow
            Properties.Caption = 'Rota'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOROTA'
            ID = 203
            ParentID = 201
            Index = 1
            Version = 1
          end
          object grdCategoryRow11: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Material'
            ID = 204
            ParentID = -1
            Index = 7
            Version = 1
          end
          object grdDBEditorRow137: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Movimenta'#231#227'o de Estoque'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOMOVTO'
            ID = 205
            ParentID = 204
            Index = 0
            Version = 1
          end
          object grdDBEditorRow274: TcxDBEditorRow
            Properties.Caption = 'Exibir produto composto no localizar'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOMOVTOSUBPRODUTO'
            ID = 206
            ParentID = 205
            Index = 0
            Version = 1
          end
          object grdDBEditorRow47: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Produto'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTO'
            ID = 207
            ParentID = 204
            Index = 1
            Version = 1
          end
          object grdDBEditorRow184: TcxDBEditorRow
            Properties.Caption = 'Caminho para arquivos'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSPATHPRODUTO'
            ID = 208
            ParentID = 207
            Index = 0
            Version = 1
          end
          object grdDBEditorRow136: TcxDBEditorRow
            Properties.Caption = 'C'#243'digo Fornecedor '#250'nico'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boprodutocodfornecedorunico'
            ID = 209
            ParentID = 207
            Index = 1
            Version = 1
          end
          object grdDBEditorRow124: TcxDBEditorRow
            Properties.Caption = 'Data Estoque Inicial'
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.DataBinding.FieldName = 'DTESTOQUE'
            ID = 210
            ParentID = 207
            Index = 2
            Version = 1
          end
          object grdDBEditorRow21: TcxDBEditorRow
            Properties.Caption = 'Data de rec'#225'lulo de subproduto'
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.DataBinding.FieldName = 'DTRECALCULOSUBPRODUTO'
            ID = 211
            ParentID = 207
            Index = 3
            Version = 1
          end
          object grdCategoryRow27: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Exibir os seguintes campos no Localizar'
            ID = 212
            ParentID = 207
            Index = 4
            Version = 1
          end
          object grdDBEditorRow199: TcxDBEditorRow
            Properties.Caption = 'Classe Fiscal (NCM)'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTONUCLFISCAL'
            ID = 213
            ParentID = 212
            Index = 0
            Version = 1
          end
          object grdDBEditorRow140: TcxDBEditorRow
            Properties.Caption = 'C'#243'digo Alternativo'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOCDALTERNATIVO'
            ID = 214
            ParentID = 212
            Index = 1
            Version = 1
          end
          object grdDBEditorRow141: TcxDBEditorRow
            Properties.Caption = 'C'#243'digo Fornecedor'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boprodutocodfornecedor'
            ID = 215
            ParentID = 212
            Index = 2
            Version = 1
          end
          object grdDBEditorRow139: TcxDBEditorRow
            Properties.Caption = 'C'#243'digo Reduzido'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOCDREDUZIDO'
            ID = 216
            ParentID = 212
            Index = 3
            Version = 1
          end
          object grdDBEditorRow265: TcxDBEditorRow
            Properties.Caption = 'Comprimento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOCOMPRIMENTO'
            ID = 217
            ParentID = 212
            Index = 4
            Version = 1
          end
          object grdDBEditorRow212: TcxDBEditorRow
            Properties.Caption = 'Descri'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BODSPRODUTO'
            ID = 218
            ParentID = 212
            Index = 5
            Version = 1
          end
          object grdDBEditorRow251: TcxDBEditorRow
            Properties.Caption = 'Desenho'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTODESENHO'
            ID = 219
            ParentID = 212
            Index = 6
            Version = 1
          end
          object grdDBEditorRow263: TcxDBEditorRow
            Properties.Caption = 'Espessura'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOESPESSURA'
            ID = 220
            ParentID = 212
            Index = 7
            Version = 1
          end
          object grdDBEditorRow259: TcxDBEditorRow
            Properties.Caption = 'Forma'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOFORMA'
            ID = 221
            ParentID = 212
            Index = 8
            Version = 1
          end
          object grdDBEditorRow146: TcxDBEditorRow
            Properties.Caption = 'Grupo'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOGRUPO'
            ID = 222
            ParentID = 212
            Index = 9
            Version = 1
          end
          object grdDBEditorRow264: TcxDBEditorRow
            Properties.Caption = 'Largura'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOLARGURA'
            ID = 223
            ParentID = 212
            Index = 10
            Version = 1
          end
          object grdDBEditorRow147: TcxDBEditorRow
            Properties.Caption = 'Localiza'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTODSLOCALIZACAO'
            ID = 224
            ParentID = 212
            Index = 11
            Version = 1
          end
          object grdDBEditorRow171: TcxDBEditorRow
            Properties.Caption = 'Mapa de Produ'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOMAPAPRODUCAO'
            ID = 225
            ParentID = 212
            Index = 12
            Version = 1
          end
          object grdDBEditorRow261: TcxDBEditorRow
            Properties.Caption = 'Material'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOMATERIAL'
            ID = 226
            ParentID = 212
            Index = 13
            Version = 1
          end
          object grdDBEditorRow260: TcxDBEditorRow
            Properties.Caption = 'Norma'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTONORMA'
            ID = 227
            ParentID = 212
            Index = 14
            Version = 1
          end
          object grdDBEditorRow283: TcxDBEditorRow
            Properties.Caption = 'N'#250'mero S'#233'rie'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTONUIMEI'
            ID = 228
            ParentID = 212
            Index = 15
            Version = 1
          end
          object grdDBEditorRow262: TcxDBEditorRow
            Properties.Caption = 'Polegada'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOPOLEGADA'
            ID = 229
            ParentID = 212
            Index = 16
            Version = 1
          end
          object grdDBEditorRow292: TcxDBEditorRow
            Properties.Caption = 'Porcentagem do Lucro'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOPRLUCRO'
            ID = 230
            ParentID = 212
            Index = 17
            Version = 1
          end
          object grdDBEditorRow198: TcxDBEditorRow
            Properties.Caption = 'Quantidade Dispon'#237'vel'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOQTDISPONIVEL'
            ID = 231
            ParentID = 212
            Index = 18
            Version = 1
          end
          object grdDBEditorRow172: TcxDBEditorRow
            Properties.Caption = 'Quantidade de Estoque 2'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOQTESTOQUE2'
            ID = 232
            ParentID = 212
            Index = 19
            Version = 1
          end
          object grdDBEditorRow293: TcxDBEditorRow
            Properties.Caption = 'Quantidade M'#237'nimo'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOQTESTMIN'
            ID = 233
            ParentID = 212
            Index = 20
            Version = 1
          end
          object grdDBEditorRow257: TcxDBEditorRow
            Properties.Caption = 'Tag 1'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOTAG1'
            ID = 234
            ParentID = 212
            Index = 21
            Version = 1
          end
          object grdDBEditorRow255: TcxDBEditorRow
            Properties.Caption = 'Tag 2'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOTAG2'
            ID = 235
            ParentID = 212
            Index = 22
            Version = 1
          end
          object grdDBEditorRow258: TcxDBEditorRow
            Properties.Caption = 'Tipo Item'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOTPITEM'
            ID = 236
            ParentID = 212
            Index = 23
            Version = 1
          end
          object grdDBEditorRow143: TcxDBEditorRow
            Properties.Caption = 'Valor de Atacado'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOVLATACADO'
            ID = 237
            ParentID = 212
            Index = 24
            Version = 1
          end
          object grdDBEditorRow145: TcxDBEditorRow
            Properties.Caption = 'Valor de Compra'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOVLCUSTO'
            ID = 238
            ParentID = 212
            Index = 25
            Version = 1
          end
          object grdDBEditorRow130: TcxDBEditorRow
            Properties.Caption = 'Valor de Custo M'#233'dio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOVLCUSTOMEDIO'
            ID = 239
            ParentID = 212
            Index = 26
            Version = 1
          end
          object grdDBEditorRow142: TcxDBEditorRow
            Properties.Caption = 'Valor de Especial'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOVLESPECIAL'
            ID = 240
            ParentID = 212
            Index = 27
            Version = 1
          end
          object grdDBEditorRow144: TcxDBEditorRow
            Properties.Caption = 'Valor de Venda'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOVLVENDA'
            ID = 241
            ParentID = 212
            Index = 28
            Version = 1
          end
          object grdDBEditorRow181: TcxDBEditorRow
            Properties.Caption = 'Nome repetido'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTONMREPETIDO'
            ID = 242
            ParentID = 207
            Index = 5
            Version = 1
          end
          object grdDBEditorRow135: TcxDBEditorRow
            Properties.Caption = 'Ordem Servi'#231'o com Estoque zerado'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boprodutoordservestoquezerado'
            ID = 243
            ParentID = 207
            Index = 6
            Version = 1
          end
          object grdDBEditorRow151: TcxDBEditorRow
            Properties.Caption = 'Produto Similar'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOSIMILAR'
            ID = 244
            ParentID = 207
            Index = 7
            Version = 1
          end
          object grdDBEditorRow273: TcxDBEditorRow
            Properties.Caption = 'Retornar o c'#243'digo reduzido no localizar'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPRODUTOCDREDUZIDOSEARCH'
            ID = 245
            ParentID = 207
            Index = 8
            Version = 1
          end
          object grdDBEditorRow134: TcxDBEditorRow
            Properties.Caption = 'Venda com Estoque zerado'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boprodutovendaestoquezerado'
            ID = 246
            ParentID = 207
            Index = 9
            Version = 1
          end
          object grdCategoryRow2: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Grupo'
            ID = 247
            ParentID = 204
            Index = 2
            Version = 1
          end
          object grdDBEditorRow175: TcxDBEditorRow
            Properties.Caption = 'M'#225'scara'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSMASKGRUPO'
            ID = 248
            ParentID = 247
            Index = 0
            Version = 1
          end
          object grdCategoryRow25: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Produ'#231#227'o'
            ID = 249
            ParentID = -1
            Index = 8
            Version = 1
          end
          object grdDBEditorRow118: TcxDBEditorRow
            Properties.Caption = 'Agenda'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOAGENDA'
            ID = 250
            ParentID = 249
            Index = 0
            Version = 1
          end
          object grdDBEditorRow271: TcxDBEditorRow
            Properties.Caption = 'Apontamento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOAPONTAMENTO'
            ID = 251
            ParentID = 249
            Index = 1
            Version = 1
          end
          object grdDBEditorRow107: TcxDBEditorRow
            Properties.Caption = 'Corrida Qu'#237'mica'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOCORRIDAQUIMICA'
            ID = 252
            ParentID = 249
            Index = 2
            Version = 1
          end
          object grdDBEditorRow209: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Gerenciador Tarefas'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOTAREFA'
            ID = 253
            ParentID = 249
            Index = 3
            Version = 1
          end
          object grdDBEditorRow203: TcxDBEditorRow
            Properties.Caption = 'Caminho para arquivo para projeto'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSPATHPROJETO'
            ID = 254
            ParentID = 253
            Index = 0
            Version = 1
          end
          object grdDBEditorRow48: TcxDBEditorRow
            Properties.Caption = 'Caminho para arquivos para tarefa'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSPATHTAREFA'
            ID = 255
            ParentID = 253
            Index = 1
            Version = 1
          end
          object grdDBEditorRow131: TcxDBEditorRow
            Properties.Caption = 'Diagn'#243'stico'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOTAREFADIAGNOSTICO'
            ID = 256
            ParentID = 253
            Index = 2
            Version = 1
          end
          object grdDBEditorRow221: TcxDBEditorRow
            Properties.Caption = 'email do contato '#233' um campo obrigat'#243'rio na inser'#231#227'o tarefa'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOTAREFAEMAILCONTATO'
            ID = 257
            ParentID = 253
            Index = 3
            Version = 1
          end
          object grdDBEditorRow132: TcxDBEditorRow
            Properties.Caption = 'Lista de Verifica'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOTAREFALISTAVERIFICACAO'
            ID = 258
            ParentID = 253
            Index = 4
            Version = 1
          end
          object grdDBEditorRow183: TcxDBEditorRow
            Properties.Caption = 'Interven'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'bointervencao'
            ID = 259
            ParentID = 249
            Index = 4
            Version = 1
          end
          object grdDBEditorRow196: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Ordem Produ'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORDPRODUCAO'
            ID = 260
            ParentID = 249
            Index = 5
            Version = 1
          end
          object grdDBEditorRow267: TcxDBEditorRow
            Properties.Caption = 'Caminho para arquivos'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSPATHORDPRODUCAO'
            ID = 261
            ParentID = 260
            Index = 0
            Version = 1
          end
          object grdDBEditorRow119: TcxDBEditorRow
            Properties.Caption = 'Exibir funcion'#225'rio no gerenciador de ordem de produ'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORDPRODUCAOFUNCIONARIO'
            ID = 262
            ParentID = 260
            Index = 1
            Version = 1
          end
          object grdDBEditorRow122: TcxDBEditorRow
            Properties.Caption = 
              'Exibir data previs'#227'o de instala'#231#227'o no gerenciador de ordem de pr' +
              'odu'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORDPRODUCAOPRVINSTALACAO'
            ID = 263
            ParentID = 260
            Index = 2
            Version = 1
          end
          object grdDBEditorRow120: TcxDBEditorRow
            Properties.Caption = 'Exibir munic'#237'pio no gerenciador de ordem de produ'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORDPRODUCAOMUNICIPIO'
            ID = 264
            ParentID = 260
            Index = 3
            Version = 1
          end
          object grdDBEditorRow190: TcxDBEditorRow
            Properties.Caption = 'Formula'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFORMULACAO'
            ID = 265
            ParentID = 260
            Index = 4
            Version = 1
          end
          object grdDBEditorRow187: TcxDBEditorRow
            Properties.Caption = 'Regi'#227'o de Aplica'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOREGIAOAPLICACAO'
            ID = 266
            ParentID = 260
            Index = 5
            Version = 1
          end
          object grdDBEditorRow67: TcxDBEditorRow
            Properties.Caption = 'Senha do funcion'#225'rio para realizar apontamento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORDPRODUCAOSENHA'
            ID = 267
            ParentID = 260
            Index = 6
            Version = 1
          end
          object grdDBEditorRow148: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Ordem Servi'#231'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORDSERV'
            ID = 268
            ParentID = 249
            Index = 6
            Version = 1
          end
          object grdDBEditorRow154: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Caixa Trabalho'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boworkbox'
            ID = 269
            ParentID = 268
            Index = 0
            Version = 1
          end
          object grdDBEditorRow164: TcxDBEditorRow
            Properties.Caption = 'Confirmar mudan'#231'a de etapa'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOWORKBOXCONFIRMARMUDANCAETAPA'
            ID = 270
            ParentID = 269
            Index = 0
            Version = 1
          end
          object grdDBEditorRow166: TcxDBEditorRow
            Properties.Caption = 'Descri'#231#227'o da caixa geral'
            Properties.DataBinding.FieldName = 'dsworkboxgeral'
            ID = 271
            ParentID = 269
            Index = 1
            Version = 1
          end
          object grdDBEditorRow167: TcxDBEditorRow
            Properties.Caption = 'Descri'#231#227'o da caixa pessoal'
            Properties.DataBinding.FieldName = 'dsworkboxpessoal'
            ID = 272
            ParentID = 269
            Index = 2
            Version = 1
          end
          object grdDBEditorRow156: TcxDBEditorRow
            Properties.Caption = 'Exibir informa'#231#245'es do Cliente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boexibircliente'
            ID = 273
            ParentID = 269
            Index = 3
            Version = 1
          end
          object grdDBEditorRow162: TcxDBEditorRow
            Properties.Caption = 'Exibir informa'#231#245'es do Equipamento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boexibirequipamento'
            ID = 274
            ParentID = 269
            Index = 4
            Version = 1
          end
          object grdDBEditorRow155: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Filtro de quantidade OS na Etapa '
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOWORKBOXFILTRAR'
            ID = 275
            ParentID = 269
            Index = 5
            Version = 1
          end
          object grdDBEditorRow163: TcxDBEditorRow
            Properties.Caption = 'Quantidade'
            Properties.DataBinding.FieldName = 'WORKBOXQTFILTRO'
            ID = 276
            ParentID = 275
            Index = 0
            Version = 1
          end
          object grdDBEditorRow152: TcxDBEditorRow
            Properties.Caption = 'Mensagem'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'bomensagem'
            ID = 277
            ParentID = 269
            Index = 6
            Version = 1
          end
          object grdDBEditorRow165: TcxDBEditorRow
            Properties.Caption = 'Menu suspenso para mudan'#231'a de etapa'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOWORKBOXMENUSUSPENSOETAPA'
            ID = 278
            ParentID = 269
            Index = 7
            Version = 1
          end
          object grdCategoryRow28: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Tipo de Caixa de Trabalho'
            ID = 279
            ParentID = 269
            Index = 8
            Version = 1
          end
          object grdDBEditorRow161: TcxDBEditorRow
            Properties.Caption = 'Ordem Servi'#231'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOWORKBOXORDSERV'
            ID = 280
            ParentID = 279
            Index = 0
            Version = 1
          end
          object grdDBEditorRow160: TcxDBEditorRow
            Properties.Caption = 'Respons'#225'vel'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boworkboxresponsavel'
            ID = 281
            ParentID = 279
            Index = 1
            Version = 1
          end
          object grdDBEditorRow159: TcxDBEditorRow
            Properties.Caption = 'Pessoal'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boworkboxpessoal'
            ID = 282
            ParentID = 279
            Index = 2
            Version = 1
          end
          object grdDBEditorRow158: TcxDBEditorRow
            Properties.Caption = 'Gerente'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boworkboxgerente'
            ID = 283
            ParentID = 279
            Index = 3
            Version = 1
          end
          object grdDBEditorRow157: TcxDBEditorRow
            Properties.Caption = 'Execu'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'boworkboxexecucao'
            ID = 284
            ParentID = 279
            Index = 4
            Version = 1
          end
          object grdDBEditorRow185: TcxDBEditorRow
            Properties.Caption = 'Caminho para arquivo'
            Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
            Properties.EditProperties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.DataBinding.FieldName = 'dspathordserv'
            ID = 285
            ParentID = 268
            Index = 1
            Version = 1
          end
          object grdDBEditorRow150: TcxDBEditorRow
            Properties.Caption = 'Defeito'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORDSERVDEFEITO'
            ID = 286
            ParentID = 268
            Index = 2
            Version = 1
          end
          object grdDBEditorRow84: TcxDBEditorRow
            Properties.Caption = 'Equipamento direto na ordem de servi'#231'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORDSERVEQUIPAMENTO'
            ID = 287
            ParentID = 268
            Index = 3
            Version = 1
          end
          object grdDBEditorRow104: TcxDBEditorRow
            Properties.Caption = 'Etapa'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOETAPA'
            ID = 288
            ParentID = 268
            Index = 4
            Version = 1
          end
          object grdDBEditorRow83: TcxDBEditorRow
            Properties.Caption = 'Preencher Tipo na inser'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOORDSERVPREENCHERTIPO'
            ID = 289
            ParentID = 268
            Index = 5
            Version = 1
          end
          object grdDBEditorRow197: TcxDBEditorRow
            Properties.Caption = 'Requisi'#231#227'o Produ'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOREQUISICAOPRODUCAO'
            ID = 290
            ParentID = 249
            Index = 7
            Version = 1
          end
          object grdCategoryRow32: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'RH'
            ID = 291
            ParentID = -1
            Index = 9
            Version = 1
          end
          object grdDBEditorRow297: TcxDBEditorRow
            Properties.Caption = 'Despesa de Conv'#234'nio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BODESPESACONVENIO'
            ID = 292
            ParentID = 291
            Index = 0
            Version = 1
          end
          object grdDBEditorRow95: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Funcion'#225'rio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOFUNCIONARIO'
            ID = 293
            ParentID = 291
            Index = 1
            Version = 1
          end
          object grdDBEditorRow294: TcxDBEditorRow
            Properties.Caption = 'Caminho para arquivos'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSPATHFUNCIONARIO'
            ID = 294
            ParentID = 293
            Index = 0
            Version = 1
          end
          object grdDBEditorRow295: TcxDBEditorRow
            Properties.Caption = 'Data de In'#237'cio para verifica'#231#227'o anual da hora extra'
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.DataBinding.FieldName = 'DTINICIOHORAEXTRA'
            ID = 295
            ParentID = 293
            Index = 1
            Version = 1
          end
          object grdDBEditorRow275: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Ponto Trabalho'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPONTOTRABALHO'
            ID = 296
            ParentID = 291
            Index = 2
            Version = 1
          end
          object grdDBEditorRow276: TcxDBEditorRow
            Properties.Caption = 'Caminho do banco IPONTO'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSPATHIPONTO'
            ID = 297
            ParentID = 296
            Index = 0
            Version = 1
          end
          object grdDBEditorRow277: TcxDBEditorRow
            Properties.Caption = 'Servidor IPONTO'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'DSSERVIDORIPONTO'
            ID = 298
            ParentID = 296
            Index = 1
            Version = 1
          end
          object grdDBEditorRow279: TcxDBEditorRow
            Properties.Caption = 'Quantidade de Horas Negativa para n'#227'o ter a cesta b'#225'sica'
            Properties.EditPropertiesClassName = 'TcxTimeEditProperties'
            Properties.DataBinding.FieldName = 'QTHORANEGATIVA'
            ID = 299
            ParentID = 296
            Index = 2
            Version = 1
          end
          object grdDBEditorRow296: TcxDBEditorRow
            Properties.Caption = 'Treinamento'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOTREINAMENTO'
            ID = 300
            ParentID = 291
            Index = 3
            Version = 1
          end
          object grdCategoryRow26: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Tributa'#231#227'o'
            ID = 301
            ParentID = -1
            Index = 10
            Version = 1
          end
          object grdDBEditorRow100: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Livro Fiscal'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOLIVROFISCAL'
            ID = 302
            ParentID = 301
            Index = 0
            Version = 1
          end
          object grdCategoryRow13: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Sped Fiscal'
            ID = 303
            ParentID = 302
            Index = 0
            Version = 1
          end
          object grdDBEditorRow169: TcxDBEditorRow
            Properties.Caption = 'C'#243'digo Receita ICMS'
            Properties.DataBinding.FieldName = 'CDRECEITAICMS'
            ID = 304
            ParentID = 303
            Index = 0
            Version = 1
          end
          object grdDBEditorRow170: TcxDBEditorRow
            Properties.Caption = 'Dia vencimento ICMS'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.MaxValue = 31.000000000000000000
            Properties.EditProperties.MinValue = 1.000000000000000000
            Properties.DataBinding.FieldName = 'NUDIAVENCIMENTOICMS'
            ID = 305
            ParentID = 303
            Index = 1
            Version = 1
          end
          object grdDBEditorRow249: TcxDBEditorRow
            Properties.Caption = 'Gerar por faixa de data'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOGERARSPEDPORDATA'
            ID = 306
            ParentID = 303
            Index = 2
            Version = 1
          end
          object grdCDIND_PERFIL: TcxDBEditorRow
            Properties.Caption = 'Perfil do Arquivo Fiscal'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDIND_PERFIL'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMIND_PERFIL'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDIND_PERFIL'
            ID = 307
            ParentID = 303
            Index = 3
            Version = 1
          end
          object grdDBEditorRow206: TcxDBEditorRow
            Properties.Caption = 'Sped Item'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOLIVROFISCALSPEDITEM'
            ID = 308
            ParentID = 303
            Index = 4
            Version = 1
          end
          object grdDBEditorRow210: TcxDBEditorRow
            Properties.Caption = 'Sped CT-e - Jun'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOSPEDCTE'
            ID = 309
            ParentID = 303
            Index = 5
            Version = 1
          end
          object grdCDIND_ATIV: TcxDBEditorRow
            Properties.Caption = 'Tipo de Atividade'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDIND_ATIV'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMIND_ATIV'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDIND_ATIV'
            ID = 310
            ParentID = 303
            Index = 6
            Version = 1
          end
          object grdCategoryRow8: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Sped PIS/COFINS - Contribui'#231#245'es '
            ID = 311
            ParentID = 302
            Index = 1
            Version = 1
          end
          object grdDBEditorRow228: TcxDBEditorRow
            Properties.Caption = 'Al'#237'quota COFINS para CTE'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.DataBinding.FieldName = 'ALCOFINSCTE'
            ID = 312
            ParentID = 311
            Index = 0
            Version = 1
          end
          object grdDBEditorRow227: TcxDBEditorRow
            Properties.Caption = 'Al'#237'quota PIS para CTE'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.DataBinding.FieldName = 'ALPISCTE'
            ID = 313
            ParentID = 311
            Index = 1
            Version = 1
          end
          object grdCDINDICADORATIVIDADE: TcxDBEditorRow
            Properties.Caption = 'Atividade'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDINDICADORATIVIDADE'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMINDICADORATIVIDADE'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDINDICADORATIVIDADE'
            ID = 314
            ParentID = 311
            Index = 2
            Version = 1
          end
          object grdDBEditorRow202: TcxDBEditorRow
            Properties.Caption = 'Ativo PIS/COFINS'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOATIVOPISCOFINS'
            ID = 315
            ParentID = 311
            Index = 3
            Version = 1
          end
          object grdDBEditorRow173: TcxDBEditorRow
            Properties.Caption = 'C'#243'digo Natureza Receita (M810) - ST 04'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'CDNATUREZARECEITA04'
            ID = 316
            ParentID = 311
            Index = 4
            Version = 1
          end
          object grdDBEditorRow22: TcxDBEditorRow
            Properties.Caption = 'C'#243'digo Natureza Receita (M810) - ST 08'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'CDNATUREZARECEITA08'
            ID = 317
            ParentID = 311
            Index = 5
            Version = 1
          end
          object grdCDIND_REG_CUM: TcxDBEditorRow
            Properties.Caption = 'Crit'#233'rio Escritura'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDIND_REG_CUM'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMIND_REG_CUM'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDIND_REG_CUM'
            ID = 318
            ParentID = 311
            Index = 6
            Version = 1
          end
          object grdCDINDICADORINCIDENCIA: TcxDBEditorRow
            Properties.Caption = 'Incid'#234'ncia Tribut'#225'ria'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDINDICADORINCIDENCIA'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMINDICADORINCIDENCIA'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDINDICADORINCIDENCIA'
            ID = 319
            ParentID = 311
            Index = 7
            Version = 1
          end
          object grdDBEditorCDINDESCRITURACAO: TcxDBEditorRow
            Properties.Caption = 'Indicador de Escritura'#231#227'o (C010)'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDINDESCRITURACAO'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMINDESCRITURACAO'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDINDESCRITURACAO'
            ID = 320
            ParentID = 311
            Index = 8
            Version = 1
          end
          object grdCDINDICADORPESSOAJURIDICA: TcxDBEditorRow
            Properties.Caption = 'Pessoa Jur'#237'dica'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDINDICADORPESSOAJURIDICA'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMINDICADORPESSOAJURIDICA'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDINDICADORPESSOAJURIDICA'
            ID = 321
            ParentID = 311
            Index = 9
            Version = 1
          end
          object grdCDINDICADORAPROPRIACAO: TcxDBEditorRow
            Properties.Caption = 'M'#233'todo Apropria'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDINDICADORAPROPRIACAO'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMINDICADORAPROPRIACAO'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDINDICADORAPROPRIACAO'
            ID = 322
            ParentID = 311
            Index = 10
            Version = 1
          end
          object grdDBEditorRow211: TcxDBEditorRow
            Properties.Caption = 'Sped CT-e'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOSPEDCTEPISCOFINS'
            ID = 323
            ParentID = 311
            Index = 11
            Version = 1
          end
          object grdDBEditorRow117: TcxDBEditorRow
            Properties.Caption = 'SUFRAMA'
            Properties.DataBinding.FieldName = 'CDSUFRAMA'
            ID = 324
            ParentID = 311
            Index = 12
            Version = 1
          end
          object grdCDINDICADORCONTRIBUICAO: TcxDBEditorRow
            Properties.Caption = 'Tipo Contribui'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.EditProperties.KeyFieldNames = 'CDINDICADORCONTRIBUICAO'
            Properties.EditProperties.ListColumns = <
              item
                FieldName = 'NMINDICADORCONTRIBUICAO'
              end>
            Properties.EditProperties.ListOptions.ShowHeader = False
            Properties.DataBinding.FieldName = 'CDINDICADORCONTRIBUICAO'
            ID = 325
            ParentID = 311
            Index = 13
            Version = 1
          end
          object grdDBEditorRow101: TcxDBEditorRow
            Properties.Caption = 'Data de In'#237'cio'
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.DataBinding.FieldName = 'DTINICIOLIVRO'
            ID = 326
            ParentID = 302
            Index = 2
            Version = 1
          end
          object grdDBEditorRow226: TcxDBEditorRow
            Properties.Caption = 'Enviar item do ECF no sintegra?'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOLIVROFISCALSINTEGRAECFITEM'
            ID = 327
            ParentID = 302
            Index = 3
            Version = 1
          end
          object grdDBEditorRow80: TcxDBEditorRow
            Properties.Caption = 'Ignorar erros'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOLIVROIGNORARERRO'
            ID = 328
            ParentID = 302
            Index = 4
            Version = 1
          end
          object grdDBEditorRow200: TcxDBEditorRow
            Properties.Caption = 'Nao permitir recalcular custo m'#233'dio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOLIVROFISCALRECUSTOMEDIO'
            ID = 329
            ParentID = 302
            Index = 5
            Version = 1
          end
          object grdDBEditorRow248: TcxDBEditorRow
            Properties.Caption = 'Permitir gerar o livro fiscal no m'#234's atual'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOLIVROFISCALMESATUAL'
            ID = 330
            ParentID = 302
            Index = 6
            Version = 1
          end
          object grdDBEditorRow191: TcxDBEditorRow
            Properties.Caption = 'Recalcular Custo M'#233'dio'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BORECALCULARCUSTOMEDIO'
            ID = 331
            ParentID = 302
            Index = 7
            Version = 1
          end
          object grdDBEditorRow102: TcxDBEditorRow
            Properties.Caption = 'Saldo Credor ICMS'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Properties.DataBinding.FieldName = 'vlsaldocredor'
            ID = 332
            ParentID = 302
            Index = 8
            Version = 1
          end
          object grdDBEditorRow217: TcxDBEditorRow
            Properties.Caption = 'Saldo Credor IPI'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Properties.DataBinding.FieldName = 'VLSALDOCREDORIPI'
            ID = 333
            ParentID = 302
            Index = 9
            Version = 1
          end
          object grdDBEditorRow103: TcxDBEditorRow
            Expanded = False
            Properties.Caption = 'Livro Fiscal Produ'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOLIVROPRODUCAO'
            ID = 334
            ParentID = 301
            Index = 1
            Version = 1
          end
          object grdDBEditorRow106: TcxDBEditorRow
            Properties.Caption = 'Alterar Livro Produ'#231#227'o'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOLIVROPRODUCAOALTERAR'
            ID = 335
            ParentID = 334
            Index = 0
            Version = 1
          end
          object grdDBEditorRow253: TcxDBEditorRow
            Properties.Caption = 'N'#186' dias de entrada de Estoque'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.MinValue = 1.000000000000000000
            Properties.DataBinding.FieldName = 'QTDIAENTRADAESTOQUELIVROPROD'
            ID = 336
            ParentID = 334
            Index = 1
            Version = 1
          end
          object grdDBEditorRow252: TcxDBEditorRow
            Properties.Caption = 'N'#186' dias de baixa de Estoque'
            Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
            Properties.EditProperties.MinValue = 1.000000000000000000
            Properties.DataBinding.FieldName = 'QTDIASAIDAESTOQUELIVROPRODUCAO'
            ID = 337
            ParentID = 334
            Index = 2
            Version = 1
          end
          object grdDBEditorRow219: TcxDBEditorRow
            Properties.Caption = 'C'#243'digo Empresa no Alterdata'
            Properties.DataBinding.FieldName = 'CDALTERDATA'
            ID = 338
            ParentID = 301
            Index = 2
            Version = 1
          end
          object grdDBEditorRow46: TcxDBEditorRow
            Properties.Caption = 'Emissor PDV'
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.ValueChecked = 'S'
            Properties.EditProperties.ValueUnchecked = 'N'
            Properties.DataBinding.FieldName = 'BOPDV'
            ID = 339
            ParentID = 301
            Index = 3
            Version = 1
          end
          object grdCategoryRow5: TcxCategoryRow
            Expanded = False
            Properties.Caption = 'Custos'
            ID = 340
            ParentID = -1
            Index = 11
            Version = 1
          end
          object grdDBEditorRow192: TcxDBEditorRow
            Properties.Caption = 'Super Simples'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.DataBinding.FieldName = 'PRSUPERSIMPLES'
            ID = 341
            ParentID = 340
            Index = 0
            Version = 1
          end
          object grdDBEditorRow193: TcxDBEditorRow
            Properties.Caption = 'Despesa Operacional'
            Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
            Properties.DataBinding.FieldName = 'PRDESPESAOPERACIONAL'
            ID = 342
            ParentID = 340
            Index = 1
            Version = 1
          end
        end
      end
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
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
    object edtnome: TcxDBTextEdit
      Left = 5
      Top = 39
      DataBinding.DataField = 'NMEMPRESA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = ColorEnter
      OnExit = ColorExit
      OnKeyDown = nextcontrol
      Width = 365
    end
    object edtrzsocial: TcxDBTextEdit
      Left = 429
      Top = 39
      DataBinding.DataField = 'RZSOCIAL'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = ColorEnter
      OnExit = ColorExit
      OnKeyDown = nextcontrol
      Width = 365
    end
    object edtcodigo: TcxTextEdit
      Left = 814
      Top = 39
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Visible = False
      OnEnter = ColorEnter
      OnExit = ColorExit
      Width = 139
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnChange = actChange
    Left = 412
    Top = 56
    object actNovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
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
    object actCancelar: TAction
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelarExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actAdicionar: TAction
      Caption = 'Adicionar'
      Enabled = False
      ImageIndex = 63
      OnExecute = actAdicionarExecute
    end
    object actexcluir: TAction
      Caption = 'Excluir'
      Enabled = False
      ImageIndex = 5
      OnExecute = actexcluirExecute
    end
    object actsalvarlogo: TAction
      Caption = 'Salvar'
      ImageIndex = 2
      OnExecute = actsalvarlogoExecute
    end
    object actabrirfornecedor: TAction
      Caption = 'actabrirfornecedor'
      Hint = 'fornecedor'
      OnExecute = actabrirfornecedorExecute
    end
    object actcontadores: TAction
      Caption = 'Contadores'
      ImageIndex = 167
      OnExecute = actcontadoresExecute
    end
  end
  object cld: TColorDialog
    Left = 440
    Top = 56
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
    Left = 384
    Top = 56
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
      Caption = 'empresa'
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
      Caption = 'logo'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 277
      FloatTop = 105
      FloatClientWidth = 0
      FloatClientHeight = 0
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
          ItemName = 'dxBarButton3'
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
      Category = 0
      Visible = ivAlways
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
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object dxbrsprtr1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnprimeiro: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object dxbrlrgbtnanterior: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object dxbrlrgbtnproximo: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object dxbrlrgbtnultimo: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object dxbrsprtr2: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnimprimir: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
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
      Action = actAdicionar
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actexcluir
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actsalvarlogo
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actcontadores
      Category = 0
    end
  end
  object dts: TDataSource
    DataSet = qry
    OnStateChange = dtsStateChange
    Left = 472
    Top = 56
  end
  object qry: TFDQuery
    BeforePost = qryBeforePost
    AfterScroll = qryAfterScroll
    Connection = dtmmain.confire
    SQL.Strings = (
      'SELECT * FROM EMPRESA WHERE CDEMPRESA=:CDEMPRESA')
    Left = 500
    Top = 56
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
  end
end

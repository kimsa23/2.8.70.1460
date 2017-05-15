object frmNovoTransportadora: TfrmNovoTransportadora
  Left = 441
  Top = 216
  BorderStyle = bsDialog
  Caption = 'Novo Transportadora'
  ClientHeight = 299
  ClientWidth = 808
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
    Width = 808
    Height = 43
    Align = alTop
    Shape = bsBottomLine
  end
  object Label3: TLabel
    Left = 2
    Top = 3
    Width = 28
    Height = 13
    Caption = 'Nome'
    Transparent = True
  end
  object lblrzsocial: TLabel
    Left = 365
    Top = 3
    Width = 63
    Height = 13
    Caption = 'Raz'#227'o Social'
    Transparent = True
  end
  object gbxJuridica: TcxGroupBox
    Left = 0
    Top = 172
    Caption = 'Dados Pessoa Jur'#237'dica'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    Height = 92
    Width = 804
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
    object edtnuinscest: TcxDBTextEdit
      Left = 475
      Top = 19
      DataBinding.DataField = 'NUINSCEST'
      DataBinding.DataSource = dts
      TabOrder = 1
      OnKeyPress = nextcontrol
      Width = 299
    end
    object edtnucnpj: TcxDBMaskEdit
      Left = 61
      Top = 19
      DataBinding.DataField = 'NUCNPJ'
      DataBinding.DataSource = dts
      Properties.EditMask = '99.999.999/9999-99'
      Properties.MaxLength = 0
      TabOrder = 0
      OnKeyPress = nextcontrol
      Width = 364
    end
  end
  object rdbtppessoa: TcxDBRadioGroup
    Left = 682
    Top = 1
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
    Transparent = True
    Height = 38
    Width = 123
  end
  object edtRzSocial: TcxDBTextEdit
    Left = 365
    Top = 17
    DataBinding.DataField = 'RZSOCIAL'
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Width = 315
  end
  object edtNome: TcxDBTextEdit
    Left = 2
    Top = 17
    DataBinding.DataField = 'NMTRANSPORTADORA'
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    OnExit = edtNomeExit
    OnKeyPress = nextcontrol
    Width = 362
  end
  object btncancelar: TcxButton
    Left = 358
    Top = 269
    Width = 75
    Height = 25
    Action = actCancelar1
    LookAndFeel.NativeStyle = False
    TabOrder = 7
  end
  object btnsalvar: TcxButton
    Left = 270
    Top = 269
    Width = 75
    Height = 25
    Action = actSalvar1
    LookAndFeel.NativeStyle = False
    TabOrder = 6
  end
  object gbxComercial: TcxGroupBox
    Left = 0
    Top = 43
    Align = alTop
    Caption = 'Endere'#231'o Comercial'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Transparent = True
    Height = 128
    Width = 808
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
      Top = 104
      Width = 24
      Height = 13
      Caption = 'Fone'
      Transparent = True
    end
    object Label20: TLabel
      Left = 429
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
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 11
      OnKeyPress = edtNuFaxKeyPress
      Width = 81
    end
    object edtnufone2: TcxDBMaskEdit
      Left = 140
      Top = 99
      DataBinding.DataField = 'NUFONE2'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnKeyPress = nextcontrol
      Width = 81
    end
    object edtnufone1: TcxDBMaskEdit
      Left = 58
      Top = 99
      DataBinding.DataField = 'NUFONE1'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnKeyPress = nextcontrol
      Width = 81
    end
    object edtNuCxPostal: TcxDBTextEdit
      Left = 475
      Top = 57
      DataBinding.DataField = 'NUCXPOSTAL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnKeyPress = nextcontrol
      Width = 85
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
      OnKeyPress = nextcontrol
      Width = 371
    end
    object edtdscomplemento: TcxDBTextEdit
      Left = 630
      Top = 34
      DataBinding.DataField = 'DSCOMPLEMENTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 109
    end
    object edtdsnumero: TcxDBTextEdit
      Left = 475
      Top = 34
      DataBinding.DataField = 'DSNUMERO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
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
      OnKeyPress = nextcontrol
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
      Width = 305
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
      OnExit = edtnucepExit
      Width = 59
    end
    object edtnufone3: TcxDBMaskEdit
      Left = 223
      Top = 99
      DataBinding.DataField = 'NUFONE3'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnKeyPress = nextcontrol
      Width = 81
    end
  end
  object gbxFisica: TcxGroupBox
    Left = 0
    Top = 172
    Caption = 'Dados Pessoal F'#237'sica'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Visible = False
    Height = 92
    Width = 804
    object Label27: TLabel
      Left = 3
      Top = 22
      Width = 20
      Height = 13
      Caption = 'CPF'
      Transparent = True
    end
    object Label61: TLabel
      Left = 430
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
      Left = 430
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
      Left = 430
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
    object edtnmconjuge: TcxDBTextEdit
      Left = 478
      Top = 59
      DataBinding.DataField = 'NMCONJUGE'
      DataBinding.DataSource = dts
      TabOrder = 8
      OnKeyPress = nextcontrol
      Width = 297
    end
    object edtdtnascimento: TcxDBDateEdit
      Left = 303
      Top = 59
      DataBinding.DataField = 'DTNASCIMENTO'
      DataBinding.DataSource = dts
      TabOrder = 7
      OnKeyPress = nextcontrol
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
      TabOrder = 6
      OnKeyPress = nextcontrol
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
      TabOrder = 5
      OnKeyPress = nextcontrol
      Width = 76
    end
    object edtnmpai: TcxDBTextEdit
      Left = 478
      Top = 36
      DataBinding.DataField = 'NMPAI'
      DataBinding.DataSource = dts
      TabOrder = 4
      OnKeyPress = nextcontrol
      Width = 299
    end
    object edtnmmae: TcxDBTextEdit
      Left = 44
      Top = 36
      DataBinding.DataField = 'NMMAE'
      DataBinding.DataSource = dts
      TabOrder = 3
      OnKeyPress = nextcontrol
      Width = 355
    end
    object edtnuinscest2: TcxDBTextEdit
      Left = 478
      Top = 14
      DataBinding.DataField = 'NUINSCEST'
      DataBinding.DataSource = dts
      TabOrder = 2
      Width = 299
    end
    object edtnuidentid: TcxDBTextEdit
      Left = 256
      Top = 14
      DataBinding.DataField = 'NUIDENTID'
      DataBinding.DataSource = dts
      TabOrder = 1
      OnKeyPress = nextcontrol
      Width = 143
    end
    object edtnucpf: TcxDBMaskEdit
      Left = 43
      Top = 14
      DataBinding.DataField = 'NUCPF'
      DataBinding.DataSource = dts
      Properties.EditMask = '999.999.999-99'
      Properties.MaxLength = 0
      TabOrder = 0
      OnKeyPress = nextcontrol
      Width = 156
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    Left = 428
    Top = 35
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
      ImageIndex = 5
      ShortCut = 16474
      OnExecute = actCancelar1Execute
    end
  end
  object dts: TDataSource
    DataSet = qry
    Left = 540
    Top = 35
  end
  object qry: TFDQuery
    BeforePost = qryBeforePost
    OnNewRecord = qryNewRecord
    CachedUpdates = True
    Connection = dtmmain.confire
    SQL.Strings = (
      
        'SELECT * FROM TRANSPORTADORA WHERE CDEMPRESA=0 AND CDTRANSPORTAD' +
        'ORA=0')
    Left = 496
    Top = 264
  end
end

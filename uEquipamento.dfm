object frmEquipamento: TfrmEquipamento
  Left = 716
  Top = 174
  ClientHeight = 651
  ClientWidth = 987
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
    Top = 129
    Width = 987
    Height = 522
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tbsCadastro
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 522
    ClientRectRight = 987
    ClientRectTop = 25
    object tbsCadastro: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 40
      object lblmarca: TLabel
        Left = 4
        Top = 52
        Width = 30
        Height = 13
        Caption = 'Marca'
        Transparent = True
      end
      object lblmodelo: TLabel
        Left = 4
        Top = 72
        Width = 35
        Height = 13
        Caption = 'Modelo'
        Transparent = True
      end
      object lblcor: TLabel
        Left = 4
        Top = 92
        Width = 16
        Height = 13
        Caption = 'Cor'
        Transparent = True
      end
      object lblcontrato: TLabel
        Left = 4
        Top = 110
        Width = 40
        Height = 13
        Caption = 'Contrato'
        Transparent = True
      end
      object lblproduto: TLabel
        Left = 4
        Top = 134
        Width = 37
        Height = 13
        Caption = 'Produto'
        Transparent = True
      end
      object lblnuano: TLabel
        Left = 4
        Top = 155
        Width = 19
        Height = 13
        Caption = 'Ano'
        Transparent = True
      end
      object lbltpeletricpneum: TLabel
        Left = 4
        Top = 176
        Width = 94
        Height = 13
        Caption = 'El'#233'trico Pneum'#225'tico'
        Transparent = True
      end
      object lblvlequipamento: TLabel
        Left = 4
        Top = 198
        Width = 24
        Height = 13
        Caption = 'Valor'
        Transparent = True
      end
      object lblvlhora: TLabel
        Left = 4
        Top = 237
        Width = 96
        Height = 13
        Caption = 'Valor M'#225'quina/Hora'
        Transparent = True
      end
      object lblnuserie: TLabel
        Left = 4
        Top = 11
        Width = 64
        Height = 13
        Caption = 'N'#250'mero S'#233'rie'
        Transparent = True
      end
      object lblnupatrimonio: TLabel
        Left = 4
        Top = 32
        Width = 89
        Height = 13
        Caption = 'N'#250'mero Patrim'#244'nio'
        Transparent = True
      end
      object lblnmproduto: TDBText
        Left = 207
        Top = 131
        Width = 60
        Height = 13
        AutoSize = True
        DataField = 'NMPRODUTO'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lblnmprodutoDblClick
      end
      object lblsetor: TLabel
        Left = 4
        Top = 257
        Width = 25
        Height = 13
        Caption = 'Setor'
        Transparent = True
      end
      object lblqtitem: TLabel
        Left = 4
        Top = 278
        Width = 55
        Height = 13
        Caption = 'Quantidade'
        Transparent = True
      end
      object lblqtsaldo: TLabel
        Left = 411
        Top = 278
        Width = 27
        Height = 13
        Caption = 'Saldo'
        Transparent = True
      end
      object lblhrtempoagenda: TLabel
        Left = 4
        Top = 300
        Width = 73
        Height = 13
        Caption = 'Tempo Agenda'
        Transparent = True
      end
      object lblcliente: TLabel
        Left = 4
        Top = 321
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Transparent = True
      end
      object txtnmcliente: TDBText
        Left = 207
        Top = 318
        Width = 56
        Height = 13
        AutoSize = True
        DataField = 'NMCLIENTE'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = txtnmclienteDblClick
      end
      object lblqtvelocidade: TLabel
        Left = 4
        Top = 344
        Width = 53
        Height = 13
        Caption = 'Velocidade'
        Transparent = True
      end
      object lblnuplaca: TLabel
        Left = 4
        Top = 365
        Width = 67
        Height = 13
        Caption = 'N'#250'mero Placa'
        Transparent = True
      end
      object lblnuchassi: TLabel
        Left = 4
        Top = 387
        Width = 71
        Height = 13
        Caption = 'N'#250'mero Chassi'
        Transparent = True
      end
      object lblcdtpequipamento2: TLabel
        Left = 4
        Top = 409
        Width = 95
        Height = 13
        Caption = 'Tipo Equipamento 2'
        Transparent = True
      end
      object cbxcdmarca: TcxDBLookupComboBox
        Left = 105
        Top = 44
        DataBinding.DataField = 'CDMARCA'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDMARCA'
        Properties.ListColumns = <
          item
            FieldName = 'NMMARCA'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = cbxcdmarcaEnter
        OnExit = colorexit
        Width = 421
      end
      object cbxcdmodelo: TcxDBLookupComboBox
        Left = 105
        Top = 64
        DataBinding.DataField = 'CDMODELO'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDMODELO'
        Properties.ListColumns = <
          item
            FieldName = 'NMMODELO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = cbxcdmodeloEnter
        OnExit = colorexit
        Width = 421
      end
      object cbxcdcor: TcxDBLookupComboBox
        Left = 105
        Top = 84
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
        TabOrder = 6
        OnEnter = cbxcdcorEnter
        OnExit = colorexit
        Width = 421
      end
      object cbxcdcontrato: TcxDBLookupComboBox
        Left = 105
        Top = 105
        DataBinding.DataField = 'CDCONTRATO'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDCONTRATO'
        Properties.ListColumns = <
          item
            FieldName = 'NMCONTRATO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        OnEnter = cbxcdcontratoEnter
        OnExit = colorexit
        Width = 421
      end
      object edtcdproduto: TcxDBButtonEdit
        Left = 105
        Top = 126
        DataBinding.DataField = 'CDPRODUTO'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdprodutoPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdprodutoKeyDown
        Width = 101
      end
      object edtnuano: TcxDBSpinEdit
        Left = 105
        Top = 147
        DataBinding.DataField = 'NUANO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        OnEnter = colorenter
        OnExit = colorexit
        Width = 421
      end
      object cbxcdtpeletricpneum: TcxDBLookupComboBox
        Left = 105
        Top = 168
        DataBinding.DataField = 'CDTPELETRICPNEUM'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDTPELETRICPNEUM'
        Properties.ListColumns = <
          item
            FieldName = 'NMTPELETRICPNEUM'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        OnEnter = cbxcdtpeletricpneumEnter
        OnExit = colorexit
        Width = 421
      end
      object edtvlequipamento: TcxDBCalcEdit
        Left = 105
        Top = 190
        DataBinding.DataField = 'VLEQUIPAMENTO'
        DataBinding.DataSource = dts
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        OnEnter = colorenter
        OnExit = colorexit
        Width = 421
      end
      object chkbopertenceempresa: TcxDBCheckBox
        Left = 105
        Top = 210
        Caption = 'Pertence Empresa'
        DataBinding.DataField = 'BOPERTENCEEMPRESA'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        Transparent = True
      end
      object edtvlhora: TcxDBCalcEdit
        Left = 105
        Top = 229
        DataBinding.DataField = 'VLHORA'
        DataBinding.DataSource = dts
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 15
        OnEnter = colorenter
        OnExit = colorexit
        Width = 421
      end
      object chkbomedidor: TcxDBCheckBox
        Left = 217
        Top = 210
        Caption = 'Apurar Medidor'
        DataBinding.DataField = 'BOMEDIDOR'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Transparent = True
      end
      object edtnuserie: TcxDBTextEdit
        Left = 105
        Top = 3
        DataBinding.DataField = 'NUSERIE'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Width = 421
      end
      object edtnupatrimonio: TcxDBTextEdit
        Left = 105
        Top = 24
        DataBinding.DataField = 'NUPATRIMONIO'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        Width = 421
      end
      object ckbboapontamentosimultaneo: TcxDBCheckBox
        Left = 334
        Top = 210
        Caption = 'Permitir apontamento simult'#226'neo'
        DataBinding.DataField = 'BOAPONTAMENTOSIMULTANEO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 14
        Transparent = True
      end
      object cbxcdsetor: TcxDBLookupComboBox
        Left = 105
        Top = 249
        DataBinding.DataField = 'CDSETOR'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 400
        Properties.KeyFieldNames = 'CDSETOR'
        Properties.ListColumns = <
          item
            FieldName = 'NMSETOR'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 16
        OnEnter = cbxcdmarcaEnter
        OnExit = colorexit
        Width = 421
      end
      object edtqtitem: TcxDBSpinEdit
        Left = 105
        Top = 270
        DataBinding.DataField = 'QTITEM'
        DataBinding.DataSource = dts
        Properties.AssignedValues.MinValue = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 17
        Width = 304
      end
      object txtqtsaldo: TcxDBLabel
        Left = 437
        Top = 274
        DataBinding.DataField = 'QTSALDO'
        DataBinding.DataSource = dts
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 60
      end
      object btninsertmarca: TcxButton
        Left = 526
        Top = 46
        Width = 28
        Height = 21
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 136
        OptionsImage.Images = dtmmain.imlMain
        PaintStyle = bpsGlyph
        TabOrder = 3
        Visible = False
        OnClick = btninsertmarcaClick
      end
      object btninsertmodelo: TcxButton
        Left = 526
        Top = 68
        Width = 28
        Height = 21
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 136
        OptionsImage.Images = dtmmain.imlMain
        PaintStyle = bpsGlyph
        TabOrder = 5
        Visible = False
        OnClick = btninsertmodeloClick
      end
      object edthrtempoagenda: TcxDBTimeEdit
        Left = 105
        Top = 292
        DataBinding.DataField = 'HRTEMPOAGENDA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 19
        Width = 121
      end
      object edtcdcliente: TcxDBButtonEdit
        Left = 105
        Top = 313
        DataBinding.DataField = 'CDCLIENTE'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdclientePropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 20
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdclienteKeyDown
        Width = 101
      end
      object edtqtvelocidade: TcxDBCalcEdit
        Left = 105
        Top = 336
        DataBinding.DataField = 'QTVELOCIDADE'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 21
        Width = 121
      end
      object edtnuplaca: TcxDBTextEdit
        Left = 105
        Top = 357
        DataBinding.DataField = 'NUPLACA'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 22
        OnEnter = colorenter
        OnExit = colorexit
        Width = 421
      end
      object edtnuchassi: TcxDBTextEdit
        Left = 105
        Top = 379
        DataBinding.DataField = 'NUCHASSI'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 23
        OnEnter = colorenter
        OnExit = colorexit
        Width = 421
      end
      object cbxcdtpequipamento2: TcxDBLookupComboBox
        Left = 105
        Top = 401
        DataBinding.DataField = 'CDTPEQUIPAMENTO2'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDTPEQUIPAMENTO2'
        Properties.ListColumns = <
          item
            FieldName = 'NMTPEQUIPAMENTO2'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 24
        OnEnter = cbxcdtpeletricpneumEnter
        OnExit = colorexit
        Width = 421
      end
    end
    object tbsautorizada: TcxTabSheet
      Caption = 'Autorizada'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblfornecedor: TLabel
        Left = 4
        Top = 12
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
        Transparent = True
      end
      object lblfabricante: TLabel
        Left = 4
        Top = 33
        Width = 50
        Height = 13
        Caption = 'Fabricante'
        Transparent = True
      end
      object lblnunf: TLabel
        Left = 4
        Top = 54
        Width = 53
        Height = 13
        Caption = 'Nota Fiscal'
        Transparent = True
      end
      object lblvlcompra: TLabel
        Left = 4
        Top = 75
        Width = 63
        Height = 13
        Caption = 'Valor Compra'
        Transparent = True
      end
      object lbldtcompra: TLabel
        Left = 4
        Top = 96
        Width = 62
        Height = 13
        Caption = 'Data Compra'
        Transparent = True
      end
      object lblnucertificadogarantia: TLabel
        Left = 4
        Top = 117
        Width = 108
        Height = 13
        Caption = 'N'#186' Certificado Garantia'
        Transparent = True
      end
      object lblnmrevendedor: TLabel
        Left = 4
        Top = 138
        Width = 59
        Height = 13
        Caption = 'Revendedor'
        Transparent = True
      end
      object lbldtfabricacao: TLabel
        Left = 4
        Top = 159
        Width = 79
        Height = 13
        Caption = 'Data Fabrica'#231#227'o'
        Transparent = True
      end
      object lblcdfabricacao: TLabel
        Left = 4
        Top = 180
        Width = 89
        Height = 13
        Caption = 'C'#243'digo Fabrica'#231#227'o'
        Transparent = True
      end
      object lblnmfornecedor: TDBText
        Left = 207
        Top = 9
        Width = 75
        Height = 13
        AutoSize = True
        DataField = 'NMFORNECEDOR'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object lblnmfabricante: TDBText
        Left = 207
        Top = 29
        Width = 71
        Height = 13
        AutoSize = True
        DataField = 'NMFABRICANTE'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object edtcdfornecedor: TcxDBButtonEdit
        Left = 105
        Top = 4
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
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdfornecedorKeyDown
        Width = 101
      end
      object edtcdfabricante: TcxDBButtonEdit
        Left = 105
        Top = 25
        DataBinding.DataField = 'CDFABRICANTE'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdfabricantePropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdfabricanteKeyDown
        Width = 101
      end
      object edtnunf: TcxDBTextEdit
        Left = 105
        Top = 46
        DataBinding.DataField = 'NUNF'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = colorenter
        OnExit = colorexit
        Width = 155
      end
      object edtvlcompra: TcxDBCalcEdit
        Left = 105
        Top = 67
        DataBinding.DataField = 'VLCOMPRA'
        DataBinding.DataSource = dts
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = colorenter
        OnExit = colorexit
        Width = 155
      end
      object edtdtcompra: TcxDBDateEdit
        Left = 105
        Top = 88
        DataBinding.DataField = 'DTCOMPRA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        Width = 155
      end
      object edtnucertificadogarantia: TcxDBTextEdit
        Left = 105
        Top = 109
        DataBinding.DataField = 'NUCERTIFICADOGARANTIA'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        OnEnter = colorenter
        OnExit = colorexit
        Width = 370
      end
      object edtnmrevendedor: TcxDBTextEdit
        Left = 105
        Top = 130
        DataBinding.DataField = 'NMREVENDEDOR'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        OnEnter = colorenter
        OnExit = colorexit
        Width = 370
      end
      object edtdtfabricacao: TcxDBDateEdit
        Left = 105
        Top = 151
        DataBinding.DataField = 'DTFABRICACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        OnEnter = colorenter
        OnExit = colorexit
        Width = 155
      end
      object edtcdfabricacao: TcxDBTextEdit
        Left = 105
        Top = 172
        DataBinding.DataField = 'CDFABRICACAO'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        OnEnter = colorenter
        OnExit = colorexit
        Width = 370
      end
    end
    object tbsmedidor: TcxTabSheet
      Caption = 'Medidor'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdmedidor: TcxGrid
        Left = 0
        Top = 0
        Width = 987
        Height = 497
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdmedidorDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dtsitequipamentomedidor
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdmedidorDBTableView1DTMEDIDOR: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTMEDIDOR'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 112
          end
          object grdmedidorDBTableView1NUPOSICAOI: TcxGridDBColumn
            Caption = 'In'#237'cio'
            DataBinding.FieldName = 'NUPOSICAOI'
            PropertiesClassName = 'TcxSpinEditProperties'
            Width = 128
          end
          object grdmedidorDBTableView1NUPOSICAOF: TcxGridDBColumn
            Caption = 'Final'
            DataBinding.FieldName = 'NUPOSICAOF'
            PropertiesClassName = 'TcxSpinEditProperties'
            Width = 123
          end
        end
        object grdmedidorLevel1: TcxGridLevel
          GridView = grdmedidorDBTableView1
        end
      end
    end
    object tbsequipamento: TcxTabSheet
      Caption = 'Equipamento'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grd: TcxGrid
        Left = 0
        Top = 0
        Width = 987
        Height = 497
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdDBBandedTableView1: TcxGridDBBandedTableView
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
          DataController.DataSource = dtsdetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Tipo Equipamento'
            end>
          object grdDBBandedTableView1CDTPEQUIPAMENTO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDTPEQUIPAMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDBBandedTableView1NMTPEQUIPAMENTO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMTPEQUIPAMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object grdLevel1: TcxGridLevel
          GridView = grdDBBandedTableView1
        end
      end
    end
    object tbsconsulta: TcxTabSheet
      Caption = 'Consulta'
      ImageIndex = 41
      ExplicitHeight = 460
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 987
        Height = 38
        Align = dalTop
        BarManager = bmg1
      end
      object grdconsulta: TcxGrid
        Left = 0
        Top = 38
        Width = 987
        Height = 459
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = ''
        object tbvlocacao: TcxGridDBTableView
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
          OnCellDblClick = tbvlocacaoCellDblClick
          DataController.DataSource = dtsconsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vllocacao'
              Column = tbvlocacaovllocacao
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvlocacaoQTITEM
            end
            item
              Kind = skSum
              FieldName = 'QTSALDO'
              Column = tbvlocacaoQTSALDO
            end
            item
              Kind = skSum
              FieldName = 'QTDEVOLUCAO'
              Column = tbvlocacaoQTDEVOLUCAO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvlocacaocdmovbancario: TcxGridDBColumn
            Caption = 'Loca'#231#227'o'
            DataBinding.FieldName = 'cdlocacao'
            Styles.Content = dtmmain.cxStyle1
            Width = 82
          end
          object tbvlocacaodtinicio: TcxGridDBColumn
            Caption = 'In'#237'cio'
            DataBinding.FieldName = 'dtinicio'
            Width = 114
          end
          object tbvlocacaodtprevista: TcxGridDBColumn
            Caption = 'Previs'#227'o'
            DataBinding.FieldName = 'dtprevista'
          end
          object tbvlocacaodtfinal: TcxGridDBColumn
            Caption = 'Final'
            DataBinding.FieldName = 'dtfinal'
          end
          object tbvlocacaocdcliente: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDCLIENTE'
          end
          object tbvlocacaonmcliente: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'nmcliente'
            Width = 150
          end
          object tbvlocacaonmmovimentacao: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'nmstlocacao'
            Width = 201
          end
          object tbvlocacaonmconta: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'nmtplocacao'
            Width = 121
          end
          object tbvlocacaovllocacao: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'vllocacao'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 135
          end
          object tbvlocacaoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
          end
          object tbvlocacaoQTSALDO: TcxGridDBColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'QTSALDO'
          end
          object tbvlocacaoQTDEVOLUCAO: TcxGridDBColumn
            Caption = 'Devolu'#231#227'o'
            DataBinding.FieldName = 'QTDEVOLUCAO'
          end
        end
        object grdconsultaLevel1: TcxGridLevel
          GridView = tbvlocacao
        end
      end
    end
    object tbsjustificativastatus: TcxTabSheet
      Caption = 'Justificativa de Mudan'#231'a de Status'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memdsjustivativastatus: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSJUSTIFICATIVASTATUS'
        DataBinding.DataSource = dts
        TabOrder = 0
        Height = 497
        Width = 987
      end
    end
    object tbsdsobservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mem: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        TabOrder = 0
        Height = 497
        Width = 987
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 63
    Width = 987
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object lbltpequipamento: TLabel
      Left = 310
      Top = 22
      Width = 26
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lbltpequipamentoDblClick
    end
    object Label3: TLabel
      Left = 67
      Top = 22
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lblstequipamento: TLabel
      Left = 622
      Top = 22
      Width = 30
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
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
      Left = 67
      Top = 38
      DataBinding.DataField = 'NMEQUIPAMENTO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 243
    end
    object edtcodigo: TcxTextEdit
      Left = 4
      Top = 38
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = edtcodigoEnter
      OnKeyDown = edtcodigoKeyDown
      OnKeyPress = edtcodigoKeyPress
      Width = 63
    end
    object cbxcdtpequipamento: TcxDBLookupComboBox
      Left = 310
      Top = 37
      DataBinding.DataField = 'CDTPEQUIPAMENTO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 350
      Properties.KeyFieldNames = 'CDTPEQUIPAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPEQUIPAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = cbxcdtpequipamentoEnter
      OnExit = colorexit
      Width = 311
    end
    object cbxcdstequipamento: TcxDBLookupComboBox
      Left = 622
      Top = 37
      DataBinding.DataField = 'CDSTEQUIPAMENTO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDSTEQUIPAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTEQUIPAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = cbxcdstequipamentoEnter
      OnExit = colorexit
      Width = 107
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 632
    Top = 206
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
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actabrirtpequipamento: TAction
      Hint = 'tpequipamento'
      OnExecute = actabrirtpequipamentoExecute
    end
    object actconsultalocacao: TAction
      AutoCheck = True
      Caption = 'Loca'#231#227'o'
      GroupIndex = 1
      ImageIndex = 108
      OnExecute = actconsultalocacaoExecute
    end
    object actabrircliente: TAction
      Caption = 'actabrircliente'
      Hint = 'cliente'
      OnExecute = actabrirclienteExecute
    end
    object actabrirproduto: TAction
      Caption = 'actabrirproduto'
      Hint = 'produto'
      OnExecute = actabrirprodutoExecute
    end
    object actajustarsaldo: TAction
      Caption = 'Ajustar Saldo'
      OnExecute = actajustarsaldoExecute
    end
    object actabrirlocacao: TAction
      Caption = 'actabrirlocacao'
      Hint = 'locacao'
      OnExecute = actabrirlocacaoExecute
    end
    object actarquivo: TAction
      Caption = 'Arquivo(s)'
      OnExecute = actarquivoExecute
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
    Left = 580
    Top = 206
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
      Caption = 'equipamento'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
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
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
      FloatLeft = 431
      FloatTop = 220
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
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
          ItemName = 'dxbrsprtr2'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnimprimir'
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
    object dxbrlrgbtnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
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
    object btnlocacao: TdxBarLargeButton
      Action = actconsultalocacao
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actajustarsaldo
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actarquivo
      Category = 0
    end
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 401
    Top = 214
    object cdsCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDMODELO: TIntegerField
      FieldName = 'CDMODELO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDVSOFTBASICO: TIntegerField
      FieldName = 'CDVSOFTBASICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPEQUIPAMENTOValidate
    end
    object cdsCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFABRICANTE: TIntegerField
      FieldName = 'CDFABRICANTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFABRICANTEValidate
    end
    object cdsCDMARCA: TIntegerField
      FieldName = 'CDMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSTEQUIPAMENTO: TIntegerField
      FieldName = 'CDSTEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDSTEQUIPAMENTOValidate
    end
    object cdsCDCOR: TIntegerField
      FieldName = 'CDCOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPELETRICPNEUM: TIntegerField
      FieldName = 'CDTPELETRICPNEUM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDPRODUTOValidate
    end
    object cdsNMEQUIPAMENTO: TStringField
      FieldName = 'NMEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsNUIDENTCLIENTE: TStringField
      FieldName = 'NUIDENTCLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsNUPATRIMONIO: TStringField
      FieldName = 'NUPATRIMONIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUDIAPREVENTIVA: TIntegerField
      FieldName = 'NUDIAPREVENTIVA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUNF: TStringField
      FieldName = 'NUNF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTCOMPRA: TDateField
      FieldName = 'DTCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOMPRA: TFMTBCDField
      FieldName = 'VLCOMPRA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNUHOMOLOGATORIO: TStringField
      FieldName = 'NUHOMOLOGATORIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTHOMOLOGARIO: TDateField
      FieldName = 'DTHOMOLOGARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUFABRICACAO: TStringField
      FieldName = 'NUFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUORDSEQ: TIntegerField
      FieldName = 'NUORDSEQ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUVSOFTBASICO: TStringField
      FieldName = 'NUVSOFTBASICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNULSOFTBASICO: TStringField
      FieldName = 'NULSOFTBASICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsDSMODELO: TStringField
      FieldName = 'DSMODELO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNUANO: TIntegerField
      FieldName = 'NUANO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCERTIFICADOGARANTIA: TStringField
      FieldName = 'NUCERTIFICADOGARANTIA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDTFABRICACAO: TDateField
      FieldName = 'DTFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMREVENDEDOR: TStringField
      FieldName = 'NMREVENDEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVLEQUIPAMENTO: TFMTBCDField
      FieldName = 'VLEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsBOPERTENCEEMPRESA: TStringField
      FieldName = 'BOPERTENCEEMPRESA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsIDSETOR: TFloatField
      FieldName = 'IDSETOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPOSICAO: TIntegerField
      FieldName = 'NUPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsIMFOTO: TBlobField
      FieldName = 'IMFOTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOMEDIDOR: TStringField
      FieldName = 'BOMEDIDOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDFABRICACAO: TStringField
      FieldName = 'CDFABRICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsVLHORA: TFMTBCDField
      FieldName = 'VLHORA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNMFABRICANTE: TStringField
      FieldName = 'NMFABRICANTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdssdsitequipamentomedidor: TDataSetField
      FieldName = 'sdsitequipamentomedidor'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOAPONTAMENTOSIMULTANEO: TStringField
      FieldName = 'BOAPONTAMENTOSIMULTANEO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDSETOR: TIntegerField
      FieldName = 'CDSETOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsQTITEMValidate
    end
    object cdsQTSALDO: TIntegerField
      FieldName = 'QTSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsHRTEMPOAGENDA: TTimeField
      FieldName = 'HRTEMPOAGENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSJUSTIFICATIVASTATUS: TBlobField
      FieldName = 'DSJUSTIFICATIVASTATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsQTVELOCIDADE: TFloatField
      FieldName = 'QTVELOCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsNUCHASSI: TStringField
      FieldName = 'NUCHASSI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPEQUIPAMENTO2: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFORNECEDORValidate
    end
    object cdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCLIENTEValidate
    end
    object cdsCDEQUIPAMENTOANTIGO: TIntegerField
      FieldName = 'CDEQUIPAMENTOANTIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOCLIENTEPROPRIETARIOAVISO: TStringField
      FieldName = 'BOCLIENTEPROPRIETARIOAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 429
    Top = 214
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT E.*'#13#10',FA.NMFABRICANTE'#13#10',F.NMFORNECEDOR'#13#10',C.NMCLIENTE'#13#10',P.' +
      'NMPRODUTO '#13#10'FROM EQUIPAMENTO E'#13#10'LEFT JOIN FABRICANTE FA ON FA.CD' +
      'FABRICANTE=E.CDFABRICANTE AND FA.CDEMPRESA=E.CDEMPRESA'#13#10'LEFT JOI' +
      'N FORNECEDOR F ON F.CDFORNECEDOR=E.CDFORNECEDOR AND F.CDEMPRESA=' +
      'E.CDEMPRESA'#13#10'LEFT JOIN PRODUTO P ON P.CDPRODUTO=E.CDPRODUTO AND ' +
      'P.CDEMPRESA=E.CDEMPRESA'#13#10'LEFT JOIN CLIENTE C ON C.CDCLIENTE=E.CD' +
      'CLIENTE AND C.CDEMPRESA=E.CDEMPRESA'#13#10'WHERE E.CDEMPRESA=:CDEMPRES' +
      'A AND E.CDEQUIPAMENTO=:CDEQUIPAMENTO'
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
        Name = 'CDEQUIPAMENTO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 344
    Top = 214
    object sdsCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDMODELO: TIntegerField
      FieldName = 'CDMODELO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDVSOFTBASICO: TIntegerField
      FieldName = 'CDVSOFTBASICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFABRICANTE: TIntegerField
      FieldName = 'CDFABRICANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMARCA: TIntegerField
      FieldName = 'CDMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTEQUIPAMENTO: TIntegerField
      FieldName = 'CDSTEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOR: TIntegerField
      FieldName = 'CDCOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPELETRICPNEUM: TIntegerField
      FieldName = 'CDTPELETRICPNEUM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMEQUIPAMENTO: TStringField
      FieldName = 'NMEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsNUIDENTCLIENTE: TStringField
      FieldName = 'NUIDENTCLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsNUPATRIMONIO: TStringField
      FieldName = 'NUPATRIMONIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUDIAPREVENTIVA: TIntegerField
      FieldName = 'NUDIAPREVENTIVA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUNF: TStringField
      FieldName = 'NUNF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTCOMPRA: TDateField
      FieldName = 'DTCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOMPRA: TFMTBCDField
      FieldName = 'VLCOMPRA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNUHOMOLOGATORIO: TStringField
      FieldName = 'NUHOMOLOGATORIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTHOMOLOGARIO: TDateField
      FieldName = 'DTHOMOLOGARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUFABRICACAO: TStringField
      FieldName = 'NUFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUORDSEQ: TIntegerField
      FieldName = 'NUORDSEQ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUVSOFTBASICO: TStringField
      FieldName = 'NUVSOFTBASICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNULSOFTBASICO: TStringField
      FieldName = 'NULSOFTBASICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsDSMODELO: TStringField
      FieldName = 'DSMODELO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNUANO: TIntegerField
      FieldName = 'NUANO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCERTIFICADOGARANTIA: TStringField
      FieldName = 'NUCERTIFICADOGARANTIA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDTFABRICACAO: TDateField
      FieldName = 'DTFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMREVENDEDOR: TStringField
      FieldName = 'NMREVENDEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLEQUIPAMENTO: TFMTBCDField
      FieldName = 'VLEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsBOPERTENCEEMPRESA: TStringField
      FieldName = 'BOPERTENCEEMPRESA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsIDSETOR: TFloatField
      FieldName = 'IDSETOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPOSICAO: TIntegerField
      FieldName = 'NUPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsIMFOTO: TBlobField
      FieldName = 'IMFOTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOMEDIDOR: TStringField
      FieldName = 'BOMEDIDOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDFABRICACAO: TStringField
      FieldName = 'CDFABRICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsVLHORA: TFMTBCDField
      FieldName = 'VLHORA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNMFABRICANTE: TStringField
      FieldName = 'NMFABRICANTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsBOAPONTAMENTOSIMULTANEO: TStringField
      FieldName = 'BOAPONTAMENTOSIMULTANEO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDSETOR: TIntegerField
      FieldName = 'CDSETOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsQTSALDO: TIntegerField
      FieldName = 'QTSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsHRTEMPOAGENDA: TTimeField
      FieldName = 'HRTEMPOAGENDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSJUSTIFICATIVASTATUS: TBlobField
      FieldName = 'DSJUSTIFICATIVASTATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsQTVELOCIDADE: TFloatField
      FieldName = 'QTVELOCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sdsNUCHASSI: TStringField
      FieldName = 'NUCHASSI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPEQUIPAMENTO2: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEQUIPAMENTOANTIGO: TIntegerField
      FieldName = 'CDEQUIPAMENTOANTIGO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOCLIENTEPROPRIETARIOAVISO: TStringField
      FieldName = 'BOCLIENTEPROPRIETARIOAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 373
    Top = 214
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT * FROM TPEQUIPAMENTO WHERE CDEMPRESA=:CDEMPRESA AND CDEQU' +
      'IPAMENTO=:CDEQUIPAMENTO'
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
        Name = 'CDEQUIPAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 344
    Top = 242
    object sdsdetailCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNMTPEQUIPAMENTO: TStringField
      FieldName = 'NMTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsdetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailBOAUTORIZADA: TStringField
      FieldName = 'BOAUTORIZADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBONUSERIE: TStringField
      FieldName = 'BONUSERIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBONUPATRIMONIO: TStringField
      FieldName = 'BONUPATRIMONIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBONUPATRIMONIOO: TStringField
      FieldName = 'BONUPATRIMONIOO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOCOR: TStringField
      FieldName = 'BOCOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBONUANO: TStringField
      FieldName = 'BONUANO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBONUSERIEDUPLICADO: TStringField
      FieldName = 'BONUSERIEDUPLICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBONUSERIEO: TStringField
      FieldName = 'BONUSERIEO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOMODELO: TStringField
      FieldName = 'BOMODELO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOMARCA: TStringField
      FieldName = 'BOMARCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOPRODUTO: TStringField
      FieldName = 'BOPRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOELETRICPNEUM: TStringField
      FieldName = 'BOELETRICPNEUM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOVLEQUIPAMENTO: TStringField
      FieldName = 'BOVLEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOPERTENCEEMPRESA: TStringField
      FieldName = 'BOPERTENCEEMPRESA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOVLHORA: TStringField
      FieldName = 'BOVLHORA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOMEDIDOR: TStringField
      FieldName = 'BOMEDIDOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOEQUIPAMENTO: TStringField
      FieldName = 'BOEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDCOMPUTADOR: TIntegerField
      FieldName = 'CDCOMPUTADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDSTORDPRODUCAO: TIntegerField
      FieldName = 'CDSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailBONUCHASSI: TStringField
      FieldName = 'BONUCHASSI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBONUCHASSIO: TStringField
      FieldName = 'BONUCHASSIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBONUPLACA: TStringField
      FieldName = 'BONUPLACA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsdetailVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsdetailBOQTITEM: TStringField
      FieldName = 'BOQTITEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOCLIENTE: TStringField
      FieldName = 'BOCLIENTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOJUSTIFICATIVASTATUS: TStringField
      FieldName = 'BOJUSTIFICATIVASTATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOMARCAOBRIGATORIO: TStringField
      FieldName = 'BOMARCAOBRIGATORIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOMODELOOBRIGATORIO: TStringField
      FieldName = 'BOMODELOOBRIGATORIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOBAIXAESTOQUE: TStringField
      FieldName = 'BOBAIXAESTOQUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOAPONTAMENTO: TStringField
      FieldName = 'BOAPONTAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOBAIXAESTOQUEAUTOMATICO: TStringField
      FieldName = 'BOBAIXAESTOQUEAUTOMATICO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOTEMPERATURA: TStringField
      FieldName = 'BOTEMPERATURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOVIBRACAO: TStringField
      FieldName = 'BOVIBRACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOAPONTAMENTOTURMA: TStringField
      FieldName = 'BOAPONTAMENTOTURMA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOPESAGEM: TStringField
      FieldName = 'BOPESAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOCOMPRIMENTO: TStringField
      FieldName = 'BOCOMPRIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOREAPROVEITAR: TStringField
      FieldName = 'BOREAPROVEITAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOAPONTAMENTOTEMPO: TStringField
      FieldName = 'BOAPONTAMENTOTEMPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOEQUIPAMENTOANTERIOR: TStringField
      FieldName = 'BOEQUIPAMENTOANTERIOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOQTMISTURA: TStringField
      FieldName = 'BOQTMISTURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOPSMISTURA: TStringField
      FieldName = 'BOPSMISTURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOREFERENCIAFORMULACAO: TStringField
      FieldName = 'BOREFERENCIAFORMULACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOFAIXA: TStringField
      FieldName = 'BOFAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOQTPRODUCAO: TStringField
      FieldName = 'BOQTPRODUCAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOQTPRODUCAOPREENCHIDA: TStringField
      FieldName = 'BOQTPRODUCAOPREENCHIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOQTREFUGO: TStringField
      FieldName = 'BOQTREFUGO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOQUOCIENTE: TStringField
      FieldName = 'BOQUOCIENTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBODSOBSERVACAO: TStringField
      FieldName = 'BODSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBONUESTRUTURAL: TStringField
      FieldName = 'BONUESTRUTURAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOMANUALDATAUNICA: TStringField
      FieldName = 'BOMANUALDATAUNICA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOAPONTAMENTOROSCA: TStringField
      FieldName = 'BOAPONTAMENTOROSCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOAPONTAMENTOESTANQUEIDADE: TStringField
      FieldName = 'BOAPONTAMENTOESTANQUEIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOAPONTAMENTOTPESTADO: TStringField
      FieldName = 'BOAPONTAMENTOTPESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailTPVIEW: TStringField
      FieldName = 'TPVIEW'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailVLDIAGNOSTICO: TFMTBCDField
      FieldName = 'VLDIAGNOSTICO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsdetailBONUESTRUTURALOBRIGATORIO: TStringField
      FieldName = 'BONUESTRUTURALOBRIGATORIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOQTPECA: TStringField
      FieldName = 'BOQTPECA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOTPEQUIPAMENTO2: TStringField
      FieldName = 'BOTPEQUIPAMENTO2'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 431
    Top = 242
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 457
    Top = 214
  end
  object sdsitequipamentomedidor: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITEQUIPAMENTOMEDIDOR WHERE CDEMPRESA=:CDEMPRESA AN' +
      'D CDEQUIPAMENTO=:CDEQUIPAMENTO'
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
        Name = 'CDEQUIPAMENTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 344
    Top = 270
    object sdsitequipamentomedidorCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitequipamentomedidorDTMEDIDOR: TDateField
      FieldName = 'DTMEDIDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitequipamentomedidorNUPOSICAOI: TIntegerField
      FieldName = 'NUPOSICAOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentomedidorNUPOSICAOF: TIntegerField
      FieldName = 'NUPOSICAOF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentomedidorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentomedidorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentomedidorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentomedidorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentomedidorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentomedidorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentomedidorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitequipamentomedidor: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitequipamentomedidor
    Params = <>
    BeforePost = cdsdetailBeforePost
    OnNewRecord = cdsdetailNewRecord
    Left = 403
    Top = 271
    object cdsitequipamentomedidorCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitequipamentomedidorDTMEDIDOR: TDateField
      FieldName = 'DTMEDIDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitequipamentomedidorNUPOSICAOI: TIntegerField
      FieldName = 'NUPOSICAOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentomedidorNUPOSICAOF: TIntegerField
      FieldName = 'NUPOSICAOF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentomedidorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentomedidorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentomedidorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentomedidorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentomedidorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentomedidorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentomedidorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey, pfHidden]
      Required = True
    end
  end
  object dtsitequipamentomedidor: TDataSource
    DataSet = cdsitequipamentomedidor
    Left = 431
    Top = 271
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    PacketRecords = 0
    Params = <>
    BeforePost = cdsdetailBeforePost
    OnNewRecord = cdsdetailNewRecord
    Left = 402
    Top = 242
    object cdsdetailCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNMTPEQUIPAMENTO: TStringField
      FieldName = 'NMTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsdetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailBOAUTORIZADA: TStringField
      FieldName = 'BOAUTORIZADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBONUSERIE: TStringField
      FieldName = 'BONUSERIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBONUPATRIMONIO: TStringField
      FieldName = 'BONUPATRIMONIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBONUPATRIMONIOO: TStringField
      FieldName = 'BONUPATRIMONIOO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOCOR: TStringField
      FieldName = 'BOCOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBONUANO: TStringField
      FieldName = 'BONUANO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBONUSERIEDUPLICADO: TStringField
      FieldName = 'BONUSERIEDUPLICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBONUSERIEO: TStringField
      FieldName = 'BONUSERIEO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOMODELO: TStringField
      FieldName = 'BOMODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOMARCA: TStringField
      FieldName = 'BOMARCA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOPRODUTO: TStringField
      FieldName = 'BOPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOELETRICPNEUM: TStringField
      FieldName = 'BOELETRICPNEUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOVLEQUIPAMENTO: TStringField
      FieldName = 'BOVLEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOPERTENCEEMPRESA: TStringField
      FieldName = 'BOPERTENCEEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOVLHORA: TStringField
      FieldName = 'BOVLHORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOMEDIDOR: TStringField
      FieldName = 'BOMEDIDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOEQUIPAMENTO: TStringField
      FieldName = 'BOEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDCOMPUTADOR: TIntegerField
      FieldName = 'CDCOMPUTADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsdetailCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsdetailCDSTORDPRODUCAO: TIntegerField
      FieldName = 'CDSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsdetailBONUCHASSI: TStringField
      FieldName = 'BONUCHASSI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBONUCHASSIO: TStringField
      FieldName = 'BONUCHASSIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBONUPLACA: TStringField
      FieldName = 'BONUPLACA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 18
      Size = 2
    end
    object cdsdetailVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 18
      Size = 2
    end
    object cdsdetailBOQTITEM: TStringField
      FieldName = 'BOQTITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOCLIENTE: TStringField
      FieldName = 'BOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOJUSTIFICATIVASTATUS: TStringField
      FieldName = 'BOJUSTIFICATIVASTATUS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOMARCAOBRIGATORIO: TStringField
      FieldName = 'BOMARCAOBRIGATORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOMODELOOBRIGATORIO: TStringField
      FieldName = 'BOMODELOOBRIGATORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOBAIXAESTOQUE: TStringField
      FieldName = 'BOBAIXAESTOQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOAPONTAMENTO: TStringField
      FieldName = 'BOAPONTAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOBAIXAESTOQUEAUTOMATICO: TStringField
      FieldName = 'BOBAIXAESTOQUEAUTOMATICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOTEMPERATURA: TStringField
      FieldName = 'BOTEMPERATURA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOVIBRACAO: TStringField
      FieldName = 'BOVIBRACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOAPONTAMENTOTURMA: TStringField
      FieldName = 'BOAPONTAMENTOTURMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOPESAGEM: TStringField
      FieldName = 'BOPESAGEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOCOMPRIMENTO: TStringField
      FieldName = 'BOCOMPRIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOREAPROVEITAR: TStringField
      FieldName = 'BOREAPROVEITAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOAPONTAMENTOTEMPO: TStringField
      FieldName = 'BOAPONTAMENTOTEMPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOEQUIPAMENTOANTERIOR: TStringField
      FieldName = 'BOEQUIPAMENTOANTERIOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOQTMISTURA: TStringField
      FieldName = 'BOQTMISTURA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOPSMISTURA: TStringField
      FieldName = 'BOPSMISTURA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOREFERENCIAFORMULACAO: TStringField
      FieldName = 'BOREFERENCIAFORMULACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOFAIXA: TStringField
      FieldName = 'BOFAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOQTPRODUCAO: TStringField
      FieldName = 'BOQTPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOQTPRODUCAOPREENCHIDA: TStringField
      FieldName = 'BOQTPRODUCAOPREENCHIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOQTREFUGO: TStringField
      FieldName = 'BOQTREFUGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOQUOCIENTE: TStringField
      FieldName = 'BOQUOCIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBODSOBSERVACAO: TStringField
      FieldName = 'BODSOBSERVACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBONUESTRUTURAL: TStringField
      FieldName = 'BONUESTRUTURAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOMANUALDATAUNICA: TStringField
      FieldName = 'BOMANUALDATAUNICA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOAPONTAMENTOROSCA: TStringField
      FieldName = 'BOAPONTAMENTOROSCA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOAPONTAMENTOESTANQUEIDADE: TStringField
      FieldName = 'BOAPONTAMENTOESTANQUEIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOAPONTAMENTOTPESTADO: TStringField
      FieldName = 'BOAPONTAMENTOTPESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailTPVIEW: TStringField
      FieldName = 'TPVIEW'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailVLDIAGNOSTICO: TFMTBCDField
      FieldName = 'VLDIAGNOSTICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 18
      Size = 2
    end
    object cdsdetailBONUESTRUTURALOBRIGATORIO: TStringField
      FieldName = 'BONUESTRUTURALOBRIGATORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOQTPECA: TStringField
      FieldName = 'BOQTPECA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOTPEQUIPAMENTO2: TStringField
      FieldName = 'BOTPEQUIPAMENTO2'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
  end
  object dtsconsulta: TDataSource
    Left = 719
    Top = 210
  end
end

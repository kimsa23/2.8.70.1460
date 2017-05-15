object frmOrdCompra: TfrmOrdCompra
  Left = 354
  Top = 114
  ClientHeight = 631
  ClientWidth = 1048
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
  object pnl: TPanel
    Left = 0
    Top = 63
    Width = 1048
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
  end
  object pnl1: TPanel
    Left = 0
    Top = 82
    Width = 1048
    Height = 264
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 0
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 72
      Top = 0
      Width = 53
      Height = 13
      Caption = 'Dt Emiss'#227'o'
      Transparent = True
    end
    object Label3: TLabel
      Left = 154
      Top = 0
      Width = 51
      Height = 13
      Caption = 'Dt Entrega'
      Transparent = True
    end
    object lblcondpagto: TLabel
      Left = 408
      Top = 0
      Width = 67
      Height = 13
      Caption = 'Cond Pagto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcondpagtoDblClick
    end
    object lbltpordcompra: TLabel
      Left = 278
      Top = 0
      Width = 26
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lbltpordcompraDblClick
    end
    object lblnudias: TLabel
      Left = 236
      Top = -1
      Width = 34
      Height = 13
      Caption = 'N'#186' dias'
      Transparent = True
    end
    object Label17: TLabel
      Left = 730
      Top = 0
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object Label23: TLabel
      Left = 566
      Top = 0
      Width = 46
      Height = 13
      Caption = 'Cobran'#231'a'
      Transparent = True
    end
    object lblPedidoMaterial: TLabel
      Left = 821
      Top = 0
      Width = 73
      Height = 13
      Caption = 'Pedido Material'
      Transparent = True
    end
    object cbxcdcondpagto: TcxDBLookupComboBox
      Left = 408
      Top = 14
      DataBinding.DataField = 'CDCONDPAGTO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDCONDPAGTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMCONDPAGTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = cbxcdcondpagtoEnter
      OnExit = colorExit
      OnKeyDown = nextcontrol
      Width = 156
    end
    object cbxcdtpordcompra: TcxDBLookupComboBox
      Left = 278
      Top = 14
      DataBinding.DataField = 'CDTPORDCOMPRA'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDTPORDCOMPRA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPORDCOMPRA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = cbxcdtpordcompraEnter
      OnExit = colorExit
      OnKeyDown = nextcontrol
      Width = 129
    end
    object edtdtentrega: TcxDBDateEdit
      Left = 154
      Top = 14
      DataBinding.DataField = 'DTENTREGA'
      DataBinding.DataSource = dts
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorEnter
      OnExit = edtdtentregaExit
      OnKeyDown = nextcontrol
      Width = 83
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 72
      Top = 14
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorEnter
      OnExit = colorExit
      OnKeyDown = nextcontrol
      Width = 82
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 14
      Properties.OnChange = edtcodigoPropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 70
    end
    object gbxfornecedor: TcxGroupBox
      Left = 3
      Top = 39
      Caption = 'Fornecedor'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Height = 50
      Width = 785
      object txtnmfornecedor: TDBText
        Left = 119
        Top = 15
        Width = 279
        Height = 17
        DataField = 'NMFORNECEDOR'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = True
        OnDblClick = txtnmfornecedorDblClick
      end
      object lblvendedor: TLabel
        Left = 397
        Top = 15
        Width = 46
        Height = 13
        Caption = 'Vendedor'
        Transparent = True
      end
      object lblemail: TDBText
        Left = 620
        Top = 14
        Width = 157
        Height = 17
        DataField = 'EMAIL'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = True
      end
      object lblclfornecedor: TLabel
        Left = 3
        Top = 33
        Width = 82
        Height = 13
        Caption = 'Classifica'#231#227'o IQF'
        Transparent = True
      end
      object txtnmclfornecedor: TDBText
        Left = 119
        Top = 32
        Width = 279
        Height = 17
        DataField = 'NMCLFORNECEDOR'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = True
        OnDblClick = txtnmfornecedorDblClick
      end
      object edtcdfornecedor: TcxDBButtonEdit
        Left = 3
        Top = 13
        DataBinding.DataField = 'CDFORNECEDOR'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdfornecedorPropertiesButtonClick
        Properties.OnChange = edtcdfornecedorPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorEnter
        OnExit = edtcdfornecedorExit
        OnKeyDown = edtcdfornecedorKeyDown
        OnKeyPress = eventokeypress
        Width = 115
      end
      object cbxcditcontfornecedor: TcxDBLookupComboBox
        Left = 446
        Top = 12
        DataBinding.DataField = 'CDITCONTFORNECEDOR'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'CDITCONTFORNECEDOR'
        Properties.ListColumns = <
          item
            FieldName = 'NMITCONTFORNECEDOR'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dtsitcontfornecedor
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 171
      end
    end
    object edtnudias: TcxDBSpinEdit
      Left = 236
      Top = 14
      DataBinding.DataField = 'nudias'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorEnter
      OnExit = edtnudiasExit
      OnKeyDown = nextcontrol
      Width = 43
    end
    object txtnmstordcompra: TcxDBLabel
      Left = 730
      Top = 14
      DataBinding.DataField = 'NMSTORDCOMPRA'
      DataBinding.DataSource = dts
      Style.TextColor = clBlue
      Transparent = True
      Height = 21
      Width = 89
    end
    object gbxentrega: TcxGroupBox
      Left = 3
      Top = 96
      Caption = 'Entrega'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Height = 121
      Width = 391
      object Label6: TLabel
        Left = 4
        Top = 17
        Width = 26
        Height = 13
        Caption = 'Local'
        Transparent = True
      end
      object Label9: TLabel
        Left = 4
        Top = 37
        Width = 51
        Height = 13
        Caption = 'Comprador'
        Transparent = True
      end
      object Label16: TLabel
        Left = 4
        Top = 60
        Width = 24
        Height = 13
        Caption = 'Frete'
        Transparent = True
      end
      object Label10: TLabel
        Left = 204
        Top = 60
        Width = 24
        Height = 13
        Caption = 'Valor'
        Transparent = True
      end
      object txtNMFORNECEDORTRANSPORTADORA: TDBText
        Left = 158
        Top = 79
        Width = 225
        Height = 17
        DataField = 'NMFORNECEDORTRANSPORTADORA'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = True
      end
      object lbl2: TLabel
        Left = 4
        Top = 78
        Width = 72
        Height = 13
        Caption = 'Transportadora'
        Transparent = True
      end
      object lblPSFRETE: TLabel
        Left = 204
        Top = 99
        Width = 24
        Height = 13
        Caption = 'Peso'
        Transparent = True
      end
      object edtdslocal: TcxDBTextEdit
        Left = 56
        Top = 14
        DataBinding.DataField = 'DSLOCAL'
        DataBinding.DataSource = dts
        TabOrder = 6
        OnEnter = colorEnter
        OnExit = colorExit
        Width = 331
      end
      object cbxcdcntcustoentrega: TcxDBLookupComboBox
        Left = 56
        Top = 14
        DataBinding.DataField = 'CDCNTCUSTOENTREGA'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 400
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
        TabOrder = 0
        OnEnter = cbxcdcntcustoentregaEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 331
      end
      object cbxCDFUNCIONARIOCONTATO: TcxDBLookupComboBox
        Left = 56
        Top = 34
        DataBinding.DataField = 'CDFUNCIONARIOCONTATO'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 400
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
        TabOrder = 1
        OnEnter = cbxCDFUNCIONARIOCONTATOEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 331
      end
      object cbxcdtpfrete: TcxDBLookupComboBox
        Left = 56
        Top = 55
        DataBinding.DataField = 'CDTPFRETE'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDTPFRETE'
        Properties.ListColumns = <
          item
            FieldName = 'NMTPFRETE'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = colorEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 145
      end
      object edtvlfrete: TcxDBCalcEdit
        Left = 232
        Top = 55
        DataBinding.DataField = 'VLFRETE'
        DataBinding.DataSource = dts
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = colorEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 154
      end
      object edtcdfornecedortransportadora: TcxDBButtonEdit
        Left = 56
        Top = 75
        DataBinding.DataField = 'CDFORNECEDORTRANSPORTADORA'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdfornecedortransportadoraPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = colorEnter
        OnExit = edtcdfornecedortransportadoraExit
        OnKeyDown = edtcdfornecedortransportadoraKeyDown
        OnKeyPress = eventokeypress
        Width = 99
      end
      object ckbbocertificado: TcxDBCheckBox
        Left = 56
        Top = 96
        Caption = 'Certificado Qualidade'
        DataBinding.DataField = 'BOCERTIFICADO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Transparent = True
      end
      object edtPSFRETE: TcxDBCalcEdit
        Left = 232
        Top = 94
        DataBinding.DataField = 'PSFRETE'
        DataBinding.DataSource = dts
        Properties.AssignedValues.DisplayFormat = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        OnEnter = colorEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 154
      end
    end
    object gbxcotacao: TcxGroupBox
      Left = 397
      Top = 96
      Caption = 'Cota'#231#227'o'
      TabOrder = 9
      Height = 121
      Width = 391
      object Label15: TLabel
        Left = 4
        Top = 21
        Width = 47
        Height = 13
        Caption = 'Aplica'#231#227'o'
        Transparent = True
      end
      object Label18: TLabel
        Left = 4
        Top = 41
        Width = 49
        Height = 13
        Caption = 'Solicitante'
        Transparent = True
      end
      object lblnusolicitacao: TLabel
        Left = 4
        Top = 62
        Width = 52
        Height = 13
        Caption = 'Solicita'#231#227'o'
        Transparent = True
      end
      object edtdsaplicacao: TcxDBTextEdit
        Left = 56
        Top = 13
        DataBinding.DataField = 'DSAPLICACAO'
        DataBinding.DataSource = dts
        TabOrder = 3
        Width = 331
      end
      object cbxcdtpaplicacao: TcxDBLookupComboBox
        Left = 56
        Top = 13
        DataBinding.DataField = 'CDTPAPLICACAO'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 400
        Properties.KeyFieldNames = 'CDTPAPLICACAO'
        Properties.ListColumns = <
          item
            FieldName = 'NMTPAPLICACAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = cbxcdtpaplicacaoEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 331
      end
      object edtdssolicitante: TcxDBTextEdit
        Left = 56
        Top = 33
        DataBinding.DataField = 'DSSOLICITANTE'
        DataBinding.DataSource = dts
        TabOrder = 4
        OnEnter = colorEnter
        OnExit = colorExit
        Width = 331
      end
      object cbxcdfuncionariosolicitante: TcxDBLookupComboBox
        Left = 56
        Top = 33
        DataBinding.DataField = 'CDFUNCIONARIOSOLICITANTE'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 400
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
        TabOrder = 1
        OnEnter = cbxcdfuncionariosolicitanteEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 331
      end
      object edtnusolicitacao: TcxDBTextEdit
        Left = 56
        Top = 54
        DataBinding.DataField = 'NUSOLICITACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = colorEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 331
      end
    end
    object gbxAprovacao: TcxGroupBox
      Left = 3
      Top = 218
      Caption = 'Aprova'#231#227'o'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Height = 42
      Width = 785
      object Label20: TLabel
        Left = 4
        Top = 22
        Width = 46
        Height = 13
        Caption = 'Aprovado'
        Transparent = True
      end
      object Label21: TLabel
        Left = 412
        Top = 22
        Width = 23
        Height = 13
        Caption = 'Data'
        Transparent = True
      end
      object cbxCDFUNCIONARIOAPROVACAO: TcxDBLookupComboBox
        Left = 54
        Top = 14
        DataBinding.DataField = 'CDFUNCIONARIOAPROVACAO'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 400
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
        TabOrder = 0
        OnEnter = cbxCDFUNCIONARIOAPROVACAOEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 331
      end
      object edtdtaprovacao: TcxDBDateEdit
        Left = 462
        Top = 14
        DataBinding.DataField = 'DTAPROVACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorEnter
        OnExit = colorExit
        OnKeyDown = nextcontrol
        Width = 83
      end
    end
    object cbxcdtpcobranca: TcxDBLookupComboBox
      Left = 565
      Top = 14
      DataBinding.DataField = 'CDTPCOBRANCA'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CDTPCOBRANCA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPCOBRANCA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = cbxcdtpcobrancaEnter
      OnExit = colorExit
      OnKeyDown = nextcontrol
      Width = 163
    end
    object txtcdpedidomaterial: TcxDBLabel
      Left = 821
      Top = 14
      DataBinding.DataField = 'CDPEDIDOMATERIAL'
      DataBinding.DataSource = dts
      Style.TextColor = clBlue
      Transparent = True
      Height = 21
      Width = 75
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 602
    Width = 1048
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object lbl1: TLabel
      Left = 488
      Top = 2
      Width = 40
      Height = 22
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblvltotal: TLabel
      Left = 544
      Top = 2
      Width = 129
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbldesconto: TLabel
      Left = 324
      Top = 12
      Width = 46
      Height = 13
      Caption = 'Desconto'
      Transparent = True
    end
    object edtvldesconto: TcxDBCalcEdit
      Left = 376
      Top = 4
      DataBinding.DataField = 'VLDESCONTO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 108
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 346
    Width = 1048
    Height = 256
    Align = alClient
    TabOrder = 7
    Properties.ActivePage = tbsproduto
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 256
    ClientRectRight = 1048
    ClientRectTop = 24
    object tbsproduto: TcxTabSheet
      Caption = 'Produto'
      ImageIndex = 0
      object grd: TcxGrid
        Left = 0
        Top = 0
        Width = 1048
        Height = 232
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbv: TcxGridDBBandedTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
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
          OnCellDblClick = tbvCellDblClick
          DataController.DataSource = dtsdetail
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTATENDIDA'
              Column = tbvQTATENDIDA
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvQTITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMS'
              Column = tbvVLICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPI'
              Column = tbvVLIPI
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvVLTOTAL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSSUBTRIB'
              Column = tbvVLICMSSUBTRIB
            end
            item
              Kind = skSum
              FieldName = 'QTPECA'
              Column = tbvQTPECA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Produto'
            end
            item
              Caption = 'Centro Custo'
            end
            item
              Caption = 'Plano Contas'
            end
            item
              Caption = 'Quantidade'
            end
            item
              Caption = 'Valor'
            end
            item
              Caption = 'ICMS'
            end
            item
              Caption = 'IPI'
            end
            item
              Caption = 'Aplica'#231#227'o'
            end
            item
              Caption = 'KM'
            end>
          object tbvCDDIGITADO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = colDBBandedTableView1CDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNMPRODUTO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Editing = False
            Options.Focusing = False
            Width = 256
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvDTPREVENTREGA: TcxGridDBBandedColumn
            Caption = 'Prev Entrega'
            DataBinding.FieldName = 'DTPREVENTREGA'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvDSOBSERVACAO: TcxGridDBBandedColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvCDORDPRODUCAO: TcxGridDBBandedColumn
            Caption = 'Ord Prod'
            DataBinding.FieldName = 'CDORDPRODUCAO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvCDORDPRODUCAOPropertiesButtonClick
            Visible = False
            Styles.Content = dtmmain.cxStyle1
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvBOCERTIFICADO: TcxGridDBBandedColumn
            Caption = 'Certificado'
            DataBinding.FieldName = 'BOCERTIFICADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvCDORCAMENTO: TcxGridDBBandedColumn
            Caption = 'Or'#231'amento'
            DataBinding.FieldName = 'CDORCAMENTO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvCDORCAMENTOPropertiesButtonClick
            Visible = False
            Styles.Content = dtmmain.cxStyle1
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tbvNUCNTCUSTO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'NUCNTCUSTO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvNUCNTCUSTOPropertiesButtonClick
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNMCNTCUSTO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMCNTCUSTO'
            Options.Focusing = False
            Width = 200
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvNUPLCONTA: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'NUPLCONTA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvNUPLCONTAPropertiesButtonClick
            Width = 100
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNMPLCONTA: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPLCONTA'
            Options.Focusing = False
            Width = 200
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvQTITEM: TcxGridDBBandedColumn
            Caption = 'Qtd'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 53
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvQTATENDIDA: TcxGridDBBandedColumn
            Caption = 'Atendida'
            DataBinding.FieldName = 'QTATENDIDA'
            Options.Editing = False
            Options.Focusing = False
            Width = 53
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvDSFORMULA: TcxGridDBBandedColumn
            Caption = 'F'#243'rmula'
            DataBinding.FieldName = 'DSFORMULA'
            Options.Editing = False
            Options.Focusing = False
            Width = 160
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvQTPECA: TcxGridDBBandedColumn
            Caption = 'Pe'#231'a'
            DataBinding.FieldName = 'QTPECA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvQTPESOUNITARIO: TcxGridDBBandedColumn
            Caption = 'Peso Unit'
            DataBinding.FieldName = 'QTPESOUNITARIO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvQTPESOUNITARIOPropertiesButtonClick
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvVLPECA: TcxGridDBBandedColumn
            Caption = 'Valor Pe'#231'a'
            DataBinding.FieldName = 'VLPECA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvVLUNITARIO: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 80
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvVLTOTAL: TcxGridDBBandedColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvALICMS: TcxGridDBBandedColumn
            Caption = 'Aliq'
            DataBinding.FieldName = 'ALICMS'
            Width = 32
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvVLICMS: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLICMS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Width = 70
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvVLICMSSUBTRIB: TcxGridDBBandedColumn
            Caption = 'Sub Trib'
            DataBinding.FieldName = 'VLICMSSUBTRIB'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvALIPI: TcxGridDBBandedColumn
            Caption = 'Aliq'
            DataBinding.FieldName = 'ALIPI'
            Width = 32
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvVLIPI: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLIPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
            Width = 70
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvBOIPIBCICMS: TcxGridDBBandedColumn
            Caption = 'IPI base ICMS'
            DataBinding.FieldName = 'BOIPIBCICMS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 78
            Position.BandIndex = 6
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvCDTPAPLICACAO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDTPAPLICACAO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = colDBBandedTableView1CDTPAPLICACAOPropertiesButtonClick
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNMTPAPLICACAO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMTPAPLICACAO'
            Options.Editing = False
            Options.Focusing = False
            Width = 250
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvNUKMATUAL: TcxGridDBBandedColumn
            Caption = 'Atual'
            DataBinding.FieldName = 'NUKMATUAL'
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvNUKMFINAL: TcxGridDBBandedColumn
            Caption = 'Final'
            DataBinding.FieldName = 'NUKMFINAL'
            Position.BandIndex = 8
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvNUCLFISCAL: TcxGridDBBandedColumn
            Caption = 'NCM'
            DataBinding.FieldName = 'NUCLFISCAL'
            Options.Editing = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tbvnusticms: TcxGridDBBandedColumn
            Caption = 'St ICMS'
            DataBinding.FieldName = 'NUSTICMS'
            Options.Editing = False
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        object grlLevel1: TcxGridLevel
          GridView = tbv
        end
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 1
      object mem1: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        TabOrder = 0
        Height = 232
        Width = 1048
      end
    end
    object tbsautpagto: TcxTabSheet
      Caption = 'Contas a Pagar'
      ImageIndex = 2
      object grdordcompraautapgto: TcxGrid
        Left = 0
        Top = 0
        Width = 1048
        Height = 232
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object btvordcompraautpagto: TcxGridDBBandedTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dtsordcompraautpagto
          DataController.Filter.IgnoreOrigin = False
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLORDCOMPRAAUTPAGTO'
              Column = btvordcompraautpagtoVLORDCOMPRAAUTPAGTO
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnMRUItemsList = False
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object btvordcompraautpagtoVLORDCOMPRAAUTPAGTO: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLORDCOMPRAAUTPAGTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 173
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object btvordcompraautpagtoDTPRORROGACAO: TcxGridDBBandedColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'DTPRORROGACAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 94
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = btvordcompraautpagto
        end
      end
    end
    object tbsentrada: TcxTabSheet
      Caption = 'Compra'
      ImageIndex = 3
      object grdconsulta: TcxGrid
        Left = 0
        Top = 0
        Width = 1048
        Height = 232
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdconsultaDBTableView1: TcxGridDBTableView
          OnDblClick = grdconsultaDBTableView1DblClick
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
              FieldName = 'VLICMS'
              Column = grdconsultaDBTableView1VLICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPI'
              Column = grdconsultaDBTableView1VLIPI
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grdconsultaDBTableView1VLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object grdconsultaDBTableView1NUENTRADA: TcxGridDBColumn
            Caption = 'Compra'
            DataBinding.FieldName = 'NUENTRADA'
            Styles.Content = dtmmain.cxStyle1
          end
          object grdconsultaDBTableView1DTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object grdconsultaDBTableView1DTENTRADA: TcxGridDBColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'DTENTRADA'
          end
          object grdconsultaDBTableView1VLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdconsultaDBTableView1VLICMS: TcxGridDBColumn
            Caption = 'ICMS'
            DataBinding.FieldName = 'VLICMS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdconsultaDBTableView1VLIPI: TcxGridDBColumn
            Caption = 'IPI'
            DataBinding.FieldName = 'VLIPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdconsultaLevel1: TcxGridLevel
          GridView = grdconsultaDBTableView1
        end
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 888
    Top = 424
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
    object actGerarCompra: TAction
      Caption = 'Gerar compra'
      Enabled = False
      Hint = 'Gerar Compra'
      ImageIndex = 27
      ShortCut = 16455
      OnExecute = actGerarCompraExecute
    end
    object actAbrirFornecedor: TAction
      Hint = 'Fornecedor'
      OnExecute = actAbrirFornecedorExecute
    end
    object actAbrirTransportadora: TAction
      Hint = 'transportadora'
      OnExecute = actAbrirTransportadoraExecute
    end
    object actAbrirProduto: TAction
      Hint = 'Produto'
      OnExecute = actAbrirProdutoExecute
    end
    object actabrirentrada: TAction
      Hint = 'entrada'
      OnExecute = actabrirentradaExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actimprimirModelo1: TAction
      Caption = '323 - Modelo 1'
      OnExecute = actimprimirModelo1Execute
    end
    object actimprimirmodelo2: TAction
      Caption = '313 - Modelo 2'
      OnExecute = actimprimirmodelo2Execute
    end
    object actimprimirmodelo3: TAction
      Caption = '314 - Modelo 3'
      OnExecute = actimprimirmodelo3Execute
    end
    object actavaliacaoiqf: TAction
      Caption = 'IQF'
      Enabled = False
      ImageIndex = 143
      Visible = False
      OnExecute = actavaliacaoiqfExecute
    end
    object actimprimirmodelo4: TAction
      Caption = '337 - Modelo 4'
      OnExecute = actimprimirmodelo4Execute
    end
    object actemail: TAction
      Caption = 'e-mail'
      Enabled = False
      Hint = 'e-mail'
      ImageIndex = 146
      OnExecute = actemailExecute
    end
    object actemailmodelo4: TAction
      Caption = '337 - Modelo 4'
      OnExecute = actemailmodelo4Execute
    end
    object actemailmodelo1: TAction
      Caption = '323 - Modelo 1'
      OnExecute = actemailmodelo1Execute
    end
    object actemailmodelo2: TAction
      Caption = '313 - Modelo 2'
      OnExecute = actemailmodelo2Execute
    end
    object actemailmodelo3: TAction
      Caption = '314 - Modelo 3'
      OnExecute = actemailmodelo3Execute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
    object actatendido: TAction
      Caption = 'Atendido'
      Enabled = False
      ImageIndex = 149
      OnExecute = actatendidoExecute
    end
    object actreabrir: TAction
      Caption = 'Reabrir'
      Enabled = False
      ImageIndex = 38
      Visible = False
      OnExecute = actreabrirExecute
    end
    object actabrirordproducao: TAction
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
    end
    object actabrirorcamento: TAction
      Hint = 'orcamento'
      OnExecute = actabrirorcamentoExecute
    end
    object actdeclinar: TAction
      Caption = 'Declinar'
      Enabled = False
      ImageIndex = 111
      Visible = False
      OnExecute = actdeclinarExecute
    end
    object actabrirtpordcompra: TAction
      Hint = 'tpordcompra'
      OnExecute = actabrirtpordcompraExecute
    end
    object actabrircondpagto: TAction
      Hint = 'condpagto'
      OnExecute = actabrircondpagtoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actarquivo: TAction
      Caption = 'Arquivo(s)'
      OnExecute = actarquivoExecute
    end
    object actaprovacao: TAction
      Caption = 'Aprova'#231#227'o'
      Enabled = False
      Visible = False
      OnExecute = actaprovacaoExecute
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
    Left = 860
    Top = 424
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
      Caption = 'ordcompra'
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
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'btnemail'
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
    object dxBarButton1: TdxBarButton
      Action = actimprimirModelo1
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actGerarCompra
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actimprimirmodelo2
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actimprimirmodelo3
      Category = 0
    end
    object btn1: TdxBarLargeButton
      Action = actavaliacaoiqf
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actimprimirmodelo4
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actemailmodelo4
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actemailmodelo3
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actemailmodelo1
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actemailmodelo2
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actatendido
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actreabrir
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actdeclinar
      Category = 0
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object btnemail: TdxBarLargeButton
      Action = actemail
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumemail
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton5: TdxBarButton
      Action = actarquivo
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actaprovacao
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT O.*'#13#10',NMSTORDCOMPRA'#13#10',IPF.NUCOTACAO'#13#10',F.NMFORNECEDOR'#13#10',I.' +
      'EMAIL'#13#10',T.NMFORNECEDOR NMFORNECEDORTRANSPORTADORA'#13#10',T1.NMTRANSPO' +
      'RTADORA'#13#10',C.NMCLFORNECEDOR'#13#10'FROM ORDCOMPRA O '#13#10'LEFT JOIN STORDCO' +
      'MPRA ST ON ST.CDSTORDCOMPRA=O.CDSTORDCOMPRA '#13#10'LEFT JOIN FORNECED' +
      'OR F ON F.CDFORNECEDOR=O.CDFORNECEDOR AND F.CDEMPRESA=O.CDEMPRES' +
      'A'#13#10'LEFT JOIN TRANSPORTADORA T1 ON T1.CDTRANSPORTADORA=O.CDTRANSP' +
      'ORTADORA AND T1.CDEMPRESA=O.CDEMPRESA '#13#10'LEFT JOIN CLFORNECEDOR C' +
      ' ON C.CDCLFORNECEDOR=F.CDCLFORNECEDOR '#13#10'LEFT JOIN FORNECEDOR T O' +
      'N T.CDFORNECEDOR=O.CDFORNECEDORTRANSPORTADORA AND T.CDEMPRESA=O.' +
      'CDEMPRESA'#13#10'LEFT JOIN ITCONTFORNECEDOR I ON I.CDITCONTFORNECEDOR=' +
      'O.CDITCONTFORNECEDOR AND I.CDEMPRESA=O.CDEMPRESA'#13#10'LEFT JOIN PEDI' +
      'DOMATERIALFORNECEDOR IPF ON IPF.CDORDCOMPRA=O.CDORDCOMPRA AND IP' +
      'F.CDEMPRESA=O.CDEMPRESA'#13#10'WHERE O.CDEMPRESA=:CDEMPRESA AND O.CDOR' +
      'DCOMPRA=:CDORDCOMPRA'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'CDORDCOMPRA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 739
    Top = 105
    object sdsCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDSTORDCOMPRA: TIntegerField
      FieldName = 'CDSTORDCOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPORDCOMPRA: TIntegerField
      FieldName = 'CDTPORDCOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDFUNCIONARIOSOLICITANTE: TIntegerField
      FieldName = 'CDFUNCIONARIOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIOAPROVACAO: TIntegerField
      FieldName = 'CDFUNCIONARIOAPROVACAO'
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
    object sdsCDFUNCIONARIOCONTATO: TIntegerField
      FieldName = 'CDFUNCIONARIOCONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPAPLICACAO: TIntegerField
      FieldName = 'CDTPAPLICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTAPROVACAO: TDateField
      FieldName = 'DTAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUSOLICITACAO: TStringField
      FieldName = 'NUSOLICITACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsPRENTREGA: TStringField
      FieldName = 'PRENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object sdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNMSTORDCOMPRA: TStringField
      FieldName = 'NMSTORDCOMPRA'
      ProviderFlags = []
      Size = 100
    end
    object sdsNUCOTACAO: TIntegerField
      FieldName = 'NUCOTACAO'
      ProviderFlags = []
    end
    object sdsDSSOLICITANTE: TStringField
      FieldName = 'DSSOLICITANTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsCDFINALIDADEORDCOMPRA: TIntegerField
      FieldName = 'CDFINALIDADEORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPFORNECEDOR: TIntegerField
      FieldName = 'CDTPFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCNTCUSTOENTREGA: TIntegerField
      FieldName = 'CDCNTCUSTOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSAPLICACAO: TStringField
      FieldName = 'DSAPLICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsDSLOCAL: TStringField
      FieldName = 'DSLOCAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMFORNECEDORTRANSPORTADORA: TStringField
      FieldName = 'NMFORNECEDORTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDITCONTFORNECEDOR: TIntegerField
      FieldName = 'CDITCONTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = []
      Size = 100
    end
    object sdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNMCLFORNECEDOR: TStringField
      FieldName = 'NMCLFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsBOCERTIFICADO: TStringField
      FieldName = 'BOCERTIFICADO'
      FixedChar = True
      Size = 1
    end
    object sdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object sdsPSFRETE: TFloatField
      FieldName = 'PSFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOFINANCEIRO: TStringField
      FieldName = 'BOFINANCEIRO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBOCONTROLERECEBIMENTO: TStringField
      FieldName = 'BOCONTROLERECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDFORNECEDORTRANSPORTADORA: TLargeintField
      FieldName = 'CDFORNECEDORTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTPIPI: TIntegerField
      FieldName = 'CDTPIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTFECHAMENTO: TDateField
      FieldName = 'DTFECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 826
    Top = 105
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 854
    Top = 105
    object cdsCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDSTORDCOMPRA: TIntegerField
      FieldName = 'CDSTORDCOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDPEDIDOMATERIAL: TIntegerField
      FieldName = 'CDPEDIDOMATERIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPORDCOMPRA: TIntegerField
      FieldName = 'CDTPORDCOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPORDCOMPRAValidate
    end
    object cdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDCONDPAGTOValidate
    end
    object cdsCDFUNCIONARIOSOLICITANTE: TIntegerField
      FieldName = 'CDFUNCIONARIOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIOAPROVACAO: TIntegerField
      FieldName = 'CDFUNCIONARIOAPROVACAO'
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
    object cdsCDFUNCIONARIOCONTATO: TIntegerField
      FieldName = 'CDFUNCIONARIOCONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPAPLICACAO: TIntegerField
      FieldName = 'CDTPAPLICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsDTENTREGAChange
    end
    object cdsDTAPROVACAO: TDateField
      FieldName = 'DTAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUSOLICITACAO: TStringField
      FieldName = 'NUSOLICITACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsPRENTREGA: TStringField
      FieldName = 'PRENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object cdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLFRETEValidate
      Precision = 15
      Size = 2
    end
    object cdsNMSTORDCOMPRA: TStringField
      FieldName = 'NMSTORDCOMPRA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNUCOTACAO: TIntegerField
      FieldName = 'NUCOTACAO'
      ProviderFlags = []
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
    end
    object cdsDSSOLICITANTE: TStringField
      FieldName = 'DSSOLICITANTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsCDFINALIDADEORDCOMPRA: TIntegerField
      FieldName = 'CDFINALIDADEORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPFORNECEDOR: TIntegerField
      FieldName = 'CDTPFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCNTCUSTOENTREGA: TIntegerField
      FieldName = 'CDCNTCUSTOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSAPLICACAO: TStringField
      FieldName = 'DSAPLICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDSLOCAL: TStringField
      FieldName = 'DSLOCAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMFORNECEDORTRANSPORTADORA: TStringField
      FieldName = 'NMFORNECEDORTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLDESCONTOValidate
      Precision = 15
      Size = 2
    end
    object cdsCDITCONTFORNECEDOR: TIntegerField
      FieldName = 'CDITCONTFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDITCONTFORNECEDORValidate
    end
    object cdsEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = []
      Size = 100
    end
    object cdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdssdsordcompraautpagto: TDataSetField
      FieldName = 'sdsordcompraautpagto'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMCLFORNECEDOR: TStringField
      FieldName = 'NMCLFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsBOCERTIFICADO: TStringField
      FieldName = 'BOCERTIFICADO'
      FixedChar = True
      Size = 1
    end
    object cdssdsconsulta: TDataSetField
      FieldName = 'sdsconsulta'
      ProviderFlags = []
    end
    object cdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object cdsPSFRETE: TFloatField
      FieldName = 'PSFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOFINANCEIRO: TStringField
      FieldName = 'BOFINANCEIRO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBOCONTROLERECEBIMENTO: TStringField
      FieldName = 'BOCONTROLERECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPFRETEValidate
      Size = 1
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDFORNECEDORTRANSPORTADORA: TLargeintField
      FieldName = 'CDFORNECEDORTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFORNECEDORTRANSPORTADORAValidate
    end
    object cdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDFORNECEDORValidate
    end
    object cdsCDTPIPI: TIntegerField
      FieldName = 'CDTPIPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTRANSPORTADORAValidate
    end
    object cdsDTFECHAMENTO: TDateField
      FieldName = 'DTFECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dts: TDataSource
    DataSet = cds
    Left = 972
    Top = 105
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 1000
    Top = 105
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 972
    Top = 156
  end
  object cdsdetail: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'vltotal'
        Expression = 'sum(vltotal)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'vlicms'
        Expression = 'sum(vlicms)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'vlipi'
        Expression = 'sum(vlipi)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'vlicmssubtrib'
        Expression = 'sum(vlicmssubtrib)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    AfterPost = cdsdetailAfterPost
    OnNewRecord = cdsdetailNewRecord
    Left = 854
    Top = 132
    object cdsdetailCDITORDCOMPRA: TIntegerField
      FieldName = 'CDITORDCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
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
    end
    object cdsdetailCDTPAPLICACAO: TIntegerField
      FieldName = 'CDTPAPLICACAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDTPAPLICACAOValidate
    end
    object cdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDDIGITADOValidate
      Size = 30
    end
    object cdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailQTITEMValidate
    end
    object cdsdetailQTATENDIDA: TFloatField
      FieldName = 'QTATENDIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsdetailQTITEMValidate
      Precision = 15
    end
    object cdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsdetailALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailALICMSValidate
    end
    object cdsdetailVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailALIPIValidate
    end
    object cdsdetailVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
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
    object cdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsdetailNMTPAPLICACAO: TStringField
      FieldName = 'NMTPAPLICACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsdetailCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailBOCERTIFICADO: TStringField
      FieldName = 'BOCERTIFICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsdetailVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailBOIPIBCICMS: TStringField
      FieldName = 'BOIPIBCICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailALICMSValidate
      FixedChar = True
      Size = 1
    end
    object cdsdetailQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTPECAValidate
    end
    object cdsdetailQTPESOUNITARIO: TFloatField
      FieldName = 'QTPESOUNITARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTPECAValidate
    end
    object cdsdetailVLPECA: TFMTBCDField
      FieldName = 'VLPECA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailVLPECAValidate
      Precision = 15
      Size = 2
    end
    object cdsdetailNUKMATUAL: TIntegerField
      FieldName = 'NUKMATUAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailNUKMATUALValidate
    end
    object cdsdetailNUKMFINAL: TIntegerField
      FieldName = 'NUKMFINAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailNUKMFINALValidate
    end
    object cdsdetailCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailNUPLCONTAValidate
      Size = 100
    end
    object cdsdetailNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailNUITORDCOMPRA: TIntegerField
      FieldName = 'NUITORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailNUCNTCUSTOValidate
      Size = 100
    end
    object cdsdetailNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDORDPRODUCAOValidate
    end
    object cdsdetailNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object cdsdetailNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = []
      Size = 3
    end
    object cdsdetailCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDORCAMENTOValidate
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT I.*,NMPRODUTO,P.NUCLFISCAL,P.NUSTICMS,NMTPAPLICACAO'#13#10',NMP' +
      'LCONTA'#13#10',NMCNTCUSTO'#13#10'FROM ITORDCOMPRA I'#13#10'LEFT JOIN PRODUTO P ON ' +
      'P.CDPRODUTO=I.CDPRODUTO AND P.CDEMPRESA=I.CDEMPRESA'#13#10'LEFT JOIN T' +
      'PAPLICACAO T ON T.CDTPAPLICACAO=I.CDTPAPLICACAO AND T.CDEMPRESA=' +
      'I.CDEMPRESA'#13#10'LEFT JOIN PLCONTA L ON L.CDEMPRESA=I.CDEMPRESA AND ' +
      'L.CDPLCONTA=I.CDPLCONTA'#13#10'LEFT JOIN CNTCUSTO C ON C.CDEMPRESA=I.C' +
      'DEMPRESA AND C.CDCNTCUSTO=I.CDCNTCUSTO'#13#10'WHERE I.CDEMPRESA=:CDEMP' +
      'RESA AND I.CDORDCOMPRA=:CDORDCOMPRA'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDORDCOMPRA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 739
    Top = 156
    object sdsdetailCDITORDCOMPRA: TIntegerField
      FieldName = 'CDITORDCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
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
    end
    object sdsdetailCDTPAPLICACAO: TIntegerField
      FieldName = 'CDTPAPLICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailQTATENDIDA: TFloatField
      FieldName = 'QTATENDIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
    end
    object sdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsdetailALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
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
    object sdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsdetailNMTPAPLICACAO: TStringField
      FieldName = 'NMTPAPLICACAO'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDSFORMULA: TStringField
      FieldName = 'DSFORMULA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsdetailCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailBOCERTIFICADO: TStringField
      FieldName = 'BOCERTIFICADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailBOIPIBCICMS: TStringField
      FieldName = 'BOIPIBCICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsdetailQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTPESOUNITARIO: TFloatField
      FieldName = 'QTPESOUNITARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLPECA: TFMTBCDField
      FieldName = 'VLPECA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailNUKMATUAL: TIntegerField
      FieldName = 'NUKMATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUKMFINAL: TIntegerField
      FieldName = 'NUKMFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsdetailNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailNUITORDCOMPRA: TIntegerField
      FieldName = 'NUITORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsdetailNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object sdsdetailNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = []
      Size = 3
    end
    object sdsdetailCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sdsitcontfornecedor: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT CDITCONTFORNECEDOR,NMITCONTFORNECEDOR FROM ITCONTFORNECED' +
      'OR WHERE CDEMPRESA=:CDEMPRESA AND CDFORNECEDOR=:CDFORNECEDOR'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CDFORNECEDOR'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 687
    Top = 306
  end
  object dspitcontfornecedor: TDataSetProvider
    DataSet = sdsitcontfornecedor
    Left = 788
    Top = 306
  end
  object cdsitcontfornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitcontfornecedor'
    Left = 886
    Top = 306
  end
  object dtsitcontfornecedor: TDataSource
    DataSet = cdsitcontfornecedor
    Left = 985
    Top = 306
  end
  object sdsordcompraautpagto: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM ORDCOMPRAAUTPAGTO '#13#10'WHERE CDEMPRESA=:CDEMPRESA AN' +
      'D CDORDCOMPRA=:CDORDCOMPRA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDORDCOMPRA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 739
    Top = 206
    object sdsordcompraautpagtoCDORDCOMPRAAUTPAGTO: TIntegerField
      FieldName = 'CDORDCOMPRAAUTPAGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsordcompraautpagtoCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordcompraautpagtoVLORDCOMPRAAUTPAGTO: TFMTBCDField
      FieldName = 'VLORDCOMPRAAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsordcompraautpagtoDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordcompraautpagtoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordcompraautpagtoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordcompraautpagtoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordcompraautpagtoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordcompraautpagtoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordcompraautpagtoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordcompraautpagtoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordcompraautpagtoVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsordcompraautpagtoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsordcompraautpagto: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'vlordcompraautpagto'
        Expression = 'sum(vlordcompraautpagto)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdssdsordcompraautpagto
    Params = <>
    BeforePost = cdsordcompraautpagtoBeforePost
    OnNewRecord = cdsordcompraautpagtoNewRecord
    Left = 854
    Top = 206
    object cdsordcompraautpagtoCDORDCOMPRAAUTPAGTO: TIntegerField
      FieldName = 'CDORDCOMPRAAUTPAGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsordcompraautpagtoCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordcompraautpagtoVLORDCOMPRAAUTPAGTO: TFMTBCDField
      FieldName = 'VLORDCOMPRAAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsordcompraautpagtoDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordcompraautpagtoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordcompraautpagtoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordcompraautpagtoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordcompraautpagtoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordcompraautpagtoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordcompraautpagtoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordcompraautpagtoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordcompraautpagtoVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsordcompraautpagtoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsordcompraautpagto: TDataSource
    DataSet = cdsordcompraautpagto
    Left = 972
    Top = 206
  end
  object sdsconsulta: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT E.CDENTRADA'#13#10',E.NUENTRADA'#13#10',E.DTEMISSAO'#13#10',E.DTENTRADA'#13#10',S' +
      'UM(I.VLTOTAL) VLTOTAL'#13#10',SUM(I.VLICMS) VLICMS'#13#10',SUM(I.VLIPI) VLIP' +
      'I '#13#10'FROM ENTRADA E '#13#10'INNER JOIN ITENTRADA I ON I.CDENTRADA=E.CDE' +
      'NTRADA AND E.CDEMPRESA=I.CDEMPRESA'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA' +
      ' AND I.CDORDCOMPRA=:CDORDCOMPRA '#13#10'GROUP BY E.CDENTRADA,E.NUENTRA' +
      'DA,E.DTEMISSAO,E.DTENTRADA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDORDCOMPRA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 739
    Top = 253
    object sdsconsultaCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = []
      Required = True
    end
    object sdsconsultaNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = []
      Required = True
    end
    object sdsconsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdsconsultaDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = []
    end
    object sdsconsultaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsconsultaVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsconsultaVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
  end
  object cdsconsulta: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsconsulta
    Params = <>
    ReadOnly = True
    Left = 854
    Top = 253
    object cdsconsultaCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = []
      Required = True
    end
    object cdsconsultaNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = []
      Required = True
    end
    object cdsconsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdsconsultaDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = []
    end
    object cdsconsultaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsconsultaVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsconsultaVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
  end
  object dtsconsulta: TDataSource
    DataSet = cdsconsulta
    Left = 972
    Top = 253
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
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 864
    Top = 472
  end
  object pumemail: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 896
    Top = 472
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
        ItemName = 'dxBarLargeButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton5'
      end
      item
        Visible = True
        ItemName = 'btn1'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end>
    UseOwnFont = False
    Left = 864
    Top = 506
  end
end

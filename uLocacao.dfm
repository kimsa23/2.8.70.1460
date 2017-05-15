object frmlocacao: Tfrmlocacao
  Left = 496
  Top = 177
  ClientHeight = 648
  ClientWidth = 1161
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
    Width = 1161
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 82
    Width = 1161
    Height = 42
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 2
      Top = 4
      Width = 57
      Height = 13
      Caption = 'N'#186' Loca'#231#227'o'
      Transparent = True
    end
    object Label2: TLabel
      Left = 151
      Top = 4
      Width = 53
      Height = 13
      Caption = 'Data In'#237'cio'
      Transparent = True
    end
    object Label3: TLabel
      Left = 385
      Top = 4
      Width = 48
      Height = 13
      Caption = 'Data Final'
      Transparent = True
    end
    object lblstlocacao: TLabel
      Left = 719
      Top = 4
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lbltpordserv: TLabel
      Left = 536
      Top = 4
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
      OnDblClick = lbltpordservDblClick
    end
    object lbldtprevista: TLabel
      Left = 303
      Top = 4
      Width = 38
      Height = 13
      Caption = 'Prevista'
      Transparent = True
    end
    object Label6: TLabel
      Left = 237
      Top = 4
      Width = 53
      Height = 13
      Caption = 'Hora In'#237'cio'
      Transparent = True
    end
    object Label13: TLabel
      Left = 470
      Top = 4
      Width = 48
      Height = 13
      Caption = 'Hora Final'
      Transparent = True
    end
    object lblcdlocacaoanterior: TLabel
      Left = 819
      Top = 4
      Width = 81
      Height = 13
      Caption = 'Loca'#231#227'o Anterior'
      Transparent = True
    end
    object txtcdlocacaoanterior: TDBText
      Left = 819
      Top = 20
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'CDLOCACAOANTERIOR'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnDblClick = txtcdlocacaoanteriorDblClick
    end
    object lblemissao: TLabel
      Left = 70
      Top = 4
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object txtdtprevista: TcxDBLabel
      Left = 303
      Top = 20
      DataBinding.DataField = 'DTPREVISTA'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 85
    end
    object cbxcdtplocacao: TcxDBLookupComboBox
      Left = 536
      Top = 18
      DataBinding.DataField = 'CDTPLOCACAO'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
      Properties.KeyFieldNames = 'CDTPLOCACAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPLOCACAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      Width = 184
    end
    object edthrfinal: TcxDBTimeEdit
      Left = 470
      Top = 18
      DataBinding.DataField = 'HRFINAL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 67
    end
    object edtdtfinal: TcxDBDateEdit
      Left = 385
      Top = 18
      DataBinding.DataField = 'DTFINAL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 86
    end
    object edthrinicio: TcxDBTimeEdit
      Left = 237
      Top = 18
      DataBinding.DataField = 'HRINICIO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 67
    end
    object edtdtinicio: TcxDBDateEdit
      Left = 151
      Top = 18
      DataBinding.DataField = 'DTINICIO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 87
    end
    object edtcodigo: TcxTextEdit
      Left = 2
      Top = 18
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtcodigoEnter
      OnKeyDown = edtcodigoKeyDown
      OnKeyPress = edtcodigoKeyPress
      Width = 70
    end
    object txtnmstlocacao: TcxDBLabel
      Left = 719
      Top = 19
      DataBinding.DataField = 'NMSTLOCACAO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 98
    end
    object txtdtemissao: TcxDBLabel
      Left = 70
      Top = 20
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 80
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 124
    Width = 1161
    Height = 162
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 2
    object lblentregue: TLabel
      Left = 3
      Top = 79
      Width = 43
      Height = 13
      Caption = 'Entregue'
    end
    object lblrecebido: TLabel
      Left = 154
      Top = 100
      Width = 46
      Height = 13
      Caption = 'Recebido'
    end
    object lblnfsaida: TLabel
      Left = 3
      Top = 102
      Width = 46
      Height = 13
      Caption = 'NF Sa'#237'da'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 3
      Top = 122
      Width = 69
      Height = 13
      Caption = 'NF Devolu'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lblcdoperador: TLabel
      Left = 3
      Top = 144
      Width = 44
      Height = 13
      Caption = 'Operador'
      Transparent = True
      Visible = False
    end
    object txtnmoperador: TDBText
      Left = 178
      Top = 144
      Width = 230
      Height = 13
      DataField = 'NMOPERADOR'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      Visible = False
    end
    object cbxcdfuncionario: TcxDBLookupComboBox
      Left = 205
      Top = 98
      DataBinding.DataField = 'CDFUNCIONARIO'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
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
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      Width = 211
    end
    object cbxcdfuncionarioentregue: TcxDBLookupComboBox
      Left = 74
      Top = 77
      DataBinding.DataField = 'CDFUNCIONARIOENTREGUE'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
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
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 342
    end
    object gbxpreventrega2: TGroupBox
      Left = 420
      Top = 1
      Width = 186
      Height = 62
      Caption = 'Previs'#227'o de Entrega'
      TabOrder = 8
    end
    object gbxCliente: TGroupBox
      Left = 8
      Top = 1
      Width = 409
      Height = 37
      Caption = 'Cliente'
      TabOrder = 0
      object lblcdcliente: TLabel
        Left = 3
        Top = 15
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnDblClick = lblcdclienteDblClick
      end
      object lblNMCLIENTE: TDBText
        Left = 145
        Top = 13
        Width = 260
        Height = 17
        DataField = 'NMCLIENTE'
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
      end
      object edtCDCLIENTE: TcxDBButtonEdit
        Left = 44
        Top = 9
        DataBinding.DataField = 'CDCLIENTE'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtCDCLIENTEPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtCDCLIENTEKeyDown
        OnKeyPress = eventokeypress
        Width = 101
      end
    end
    object gbxEquipamento: TGroupBox
      Left = 420
      Top = 1
      Width = 410
      Height = 158
      Caption = 'Equipamento'
      TabOrder = 7
      object lblcdequipamento: TLabel
        Left = 3
        Top = 18
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnDblClick = lblcdequipamentoDblClick
      end
      object Label14: TLabel
        Left = 212
        Top = -319
        Width = 238
        Height = 15
        AutoSize = False
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lblqtitem: TLabel
        Left = 165
        Top = 18
        Width = 17
        Height = 13
        Caption = 'Qtd'
        Transparent = True
      end
      object lblqtsaldo: TLabel
        Left = 263
        Top = 18
        Width = 27
        Height = 13
        Caption = 'Saldo'
        Transparent = True
      end
      object edtcdequipamento: TcxDBButtonEdit
        Left = 45
        Top = 13
        DataBinding.DataField = 'CDEQUIPAMENTO'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdequipamentoPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdequipamentoKeyDown
        OnKeyPress = eventokeypress
        Width = 121
      end
      object rceequipamento: TcxRichEdit
        Left = 2
        Top = 40
        TabStop = False
        Align = alBottom
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Lucida Console'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 116
        Width = 406
      end
      object edtqtitem: TcxDBSpinEdit
        Left = 183
        Top = 13
        DataBinding.DataField = 'QTITEM'
        DataBinding.DataSource = dts
        Properties.MinValue = 1.000000000000000000
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        OnKeyPress = eventokeypress
        Width = 81
      end
      object txtqtsaldo: TcxDBLabel
        Left = 292
        Top = 14
        DataBinding.DataField = 'QTSALDO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 21
        Width = 54
      end
      object btntrocar: TcxButton
        Left = 351
        Top = 9
        Width = 56
        Height = 25
        Action = acttrocar
        LookAndFeel.NativeStyle = False
        TabOrder = 4
      end
    end
    object gbxclientecoresponsavel: TGroupBox
      Left = 8
      Top = 39
      Width = 409
      Height = 37
      Caption = 'Cliente Co-Respons'#225'vel'
      TabOrder = 1
      object lblcdclientecoresponsavel: TLabel
        Left = 3
        Top = 19
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnDblClick = lblcdclientecoresponsavelDblClick
      end
      object lblnmclientecoresponsavel: TDBText
        Left = 144
        Top = 15
        Width = 261
        Height = 17
        DataField = 'NMCLIENTECORESPONSAVEL'
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
      end
      object edtcdclientecoresponsavel: TcxDBButtonEdit
        Left = 43
        Top = 12
        DataBinding.DataField = 'CDCLIENTECORESPONSAVEL'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdclientecoresponsavelPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdclientecoresponsavelKeyDown
        OnKeyPress = eventokeypress
        Width = 101
      end
    end
    object edtnunfsaida: TcxDBTextEdit
      Left = 74
      Top = 98
      DataBinding.DataField = 'NUNFSAIDA'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
      Properties.OnValidate = edtnunfsaidaPropertiesValidate
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      OnKeyPress = eventokeypress
      Width = 78
    end
    object edtnunfdevolucao: TcxDBTextEdit
      Left = 74
      Top = 118
      DataBinding.DataField = 'NUNFDEVOLUCAO'
      DataBinding.DataSource = dts
      Properties.OnValidate = edtnunfdevolucaoPropertiesValidate
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Visible = False
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      OnKeyPress = eventokeypress
      Width = 342
    end
    object edtcdoperador: TcxDBButtonEdit
      Left = 74
      Top = 138
      DataBinding.DataField = 'CDOPERADOR'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdoperadorPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Visible = False
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdoperadorKeyDown
      OnKeyPress = eventokeypress
      Width = 101
    end
  end
  object pnldesconto: TPanel
    Left = 0
    Top = 576
    Width = 1161
    Height = 72
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object Label15: TLabel
      Left = 477
      Top = 6
      Width = 66
      Height = 19
      Caption = 'Loca'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 248
      Top = 12
      Width = 36
      Height = 13
      Caption = 'N'#186' Dias'
    end
    object Label18: TLabel
      Left = 3
      Top = 6
      Width = 121
      Height = 19
      Caption = 'Vl Equipamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblvlacessorio: TLabel
      Left = 3
      Top = 30
      Width = 104
      Height = 19
      Caption = 'Vl Acess'#243'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblvlcaucao: TLabel
      Left = 3
      Top = 51
      Width = 102
      Height = 19
      Caption = 'Valor Cau'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblvlacrescimo: TLabel
      Left = 477
      Top = 30
      Width = 90
      Height = 19
      Caption = 'Acr'#233'scimos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label45: TLabel
      Left = 477
      Top = 49
      Width = 73
      Height = 19
      Caption = 'Recebido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtvlacrescimo: TcxDBCurrencyEdit
      Left = 579
      Top = 27
      DataBinding.DataField = 'VLACRESCIMO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtvlcaucao: TcxDBCurrencyEdit
      Left = 125
      Top = 49
      DataBinding.DataField = 'VLCAUCAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtvlacessorio: TcxDBCurrencyEdit
      Left = 125
      Top = 27
      DataBinding.DataField = 'VLACESSORIO'
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
    object edtvlequipamento: TcxDBCurrencyEdit
      Left = 125
      Top = 5
      DataBinding.DataField = 'VLEQUIPAMENTO'
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
    object edtvllocacao: TcxDBCurrencyEdit
      Left = 579
      Top = 5
      DataBinding.DataField = 'VLLOCACAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtnudias: TcxDBSpinEdit
      Left = 288
      Top = 5
      DataBinding.DataField = 'NUDIAS'
      DataBinding.DataSource = dts
      Properties.MinValue = 1.000000000000000000
      Properties.OnValidate = edtnudiasPropertiesValidate
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      OnKeyPress = eventokeypress
      Width = 187
    end
    object txt1: TcxDBLabel
      Left = 579
      Top = 47
      DataBinding.DataField = 'VLRECEBIDO'
      DataBinding.DataSource = dts
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.LineOptions.InnerColor = clBlue
      Properties.LineOptions.OuterColor = clBlue
      Properties.ShadowedColor = clBlue
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsNone
      Style.Color = clBlue
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -19
      Style.Font.Name = 'Arial Rounded MT Bold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.Shadow = False
      Style.TextColor = clBlue
      Style.TextStyle = []
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.Color = clBlue
      StyleDisabled.TextColor = clBlue
      Transparent = True
      Height = 23
      Width = 121
      AnchorX = 700
    end
    object btnalterarvalor: TcxButton
      Left = 703
      Top = 2
      Width = 70
      Height = 25
      Action = actalterarvalor
      LookAndFeel.NativeStyle = False
      TabOrder = 7
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 286
    Width = 1161
    Height = 290
    Align = alClient
    TabOrder = 3
    Properties.ActivePage = tbsacessorio
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 290
    ClientRectRight = 1161
    ClientRectTop = 25
    object tbsacessorio: TcxTabSheet
      Caption = 'Acess'#243'rio'
      ImageIndex = 24
      ExplicitHeight = 228
      object grditlocacaoacessorio: TcxGrid
        Left = 0
        Top = 22
        Width = 1161
        Height = 243
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grditlocacaoacessorioDBTableView1: TcxGridDBTableView
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
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          OnCellDblClick = grditlocacaoacessorioDBTableView1CellDblClick
          OnEditKeyDown = grditlocacaoacessorioDBTableView1EditKeyDown
          DataController.DataSource = dtsitlocacaoacessorio
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = grditlocacaoacessorioDBTableView1QTITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLITLOCACAOACESSORIO'
              Column = grditlocacaoacessorioDBTableView1VLITLOCACAOACESSORIO
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
          object grditlocacaoacessorioDBTableView1CDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grditlocacaoacessorioDBTableView1CDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 103
          end
          object grditlocacaoacessorioDBTableView1NMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Focusing = False
            Width = 300
          end
          object grditlocacaoacessorioDBTableView1QTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object grditlocacaoacessorioDBTableView1VLITLOCACAOACESSORIO: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLITLOCACAOACESSORIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 123
          end
          object grditlocacaoacessorioDBTableView1CDSTITLOCACAOACESSORIO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'CDSTITLOCACAOACESSORIO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDSTITLOCACAOACESSORIO'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTITLOCACAOACESSORIO'
              end>
            Properties.ListOptions.ShowHeader = False
            Options.Focusing = False
          end
          object grditlocacaoacessorioDBTableView1NMITLOCACAOACESSORIO: TcxGridDBColumn
            Caption = 'Acess'#243'rio'
            DataBinding.FieldName = 'NMITLOCACAOACESSORIO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
        end
        object grditlocacaoacessorioLevel1: TcxGridLevel
          GridView = grditlocacaoacessorioDBTableView1
        end
      end
      object bdcacessorio: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1161
        Height = 22
        Align = dalTop
        BarManager = bmg1
        Visible = False
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
        OnEnter = colorenter
        OnExit = colorexit
        Height = 265
        Width = 1161
      end
    end
    object tbsenderecoObra: TcxTabSheet
      Caption = 'Endere'#231'o Obra'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label10: TLabel
        Left = 3
        Top = 8
        Width = 21
        Height = 13
        Caption = 'CEP'
        Transparent = True
      end
      object Label11: TLabel
        Left = 3
        Top = 29
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        Transparent = True
      end
      object Label66: TLabel
        Left = 423
        Top = 27
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        Transparent = True
      end
      object Label67: TLabel
        Left = 564
        Top = 25
        Width = 64
        Height = 13
        Caption = 'Complemento'
        Transparent = True
      end
      object Label5: TLabel
        Left = 3
        Top = 50
        Width = 27
        Height = 13
        Caption = 'Bairro'
        Transparent = True
      end
      object Label7: TLabel
        Left = 423
        Top = 50
        Width = 44
        Height = 13
        Caption = 'Cx Postal'
        Transparent = True
      end
      object Label9: TLabel
        Left = 6
        Top = 71
        Width = 14
        Height = 13
        Caption = 'UF'
        Transparent = True
      end
      object Label8: TLabel
        Left = 423
        Top = 70
        Width = 33
        Height = 13
        Caption = 'Cidade'
        Transparent = True
      end
      object Label4: TLabel
        Left = 6
        Top = 89
        Width = 24
        Height = 13
        Caption = 'Fone'
        Transparent = True
      end
      object Label12: TLabel
        Left = 299
        Top = 89
        Width = 17
        Height = 13
        Caption = 'Fax'
        Transparent = True
      end
      object lblnmcontato: TLabel
        Left = 423
        Top = 89
        Width = 37
        Height = 13
        Caption = 'Contato'
        Transparent = True
      end
      object edtnufax: TcxDBMaskEdit
        Left = 341
        Top = 84
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
        Top = 84
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
        Top = 84
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
        Top = 42
        DataBinding.DataField = 'NUCXPOSTAL'
        DataBinding.DataSource = dts
        TabOrder = 5
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 85
      end
      object edtnucep: TcxDBMaskEdit
        Left = 51
        Top = 0
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
        Top = 42
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
        Top = 19
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
        Top = 19
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
        Top = 21
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
        Top = 63
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
        Top = 63
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
        Top = 84
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
      object edtnmcontato: TcxDBTextEdit
        Left = 475
        Top = 84
        DataBinding.DataField = 'NMCONTATO'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 303
      end
    end
    object tbshlocacaoequipamento: TcxTabSheet
      Caption = 'Hist'#243'rico de Equipamento'
      ImageIndex = 6
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdhlocacaoequipamento: TcxGrid
        Left = 0
        Top = 0
        Width = 1161
        Height = 265
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdhlocacaoequipamentoDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dtshlocacaoequipamento
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdhlocacaoequipamentoDBTableView1DTHISTORICO: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTHISTORICO'
          end
          object grdhlocacaoequipamentoDBTableView1HRHISTORICO: TcxGridDBColumn
            Caption = 'Hora'
            DataBinding.FieldName = 'HRHISTORICO'
          end
          object grdhlocacaoequipamentoDBTableView1DSOBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            OnGetCellHint = grdhlocacaoequipamentoDBTableView1DSOBSERVACAOGetCellHint
            Width = 150
          end
          object grdhlocacaoequipamentoDBTableView1NMFUNCIONARIO: TcxGridDBColumn
            Caption = 'Funcion'#225'rio'
            DataBinding.FieldName = 'NMFUNCIONARIO'
            Width = 150
          end
          object grdhlocacaoequipamentoDBTableView1CDEQUIPAMENTO: TcxGridDBColumn
            Caption = 'Cod Equipamento'
            DataBinding.FieldName = 'CDEQUIPAMENTO'
          end
          object grdhlocacaoequipamentoDBTableView1NUSERIE: TcxGridDBColumn
            Caption = 'N'#250'mero S'#233'rie'
            DataBinding.FieldName = 'NUSERIE'
            Width = 150
          end
          object grdhlocacaoequipamentoDBTableView1NUPATRIMONIO: TcxGridDBColumn
            Caption = 'Patrim'#244'nio'
            DataBinding.FieldName = 'NUPATRIMONIO'
            Width = 150
          end
          object grdhlocacaoequipamentoDBTableView1NMTPEQUIPAMENTO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'NMTPEQUIPAMENTO'
            Width = 150
          end
          object grdhlocacaoequipamentoDBTableView1NMMARCA: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'NMMARCA'
            Width = 150
          end
          object grdhlocacaoequipamentoDBTableView1NMMODELO: TcxGridDBColumn
            Caption = 'Modelo'
            DataBinding.FieldName = 'NMMODELO'
            Width = 150
          end
        end
        object grdhlocacaoequipamentoLevel1: TcxGridLevel
          GridView = grdhlocacaoequipamentoDBTableView1
        end
      end
    end
    object tbsRenovacao: TcxTabSheet
      Caption = 'Renova'#231#227'o'
      ImageIndex = 165
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdrenovacao: TcxGrid
        Left = 0
        Top = 0
        Width = 1161
        Height = 265
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdrenovacaoDBTableView1: TcxGridDBTableView
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
          OnCellDblClick = grdrenovacaoDBTableView1CellDblClick
          DataController.DataSource = dtsrenovacao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = grdrenovacaoDBTableView1QTITEM
            end
            item
              Kind = skSum
              FieldName = 'NUDIAS'
              Column = grdrenovacaoDBTableView1NUDIAS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLLOCACAO'
              Column = grdrenovacaoDBTableView1VLLOCACAO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdrenovacaoDBTableView1CDLOCACAO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDLOCACAO'
            Styles.Content = dtmmain.cxStyle1
          end
          object grdrenovacaoDBTableView1DTINICIO: TcxGridDBColumn
            Caption = 'Data In'#237'cio'
            DataBinding.FieldName = 'DTINICIO'
          end
          object grdrenovacaoDBTableView1HRINICIO: TcxGridDBColumn
            Caption = 'Hora In'#237'cio'
            DataBinding.FieldName = 'HRINICIO'
          end
          object grdrenovacaoDBTableView1DTFINAL: TcxGridDBColumn
            Caption = 'Data Final'
            DataBinding.FieldName = 'DTFINAL'
          end
          object grdrenovacaoDBTableView1HRFINAL: TcxGridDBColumn
            Caption = 'Hora Final'
            DataBinding.FieldName = 'HRFINAL'
          end
          object grdrenovacaoDBTableView1NMSTLOCACAO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTLOCACAO'
            Width = 256
          end
          object grdrenovacaoDBTableView1QTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
          end
          object grdrenovacaoDBTableView1NUDIAS: TcxGridDBColumn
            Caption = 'N'#250'mero Dias'
            DataBinding.FieldName = 'NUDIAS'
          end
          object grdrenovacaoDBTableView1VLLOCACAO: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLLOCACAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdrenovacaoLevel1: TcxGridLevel
          GridView = grdrenovacaoDBTableView1
        end
      end
    end
    object tbsdevolucao: TcxTabSheet
      Caption = 'Devolu'#231#227'o'
      ImageIndex = 166
      ExplicitHeight = 228
      object grddevolucao: TcxGrid
        Left = 0
        Top = 22
        Width = 1161
        Height = 243
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grddevolucaoDBTableView1: TcxGridDBTableView
          Tag = 1
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
          OnCellDblClick = grddevolucaoDBTableView1CellDblClick
          DataController.DataSource = dtsdevolucaoparcial
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'NUDIAS'
              Column = grddevolucaoDBTableView1NUDIAS
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = grddevolucaoDBTableView1QTITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grddevolucaoDBTableView1VLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.EditAutoHeight = eahRow
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grddevolucaoDBTableView1NFDEVOLUCAO: TcxGridDBColumn
            Caption = 'NF Dev Equipamento'
            DataBinding.FieldName = 'NFDEVOLUCAO'
            Width = 108
          end
          object grddevolucaoDBTableView1NUSAIDA: TcxGridDBColumn
            Caption = 'Nota Fiscal'
            DataBinding.FieldName = 'NUSAIDA'
            Styles.Content = dtmmain.cxStyle1
          end
          object grddevolucaoDBTableView1DTENTREGA: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTENTREGA'
          end
          object grddevolucaoDBTableView1HRENTREGA: TcxGridDBColumn
            Caption = 'Hora'
            DataBinding.FieldName = 'HRENTREGA'
          end
          object grddevolucaoDBTableView1QTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
          end
          object grddevolucaoDBTableView1VLUNITARIO: TcxGridDBColumn
            Caption = 'Valor Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grddevolucaoDBTableView1VLTOTAL: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 111
          end
          object grddevolucaoDBTableView1NUDIAS: TcxGridDBColumn
            Caption = 'N'#250'mero de Dias'
            DataBinding.FieldName = 'NUDIAS'
            Width = 93
          end
          object grddevolucaoDBTableView1DSOBSERVACAO: TcxGridDBColumn
            Tag = 1
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Width = 431
          end
        end
        object grddevolucaoLevel1: TcxGridLevel
          GridView = grddevolucaoDBTableView1
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1161
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
    end
    object tbssaida: TcxTabSheet
      Caption = 'Nota Fiscal'
      ImageIndex = 19
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditsaida: TcxGrid
        Left = 0
        Top = 0
        Width = 1161
        Height = 265
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grditsaidaDBTableView1: TcxGridDBTableView
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
          OnCellDblClick = grditsaidaDBTableView1CellDblClick
          DataController.DataSource = dtsitsaida
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = grditsaidaDBTableView1VLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object grditsaidaDBTableView1NUSAIDA: TcxGridDBColumn
            Caption = 'Nota Fiscal'
            DataBinding.FieldName = 'NUSAIDA'
            Styles.Content = dtmmain.cxStyle1
            Width = 100
          end
          object grditsaidaDBTableView1DTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 100
          end
          object grditsaidaDBTableView1VLTOTAL: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 120
          end
        end
        object grditsaidaLevel1: TcxGridLevel
          GridView = grditsaidaDBTableView1
        end
      end
    end
    object tbsperiodo: TcxTabSheet
      Caption = 'Per'#237'odo'
      ImageIndex = 6
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdperiodo: TcxGrid
        Left = 0
        Top = 0
        Width = 1161
        Height = 265
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdperiodoDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dtsperiodo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'NUDIAS'
              Column = grdperiodoDBTableView1NUDIAS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLLOCACAO'
              Column = grdperiodoDBTableView1VLLOCACAO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLEQUIPAMENTO'
              Column = grdperiodoDBTableView1VLEQUIPAMENTO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdperiodoDBTableView1DTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 120
          end
          object grdperiodoDBTableView1DTINICIO: TcxGridDBColumn
            Caption = 'In'#237'cio'
            DataBinding.FieldName = 'DTINICIO'
            Width = 120
          end
          object grdperiodoDBTableView1DTPREVISTA: TcxGridDBColumn
            Caption = 'Prevista'
            DataBinding.FieldName = 'DTPREVISTA'
            Width = 120
          end
          object grdperiodoDBTableView1NUDIAS: TcxGridDBColumn
            Caption = 'N'#186' Dias'
            DataBinding.FieldName = 'NUDIAS'
            Width = 120
          end
          object grdperiodoDBTableView1QTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            Width = 120
          end
          object grdperiodoDBTableView1VLLOCACAO: TcxGridDBColumn
            Caption = 'Valor Loca'#231#227'o'
            DataBinding.FieldName = 'VLLOCACAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 120
          end
          object grdperiodoDBTableView1VLEQUIPAMENTO: TcxGridDBColumn
            Caption = 'Valor Equipamento'
            DataBinding.FieldName = 'VLEQUIPAMENTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grdperiodoLevel1: TcxGridLevel
          GridView = grdperiodoDBTableView1
        end
      end
    end
    object tbshstlocacao: TcxTabSheet
      Caption = 'Hist'#243'rico Status'
      ImageIndex = 6
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdhstlocacao: TcxGrid
        Left = 0
        Top = 0
        Width = 1161
        Height = 265
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdhstlocacaoDBTableView1: TcxGridDBTableView
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
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
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
          DataController.DataSource = dtshstlocacao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          object grdhstlocacaoDBTableView1CDSTLOCACAO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'CDSTLOCACAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'CDSTLOCACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTLOCACAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Options.Editing = False
            Options.Focusing = False
            Width = 171
          end
          object grdhstlocacaoDBTableView1CDUSUARIOI: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'CDUSUARIOI'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'CDUSUARIO'
            Properties.ListColumns = <
              item
                FieldName = 'NMUSUARIO'
              end>
            Properties.ListOptions.ShowHeader = False
            Options.Editing = False
            Options.Focusing = False
            Width = 172
          end
          object grdhstlocacaoDBTableView1NMCOMPUTADOR: TcxGridDBColumn
            Caption = 'Computador'
            DataBinding.FieldName = 'NMCOMPUTADOR'
            Options.Editing = False
            Options.Focusing = False
            Width = 165
          end
          object grdhstlocacaoDBTableView1TSHISTORICO: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'TSINCLUSAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DateButtons = [btnClear, btnNow, btnToday]
            Properties.Kind = ckDateTime
            Options.Editing = False
            Options.Focusing = False
            Width = 144
          end
          object grdhstlocacaoDBTableView1DSJUSTIFICATIVA: TcxGridDBColumn
            Caption = 'Justificativa'
            DataBinding.FieldName = 'DSJUSTIFICATIVA'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Options.Editing = False
            Width = 327
          end
        end
        object grdhstlocacaoLevel1: TcxGridLevel
          GridView = grdhstlocacaoDBTableView1
        end
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 172
    Top = 8
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
    object actabrircliente: TAction
      Caption = 'Abrir Cliente'
      Hint = 'cliente'
      ImageIndex = 35
      OnExecute = actabrirclienteExecute
    end
    object actabrirequipamento: TAction
      Caption = 'Abrir Equipamento'
      Hint = 'equipamento'
      OnExecute = actabrirequipamentoExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actbaixarestoque: TAction
      Caption = 'Baixar'
      ImageIndex = 135
      OnExecute = actbaixarestoqueExecute
    end
    object actentradaestoque: TAction
      Caption = 'Entrada'
      ImageIndex = 136
      OnExecute = actentradaestoqueExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutoExecute
    end
    object actabrirclientecoresponsavel: TAction
      Hint = 'cliente'
      OnExecute = actabrirclientecoresponsavelExecute
    end
    object actabrirtplocacao: TAction
      Hint = 'tplocacao'
      OnExecute = actabrirtplocacaoExecute
    end
    object actimprimirdevolucao: TAction
      Caption = '536 - Devolu'#231#227'o'
      ImageIndex = 3
      OnExecute = actimprimirdevolucaoExecute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
    object actrenovar: TAction
      Caption = 'Renovar'
      ImageIndex = 165
      Visible = False
      OnExecute = actrenovarExecute
    end
    object actabrirlocacao: TAction
      Caption = 'actabrirlocacao'
      Hint = 'locacao'
      OnExecute = actabrirlocacaoExecute
    end
    object actdevolucao: TAction
      Caption = 'Devolu'#231#227'o'
      ImageIndex = 166
      Visible = False
      OnExecute = actdevolucaoExecute
    end
    object actabrirlocacaoanterior: TAction
      Hint = 'locacao'
      OnExecute = actabrirlocacaoanteriorExecute
    end
    object actexcluirdevolucao: TAction
      Caption = 'Excluir'
      ImageIndex = 5
      Visible = False
      OnExecute = actexcluirdevolucaoExecute
    end
    object actabrirsaida: TAction
      Hint = 'saida'
      OnExecute = actabrirsaidaExecute
    end
    object actreabrir: TAction
      Caption = 'Reabrir'
      ImageIndex = 170
      Visible = False
      OnExecute = actreabrirExecute
    end
    object actabrirsaidadevolucao: TAction
      Caption = 'actabrirsaidadevolucao'
      Hint = 'saida'
      OnExecute = actabrirsaidadevolucaoExecute
    end
    object actimprimircontrato: TAction
      Caption = '524 - Contrato'
      OnExecute = actimprimircontratoExecute
    end
    object acttrocar: TAction
      Caption = 'Trocar'
      Enabled = False
      OnExecute = acttrocarExecute
    end
    object actalterarvalor: TAction
      Caption = 'Alterar Valor'
      Visible = False
      OnExecute = actalterarvalorExecute
    end
    object actdesfazerrenovacao: TAction
      Caption = 'Desfazer Renova'#231#227'o'
      ImageIndex = 165
      Visible = False
      OnExecute = actdesfazerrenovacaoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actabrirfuncionario: TAction
      Caption = 'actabrirfuncionario'
      Hint = 'funcionario'
      OnExecute = actabrirfuncionarioExecute
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
    Left = 392
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
      Caption = 'locacao'
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
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'btnopcoes'
        end
        item
          Visible = True
          ItemName = 'btnimprimir'
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
      Caption = 'devolucao'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 368
      FloatTop = 141
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
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
      WholeRow = False
    end
    object bmg1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'acessorio'
      CaptionButtons = <>
      DockControl = bdcacessorio
      DockedDockControl = bdcacessorio
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 490
      FloatTop = 139
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Reabrir'
      Category = 0
      Visible = ivNever
      LargeImageIndex = 38
    end
    object dxBarButton2: TdxBarButton
      Action = actimprimirdevolucao
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actrenovar
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actdevolucao
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actexcluirdevolucao
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = actbaixarestoque
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = actentradaestoque
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actreabrir
      Category = 0
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object dxBarButton1: TdxBarButton
      Action = actimprimircontrato
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actdesfazerrenovacao
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT L.*'#13#10',S.NMSTLOCACAO'#13#10',CLIENTE.NMCLIENTE'#13#10',FUNCIONARIO.NMF' +
      'UNCIONARIO NMOPERADOR'#13#10',RESPONSAVEL.NMCLIENTE NMCLIENTECORESPONS' +
      'AVEL '#13#10'FROM LOCACAO L '#13#10'LEFT JOIN CLIENTE ON CLIENTE.CDEMPRESA=L' +
      '.CDEMPRESA AND CLIENTE.CDCLIENTE=L.CDCLIENTE '#13#10'LEFT JOIN CLIENTE' +
      ' RESPONSAVEL ON RESPONSAVEL.CDEMPRESA=L.CDEMPRESA AND RESPONSAVE' +
      'L.CDCLIENTE=L.CDCLIENTECORESPONSAVEL'#13#10'LEFT JOIN FUNCIONARIO ON F' +
      'UNCIONARIO.CDEMPRESA=L.CDEMPRESA AND FUNCIONARIO.CDFUNCIONARIO=L' +
      '.CDOPERADOR'#13#10'LEFT JOIN STLOCACAO S ON S.CDSTLOCACAO=L.CDSTLOCACA' +
      'O '#13#10'WHERE L.CDEMPRESA=:CDEMPRESA AND L.CDLOCACAO=:CDLOCACAO'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDLOCACAO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 840
    Top = 65
    object sdsCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDSTLOCACAO: TIntegerField
      FieldName = 'CDSTLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTPLOCACAO: TIntegerField
      FieldName = 'CDTPLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIOENTREGUE: TIntegerField
      FieldName = 'CDFUNCIONARIOENTREGUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLLOCACAO: TFMTBCDField
      FieldName = 'VLLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLACESSORIO: TFMTBCDField
      FieldName = 'VLACESSORIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLEQUIPAMENTO: TFMTBCDField
      FieldName = 'VLEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTPREVISTA: TDateField
      FieldName = 'DTPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTFINAL: TDateField
      FieldName = 'DTFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsHRFINAL: TTimeField
      FieldName = 'HRFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSENDERECO: TStringField
      FieldName = 'DSENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSNUMERO: TStringField
      FieldName = 'DSNUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
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
    object sdsNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLCAUCAO: TFMTBCDField
      FieldName = 'VLCAUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNUNFDEVOLUCAO: TIntegerField
      FieldName = 'NUNFDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUNFSAIDA: TIntegerField
      FieldName = 'NUNFSAIDA'
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
    object sdsQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNMSTLOCACAO: TStringField
      FieldName = 'NMSTLOCACAO'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDLOCACAOANTERIOR: TIntegerField
      FieldName = 'CDLOCACAOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTSALDO: TIntegerField
      FieldName = 'QTSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMCLIENTECORESPONSAVEL: TStringField
      FieldName = 'NMCLIENTECORESPONSAVEL'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCLIENTECORESPONSAVEL: TLargeintField
      FieldName = 'CDCLIENTECORESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDOPERADOR: TIntegerField
      FieldName = 'CDOPERADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMOPERADOR: TStringField
      FieldName = 'NMOPERADOR'
      ProviderFlags = []
      Size = 100
    end
  end
  object sdsitlocacaoacessorio: TSQLDataSet
    CommandText = 
      'select I.*,P.NMPRODUTO'#13#10'from ITLOCACAOACESSORIO I'#13#10'LEFT JOIN PRO' +
      'DUTO P ON P.CDPRODUTO=I.CDPRODUTO AND I.CDEMPRESA=P.CDEMPRESA'#13#10'w' +
      'here I.CDEMPRESA=:CDEMPRESA AND I.CDLOCACAO=:CDLOCACAO'
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
        Name = 'CDLOCACAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 840
    Top = 93
    object sdsitlocacaoacessorioCDITLOCACAOACESSORIO: TIntegerField
      FieldName = 'CDITLOCACAOACESSORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitlocacaoacessorioCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlocacaoacessorioCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlocacaoacessorioCDSTITLOCACAOACESSORIO: TIntegerField
      FieldName = 'CDSTITLOCACAOACESSORIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlocacaoacessorioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlocacaoacessorioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlocacaoacessorioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlocacaoacessorioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlocacaoacessorioCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsitlocacaoacessorioQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlocacaoacessorioVLITLOCACAOACESSORIO: TFMTBCDField
      FieldName = 'VLITLOCACAOACESSORIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitlocacaoacessorioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlocacaoacessorioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlocacaoacessorioNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsitlocacaoacessorioNMITLOCACAOACESSORIO: TStringField
      FieldName = 'NMITLOCACAOACESSORIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitlocacaoacessorioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdshlocacaoequipamento: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select hlocacaoequipamento.cdlocacao'#13#10', hlocacaoequipamento.dthi' +
      'storico'#13#10', hlocacaoequipamento.hrhistorico'#13#10', hlocacaoequipament' +
      'o.dsobservacao'#13#10', funcionario.nmfuncionario'#13#10', hlocacaoequipamen' +
      'to.cdequipamento'#13#10', equipamento.nuserie'#13#10', equipamento.nupatrimo' +
      'nio'#13#10', tpequipamento.nmtpequipamento'#13#10', marca.nmmarca'#13#10', modelo.' +
      'nmmodelo'#13#10'from hlocacaoequipamento'#13#10'left join equipamento on equ' +
      'ipamento.cdequipamento = hlocacaoequipamento.cdequipamento and h' +
      'locacaoequipamento.cdempresa=equipamento.cdempresa'#13#10'left join tp' +
      'equipamento on tpequipamento.cdtpequipamento = equipamento.cdtpe' +
      'quipamento and tpequipamento.cdempresa=equipamento.cdempresa'#13#10'le' +
      'ft join modelo on modelo.cdmodelo = equipamento.cdmodelo and mod' +
      'elo.cdempresa=equipamento.cdempresa'#13#10'left join marca on marca.cd' +
      'marca = equipamento.cdmarca and marca.cdempresa=equipamento.cdem' +
      'presa'#13#10'left join funcionario on funcionario.cdfuncionario = hloc' +
      'acaoequipamento.cdfuncionario and funcionario.cdempresa=hlocacao' +
      'equipamento.cdempresa'#13#10'where hlocacaoequipamento.cdempresa=:cdem' +
      'presa and hlocacaoequipamento.cdlocacao=:cdlocacao'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDLOCACAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 841
    Top = 121
    object sdshlocacaoequipamentoCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = []
      Required = True
    end
    object sdshlocacaoequipamentoDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
      ProviderFlags = []
      Required = True
    end
    object sdshlocacaoequipamentoHRHISTORICO: TTimeField
      FieldName = 'HRHISTORICO'
      ProviderFlags = []
      Required = True
    end
    object sdshlocacaoequipamentoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = []
      Size = 1
    end
    object sdshlocacaoequipamentoNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object sdshlocacaoequipamentoCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = []
      Required = True
    end
    object sdshlocacaoequipamentoNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = []
      Size = 50
    end
    object sdshlocacaoequipamentoNUPATRIMONIO: TStringField
      FieldName = 'NUPATRIMONIO'
      ProviderFlags = []
      Size = 100
    end
    object sdshlocacaoequipamentoNMTPEQUIPAMENTO: TStringField
      FieldName = 'NMTPEQUIPAMENTO'
      ProviderFlags = []
      Size = 100
    end
    object sdshlocacaoequipamentoNMMARCA: TStringField
      FieldName = 'NMMARCA'
      ProviderFlags = []
      Size = 100
    end
    object sdshlocacaoequipamentoNMMODELO: TStringField
      FieldName = 'NMMODELO'
      ProviderFlags = []
      Size = 100
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 868
    Top = 65
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 896
    Top = 65
    object cdsCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnSetText = set_text_numero_inteiro
      OnValidate = cdsCDEQUIPAMENTOValidate
    end
    object cdsCDSTLOCACAO: TIntegerField
      FieldName = 'CDSTLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDSTLOCACAOValidate
    end
    object cdsCDTPLOCACAO: TIntegerField
      FieldName = 'CDTPLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPLOCACAOValidate
    end
    object cdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIOENTREGUE: TIntegerField
      FieldName = 'CDFUNCIONARIOENTREGUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLLOCACAO: TFMTBCDField
      FieldName = 'VLLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLACESSORIO: TFMTBCDField
      FieldName = 'VLACESSORIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLEQUIPAMENTO: TFMTBCDField
      FieldName = 'VLEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsDTINICIOValidate
    end
    object cdsDTPREVISTA: TDateField
      FieldName = 'DTPREVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTFINAL: TDateField
      FieldName = 'DTFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsHRFINAL: TTimeField
      FieldName = 'HRFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
      OnSetText = set_text_numero_inteiro
      OnValidate = cdsNUDIASValidate
    end
    object cdsDSENDERECO: TStringField
      FieldName = 'DSENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDSNUMERO: TStringField
      FieldName = 'DSNUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
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
    object cdsNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVLCAUCAO: TFMTBCDField
      FieldName = 'VLCAUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNUNFDEVOLUCAO: TIntegerField
      FieldName = 'NUNFDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      OnSetText = set_text_numero_inteiro
    end
    object cdsNUNFSAIDA: TIntegerField
      FieldName = 'NUNFSAIDA'
      ProviderFlags = [pfInUpdate]
      OnSetText = set_text_numero_inteiro
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
    object cdssdsitlocacaoacessorio: TDataSetField
      FieldName = 'sdsitlocacaoacessorio'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdshlocacaoequipamento: TDataSetField
      FieldName = 'sdshlocacaoequipamento'
      ProviderFlags = []
    end
    object cdsQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsQTITEMValidate
    end
    object cdsNMSTLOCACAO: TStringField
      FieldName = 'NMSTLOCACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDLOCACAOANTERIOR: TIntegerField
      FieldName = 'CDLOCACAOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsrenovacao: TDataSetField
      FieldName = 'sdsrenovacao'
      ProviderFlags = []
    end
    object cdsQTSALDO: TIntegerField
      FieldName = 'QTSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssdsevolucao: TDataSetField
      FieldName = 'sdsevolucao'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitsaida: TDataSetField
      FieldName = 'sdsitsaida'
      ProviderFlags = []
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssdshstlocacao: TDataSetField
      FieldName = 'sdshstlocacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsperiodo: TDataSetField
      FieldName = 'sdsperiodo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMCLIENTECORESPONSAVEL: TStringField
      FieldName = 'NMCLIENTECORESPONSAVEL'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDCLIENTEValidate
    end
    object cdsCDCLIENTECORESPONSAVEL: TLargeintField
      FieldName = 'CDCLIENTECORESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCLIENTECORESPONSAVELValidate
    end
    object cdsCDOPERADOR: TIntegerField
      FieldName = 'CDOPERADOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDOPERADORValidate
    end
    object cdsNMOPERADOR: TStringField
      FieldName = 'NMOPERADOR'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdsitlocacaoacessorio: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitlocacaoacessorio
    Params = <>
    BeforePost = cdsitlocacaoacessorioBeforePost
    AfterPost = cdsitlocacaoacessorioAfterPost
    AfterDelete = cdsitlocacaoacessorioAfterDelete
    OnNewRecord = cdsitlocacaoacessorioNewRecord
    Left = 896
    Top = 93
    object cdsitlocacaoacessorioCDITLOCACAOACESSORIO: TIntegerField
      FieldName = 'CDITLOCACAOACESSORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitlocacaoacessorioCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlocacaoacessorioCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlocacaoacessorioCDSTITLOCACAOACESSORIO: TIntegerField
      FieldName = 'CDSTITLOCACAOACESSORIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlocacaoacessorioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlocacaoacessorioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlocacaoacessorioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlocacaoacessorioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlocacaoacessorioCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitlocacaoacessorioCDDIGITADOValidate
      Size = 30
    end
    object cdsitlocacaoacessorioQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlocacaoacessorioVLITLOCACAOACESSORIO: TFMTBCDField
      FieldName = 'VLITLOCACAOACESSORIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitlocacaoacessorioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlocacaoacessorioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlocacaoacessorioNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsitlocacaoacessorioNMITLOCACAOACESSORIO: TStringField
      FieldName = 'NMITLOCACAOACESSORIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsitlocacaoacessorioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdshlocacaoequipamento: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdshlocacaoequipamento
    Params = <>
    Left = 896
    Top = 121
    object cdshlocacaoequipamentoCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = []
      Required = True
    end
    object cdshlocacaoequipamentoDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
      ProviderFlags = []
      Required = True
    end
    object cdshlocacaoequipamentoHRHISTORICO: TTimeField
      FieldName = 'HRHISTORICO'
      ProviderFlags = []
      Required = True
    end
    object cdshlocacaoequipamentoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = []
      Size = 1
    end
    object cdshlocacaoequipamentoNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdshlocacaoequipamentoCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = []
      Required = True
    end
    object cdshlocacaoequipamentoNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = []
      Size = 50
    end
    object cdshlocacaoequipamentoNUPATRIMONIO: TStringField
      FieldName = 'NUPATRIMONIO'
      ProviderFlags = []
      Size = 100
    end
    object cdshlocacaoequipamentoNMTPEQUIPAMENTO: TStringField
      FieldName = 'NMTPEQUIPAMENTO'
      ProviderFlags = []
      Size = 100
    end
    object cdshlocacaoequipamentoNMMARCA: TStringField
      FieldName = 'NMMARCA'
      ProviderFlags = []
      Size = 100
    end
    object cdshlocacaoequipamentoNMMODELO: TStringField
      FieldName = 'NMMODELO'
      ProviderFlags = []
      Size = 100
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 924
    Top = 65
  end
  object dtsitlocacaoacessorio: TDataSource
    DataSet = cdsitlocacaoacessorio
    Left = 924
    Top = 93
  end
  object dtshlocacaoequipamento: TDataSource
    DataSet = cdshlocacaoequipamento
    Left = 924
    Top = 121
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 952
    Top = 67
  end
  object sdsrenovacao: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT L.NUDIAS,L.VLLOCACAO,L.CDLOCACAO,L.DTINICIO,L.HRINICIO,L.' +
      'DTFINAL,L.HRFINAL,S.NMSTLOCACAO,L.QTITEM FROM LOCACAO L LEFT JOI' +
      'N STLOCACAO S ON S.CDSTLOCACAO=L.CDSTLOCACAO WHERE CDEMPRESA=:CD' +
      'EMPRESA AND CDLOCACAOANTERIOR=:CDLOCACAO'
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
        Name = 'CDLOCACAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 841
    Top = 149
    object sdsrenovacaoCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = []
      Required = True
    end
    object sdsrenovacaoDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = []
      Required = True
    end
    object sdsrenovacaoHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = []
      Required = True
    end
    object sdsrenovacaoDTFINAL: TDateField
      FieldName = 'DTFINAL'
      ProviderFlags = []
    end
    object sdsrenovacaoHRFINAL: TTimeField
      FieldName = 'HRFINAL'
      ProviderFlags = []
    end
    object sdsrenovacaoNMSTLOCACAO: TStringField
      FieldName = 'NMSTLOCACAO'
      ProviderFlags = []
      Size = 100
    end
    object sdsrenovacaoQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = []
      Required = True
    end
    object sdsrenovacaoNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = []
    end
    object sdsrenovacaoVLLOCACAO: TFMTBCDField
      FieldName = 'VLLOCACAO'
      ProviderFlags = []
      Required = True
      Precision = 15
      Size = 2
    end
  end
  object cdsrenovacao: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsrenovacao
    Params = <>
    Left = 896
    Top = 149
    object cdsrenovacaoCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = []
      Required = True
    end
    object cdsrenovacaoDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = []
      Required = True
    end
    object cdsrenovacaoHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = []
      Required = True
    end
    object cdsrenovacaoDTFINAL: TDateField
      FieldName = 'DTFINAL'
      ProviderFlags = []
    end
    object cdsrenovacaoHRFINAL: TTimeField
      FieldName = 'HRFINAL'
      ProviderFlags = []
    end
    object cdsrenovacaoNMSTLOCACAO: TStringField
      FieldName = 'NMSTLOCACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsrenovacaoQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = []
      Required = True
    end
    object cdsrenovacaoNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = []
    end
    object cdsrenovacaoVLLOCACAO: TFMTBCDField
      FieldName = 'VLLOCACAO'
      ProviderFlags = []
      Required = True
      Precision = 15
      Size = 2
    end
  end
  object dtsrenovacao: TDataSource
    DataSet = cdsrenovacao
    Left = 924
    Top = 149
  end
  object sdsevolucao: TSQLDataSet
    CommandText = 
      'SELECT L.*,S.NUSAIDA,S.CDSAIDA'#13#10'FROM LOCACAODEVOLUCAO L'#13#10'LEFT JO' +
      'IN ITSAIDA I ON I.CDEMPRESA=L.CDEMPRESA AND I.CDLOCACAODEVOLUCAO' +
      '=L.CDLOCACAODEVOLUCAO'#13#10'LEFT JOIN SAIDA S ON S.CDEMPRESA=I.CDEMPR' +
      'ESA AND S.CDSAIDA=I.CDSAIDA'#13#10'WHERE L.CDEMPRESA=:CDEMPRESA AND L.' +
      'CDLOCACAO=:CDLOCACAO'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CDLOCACAO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 840
    Top = 177
    object sdsevolucaoCDLOCACAODEVOLUCAO: TIntegerField
      FieldName = 'CDLOCACAODEVOLUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsevolucaoCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsevolucaoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsevolucaoNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsevolucaoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsevolucaoNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
    end
    object sdsevolucaoCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = []
    end
    object sdsevolucaoNFDEVOLUCAO: TIntegerField
      FieldName = 'NFDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsevolucaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsdevolucao: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsevolucao
    Params = <>
    AfterScroll = cdsdevolucaoAfterScroll
    Left = 896
    Top = 177
    object cdsdevolucaoCDLOCACAODEVOLUCAO: TIntegerField
      FieldName = 'CDLOCACAODEVOLUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdevolucaoCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsdevolucaoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsdevolucaoNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdevolucaoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsdevolucaoNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
    end
    object cdsdevolucaoCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = []
    end
    object cdsdevolucaoNFDEVOLUCAO: TIntegerField
      FieldName = 'NFDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdevolucaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsdevolucaoparcial: TDataSource
    DataSet = cdsdevolucao
    Left = 924
    Top = 177
  end
  object sdsitsaida: TSQLDataSet
    CommandText = 
      'SELECT S.NUSAIDA,S.CDSAIDA,S.DTEMISSAO,I.VLTOTAL'#13#10'FROM ITSAIDA I' +
      #13#10'INNER JOIN SAIDA S ON S.CDEMPRESA=I.CDEMPRESA AND S.CDSAIDA=I.' +
      'CDSAIDA'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDLOCACAO=:CDLOCACAO'
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
        Name = 'CDLOCACAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 840
    Top = 206
    object sdsitsaidaNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
      Required = True
    end
    object sdsitsaidaCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = []
      Required = True
    end
    object sdsitsaidaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdsitsaidaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
  end
  object cdsitsaida: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitsaida
    Params = <>
    AfterScroll = cdsdevolucaoAfterScroll
    Left = 896
    Top = 206
    object cdsitsaidaNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
      Required = True
    end
    object cdsitsaidaCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = []
      Required = True
    end
    object cdsitsaidaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdsitsaidaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
  end
  object dtsitsaida: TDataSource
    DataSet = cdsitsaida
    Left = 924
    Top = 206
  end
  object sdshstlocacao: TSQLDataSet
    CommandText = 
      'SELECT H.*,C.NMCOMPUTADOR'#13#10'FROM HSTLOCACAO H '#13#10'LEFT JOIN COMPUTA' +
      'DOR C ON C.CDCOMPUTADOR=H.CDCOMPUTADORI '#13#10'WHERE H.CDEMPRESA=:CDE' +
      'MPRESA AND H.CDLOCACAO=:CDLOCACAO'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDLOCACAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 840
    Top = 234
    object sdshstlocacaoNMCOMPUTADOR: TStringField
      FieldName = 'NMCOMPUTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sdshstlocacaoDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdshstlocacaoCDHSTLOCACAO: TIntegerField
      FieldName = 'CDHSTLOCACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdshstlocacaoCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstlocacaoCDSTLOCACAO: TIntegerField
      FieldName = 'CDSTLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstlocacaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstlocacaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstlocacaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstlocacaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstlocacaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstlocacaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdshstlocacaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdshstlocacao: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdshstlocacao
    Params = <>
    Left = 896
    Top = 234
    object cdshstlocacaoNMCOMPUTADOR: TStringField
      FieldName = 'NMCOMPUTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdshstlocacaoDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdshstlocacaoCDHSTLOCACAO: TIntegerField
      FieldName = 'CDHSTLOCACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdshstlocacaoCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstlocacaoCDSTLOCACAO: TIntegerField
      FieldName = 'CDSTLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstlocacaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstlocacaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstlocacaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstlocacaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstlocacaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstlocacaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdshstlocacaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtshstlocacao: TDataSource
    DataSet = cdshstlocacao
    Left = 924
    Top = 234
  end
  object sdsperiodo: TSQLDataSet
    CommandText = 
      'SELECT * FROM LOCACAOPERIODO '#13#10'WHERE CDEMPRESA=:CDEMPRESA AND CD' +
      'LOCACAO=:CDLOCACAO'
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
        Name = 'CDLOCACAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 840
    Top = 262
    object sdsperiodoCDLOCACAOPERIODO: TIntegerField
      FieldName = 'CDLOCACAOPERIODO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsperiodoCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoDTPREVISTA: TDateField
      FieldName = 'DTPREVISTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsperiodoVLLOCACAO: TFMTBCDField
      FieldName = 'VLLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsperiodoVLEQUIPAMENTO: TFMTBCDField
      FieldName = 'VLEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsperiodoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsperiodo: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsperiodo
    Params = <>
    Left = 896
    Top = 262
    object cdsperiodoCDLOCACAOPERIODO: TIntegerField
      FieldName = 'CDLOCACAOPERIODO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsperiodoCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoDTPREVISTA: TDateField
      FieldName = 'DTPREVISTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoNUDIAS: TIntegerField
      FieldName = 'NUDIAS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsperiodoVLLOCACAO: TFMTBCDField
      FieldName = 'VLLOCACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsperiodoVLEQUIPAMENTO: TFMTBCDField
      FieldName = 'VLEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsperiodoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsperiodo: TDataSource
    DataSet = cdsperiodo
    Left = 924
    Top = 262
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 976
    Top = 140
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarLargeButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton5'
      end>
    UseOwnFont = False
    Left = 992
    Top = 198
  end
end

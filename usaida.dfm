object frmsaida: Tfrmsaida
  Left = 534
  Top = 69
  ClientHeight = 733
  ClientWidth = 1370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnltop: TPanel
    Left = 0
    Top = 82
    Width = 1370
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lbltpsaida: TLabel
      Left = 4
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
      OnDblClick = lbltpsaidaDblClick
    end
    object lblcodigo: TLabel
      Left = 150
      Top = 0
      Width = 53
      Height = 13
      Caption = 'Nota Fiscal'
      Transparent = True
    end
    object lbldtemissao: TLabel
      Left = 219
      Top = 0
      Width = 65
      Height = 13
      Caption = 'Data Emiss'#227'o'
      Transparent = True
    end
    object lbldtsaida: TLabel
      Left = 305
      Top = 0
      Width = 55
      Height = 13
      Caption = 'Data Sa'#237'da'
      Transparent = True
    end
    object lblcfop: TLabel
      Left = 462
      Top = 0
      Width = 28
      Height = 13
      Caption = 'CFOP'
      Transparent = True
    end
    object Label5: TLabel
      Left = 658
      Top = 0
      Width = 79
      Height = 13
      Caption = 'Doc Fiscal ICMS'
      Transparent = True
    end
    object Label17: TLabel
      Left = 391
      Top = 0
      Width = 55
      Height = 13
      Caption = 'Hora Sa'#237'da'
      Transparent = True
    end
    object edthrsaida: TcxDBTimeEdit
      Left = 391
      Top = 14
      DataBinding.DataField = 'HRSAIDA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 70
    end
    object cbxcdtpsaida: TcxDBLookupComboBox
      Left = 4
      Top = 14
      DataBinding.DataField = 'CDTPSAIDA'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDTPSAIDA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPSAIDA2'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = cbxcdtpsaidaEnter
      OnExit = colorexit
      Width = 145
    end
    object edtcodigo: TcxTextEdit
      Left = 150
      Top = 14
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = edtcodigoExit
      OnKeyDown = edtcodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 66
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 219
      Top = 14
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 84
    end
    object edtdtsaida: TcxDBDateEdit
      Left = 305
      Top = 14
      DataBinding.DataField = 'DTSAIDA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 85
    end
    object cbxcdcfop: TcxDBLookupComboBox
      Left = 461
      Top = 14
      DataBinding.DataField = 'CDCFOP'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownWidth = 600
      Properties.KeyFieldNames = 'CDCFOP'
      Properties.ListColumns = <
        item
          FieldName = 'NMCFOP2'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      Width = 193
    end
    object txtnudocfiscalicms: TcxDBLabel
      Left = 658
      Top = 14
      DataBinding.DataField = 'NUDOCFISCALICMS'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 23
    end
    object txtnmstdocfiscalicms: TcxDBLabel
      Left = 682
      Top = 14
      DataBinding.DataField = 'NMDOCFISCALICMS'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 175
    end
    object pnlnfe: TPanel
      Left = 300
      Top = 0
      Width = 400
      Height = 41
      TabOrder = 8
      Visible = False
      object lblnfestatus: TLabel
        Left = 1
        Top = 1
        Width = 398
        Height = 17
        Align = alTop
        AutoSize = False
        Caption = 'Status'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitWidth = 407
      end
      object lblstatus: TLabel
        Left = 1
        Top = 18
        Width = 398
        Height = 22
        Align = alClient
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 4
        ExplicitHeight = 18
      end
    end
  end
  object pnl: TcxLabel
    Left = 0
    Top = 59
    Align = alTop
    ParentFont = False
    Style.BorderStyle = ebsSingle
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object gbxdestinatario: TcxGroupBox
    Left = 0
    Top = 117
    Align = alTop
    Caption = '&Destinat'#225'rio'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Height = 39
    Width = 1370
    object lbldestinatario: TLabel
      Left = 2
      Top = 21
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnDblClick = lbldestinatarioDblClick
    end
    object txtRZSOCIALC: TDBText
      Left = 147
      Top = 19
      Width = 242
      Height = 17
      DataField = 'RZSOCIALC'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnDblClick = txtRZSOCIALCDblClick
    end
    object txtRZSOCIALF: TDBText
      Left = 147
      Top = 19
      Width = 242
      Height = 17
      DataField = 'RZSOCIALF'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnDblClick = txtRZSOCIALFDblClick
    end
    object edtcdfornecedor: TcxDBButtonEdit
      Left = 40
      Top = 14
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
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdfornecedorKeyDown
      OnKeyPress = edtcdfornecedorKeyPress
      Width = 107
    end
    object edtcdcliente: TcxDBButtonEdit
      Left = 40
      Top = 14
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
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdclienteKeyDown
      OnKeyPress = edtcdclienteKeyPress
      Width = 107
    end
    object ckbboconsumidorfinal: TcxDBCheckBox
      Left = 391
      Top = 14
      Caption = 'Consumidor Final'
      DataBinding.DataField = 'BOCONSUMIDORFINAL'
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
  end
  object gbxtransportadora: TcxGroupBox
    Left = 0
    Top = 195
    Align = alTop
    Caption = 'Transportadora Volumes Transportados'
    Style.BorderStyle = ebsOffice11
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Height = 74
    Width = 1370
    object Bevel11: TBevel
      Left = 765
      Top = 13
      Width = 178
      Height = 29
    end
    object Bevel12: TBevel
      Left = 2
      Top = 42
      Width = 143
      Height = 29
    end
    object Bevel6: TBevel
      Left = 393
      Top = 42
      Width = 122
      Height = 29
    end
    object Bevel13: TBevel
      Left = 515
      Top = 42
      Width = 145
      Height = 29
    end
    object Bevel14: TBevel
      Left = 660
      Top = 42
      Width = 137
      Height = 29
    end
    object Bevel15: TBevel
      Left = 797
      Top = 42
      Width = 146
      Height = 29
    end
    object Bevel3: TBevel
      Left = 265
      Top = 42
      Width = 128
      Height = 29
    end
    object Bevel10: TBevel
      Left = 2
      Top = 13
      Width = 763
      Height = 29
    end
    object Bevel2: TBevel
      Left = 145
      Top = 42
      Width = 122
      Height = 29
    end
    object lblcdtransportadora: TLabel
      Left = 4
      Top = 21
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcdtransportadoraDblClick
    end
    object lblplaca: TLabel
      Left = 5
      Top = 49
      Width = 27
      Height = 13
      Caption = 'Placa'
      Transparent = True
    end
    object Label12: TLabel
      Left = 661
      Top = 47
      Width = 47
      Height = 16
      Caption = 'Peso Bruto'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 147
      Top = 49
      Width = 17
      Height = 13
      Caption = 'Qtd'
      Transparent = True
    end
    object Label10: TLabel
      Left = 267
      Top = 49
      Width = 38
      Height = 13
      Caption = 'Esp'#233'cie'
      Transparent = True
    end
    object Label9: TLabel
      Left = 395
      Top = 49
      Width = 30
      Height = 13
      Caption = 'Marca'
      Transparent = True
    end
    object Label7: TLabel
      Left = 517
      Top = 49
      Width = 55
      Height = 13
      Caption = 'Numera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl6: TLabel
      Left = 798
      Top = 47
      Width = 54
      Height = 16
      Caption = 'Peso L'#237'quido'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblnmredespacho: TLabel
      Left = 516
      Top = 25
      Width = 61
      Height = 13
      Caption = 'Redespacho'
      Transparent = True
    end
    object lbltpfrete: TLabel
      Left = 769
      Top = 25
      Width = 24
      Height = 13
      Caption = 'Frete'
      Transparent = True
    end
    object txtpsliquido: TDBText
      Left = 870
      Top = 48
      Width = 72
      Height = 17
      Alignment = taRightJustify
      DataField = 'PSLIQUIDO'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object txtpsbruto: TDBText
      Left = 723
      Top = 48
      Width = 72
      Height = 17
      Alignment = taRightJustify
      DataField = 'PSBRUTO'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtpsliquido: TcxDBCalcEdit
      Left = 870
      Top = 45
      DataBinding.DataField = 'PSLIQUIDO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 11
      OnEnter = colorenter
      OnExit = colorexit
      Width = 72
    end
    object edtpsbruto: TcxDBCalcEdit
      Left = 723
      Top = 45
      DataBinding.DataField = 'PSBRUTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnEnter = colorenter
      OnExit = colorexit
      Width = 72
    end
    object edtnuvolume: TcxDBTextEdit
      Left = 573
      Top = 45
      DataBinding.DataField = 'NUVOLUME'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnEnter = colorenter
      OnExit = colorexit
      Width = 83
    end
    object edtqtvolume: TcxDBSpinEdit
      Left = 177
      Top = 45
      DataBinding.DataField = 'QTVOLUME'
      DataBinding.DataSource = dts
      Properties.AssignedValues.MinValue = True
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      Width = 83
    end
    object edtcdtransportadora: TcxDBButtonEdit
      Left = 39
      Top = 17
      DataBinding.DataField = 'CDTRANSPORTADORA'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdtransportadoraPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 106
    end
    object cbxcdtransportadora: TcxDBLookupComboBox
      Left = 150
      Top = 17
      DataBinding.DataField = 'CDTRANSPORTADORA'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDTRANSPORTADORA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTRANSPORTADORA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 363
    end
    object cbxcdtpfrete: TcxDBLookupComboBox
      Left = 794
      Top = 18
      DataBinding.DataField = 'CDTPFRETE'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
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
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      Width = 148
    end
    object edtnmredespacho: TcxDBTextEdit
      Left = 579
      Top = 18
      DataBinding.DataField = 'NMREDESPACHO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 182
    end
    object edtnuplaca: TcxDBTextEdit
      Left = 33
      Top = 45
      DataBinding.DataField = 'NUPLACA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      Width = 60
    end
    object cbxcduf: TcxDBLookupComboBox
      Left = 95
      Top = 45
      DataBinding.DataField = 'CDUF'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDUF'
      Properties.ListColumns = <
        item
          FieldName = 'SGUF'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      Width = 49
    end
    object edtdsmarca: TcxDBTextEdit
      Left = 428
      Top = 45
      DataBinding.DataField = 'DSMARCA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      Width = 83
    end
    object edtdsespecie: TcxDBTextEdit
      Left = 307
      Top = 45
      DataBinding.DataField = 'DSESPECIE'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      Width = 83
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 269
    Width = 1370
    Height = 222
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Properties.ActivePage = tbsproduto
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 222
    ClientRectRight = 1370
    ClientRectTop = 25
    object tbsproduto: TcxTabSheet
      Caption = 'Produto'
      ImageIndex = 24
      object bdcproduto: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1370
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object grditsaida: TcxGrid
        Left = 0
        Top = 22
        Width = 1370
        Height = 175
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbv: TcxGridDBTableView
          OnKeyDown = tbvKeyDown
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
          OnCellDblClick = tbvCellDblClick
          OnFocusedRecordChanged = tbvFocusedRecordChanged
          DataController.DataSource = dtsitsaida
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'PSBRUTO'
              Column = tbvPSBRUTO
            end
            item
              Kind = skSum
              FieldName = 'PSLIQUIDO'
              Column = tbvPSLIQUIDO
            end
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvQTITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASECOFINS'
              Column = tbvVLBASECOFINS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEICMS'
              Column = tbvVLBASEICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEICMSSUBTRIB'
              Column = tbvVLBASEICMSSUBTRIB
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEINSS'
              Column = tbvVLBASEINSS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEIPI'
              Column = tbvVLBASEIPI
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEIRRF'
              Column = tbvVLBASEIRRF
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEISS'
              Column = tbvVLBASEISS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEPIS'
              Column = tbvVLBASEPIS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCOFINS'
              Column = tbvVLCOFINS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCOMISSAO'
              Column = tbvVLCOMISSAO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCUSTO'
              Column = tbvVLCUSTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDESCONTO'
              Column = tbvVLDESCONTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLFRETE'
              Column = tbvVLFRETE
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
              FieldName = 'VLICMSSUBTRIB'
              Column = tbvVLICMSSUBTRIB
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLINSS'
              Column = tbvVLINSS
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
              FieldName = 'VLIRRF'
              Column = tbvVLIRRF
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLISS'
              Column = tbvVLISS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLLUCRO'
              Column = tbvVLLUCRO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTDESPESA'
              Column = tbvVLOUTDESPESA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLPIS'
              Column = tbvVLPIS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLSEGURO'
              Column = tbvVLSEGURO
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
              FieldName = 'VLTOTALTRIBUTO'
              Column = tbvVLTOTALTRIBUTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTALCDESC'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvCDLOCACAO: TcxGridDBColumn
            Caption = 'Loca'#231#227'o'
            DataBinding.FieldName = 'CDLOCACAO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvCDLOCACAOPropertiesButtonClick
            Properties.OnValidate = tbvCDLOCACAOPropertiesValidate
            Visible = False
            Styles.Content = dtmmain.cxStyle1
            Width = 130
          end
          object tbvCDPRODUTO: TcxGridDBColumn
            Caption = 'C'#243'd Produto'
            DataBinding.FieldName = 'CDPRODUTO'
            Visible = False
          end
          object tbvNUPEDIDO: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'NUPEDIDO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grditsaidatvNUPEDIDOPropertiesButtonClick
            Visible = False
            Styles.Content = dtmmain.cxStyle1
          end
          object tbvNUORDSERV: TcxGridDBColumn
            Caption = 'Ord Servi'#231'o'
            DataBinding.FieldName = 'NUORDSERV'
            Visible = False
            Options.Focusing = False
          end
          object tbvCDCFOP: TcxGridDBColumn
            Caption = 'CFOP'
            DataBinding.FieldName = 'CDCFOP'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 750
            Properties.KeyFieldNames = 'CDCFOP'
            Properties.ListColumns = <
              item
                Caption = 'C'#243'digo'
                MinWidth = 40
                Width = 40
                FieldName = 'CDCFOP'
              end
              item
                Caption = 'CFOP'
                FieldName = 'NMCFOP'
              end>
            Width = 60
          end
          object tbvCDSTITSAIDA: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'CDSTITSAIDA'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDSTITSAIDA'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTITSAIDA'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
          end
          object tbvCDTPGRADEVALOR: TcxGridDBColumn
            Caption = 'Tp Grade Valor'
            DataBinding.FieldName = 'CDTPGRADEVALOR'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPGRADEVALOR'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPGRADEVALOR'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Width = 100
          end
          object tbvCDMODBCICMS: TcxGridDBColumn
            Caption = 'Mod BC ICMS'
            DataBinding.FieldName = 'CDMODBCICMS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDMODBCICMS'
            Properties.ListColumns = <
              item
                FieldName = 'NMMODBCICMS'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Width = 75
          end
          object tbvCDMODBCSTICMS: TcxGridDBColumn
            Caption = 'Mod BC ICMS ST'
            DataBinding.FieldName = 'CDMODBCSTICMS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDMODBCSTICMS'
            Properties.ListColumns = <
              item
                FieldName = 'NMMODBCSTICMS'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Width = 90
          end
          object tbvCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = grditsaidatvCDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 100
          end
          object tbvNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Focusing = False
            Width = 250
          end
          object tbvNUCLFISCAL: TcxGridDBColumn
            Caption = 'NCM'
            DataBinding.FieldName = 'NUCLFISCAL'
            Options.Focusing = False
            Width = 60
          end
          object tbvNMUNIDADE: TcxGridDBColumn
            Caption = 'UN'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Focusing = False
            Width = 25
          end
          object tbvCDORIGEM: TcxGridDBColumn
            Caption = 'Origem'
            DataBinding.FieldName = 'CDORIGEM'
            Options.Focusing = False
            Width = 40
          end
          object tbvQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object tbvVLUNITARIO: TcxGridDBColumn
            Caption = 'Vl Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object tbvVLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object tbvNUSTICMS: TcxGridDBColumn
            Caption = 'ST ICMS'
            DataBinding.FieldName = 'NUSTICMS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 600
            Properties.KeyFieldNames = 'NUSTICMS'
            Properties.ListColumns = <
              item
                Caption = 'ST ICMS'
                MinWidth = 50
                Width = 50
                FieldName = 'NUSTICMS'
              end
              item
                Caption = 'Situa'#231#227'o Tribut'#225'ria ICMS'
                FieldName = 'NMSTICMS1'
              end>
            Width = 50
          end
          object tbvNUSTIPI: TcxGridDBColumn
            Caption = 'ST IPI'
            DataBinding.FieldName = 'NUSTIPI'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'NUSTIPI'
            Properties.ListColumns = <
              item
                Caption = 'ST IPI'
                MinWidth = 50
                Width = 50
                FieldName = 'NUSTIPI'
              end
              item
                Caption = 'Situa'#231#227'o Tribut'#225'ria IPI'
                FieldName = 'NMSTIPI1'
              end>
            Width = 36
          end
          object tbvNUSTPIS: TcxGridDBColumn
            Caption = 'ST PIS'
            DataBinding.FieldName = 'NUSTPIS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 750
            Properties.KeyFieldNames = 'NUSTPIS'
            Properties.ListColumns = <
              item
                Caption = 'ST PIS'
                MinWidth = 50
                Width = 50
                FieldName = 'NUSTPIS'
              end
              item
                Caption = 'Situa'#231#227'o Tribut'#225'ria PIS'
                FieldName = 'NMSTPIS1'
              end>
            Width = 40
          end
          object tbvNUSTCOFINS: TcxGridDBColumn
            Caption = 'ST COFINS'
            DataBinding.FieldName = 'NUSTCOFINS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 750
            Properties.KeyFieldNames = 'NUSTCOFINS'
            Properties.ListColumns = <
              item
                Caption = 'ST COFINS'
                MinWidth = 70
                Width = 70
                FieldName = 'NUSTCOFINS'
              end
              item
                Caption = 'Situa'#231#227'o Tribut'#225'ria COFINS'
                FieldName = 'NMSTCOFINS1'
              end>
            Width = 65
          end
          object tbvCDBCCALCULOCREDITO: TcxGridDBColumn
            Caption = 'Base C'#225'lculo Cr'#233'dito'
            DataBinding.FieldName = 'CDBCCALCULOCREDITO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDBCCALCULOCREDITO'
            Properties.ListColumns = <
              item
                FieldName = 'NMBCCALCULOCREDITO'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Width = 110
          end
          object tbvCDTPCOMISSAO: TcxGridDBColumn
            Caption = 'Tipo Comiss'#227'o'
            DataBinding.FieldName = 'CDTPCOMISSAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPCOMISSAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPCOMISSAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Width = 80
          end
          object tbvCDTPREGIMEICMS: TcxGridDBColumn
            Caption = 'Tipo Regime'
            DataBinding.FieldName = 'CDTPREGIMEICMS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 150
            Properties.KeyFieldNames = 'CDTPREGIMEICMS'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPREGIMEICMS'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Width = 150
          end
          object tbvBOALTERACUSTOMEDIO: TcxGridDBColumn
            Caption = 'Altera Custo M'#233'dio'
            DataBinding.FieldName = 'BOALTERACUSTOMEDIO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 100
          end
          object tbvPRDESCONTO: TcxGridDBColumn
            Caption = '% Desconto'
            DataBinding.FieldName = 'PRDESCONTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLDESCONTO: TcxGridDBColumn
            Caption = 'Vl Desconto'
            DataBinding.FieldName = 'VLDESCONTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvVLOUTDESPESA: TcxGridDBColumn
            Caption = 'Outras Despesas'
            DataBinding.FieldName = 'VLOUTDESPESA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLSEGURO: TcxGridDBColumn
            Caption = 'Seguro'
            DataBinding.FieldName = 'VLSEGURO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvVLFRETE: TcxGridDBColumn
            Caption = 'Frete'
            DataBinding.FieldName = 'VLFRETE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvBORECUPERAICMS: TcxGridDBColumn
            Caption = 'Recupera ICMS'
            DataBinding.FieldName = 'BORECUPERAICMS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 85
          end
          object tbvVLBASEICMS: TcxGridDBColumn
            Caption = 'Vl Base ICMS'
            DataBinding.FieldName = 'VLBASEICMS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvALICMS: TcxGridDBColumn
            Caption = '% ICMS'
            DataBinding.FieldName = 'ALICMS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 45
          end
          object tbvALICMSRED: TcxGridDBColumn
            Caption = '% Redu'#231#227'o BC ICMS'
            DataBinding.FieldName = 'ALICMSRED'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 155
          end
          object tbvVLICMS: TcxGridDBColumn
            Caption = 'Vl ICMS'
            DataBinding.FieldName = 'VLICMS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvpICMSUFDest: TcxGridDBColumn
            Caption = '% ICMS Destino'
            DataBinding.FieldName = 'PICMSUFDEST'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvpFCPUFDest: TcxGridDBColumn
            Caption = '% Fundo Comb Probreza'
            DataBinding.FieldName = 'PFCPUFDEST'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLBASEICMSSUBTRIB: TcxGridDBColumn
            Caption = 'Base ICMS Sub Trib'
            DataBinding.FieldName = 'VLBASEICMSSUBTRIB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
            Width = 105
          end
          object tbvALICMSSUBTRIB: TcxGridDBColumn
            Caption = '% ICMS Sub Trib'
            DataBinding.FieldName = 'ALICMSSUBTRIB'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 90
          end
          object tbvPRMRGVLADICIONADOICMSSUBTRIB: TcxGridDBColumn
            Caption = '% Margem Valor Agregado'
            DataBinding.FieldName = 'PRMRGVLADICIONADOICMSSUBTRIB'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 140
          end
          object tbvVLICMSSUBTRIB: TcxGridDBColumn
            Caption = 'Vl ICMS Sub Trib'
            DataBinding.FieldName = 'VLICMSSUBTRIB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvBORECUPERAIPI: TcxGridDBColumn
            Caption = 'Recupera IPI'
            DataBinding.FieldName = 'BORECUPERAIPI'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 70
          end
          object tbvVLBASEIPI: TcxGridDBColumn
            Caption = 'Base IPI'
            DataBinding.FieldName = 'VLBASEIPI'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvALIPI: TcxGridDBColumn
            Caption = '% IPI'
            DataBinding.FieldName = 'ALIPI'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLIPI: TcxGridDBColumn
            Caption = 'Vl IPI'
            DataBinding.FieldName = 'VLIPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLBASEISS: TcxGridDBColumn
            Caption = 'Base ISS'
            DataBinding.FieldName = 'VLBASEISS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvALISS: TcxGridDBColumn
            Caption = '% ISS'
            DataBinding.FieldName = 'ALISS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLISS: TcxGridDBColumn
            Caption = 'Vl ISS'
            DataBinding.FieldName = 'VLISS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvBORECUPERAPIS: TcxGridDBColumn
            Caption = 'Recupera PIS'
            DataBinding.FieldName = 'BORECUPERAPIS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 75
          end
          object tbvVLBASEPIS: TcxGridDBColumn
            Caption = 'Base PIS'
            DataBinding.FieldName = 'VLBASEPIS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvALPIS: TcxGridDBColumn
            Caption = '% PIS'
            DataBinding.FieldName = 'ALPIS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLPIS: TcxGridDBColumn
            Caption = 'Vl PIS'
            DataBinding.FieldName = 'VLPIS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvBORECUPERACOFINS: TcxGridDBColumn
            Caption = 'Recupera COFINS'
            DataBinding.FieldName = 'BORECUPERACOFINS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 95
          end
          object tbvVLBASECOFINS: TcxGridDBColumn
            Caption = 'Base COFINS'
            DataBinding.FieldName = 'VLBASECOFINS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvALCOFINS: TcxGridDBColumn
            Caption = '% COFINS'
            DataBinding.FieldName = 'ALCOFINS'
            Visible = False
          end
          object tbvVLCOFINS: TcxGridDBColumn
            Caption = 'Vl COFINS'
            DataBinding.FieldName = 'VLCOFINS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvPSLIQUIDO: TcxGridDBColumn
            Caption = 'Peso L'#237'quido'
            DataBinding.FieldName = 'PSLIQUIDO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvPSBRUTO: TcxGridDBColumn
            Caption = 'Peso Bruto'
            DataBinding.FieldName = 'PSBRUTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLCUSTOMEDIO: TcxGridDBColumn
            Caption = 'Custo M'#233'dio'
            DataBinding.FieldName = 'VLCUSTOMEDIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
          end
          object tbvVLCUSTO: TcxGridDBColumn
            Caption = 'Vl CUSTO'
            DataBinding.FieldName = 'VLCUSTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvBOCOMISSAO: TcxGridDBColumn
            Caption = 'Comiss'#227'o?'
            DataBinding.FieldName = 'BOCOMISSAO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 60
          end
          object tbvPRCOMISSAO: TcxGridDBColumn
            Caption = '% Comiss'#227'o'
            DataBinding.FieldName = 'PRCOMISSAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLCOMISSAO: TcxGridDBColumn
            Caption = 'VL Comiss'#227'o'
            DataBinding.FieldName = 'VLCOMISSAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLLUCRO: TcxGridDBColumn
            Caption = 'Vl Lucro'
            DataBinding.FieldName = 'VLLUCRO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvDSINFADICIONAL: TcxGridDBColumn
            Tag = 1
            Caption = 'Informa'#231#227'o Adicional'
            DataBinding.FieldName = 'DSINFADICIONAL'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Visible = False
            Width = 200
          end
          object tbvDSOBSERVACAO: TcxGridDBColumn
            Caption = 'Observacao'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Visible = False
            Width = 200
          end
          object tbvBOBASEIPIAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste Base IPI'
            DataBinding.FieldName = 'BOBASEIPIAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 85
          end
          object tbvBOIPIBCICMS: TcxGridDBColumn
            Caption = 'IPI faz parte da BC ICMS'
            DataBinding.FieldName = 'BOIPIBCICMS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 125
          end
          object tbvBOICMSBASESUBTRIBAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste Base ICMS Sub Trib'
            DataBinding.FieldName = 'BOBASEICMSSUBTRIBAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 150
          end
          object tbvBOICMSSUBTRIBAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste ICMS Sub Trib'
            DataBinding.FieldName = 'BOICMSSUBTRIBAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 110
          end
          object tbvBOAJUSTETOTAL: TcxGridDBColumn
            Caption = 'Ajuste Total'
            DataBinding.FieldName = 'BOAJUSTETOTAL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 65
          end
          object tbvBOBASEICMSAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste Base ICMS'
            DataBinding.FieldName = 'BOBASEICMSAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 95
          end
          object tbvBOCOFINSAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste COFINS'
            DataBinding.FieldName = 'BOCOFINSAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 80
          end
          object tbvBOPISAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste IPI'
            DataBinding.FieldName = 'BOPISAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 55
          end
          object tbvBOBASEPISAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste Base PIS'
            DataBinding.FieldName = 'BOBASEPISAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 85
          end
          object tbvBOBASECOFINSAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste Base COFINS'
            DataBinding.FieldName = 'BOBASECOFINSAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 105
          end
          object tbvNUCOTACAO: TcxGridDBColumn
            Caption = 'N'#186' Cota'#231#227'o'
            DataBinding.FieldName = 'NUCOTACAO'
            Visible = False
          end
          object tbvNUITEM: TcxGridDBColumn
            Caption = 'N'#186' Item'
            DataBinding.FieldName = 'NUITEM'
            Visible = False
          end
          object tbvVLBASEINSS: TcxGridDBColumn
            Caption = 'Base INSS'
            DataBinding.FieldName = 'VLBASEINSS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvALINSS: TcxGridDBColumn
            Caption = '% INSS'
            DataBinding.FieldName = 'ALINSS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 45
          end
          object tbvVLINSS: TcxGridDBColumn
            Caption = 'Vl INSS'
            DataBinding.FieldName = 'VLINSS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLBASEIRRF: TcxGridDBColumn
            Caption = 'Base IRRF'
            DataBinding.FieldName = 'VLBASEIRRF'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvALIRRF: TcxGridDBColumn
            Caption = '% IRRF'
            DataBinding.FieldName = 'ALIRRF'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLIRRF: TcxGridDBColumn
            Caption = 'Vl IRRF'
            DataBinding.FieldName = 'VLIRRF'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLTOTALTRIBUTO: TcxGridDBColumn
            Caption = 'Total Tributo'
            DataBinding.FieldName = 'VLTOTALTRIBUTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvPRTOTALTRIBUTO: TcxGridDBColumn
            Caption = '% Tributo'
            DataBinding.FieldName = 'PRTOTALTRIBUTO'
            Visible = False
            Options.Focusing = False
            Width = 55
          end
          object tbvNUPLCONTA: TcxGridDBColumn
            Caption = 'C'#243'd Plano Contas'
            DataBinding.FieldName = 'NUPLCONTA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvNUPLCONTAPropertiesButtonClick
            Visible = False
            Width = 100
          end
          object tbvNMPLCONTA: TcxGridDBColumn
            Caption = 'Plano Contas'
            DataBinding.FieldName = 'NMPLCONTA'
            Visible = False
            Options.Focusing = False
            Width = 200
          end
          object tbvNUCNTCUSTO: TcxGridDBColumn
            Caption = 'C'#243'd Centro Custo'
            DataBinding.FieldName = 'NUCNTCUSTO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvNUCNTCUSTOPropertiesButtonClick
            Visible = False
            Width = 100
          end
          object tbvNMCNTCUSTO: TcxGridDBColumn
            Caption = 'Centro Custo'
            DataBinding.FieldName = 'NMCNTCUSTO'
            Visible = False
            Options.Focusing = False
            Width = 200
          end
        end
        object grditsaidaLevel1: TcxGridLevel
          GridView = tbv
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Tributa'#231#227'o'
      object pnlconfigtributa: TPanel
        Left = 0
        Top = 0
        Width = 361
        Height = 197
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object lblaliquota: TLabel
          Left = 159
          Top = 2
          Width = 38
          Height = 13
          Alignment = taCenter
          Caption = 'Aliquota'
          Transparent = True
        end
        object lblvalor: TLabel
          Left = 239
          Top = 2
          Width = 24
          Height = 13
          Caption = 'Valor'
          Transparent = True
        end
        object lblbasecalculo: TLabel
          Left = 78
          Top = 2
          Width = 62
          Height = 13
          Caption = 'Base C'#225'lculo'
          Transparent = True
        end
        object lbliss: TLabel
          Left = 4
          Top = 23
          Width = 17
          Height = 16
          Caption = 'ISS'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblpisret: TLabel
          Left = 4
          Top = 45
          Width = 53
          Height = 16
          Caption = 'PIS Servi'#231'o'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblcofinsret: TLabel
          Left = 4
          Top = 67
          Width = 76
          Height = 16
          Caption = 'COFINS Servi'#231'o'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Bevel4: TBevel
          Left = 345
          Top = 0
          Width = 16
          Height = 197
          Align = alRight
          Shape = bsRightLine
          ExplicitHeight = 276
        end
        object lblinss: TLabel
          Left = 4
          Top = 88
          Width = 25
          Height = 16
          Caption = 'INSS'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblcontribsocial: TLabel
          Left = 4
          Top = 109
          Width = 59
          Height = 16
          Caption = 'Contrib Social'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblirrf: TLabel
          Left = 4
          Top = 131
          Width = 23
          Height = 16
          Caption = 'IRRF'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object ckbboretencaoiss: TcxDBCheckBox
          Left = 275
          Top = 16
          Caption = 'Reten'#231#227'o'
          DataBinding.DataField = 'BORETENCAOISS'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 17
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
        end
        object ckbboretencaopis: TcxDBCheckBox
          Left = 275
          Top = 38
          Caption = 'Reten'#231#227'o'
          DataBinding.DataField = 'BORETENCAOPIS'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 18
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
        end
        object ckbboretencaocofins: TcxDBCheckBox
          Left = 275
          Top = 60
          Caption = 'Reten'#231#227'o'
          DataBinding.DataField = 'BORETENCAOCOFINS'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 19
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
        end
        object ckbboretencaoinss: TcxDBCheckBox
          Left = 275
          Top = 81
          Caption = 'Reten'#231#227'o'
          DataBinding.DataField = 'BORETENCAOINSS'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 20
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
        end
        object ckbboretencaocontribsocial: TcxDBCheckBox
          Left = 275
          Top = 104
          Caption = 'Reten'#231#227'o'
          DataBinding.DataField = 'BORETENCAOCONTRIBSOCIAL'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 21
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
        end
        object ckbboretencaoirrf: TcxDBCheckBox
          Left = 275
          Top = 126
          Caption = 'Reten'#231#227'o'
          DataBinding.DataField = 'BORETENCAOIRRF'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 22
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
        end
        object edtalcofinsret: TcxDBCalcEdit
          Left = 153
          Top = 60
          DataBinding.DataField = 'ALCOFINSRET'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnEnter = colorenter
          OnExit = colorexit
          Width = 46
        end
        object edtvlirrf: TcxDBCalcEdit
          Left = 201
          Top = 126
          DataBinding.DataField = 'VLIRRF'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 16
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlcontribsocial: TcxDBCalcEdit
          Left = 201
          Top = 104
          DataBinding.DataField = 'VLCONTRIBSOCIAL'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlinss: TcxDBCalcEdit
          Left = 201
          Top = 81
          DataBinding.DataField = 'VLINSS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlcofinsret: TcxDBCalcEdit
          Left = 201
          Top = 60
          DataBinding.DataField = 'VLCOFINSRET'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlpisret: TcxDBCalcEdit
          Left = 201
          Top = 38
          DataBinding.DataField = 'VLPISRET'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvliss: TcxDBCalcEdit
          Left = 201
          Top = 16
          DataBinding.DataField = 'VLISS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtalpisret: TcxDBCalcEdit
          Left = 153
          Top = 38
          DataBinding.DataField = 'ALPISRET'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          Width = 46
        end
        object edtalinss: TcxDBCalcEdit
          Left = 153
          Top = 81
          DataBinding.DataField = 'ALINSS'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          OnEnter = colorenter
          OnExit = colorexit
          Width = 46
        end
        object edtalcontribsocial: TcxDBCalcEdit
          Left = 153
          Top = 104
          DataBinding.DataField = 'ALCONTRIBSOCIAL'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          OnEnter = colorenter
          OnExit = colorexit
          Width = 46
        end
        object edtalirrf: TcxDBCalcEdit
          Left = 153
          Top = 126
          DataBinding.DataField = 'ALIRRF'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 15
          OnEnter = colorenter
          OnExit = colorexit
          Width = 46
        end
        object edtvlbaseirrf: TcxDBCalcEdit
          Left = 78
          Top = 126
          DataBinding.DataField = 'VLBASEIRRF'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlbasecontribsocial: TcxDBCalcEdit
          Left = 78
          Top = 104
          DataBinding.DataField = 'VLBASECONTRIBSOCIAL'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlbaseinss: TcxDBCalcEdit
          Left = 78
          Top = 81
          DataBinding.DataField = 'VLBASEINSS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlbasecofinsret: TcxDBCalcEdit
          Left = 78
          Top = 60
          DataBinding.DataField = 'VLBASECOFINSRET'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlbasepisret: TcxDBCalcEdit
          Left = 78
          Top = 38
          DataBinding.DataField = 'VLBASEPISRET'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlbaseiss: TcxDBCalcEdit
          Left = 78
          Top = 16
          DataBinding.DataField = 'VLBASEISS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object ckbBOOUTDESPESAITEM: TcxDBCheckBox
          Left = 78
          Top = 148
          AutoSize = False
          Caption = 'Lan'#231'ar Outras Despesa por '#237'tem'
          DataBinding.DataField = 'BOOUTDESPESAITEM'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 23
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          Height = 21
          Width = 191
        end
      end
      object pnloutros: TPanel
        Left = 361
        Top = 0
        Width = 1009
        Height = 197
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 1013
        object lblvllucro: TLabel
          Left = 0
          Top = 52
          Width = 23
          Height = 16
          Caption = 'Lucro'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 228
          Top = 67
          Width = 64
          Height = 16
          Caption = 'Frete subst Trib'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblpis: TLabel
          Left = 228
          Top = 2
          Width = 17
          Height = 16
          Caption = 'PIS'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblcofins: TLabel
          Left = 228
          Top = 24
          Width = 40
          Height = 16
          Caption = 'COFINS'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblicmsred: TLabel
          Left = 228
          Top = 52
          Width = 67
          Height = 16
          Caption = 'Redu'#231#227'o ICMS'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblvlii: TLabel
          Left = 80
          Top = 72
          Width = 24
          Height = 13
          Caption = 'Valor'
          Transparent = True
        end
        object ckbboimportacao: TcxDBCheckBox
          Left = 2
          Top = 69
          Caption = 'Importa'#231#227'o'
          DataBinding.DataField = 'BOIMPORTACAO'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
        end
        object edtvlii: TcxDBCalcEdit
          Left = 105
          Top = 69
          DataBinding.DataField = 'VLII'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          OnEnter = colorenter
          OnExit = colorexit
          Width = 121
        end
        object edtvllucro: TcxDBCalcEdit
          Left = 105
          Top = 45
          DataBinding.DataField = 'VLLUCRO'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          OnEnter = colorenter
          OnExit = colorexit
          Width = 121
        end
        object edtvlfretesub: TcxDBCalcEdit
          Left = 439
          Top = 67
          DataBinding.DataField = 'VLFRETESUB'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlicmsred: TcxDBCalcEdit
          Left = 439
          Top = 45
          DataBinding.DataField = 'VLICMSRED'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlcofins: TcxDBCalcEdit
          Left = 439
          Top = 24
          DataBinding.DataField = 'VLCOFINS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlpis: TcxDBCalcEdit
          Left = 439
          Top = 2
          DataBinding.DataField = 'VLPIS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtalicmsred: TcxDBCalcEdit
          Left = 391
          Top = 45
          DataBinding.DataField = 'ALICMSRED'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnEnter = colorenter
          OnExit = colorexit
          Width = 46
        end
        object edtalfretesub: TcxDBCalcEdit
          Left = 391
          Top = 67
          DataBinding.DataField = 'ALFRETESUB'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          OnEnter = colorenter
          OnExit = colorexit
          Width = 46
        end
        object edtvlbasefretesub: TcxDBCalcEdit
          Left = 316
          Top = 67
          DataBinding.DataField = 'VLBASEFRETESUB'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlbaseicmsred: TcxDBCalcEdit
          Left = 316
          Top = 45
          DataBinding.DataField = 'VLBASEICMSRED'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlbasecofins: TcxDBCalcEdit
          Left = 316
          Top = 24
          DataBinding.DataField = 'VLBASECOFINS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
        object edtvlbasepis: TcxDBCalcEdit
          Left = 316
          Top = 2
          DataBinding.DataField = 'VLBASEPIS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Width = 74
        end
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 62
      object memdsobservacao: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        Properties.OnChange = memdsobservacaoPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Height = 197
        Width = 1370
      end
    end
    object tbsinfoadic: TcxTabSheet
      Caption = 'Informa'#231#245'es Adicionais'
      object Label3: TLabel
        Left = 3
        Top = 4
        Width = 100
        Height = 13
        Caption = 'Situa'#231#227'o Documento'
        Transparent = True
      end
      object lblnmstdocumento: TLabel
        Left = 187
        Top = 0
        Width = 191
        Height = 15
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 3
        Top = 26
        Width = 78
        Height = 13
        Caption = 'Data Refer'#234'ncia'
        Transparent = True
      end
      object lblnfefinalidade: TLabel
        Left = 3
        Top = 44
        Width = 90
        Height = 13
        Caption = 'Finalidade Emiss'#227'o'
        Transparent = True
      end
      object lblnuordserv: TLabel
        Left = 3
        Top = 65
        Width = 70
        Height = 13
        Caption = 'Ordem Servi'#231'o'
        Transparent = True
      end
      object txtNUORDSERV: TDBText
        Left = 106
        Top = 64
        Width = 143
        Height = 17
        DataField = 'NUORDSERV'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = txtNUORDSERVDblClick
      end
      object lblnucupom: TLabel
        Left = 3
        Top = 84
        Width = 33
        Height = 13
        Caption = 'Cupom'
        Transparent = True
      end
      object txtNUCUPOM: TDBText
        Left = 106
        Top = 83
        Width = 143
        Height = 17
        DataField = 'NUCUPOM'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = txtNUORDSERVDblClick
      end
      object Label16: TLabel
        Left = 253
        Top = 44
        Width = 176
        Height = 13
        Caption = 'Indicador de Presen'#231'a do Comprador'
        Transparent = True
      end
      object txtnustdocumento: TcxDBLabel
        Left = 105
        Top = 3
        DataBinding.DataField = 'NUSTDOCUMENTO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 145
      end
      object edtdtreferencia: TcxDBDateEdit
        Left = 105
        Top = 17
        DataBinding.DataField = 'DTREFERENCIA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        Width = 145
      end
      object cbxcdnfefinalidade: TcxDBLookupComboBox
        Left = 105
        Top = 38
        DataBinding.DataField = 'CDNFEFINALIDADE'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDNFEFINALIDADE'
        Properties.ListColumns = <
          item
            FieldName = 'NMNFEFINALIDADE'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Width = 145
      end
      object gbxdevolucao: TcxGroupBox
        Left = 3
        Top = 106
        Caption = 'Nota Fiscal de Origem da Devolu'#231#227'o '
        TabOrder = 3
        Height = 58
        Width = 305
        object lblsaidadevolucao: TLabel
          Left = 8
          Top = 16
          Width = 53
          Height = 13
          Caption = 'Nota Fiscal'
          Transparent = True
        end
        object lblentrada: TLabel
          Left = 8
          Top = 32
          Width = 36
          Height = 13
          Caption = 'Compra'
          Transparent = True
        end
        object lblnusaidadevolucao: TLabel
          Left = 85
          Top = 16
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
        end
        object lblnuentrada: TLabel
          Left = 85
          Top = 32
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnDblClick = lblnuentradaDblClick
        end
      end
      object cbxcdindpres: TcxDBLookupComboBox
        Left = 436
        Top = 38
        DataBinding.DataField = 'CDINDPRES'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDINDPRES'
        Properties.ListColumns = <
          item
            FieldName = 'NMINDPRES'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        Width = 317
      end
    end
    object tbscartacorrecao: TcxTabSheet
      Caption = 'Carta Corre'#231#227'o'
      object bdccarta: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1370
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object grdcartacorrecao: TcxGrid
        Left = 0
        Top = 22
        Width = 1370
        Height = 175
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 1374
        object grdcartacorrecaoDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dtscartacorrecao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdcartacorrecaoDBTableView1NSEQEVENTO: TcxGridDBColumn
            Caption = 'N'#186' Evento'
            DataBinding.FieldName = 'NSEQEVENTO'
          end
          object grdcartacorrecaoDBTableView1NUPROTOCOLO: TcxGridDBColumn
            Caption = 'N'#186' Protocolo'
            DataBinding.FieldName = 'NUPROTOCOLO'
          end
          object grdcartacorrecaoDBTableView1TSEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'TSEMISSAO'
            Width = 131
          end
          object grdcartacorrecaoDBTableView1DSCARTACORRECAO: TcxGridDBColumn
            Caption = 'Carta Corre'#231#227'o'
            DataBinding.FieldName = 'DSCARTACORRECAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Width = 493
          end
        end
        object grdcartacorrecaoLevel1: TcxGridLevel
          GridView = grdcartacorrecaoDBTableView1
        end
      end
    end
    object tbstpcomissao: TcxTabSheet
      Caption = 'Tipo Comiss'#227'o'
      ExplicitTop = 0
      ExplicitWidth = 1374
      ExplicitHeight = 0
      object grdsaidatpcomissao: TcxGrid
        Left = 0
        Top = 0
        Width = 1455
        Height = 197
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 1374
        object grdsaidatpcomissaoDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dtssaidatpcomissao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdsaidatpcomissaoDBTableView1CDTPCOMISSAO: TcxGridDBColumn
            Caption = 'Tipo Comiss'#227'o'
            DataBinding.FieldName = 'CDTPCOMISSAO'
            Width = 222
          end
          object grdsaidatpcomissaoDBTableView1PRCOMISSAO: TcxGridDBColumn
            Caption = '% Comiss'#227'o'
            DataBinding.FieldName = 'PRCOMISSAO'
          end
        end
        object grdsaidatpcomissaoLevel1: TcxGridLevel
          GridView = grdsaidatpcomissaoDBTableView1
        end
      end
    end
    object tbsreferenciada: TcxTabSheet
      Caption = 'Referenciada'
      object dxBevel1: TdxBevel
        Left = 0
        Top = 0
        Width = 1370
        Height = 41
        Align = alTop
        ExplicitWidth = 1208
      end
      object grdsaidareferenciada: TcxGrid
        Left = 0
        Top = 41
        Width = 1370
        Height = 156
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 1374
        object tbvreferenciada: TcxGridDBTableView
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
          DataController.DataSource = dtssaidareferenciada
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvreferenciadaNUDOCUMENTO: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'NUDOCUMENTO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grdsaidareferenciadaDBTableView1NUDOCUMENTOPropertiesButtonClick
            Width = 127
          end
          object tbvreferenciadaNUCHAVENFE: TcxGridDBColumn
            Caption = 'Chave NFE'
            DataBinding.FieldName = 'NUCHAVENFE'
            Options.Focusing = False
            Width = 291
          end
          object tbvreferenciadaBODIGITARCHAVE: TcxGridDBColumn
            Caption = 'Digitar a Chave'
            DataBinding.FieldName = 'BODIGITARCHAVE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 89
          end
        end
        object grdsaidareferenciadaLevel1: TcxGridLevel
          GridView = tbvreferenciada
        end
      end
      object rdgtpdevolucao: TcxDBRadioGroup
        Left = 3
        Top = 5
        Caption = 'Origem da Nota'
        DataBinding.DataField = 'TPDEVOLUCAO'
        DataBinding.DataSource = dts
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Nota Fiscal'
            Value = 'S'
          end
          item
            Caption = 'Compra'
            Value = 'E'
          end
          item
            Caption = 'Cupom Fiscal'
            Value = 'C'
          end>
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 33
        Width = 264
      end
    end
    object tbscancelamento: TcxTabSheet
      Caption = 'Justificativa de Cancelamento'
      object memdscancelamento: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSCANCELAMENTO'
        DataBinding.DataSource = dts
        Properties.ReadOnly = True
        Properties.OnChange = memdsobservacaoPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Height = 197
        Width = 1370
      end
    end
    object tbsinfcomplementar: TcxTabSheet
      Caption = 'Informa'#231#227'o Complementar'
      ExplicitTop = 0
      ExplicitWidth = 1374
      ExplicitHeight = 0
      object grdsaidaefd0450: TcxGrid
        Left = 0
        Top = 0
        Width = 1455
        Height = 131
        Align = alTop
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 1374
        object tbvsaidaefd0450: TcxGridDBTableView
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
          DataController.DataSource = dtssaidaefd0450
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object tbvsaidaefd0450CDEFD0450: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDEFD0450'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvsaidaefd0450CDEFD0450PropertiesButtonClick
          end
          object tbvsaidaefd0450NMEFD0450: TcxGridDBColumn
            Caption = 'Informa'#231#227'o Complementar'
            DataBinding.FieldName = 'NMEFD0450'
            Width = 600
          end
          object tbvsaidaefd0450DSCOMPLEMENTO: TcxGridDBColumn
            Caption = 'Complemento'
            DataBinding.FieldName = 'DSCOMPLEMENTO'
            Width = 300
          end
        end
        object grdsaidaefd0450Level1: TcxGridLevel
          GridView = tbvsaidaefd0450
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 131
        Width = 8
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salTop
        Control = grdsaidaefd0450
        ExplicitWidth = 1374
      end
      object grdsaidac111: TcxGrid
        Left = 0
        Top = 139
        Width = 1455
        Height = 58
        Align = alClient
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 1374
        object tbvsaidac111: TcxGridDBTableView
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
          DataController.DataSource = dtssaidac111
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object tbvsaidac111CDTPC111: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'CDTPC111'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPC111'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPC111'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 250
          end
          object tbvsaidac111NUPROCESSO: TcxGridDBColumn
            Caption = 'N'#186' Processo'
            DataBinding.FieldName = 'NUPROCESSO'
          end
        end
        object grdsaidac111Level1: TcxGridLevel
          GridView = tbvsaidac111
        end
      end
    end
    object tbsexportacao: TcxTabSheet
      Caption = 'Exporta'#231#227'o'
      ExplicitTop = 0
      ExplicitWidth = 1374
      ExplicitHeight = 0
      object lblcdufembarque: TLabel
        Left = 8
        Top = 12
        Width = 65
        Height = 13
        Caption = 'UF Embarque'
        Transparent = True
      end
      object lbldslocalemarque: TLabel
        Left = 8
        Top = 34
        Width = 77
        Height = 13
        Caption = 'Local Embarque'
        Transparent = True
      end
      object Label13: TLabel
        Left = 8
        Top = 54
        Width = 46
        Height = 13
        Caption = 'UF Sa'#237'da'
        Transparent = True
      end
      object Label14: TLabel
        Left = 8
        Top = 76
        Width = 65
        Height = 13
        Caption = 'Local Exporta'
        Transparent = True
      end
      object Label15: TLabel
        Left = 8
        Top = 98
        Width = 78
        Height = 13
        Caption = 'Local Despacho'
        Transparent = True
      end
      object cbxcdufembarque: TcxDBLookupComboBox
        Left = 87
        Top = 6
        DataBinding.DataField = 'CDUFEMBARQUE'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDUF'
        Properties.ListColumns = <
          item
            FieldName = 'SGUF'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Width = 49
      end
      object edtdslocalembarque: TcxDBTextEdit
        Left = 87
        Top = 27
        DataBinding.DataField = 'DSLOCALEMBARQUE'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        Width = 500
      end
      object cbxcdufsaida: TcxDBLookupComboBox
        Left = 87
        Top = 48
        DataBinding.DataField = 'CDUFSAIDA'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDUF'
        Properties.ListColumns = <
          item
            FieldName = 'SGUF'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = colorenter
        OnExit = colorexit
        Width = 49
      end
      object edtdslocalexporta: TcxDBTextEdit
        Left = 87
        Top = 69
        DataBinding.DataField = 'DSLOCALEXPORTA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = colorenter
        OnExit = colorexit
        Width = 500
      end
      object edtdslocaldespacho: TcxDBTextEdit
        Left = 87
        Top = 91
        DataBinding.DataField = 'DSLOCALDESPACHO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        Width = 500
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 690
    Width = 1370
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object Bevel18: TBevel
      Left = 2
      Top = 19
      Width = 122
      Height = 24
    end
    object Label35: TLabel
      Left = 4
      Top = 23
      Width = 21
      Height = 16
      Caption = 'Frete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel17: TBevel
      Left = 125
      Top = 19
      Width = 120
      Height = 24
    end
    object Bevel16: TBevel
      Left = 246
      Top = 19
      Width = 290
      Height = 24
    end
    object Bevel8: TBevel
      Left = 537
      Top = 19
      Width = 122
      Height = 24
    end
    object Bevel19: TBevel
      Left = 660
      Top = 19
      Width = 122
      Height = 24
    end
    object Bevel26: TBevel
      Left = 660
      Top = 1
      Width = 122
      Height = 18
    end
    object Bevel25: TBevel
      Left = 537
      Top = 1
      Width = 122
      Height = 18
    end
    object Bevel23: TBevel
      Left = 405
      Top = 1
      Width = 131
      Height = 18
    end
    object Bevel24: TBevel
      Left = 246
      Top = 1
      Width = 157
      Height = 18
    end
    object Bevel22: TBevel
      Left = 125
      Top = 1
      Width = 120
      Height = 18
    end
    object Bevel21: TBevel
      Left = 2
      Top = 1
      Width = 122
      Height = 18
    end
    object lblresumobaseicms: TLabel
      Left = 4
      Top = 0
      Width = 45
      Height = 16
      Caption = 'BC ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblresumoipi: TLabel
      Left = 663
      Top = 23
      Width = 38
      Height = 16
      Caption = 'Valor IPI'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblresumoprodutos: TLabel
      Left = 540
      Top = 0
      Width = 37
      Height = 16
      Caption = 'Produtos'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 783
      Top = 6
      Width = 59
      Height = 35
      Caption = 'Total'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 35
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblresumoservico: TLabel
      Left = 662
      Top = 0
      Width = 38
      Height = 16
      Caption = 'Servi'#231'os'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblvlseguro: TLabel
      Left = 126
      Top = 23
      Width = 30
      Height = 16
      Caption = 'Seguro'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lbldesconto: TLabel
      Left = 298
      Top = 23
      Width = 39
      Height = 16
      Caption = 'Desconto'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lbl5: TLabel
      Left = 247
      Top = 23
      Width = 8
      Height = 13
      Caption = '%'
      Transparent = True
    end
    object lblvloutdespesa: TLabel
      Left = 539
      Top = 23
      Width = 40
      Height = 16
      Caption = 'Out Desp'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 407
      Top = 0
      Width = 58
      Height = 16
      Caption = 'ICMS Substit'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblresumoicms: TLabel
      Left = 126
      Top = 0
      Width = 27
      Height = 16
      Caption = 'ICMS'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 256
      Top = 0
      Width = 72
      Height = 16
      Caption = 'BC ICMS Subst'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object txtVLICMS: TcxDBLabel
      Left = 156
      Top = -1
      DataBinding.DataField = 'VLICMS'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 85
    end
    object txtvlbaseicms: TcxDBLabel
      Left = 46
      Top = -1
      DataBinding.DataField = 'VLBASEICMS'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 75
    end
    object edtvloutdespesa: TcxDBCalcEdit
      Left = 581
      Top = 22
      DataBinding.DataField = 'VLOUTDESPESA'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 77
    end
    object edtvldesconto: TcxDBCalcEdit
      Left = 339
      Top = 22
      DataBinding.DataField = 'VLDESCONTO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 60
    end
    object edtprdesconto: TcxDBCalcEdit
      Left = 258
      Top = 22
      DataBinding.DataField = 'PRDESCONTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 38
    end
    object edtvlseguro: TcxDBCalcEdit
      Left = 156
      Top = 22
      DataBinding.DataField = 'VLSEGURO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 85
    end
    object edtvlfrete: TcxDBCalcEdit
      Left = 27
      Top = 22
      DataBinding.DataField = 'VLFRETE'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 93
    end
    object txtVLBASEICMSSUBTRIB: TcxDBLabel
      Left = 325
      Top = -1
      DataBinding.DataField = 'VLBASEICMSSUBTRIB'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 75
    end
    object txtVLICMSSUBTRIB: TcxDBLabel
      Left = 466
      Top = -1
      DataBinding.DataField = 'VLICMSSUBTRIB'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 69
    end
    object txtVLPRODUTO: TcxDBLabel
      Left = 579
      Top = -1
      DataBinding.DataField = 'VLPRODUTO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 75
    end
    object txtVLSERVICO: TcxDBLabel
      Left = 701
      Top = -1
      DataBinding.DataField = 'VLSERVICO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 75
    end
    object txtVLIPI: TcxDBLabel
      Left = 705
      Top = 23
      DataBinding.DataField = 'VLIPI'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 75
    end
    object txtVLTOTAL: TcxDBLabel
      Left = 851
      Top = 0
      AutoSize = True
      DataBinding.DataField = 'VLTOTAL'
      DataBinding.DataSource = dts
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -35
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object ckbboitemdesconto: TcxDBCheckBox
      Left = 399
      Top = 22
      Caption = 'Desconto por item'
      DataBinding.DataField = 'BOITEMDESCONTO'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 13
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
    end
  end
  object gbxduplicata: TcxGroupBox
    Left = 0
    Top = 499
    Align = alBottom
    Caption = 'Contas a Receber'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Height = 191
    Width = 1370
    object Bevel1: TBevel
      Left = 2
      Top = 18
      Width = 1366
      Height = 20
      Align = alTop
      Shape = bsBottomLine
      ExplicitWidth = 1204
    end
    object lblcdcondpagto: TLabel
      Left = 2
      Top = 15
      Width = 60
      Height = 13
      Caption = 'Cnd Pagto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcdcondpagtoDblClick
    end
    object lbltpcobranca: TLabel
      Left = 442
      Top = 15
      Width = 25
      Height = 13
      Caption = 'Cobr.'
      Transparent = True
    end
    object Label4: TLabel
      Left = 235
      Top = 15
      Width = 41
      Height = 13
      Caption = 'Hist'#243'rico'
      Transparent = True
    end
    object lblplconta: TLabel
      Left = 640
      Top = 15
      Width = 45
      Height = 13
      Caption = 'Pl Contas'
      Transparent = True
    end
    object lblcntcusto: TLabel
      Left = 1002
      Top = 15
      Width = 46
      Height = 13
      Caption = 'Cnt Custo'
      Transparent = True
    end
    object cbxcdcondpagto: TcxDBLookupComboBox
      Left = 62
      Top = 13
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 172
    end
    object edtdshistorico: TcxDBTextEdit
      Left = 277
      Top = 13
      DataBinding.DataField = 'DSHISTORICO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 165
    end
    object cbxcdtpcobranca: TcxDBLookupComboBox
      Left = 467
      Top = 13
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 172
    end
    object bdcduplicata: TdxBarDockControl
      Left = 2
      Top = 38
      Width = 1366
      Height = 22
      Align = dalTop
      BarManager = bmg1
    end
    object txtnmplconta: TcxDBLabel
      Left = 795
      Top = 13
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
      Width = 157
    end
    object edtnuplconta: TcxDBButtonEdit
      Left = 683
      Top = 13
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
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtnuplcontaKeyDown
      Width = 112
    end
    object grdduplicata: TcxGrid
      Left = 2
      Top = 60
      Width = 1366
      Height = 129
      Align = alClient
      TabOrder = 9
      LookAndFeel.NativeStyle = False
      object tbvduplicata: TcxGridDBTableView
        OnKeyDown = tbvduplicataKeyDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Enabled = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Append.Enabled = False
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
        OnCellDblClick = tbvduplicataCellDblClick
        OnCustomDrawCell = tbvduplicataCustomDrawCell
        OnFocusedRecordChanged = tbvduplicataFocusedRecordChanged
        DataController.DataSource = dtsduplicata
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VLDUPLICATA'
            Column = tbvduplicataVLDUPLICATA
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VLSALDO'
            Column = tbvduplicataVLSALDO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tbvduplicataNUDUPLICATA: TcxGridDBColumn
          Caption = 'Contas Receber'
          DataBinding.FieldName = 'NUDUPLICATA'
          Styles.Content = dtmmain.cxStyle1
          Width = 90
        end
        object tbvduplicataDTVENCIMENTO: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'DTVENCIMENTO'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 75
        end
        object tbvduplicataVLDUPLICATA: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VLDUPLICATA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Width = 100
        end
        object tbvduplicataVLSALDO: TcxGridDBColumn
          Caption = 'Saldo'
          DataBinding.FieldName = 'VLSALDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 100
        end
        object tbvduplicataCDSTDUPLICATA: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'CDSTDUPLICATA'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CDSTDUPLICATA'
          Properties.ListColumns = <
            item
              FieldName = 'NMSTDUPLICATA'
            end>
          Properties.ListOptions.ShowHeader = False
          Options.Focusing = False
          Width = 90
        end
        object tbvduplicataCDTPCOBRANCA: TcxGridDBColumn
          Caption = 'Tipo Cobran'#231'a'
          DataBinding.FieldName = 'CDTPCOBRANCA'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'CDTPCOBRANCA'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPCOBRANCA'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 170
        end
        object tbvduplicataNUPLCONTA: TcxGridDBColumn
          Caption = 'Plano de Contas'
          DataBinding.FieldName = 'NUPLCONTA'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = grdduplicatatvNUPLCONTAPropertiesButtonClick
          Width = 150
        end
        object tbvduplicataNMPLCONTA: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'NMPLCONTA'
          Options.Focusing = False
          Width = 210
        end
        object tbvduplicatanucntcusto: TcxGridDBColumn
          Caption = 'Centro Custo'
          DataBinding.FieldName = 'NUCNTCUSTO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = tbvduplicatanucntcustoPropertiesButtonClick
          Width = 160
        end
        object tbvduplicatanmcntcusto: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'NMCNTCUSTO'
          Width = 270
        end
        object tbvduplicataNUCOR: TcxGridDBColumn
          DataBinding.FieldName = 'NUCOR'
          Visible = False
          IsCaptionAssigned = True
        end
        object tbvduplicataNUCORCONTA: TcxGridDBColumn
          DataBinding.FieldName = 'NUCORCONTA'
          Visible = False
          IsCaptionAssigned = True
        end
      end
      object grdduplicataLevel1: TcxGridLevel
        GridView = tbvduplicata
      end
    end
    object ckbBORATEIOPLCONTA: TcxDBCheckBox
      Left = 948
      Top = 11
      Caption = 'Rateio'
      DataBinding.DataField = 'BORATEIOPLCONTA'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
    end
    object ckbborateiocntcusto: TcxDBCheckBox
      Left = 1339
      Top = 11
      Caption = 'Rateio'
      DataBinding.DataField = 'BORATEIOCNTCUSTO'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
    end
    object txtnmcntcusto: TcxDBLabel
      Left = 1162
      Top = 13
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
      Width = 180
    end
    object edtnucntcusto: TcxDBButtonEdit
      Left = 1050
      Top = 13
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
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtnucntcustoKeyDown
      Width = 112
    end
  end
  object splduplicata: TcxSplitter
    Left = 0
    Top = 491
    Width = 1370
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salBottom
    Control = gbxduplicata
  end
  object gbxrepresentante: TcxGroupBox
    Left = 0
    Top = 156
    Align = alTop
    Caption = '&Representante'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Height = 39
    Width = 1370
    object lblrepresentante: TLabel
      Left = 5
      Top = 18
      Width = 84
      Height = 13
      Caption = 'Representante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblrepresentanteDblClick
    end
    object lblcomissao: TLabel
      Left = 324
      Top = 18
      Width = 45
      Height = 13
      Caption = 'Comiss'#227'o'
      Transparent = True
    end
    object cbxcdrepresentante: TcxDBLookupComboBox
      Left = 90
      Top = 14
      DataBinding.DataField = 'CDREPRESENTANTE'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDREPRESENTANTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMREPRESENTANTE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 233
    end
    object edtprcomissao: TcxDBCalcEdit
      Left = 371
      Top = 14
      DataBinding.DataField = 'PRCOMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 46
    end
    object txtvlcomissao: TcxDBLabel
      Left = 418
      Top = 14
      DataBinding.DataField = 'VLCOMISSAO'
      DataBinding.DataSource = dts
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 121
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 641
    Top = 173
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
    object actGerarDuplicata: TAction
      Caption = 'Gerar Contas a Receber'
      Enabled = False
      Hint = 'Gerar Duplicatas'
      ImageIndex = 32
      Visible = False
      OnExecute = actGerarDuplicataExecute
    end
    object actgerarduplicataretencao: TAction
      Caption = 'Gerar Contas a Receber - Retencao'
      ImageIndex = 32
    end
    object actexibircampos: TAction
      Caption = 'Exibir Campos (F8)'
      Hint = 'Exibir Campos'
      ShortCut = 119
      OnExecute = actexibircamposExecute
    end
    object actvisualizar: TAction
      Caption = 'Visualizar'
      Enabled = False
      Hint = 'Visualizar'
      ImageIndex = 125
      OnExecute = actvisualizarExecute
    end
    object actAbrirCliente: TAction
      Hint = 'Cliente'
      ImageIndex = 35
      OnExecute = actAbrirClienteExecute
    end
    object actAbrirFornecedor: TAction
      Hint = 'Fornecedor'
      ImageIndex = 36
      OnExecute = actAbrirFornecedorExecute
    end
    object actAbrirRepresentante: TAction
      Hint = 'Representante'
      ImageIndex = 42
      OnExecute = actAbrirRepresentanteExecute
    end
    object actAbrirCondPagto: TAction
      Hint = 'condpagto'
      ImageIndex = 47
      OnExecute = actAbrirCondPagtoExecute
    end
    object actAbrirTransportadora: TAction
      Hint = 'Transportadora'
      ImageIndex = 16
      OnExecute = actAbrirTransportadoraExecute
    end
    object actAbrirDuplicata: TAction
      Hint = 'Duplicata'
      ImageIndex = 32
      OnExecute = actAbrirDuplicataExecute
    end
    object actabrirtpsaida: TAction
      Hint = 'tpsaida'
      ImageIndex = 19
      OnExecute = actabrirtpsaidaExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      ImageIndex = 24
      OnExecute = actabrirprodutoExecute
    end
    object actabrirproduto2: TAction
      Hint = 'produto'
      ImageIndex = 24
    end
    object actabrirpedido: TAction
      Hint = 'pedido'
      ImageIndex = 25
      OnExecute = actabrirpedidoExecute
    end
    object actGerarDevolucaoSaida: TAction
      Caption = 'Nota Fiscal'
      Enabled = False
      Hint = 'Nota Fiscal'
      ImageIndex = 19
      OnExecute = actGerarDevolucaoSaidaExecute
    end
    object actGerarDevolucaoEntrada: TAction
      Caption = 'Compra'
      Enabled = False
      Hint = 'Compra'
      OnExecute = actGerarDevolucaoEntradaExecute
    end
    object actimprimirlaser: TAction
      Caption = 'Imprimir'
      OnExecute = actimprimirlaserExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actnfe: TAction
      Caption = 'Gerar txt'
      Enabled = False
      Hint = 'Gerar txt para nota fiscal eletr'#244'nica'
      ImageIndex = 134
      Visible = False
      OnExecute = actnfeExecute
    end
    object actcancelarNF: TAction
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar Nota Fiscal'
      ImageIndex = 142
      OnExecute = actcancelarNFExecute
    end
    object actordservimportar: TAction
      Caption = 'Importar Ordem Servi'#231'o'
      ImageIndex = 64
      OnExecute = actordservimportarExecute
    end
    object actexportarxml: TAction
      Caption = 'Exportar xml'
      Enabled = False
      ImageIndex = 134
      OnExecute = actexportarxmlExecute
    end
    object actnfemenu: TAction
      Caption = 'NFE'
      ImageIndex = 134
      ShortCut = 16461
      OnExecute = actnfemenuExecute
    end
    object actnfeconfigurar: TAction
      Caption = 'Configurar'
      OnExecute = actnfeconfigurarExecute
    end
    object actnfestatus: TAction
      Caption = 'Status Servi'#231'o'
      OnExecute = actnfestatusExecute
    end
    object actnfeenviar: TAction
      Caption = 'Enviar'
      Enabled = False
      ImageIndex = 148
      OnExecute = actnfeenviarExecute
    end
    object actnfeemaildestinatario: TAction
      Caption = 'Enviar Email Destinat'#225'rio'
      Enabled = False
      ImageIndex = 146
      OnExecute = actnfeemaildestinatarioExecute
    end
    object actnfeemail: TAction
      Caption = 'NF-e'
      Enabled = False
      ImageIndex = 146
      OnExecute = actnfeemailExecute
    end
    object actnfeconsultar: TAction
      Caption = 'Consultar'
      Enabled = False
      ImageIndex = 151
      OnExecute = actnfeconsultarExecute
    end
    object actnfecancelar: TAction
      Caption = 'Cancelar'
    end
    object actimprimirboleto: TAction
      Caption = 'Boleto'
      Hint = 'Boleto'
      ImageIndex = 3
      OnExecute = actimprimirboletoExecute
    end
    object actnfeconsultacadastro: TAction
      Caption = 'Consulta Cadastro'
      Enabled = False
      OnExecute = actnfeconsultacadastroExecute
    end
    object actnfegerarpdf: TAction
      Caption = 'Gerar PDF'
      Enabled = False
      ImageIndex = 145
      OnExecute = actnfegerarpdfExecute
    end
    object actnfeinutilizar: TAction
      Caption = 'Inutilizar'
      OnExecute = actnfeinutilizarExecute
    end
    object actnfeValidar: TAction
      Caption = 'Validar'
      Enabled = False
      ImageIndex = 149
      OnExecute = actnfeValidarExecute
    end
    object actabrirentrada: TAction
      Hint = 'entrada'
      OnExecute = actabrirentradaExecute
    end
    object actabrirsaida: TAction
      Hint = 'saida'
    end
    object actbaixaduplicata: TAction
      Caption = 'Contas a Receber'
      Enabled = False
      ImageIndex = 22
      OnExecute = actbaixaduplicataExecute
    end
    object actimprimirduplicata: TAction
      Caption = 'Imprimir'
      ImageIndex = 3
      OnExecute = actimprimirduplicataExecute
    end
    object actimprimirduplicataduplicata: TAction
      Caption = '331 - Duplicata'
      OnExecute = actimprimirduplicataduplicataExecute
    end
    object actbaixar: TAction
      Caption = 'Baixar'
      ImageIndex = 22
      OnExecute = actbaixarExecute
    end
    object actbaixaduplicatatodas: TAction
      Caption = 'Todas as Contas a Receber'
      OnExecute = actbaixaduplicatatodasExecute
    end
    object actredefinir: TAction
      Caption = 'Redefinir'
      OnExecute = actredefinirExecute
    end
    object actcartacorrecao: TAction
      Caption = 'Carta Corre'#231#227'o'
      Enabled = False
      OnExecute = actcartacorrecaoExecute
    end
    object actenviaremailcartacorrecao: TAction
      Caption = 'Enviar e-mail'
      OnExecute = actenviaremailcartacorrecaoExecute
    end
    object actImportacao: TAction
      Caption = 'Importa'#231#227'o'
      Visible = False
      OnExecute = actImportacaoExecute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
    object actcancelarnota: TAction
      Caption = 'Cancelar'
      Enabled = False
      ImageIndex = 142
      OnExecute = actcancelarnotaExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actimprimirduplicatanota: TAction
      Caption = '517 - Nota Fiscal - Duplicata'
      OnExecute = actimprimirduplicatanotaExecute
    end
    object actimprimirrecibo: TAction
      Caption = '548- Recibo da nota'
      OnExecute = actimprimirreciboExecute
    end
    object actimprimirreciboduplicata: TAction
      Caption = '88- Recibo do Contas a Receber'
      OnExecute = actimprimirreciboduplicataExecute
    end
    object actimprimircartacorrecao: TAction
      Caption = 'Imprimir'
      ImageIndex = 3
      OnExecute = actimprimircartacorrecaoExecute
    end
    object actpdfcartacorrecao: TAction
      Caption = 'Exportar PDF'
      ImageIndex = 145
      OnExecute = actpdfcartacorrecaoExecute
    end
    object actabrirordserv: TAction
      Hint = 'ordserv'
      OnExecute = actabrirordservExecute
    end
    object actcopiarchave: TAction
      Caption = 'Consultar www.nfe.fazenda.gov.br'
      Enabled = False
      OnExecute = actcopiarchaveExecute
    end
    object actabrirlocacao: TAction
      Hint = 'locacao'
      OnExecute = actabrirlocacaoExecute
    end
    object actemail: TAction
      Caption = 'Email'
      Enabled = False
      ImageIndex = 146
      OnExecute = actemailExecute
    end
    object actemailnotafiscal: TAction
      Caption = 'Nota Fiscal'
      OnExecute = actemailnotafiscalExecute
    end
    object actimprimirsaida: TAction
      Caption = 'Nota Fiscal'
      OnExecute = actimprimirsaidaExecute
    end
    object actemailduplicata: TAction
      Caption = 'Email'
      ImageIndex = 146
      OnExecute = actemailduplicataExecute
    end
    object actemailduplicataduplicata: TAction
      Caption = '331 - Duplicata'
      OnExecute = actemailduplicataduplicataExecute
    end
    object actemailduplicatanota: TAction
      Caption = '517 - Nota Fiscal - Duplicata'
      OnExecute = actemailduplicatanotaExecute
    end
    object actemailrecibo: TAction
      Caption = '548- Recibo da nota'
      OnExecute = actemailreciboExecute
    end
    object actemailreciboduplicata: TAction
      Caption = '88- Recibo do Contas a Receber'
      OnExecute = actemailreciboduplicataExecute
    end
    object actemailboleto: TAction
      Caption = 'Boleto'
      Hint = 'Boleto'
      OnExecute = actemailboletoExecute
    end
    object actemailnotafiscalboleto: TAction
      Caption = 'Nota Fiscal + Boleto(s)'
      OnExecute = actemailnotafiscalboletoExecute
    end
    object actemailnfeboleto: TAction
      Caption = 'NF-e + Boleto(s)'
      OnExecute = actemailnfeboletoExecute
    end
    object actimprimircarne: TAction
      Caption = 'Carne'
      OnExecute = actimprimircarneExecute
    end
    object actloteserie: TAction
      Caption = 'Lote S'#233'rie (F6)'
      ShortCut = 117
      Visible = False
      OnExecute = actloteserieExecute
    end
    object actalternar: TAction
      Caption = 'Alternar'
      ShortCut = 120
    end
    object actexportarXMLCartaCorrecao: TAction
      Caption = 'Exportar XML'
      OnExecute = actexportarXMLCartaCorrecaoExecute
    end
    object actImportarArquivoXML: TAction
      Caption = 'Importar XML do Arquivo'
      OnExecute = actImportarArquivoXMLExecute
    end
    object actImportarDiretorioXML: TAction
      Caption = 'Importar XML do diretorio'
      OnExecute = actImportarDiretorioXMLExecute
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
    Left = 696
    Top = 173
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
      Caption = 'saida'
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
          ItemName = 'dxBarLargeButton16'
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
          ItemName = 'dxBarLargeButton20'
        end
        item
          Visible = True
          ItemName = 'btnnfe'
        end
        item
          Visible = True
          ItemName = 'btnopcoes'
        end
        item
          BeginGroup = True
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
      BorderStyle = bbsNone
      Caption = 'Produto'
      CaptionButtons = <>
      DockControl = bdcproduto
      DockedDockControl = bdcproduto
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 434
      FloatTop = 486
      FloatClientWidth = 122
      FloatClientHeight = 66
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bmg1Bar2: TdxBar
      BorderStyle = bbsNone
      Caption = 'duplicata'
      CaptionButtons = <>
      DockControl = bdcduplicata
      DockedDockControl = bdcduplicata
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 499
      FloatTop = 510
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bmg1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'carta'
      CaptionButtons = <>
      DockControl = bdccarta
      DockedDockControl = bdccarta
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 193
      FloatTop = 84
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
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
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'btnnfe'
        end
        item
          Visible = True
          ItemName = 'btnopcoes'
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
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
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
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actnfe
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actvisualizar
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actnfe
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actcancelarNF
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actordservimportar
      Category = 0
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Devolu'#231#227'o'
      Category = 0
      Visible = ivAlways
      ImageIndex = 98
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    object dxBarButton8: TdxBarButton
      Action = actGerarDevolucaoEntrada
      Category = 0
      ImageIndex = 27
    end
    object dxBarButton9: TdxBarButton
      Action = actGerarDevolucaoSaida
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actGerarDuplicata
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actexibircampos
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = actimprimirboleto
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton15: TdxBarButton
      Caption = 'NF-e'
      Category = 0
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton16: TdxBarButton
      Action = actexportarxml
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object btnnfe: TdxBarLargeButton
      Action = actnfemenu
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumnfe
      SyncImageIndex = False
      ImageIndex = 134
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actnfeconfigurar
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actnfestatus
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actnfeenviar
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actnfeconsultar
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actnfeconsultacadastro
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actnfeinutilizar
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actnfegerarpdf
      Category = 0
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Action = actvisualizar
      Category = 0
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = actcancelarNF
      Category = 0
    end
    object dxBarLargeButton18: TdxBarLargeButton
      Action = actexportarxml
      Category = 0
    end
    object dxBarLargeButton19: TdxBarLargeButton
      Caption = 'NF-e'
      Category = 0
      Visible = ivAlways
    end
    object dxBarLargeButton22: TdxBarLargeButton
      Action = actnfeValidar
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actnfeemail
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actbaixaduplicata
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem2: TdxBarSubItem
      Action = actimprimirduplicata
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end>
    end
    object dxBarButton19: TdxBarButton
      Action = actimprimirduplicataduplicata
      Category = 0
    end
    object dxBarSubItem4: TdxBarSubItem
      Action = actbaixar
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end>
    end
    object dxBarButton21: TdxBarButton
      Action = actbaixaduplicatatodas
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = actredefinir
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = actcartacorrecao
      Category = 0
    end
    object dxBarButton26: TdxBarButton
      Action = actImportacao
      Category = 0
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object dxBarLargeButton20: TdxBarLargeButton
      Action = actcancelarnota
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = actenviaremailcartacorrecao
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton23: TdxBarButton
      Action = actimprimirduplicatanota
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = actimprimirrecibo
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = actimprimircartacorrecao
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton18: TdxBarButton
      Action = actpdfcartacorrecao
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton20: TdxBarButton
      Action = actcopiarchave
      Category = 0
    end
    object btnemail: TdxBarLargeButton
      Action = actemail
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumemail
    end
    object dxBarButton28: TdxBarButton
      Action = actemailnotafiscal
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actimprimirsaida
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Action = actemailduplicata
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton29'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end>
    end
    object dxBarButton6: TdxBarButton
      Action = actemailduplicataduplicata
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = actemailduplicatanota
      Category = 0
    end
    object dxBarButton27: TdxBarButton
      Action = actemailrecibo
      Category = 0
    end
    object dxBarButton29: TdxBarButton
      Action = actemailboleto
      Category = 0
    end
    object dxBarButton30: TdxBarButton
      Action = actemailnotafiscalboleto
      Category = 0
    end
    object dxBarButton31: TdxBarButton
      Action = actemailnfeboleto
      Category = 0
    end
    object dxBarButton32: TdxBarButton
      Action = actimprimircarne
      Category = 0
    end
    object dxBarButton33: TdxBarButton
      Action = actloteserie
      Category = 0
    end
    object dxBarButton34: TdxBarButton
      Action = actnfeemaildestinatario
      Category = 0
    end
    object dxBarButton35: TdxBarButton
      Action = actImportarArquivoXML
      Category = 0
    end
    object dxBarButton36: TdxBarButton
      Action = actexportarXMLCartaCorrecao
      Category = 0
    end
    object dxBarButton37: TdxBarButton
      Action = actimprimirreciboduplicata
      Category = 0
    end
    object dxBarButton38: TdxBarButton
      Action = actImportarDiretorioXML
      Category = 0
    end
  end
  object pumnfe: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarLargeButton22'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton35'
      end
      item
        Visible = True
        ItemName = 'dxBarButton38'
      end
      item
        Visible = True
        ItemName = 'dxBarButton34'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton25'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton4'
      end>
    UseOwnFont = False
    Left = 556
    Top = 429
  end
  object nfe: TACBrNFe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 60
    Configuracoes.WebServices.IntervaloTentativas = 2000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 900
    Top = 78
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSubItem3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end>
    UseOwnFont = False
    Left = 480
    Top = 429
  end
  object cdsduplicata: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsduplicata
    Params = <>
    BeforePost = cdsduplicataBeforePost
    OnNewRecord = cdsduplicataNewRecord
    Left = 1010
    Top = 131
    object cdsduplicataCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsduplicataCDSTDUPLICATA: TIntegerField
      FieldName = 'CDSTDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataCDTPPAGAMENTO: TIntegerField
      FieldName = 'CDTPPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDSTREGCOBRANCA: TIntegerField
      FieldName = 'CDSTREGCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object cdsduplicataNUAGENCIA: TStringField
      FieldName = 'NUAGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsduplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsduplicataDTVENCIMENTOValidate
    end
    object cdsduplicataDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsduplicataVLDUPLICATAValidate
      Precision = 15
      Size = 2
    end
    object cdsduplicataDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsduplicataDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataPRMULTA: TFloatField
      FieldName = 'PRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataNUBOLETA: TStringField
      FieldName = 'NUBOLETA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataBOENVIADO: TStringField
      FieldName = 'BOENVIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsduplicataBOIMPRESSA: TStringField
      FieldName = 'BOIMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsduplicataNUCAIXA: TIntegerField
      FieldName = 'NUCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsduplicataNUNOSSONUMERO: TStringField
      FieldName = 'NUNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 17
    end
    object cdsduplicataCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsduplicataNUPLCONTAValidate
      Size = 100
    end
    object cdsduplicataCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataDSPARCELA: TStringField
      FieldName = 'DSPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsduplicataCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDUSUARIOBAIXA: TIntegerField
      FieldName = 'CDUSUARIOBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDTPDUPLICATA: TIntegerField
      FieldName = 'CDTPDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataNUCPFCNPJ: TStringField
      FieldName = 'NUCPFCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataNUCPFCNPJ2: TStringField
      FieldName = 'NUCPFCNPJ2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataNMEMITENTE: TStringField
      FieldName = 'NMEMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsduplicataNMEMITENTE2: TStringField
      FieldName = 'NMEMITENTE2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsduplicataNUCONTACORRENTE: TStringField
      FieldName = 'NUCONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsduplicataTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsduplicataCDBANCODEVOLUCAO: TIntegerField
      FieldName = 'CDBANCODEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDNEGOCIACAOSAIDA: TIntegerField
      FieldName = 'CDNEGOCIACAOSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDSETBOLETO: TIntegerField
      FieldName = 'CDSETBOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataDSOBSERVACAOBOLETO: TBlobField
      FieldName = 'DSOBSERVACAOBOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsduplicataNMSTDUPLICATA: TStringField
      FieldName = 'NMSTDUPLICATA'
      ProviderFlags = []
      Size = 100
    end
    object cdsduplicataNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsduplicataNUCOR: TIntegerField
      FieldName = 'NUCOR'
      ProviderFlags = []
    end
    object cdsduplicataNUCORCONTA: TIntegerField
      FieldName = 'NUCORCONTA'
      ProviderFlags = []
    end
    object cdsduplicataCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsduplicataCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDITCONTRATOPARCELA: TIntegerField
      FieldName = 'CDITCONTRATOPARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsduplicataNUCNTCUSTOValidate
      Size = 100
    end
    object cdsduplicataVLCOMISSAOABERTA: TFMTBCDField
      FieldName = 'VLCOMISSAOABERTA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsduplicataNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsduplicataBORATEIOCNTCUSTO: TStringField
      FieldName = 'BORATEIOCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsduplicataBORATEIOPLCONTA: TStringField
      FieldName = 'BORATEIOPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdssaidareferenciada: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdssaidareferenciada
    Params = <>
    BeforePost = cdssaidareferenciadaBeforePost
    AfterScroll = cdssaidareferenciadaAfterScroll
    OnNewRecord = cdssaidareferenciadaNewRecord
    Left = 1010
    Top = 175
    object cdssaidareferenciadaCDSAIDAREFERENCIADA: TIntegerField
      FieldName = 'CDSAIDAREFERENCIADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdssaidareferenciadaCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidareferenciadaCDSAIDAORIGEM: TIntegerField
      FieldName = 'CDSAIDAORIGEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdssaidareferenciadaCDSAIDAORIGEMValidate
    end
    object cdssaidareferenciadaNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdssaidareferenciadaNUDOCUMENTOValidate
    end
    object cdssaidareferenciadaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidareferenciadaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidareferenciadaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidareferenciadaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidareferenciadaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidareferenciadaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidareferenciadaCDENTRADAORIGEM: TIntegerField
      FieldName = 'CDENTRADAORIGEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdssaidareferenciadaCDENTRADAORIGEMValidate
    end
    object cdssaidareferenciadaNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      Size = 44
    end
    object cdssaidareferenciadaBODIGITARCHAVE: TStringField
      FieldName = 'BODIGITARCHAVE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdssaidareferenciadaBODIGITARCHAVEValidate
      Size = 1
    end
    object cdssaidareferenciadaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 1010
    Top = 51
    object cdsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDTPSAIDA: TIntegerField
      FieldName = 'CDTPSAIDA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPSAIDAValidate
    end
    object cdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDREPRESENTANTEValidate
    end
    object cdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSERIE: TIntegerField
      FieldName = 'CDSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCFOPValidate
    end
    object cdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCONDPAGTOValidate
    end
    object cdsCDTRANSPORTE: TIntegerField
      FieldName = 'CDTRANSPORTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPCOBRANCAValidate
    end
    object cdsCDTPSAIDAECF: TIntegerField
      FieldName = 'CDTPSAIDAECF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsNUSAIDAValidate
    end
    object cdsTPENTSAI: TStringField
      FieldName = 'TPENTSAI'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDTEMISSAOValidate
    end
    object cdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLLIQSDESC: TFMTBCDField
      FieldName = 'VLLIQSDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsPRDESCONTOValidate
    end
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLDESCONTOValidate
      Precision = 15
      Size = 2
    end
    object cdsVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLSEGUROValidate
      Precision = 15
      Size = 2
    end
    object cdsVLOUTDESPESA: TFMTBCDField
      FieldName = 'VLOUTDESPESA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLOUTDESPESAValidate
      Precision = 15
      Size = 2
    end
    object cdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLFRETEValidate
      Precision = 15
      Size = 2
    end
    object cdsVLBASEIPI: TFMTBCDField
      FieldName = 'VLBASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLISENTAIPI: TFMTBCDField
      FieldName = 'VLISENTAIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLOUTIPI: TFMTBCDField
      FieldName = 'VLOUTIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLIPISFRETE: TFMTBCDField
      FieldName = 'VLIPISFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLISENTAICMS: TFMTBCDField
      FieldName = 'VLISENTAICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLOUTICMS: TFMTBCDField
      FieldName = 'VLOUTICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLICMSRED: TFMTBCDField
      FieldName = 'VLICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEICMSRED: TFMTBCDField
      FieldName = 'VLBASEICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLICMSSFRETE: TFMTBCDField
      FieldName = 'VLICMSSFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEISS: TFMTBCDField
      FieldName = 'VLBASEISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDTSAIDAValidate
    end
    object cdsNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUPLACAValidate
      Size = 10
    end
    object cdsVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLSERVICO: TFMTBCDField
      FieldName = 'VLSERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBOIMPRESSA: TStringField
      FieldName = 'BOIMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOEXPORTADO: TStringField
      FieldName = 'BOEXPORTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBODESCONTOCOMISSAO: TStringField
      FieldName = 'BODESCONTOCOMISSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUCAIXA: TIntegerField
      FieldName = 'NUCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCUPOM: TIntegerField
      FieldName = 'NUCUPOM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDSHISTORICOValidate
      Size = 100
    end
    object cdsVLFRETESUB: TFMTBCDField
      FieldName = 'VLFRETESUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALIRRF: TFloatField
      FieldName = 'ALIRRF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLIRRF: TFMTBCDField
      FieldName = 'VLIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUPLCONTAValidate
      Size = 100
    end
    object cdsDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsVLBASEFRETESUB: TFMTBCDField
      FieldName = 'VLBASEFRETESUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALFRETESUB: TFloatField
      FieldName = 'ALFRETESUB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSXMLCANCEL: TBlobField
      FieldName = 'DSXMLCANCEL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsBOENVIADO: TStringField
      FieldName = 'BOENVIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDSMARCA: TStringField
      FieldName = 'DSMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDSESPECIE: TStringField
      FieldName = 'DSESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVLPISSUBTRIB: TFMTBCDField
      FieldName = 'VLPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOFINSSUBTRIB: TFMTBCDField
      FieldName = 'VLCOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEPISSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALPISSUBTRIB: TFloatField
      FieldName = 'ALPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLBASECOFINSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASECOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALCOFINSSUBTRIB: TFloatField
      FieldName = 'ALCOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUSTDOCUMENTO: TStringField
      FieldName = 'NUSTDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsBORETENCAOPIS: TStringField
      FieldName = 'BORETENCAOPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBORETENCAOCOFINS: TStringField
      FieldName = 'BORETENCAOCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBORETENCAOINSS: TStringField
      FieldName = 'BORETENCAOINSS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBORETENCAOCONTRIBSOCIAL: TStringField
      FieldName = 'BORETENCAOCONTRIBSOCIAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVLBASEINSS: TFMTBCDField
      FieldName = 'VLBASEINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALINSS: TFloatField
      FieldName = 'ALINSS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLINSS: TFMTBCDField
      FieldName = 'VLINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASECONTRIBSOCIAL: TFMTBCDField
      FieldName = 'VLBASECONTRIBSOCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALCONTRIBSOCIAL: TFloatField
      FieldName = 'ALCONTRIBSOCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCONTRIBSOCIAL: TFMTBCDField
      FieldName = 'VLCONTRIBSOCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEIRRF: TFMTBCDField
      FieldName = 'VLBASEIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsBORETENCAOIRRF: TStringField
      FieldName = 'BORETENCAOIRRF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBORETENCAOISS: TStringField
      FieldName = 'BORETENCAOISS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOIMPORTACAO: TStringField
      FieldName = 'BOIMPORTACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVLBASECOFINSRET: TFMTBCDField
      FieldName = 'VLBASECOFINSRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALCOFINSRET: TFloatField
      FieldName = 'ALCOFINSRET'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOFINSRET: TFMTBCDField
      FieldName = 'VLCOFINSRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEPISRET: TFMTBCDField
      FieldName = 'VLBASEPISRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALPISRET: TFloatField
      FieldName = 'ALPISRET'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLPISRET: TFMTBCDField
      FieldName = 'VLPISRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsCNF: TIntegerField
      FieldName = 'CNF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsINDPAG: TStringField
      FieldName = 'INDPAG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsTPIMP: TStringField
      FieldName = 'TPIMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsTPEMIS: TStringField
      FieldName = 'TPEMIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsTPAMB: TStringField
      FieldName = 'TPAMB'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsPROCEMI: TStringField
      FieldName = 'PROCEMI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDV: TStringField
      FieldName = 'CDV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsFINNFE: TStringField
      FieldName = 'FINNFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNURECIBONFE: TStringField
      FieldName = 'NURECIBONFE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNUPROTOCOLOAUTORIZACAO: TStringField
      FieldName = 'NUPROTOCOLOAUTORIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNUPROTOCOLODENEGACAO: TStringField
      FieldName = 'NUPROTOCOLODENEGACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNUPROTOCOLOCANCELAMENTO: TStringField
      FieldName = 'NUPROTOCOLOCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNUPROTOCOLOINUTILIZACAO: TStringField
      FieldName = 'NUPROTOCOLOINUTILIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsDSCANCELAMENTO: TBlobField
      FieldName = 'DSCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNULOTE: TIntegerField
      FieldName = 'NULOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTVOLUME: TIntegerField
      FieldName = 'QTVOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUVOLUME: TStringField
      FieldName = 'NUVOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUFOCORRENCIA: TIntegerField
      FieldName = 'CDUFOCORRENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPFORMAEMISSAONFE: TIntegerField
      FieldName = 'CDTPFORMAEMISSAONFE'
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
    object cdsNUDOCFISCALICMS: TStringField
      FieldName = 'NUDOCFISCALICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNUCHAVENFSE: TStringField
      FieldName = 'NUCHAVENFSE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNSEQEVENTO: TIntegerField
      FieldName = 'NSEQEVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLII: TFMTBCDField
      FieldName = 'VLII'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDTREFERENCIA: TDateField
      FieldName = 'DTREFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLTOTALTRIBUTO: TFMTBCDField
      FieldName = 'VLTOTALTRIBUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRTOTALTRIBUTO: TFloatField
      FieldName = 'PRTOTALTRIBUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMREDESPACHO: TStringField
      FieldName = 'NMREDESPACHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsTSPROTOCOLOAUTORIZACAO: TSQLTimeStampField
      FieldName = 'TSPROTOCOLOAUTORIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDNFEFINALIDADE: TIntegerField
      FieldName = 'CDNFEFINALIDADE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDNFEFINALIDADEValidate
    end
    object cdssdsitsaida: TDataSetField
      FieldName = 'sdsitsaida'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsduplicata: TDataSetField
      FieldName = 'sdsduplicata'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdssaidareferenciada: TDataSetField
      FieldName = 'sdssaidareferenciada'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdscartacorrecao: TDataSetField
      FieldName = 'sdscartacorrecao'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdssaidatpcomissao: TDataSetField
      FieldName = 'sdssaidatpcomissao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMDOCFISCALICMS: TStringField
      FieldName = 'NMDOCFISCALICMS'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNUORDSERV: TIntegerField
      FieldName = 'NUORDSERV'
      ProviderFlags = []
    end
    object cdsCDSAIDADEVOLUCAO: TIntegerField
      FieldName = 'CDSAIDADEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdssaidaefd0450: TDataSetField
      FieldName = 'sdssaidaefd0450'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTPDEVOLUCAO: TStringField
      FieldName = 'TPDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsTPDEVOLUCAOValidate
      Size = 1
    end
    object cdsCDUFEMBARQUE: TIntegerField
      FieldName = 'CDUFEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSLOCALEMBARQUE: TStringField
      FieldName = 'DSLOCALEMBARQUE'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsCDUFSAIDA: TIntegerField
      FieldName = 'CDUFSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSLOCALEXPORTA: TStringField
      FieldName = 'DSLOCALEXPORTA'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsDSLOCALDESPACHO: TStringField
      FieldName = 'DSLOCALDESPACHO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsBOCONSUMIDORFINAL: TStringField
      FieldName = 'BOCONSUMIDORFINAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDINDPRES: TStringField
      FieldName = 'CDINDPRES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsVFCPUFDEST: TFMTBCDField
      FieldName = 'VFCPUFDEST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVICMSUFDEST: TFMTBCDField
      FieldName = 'VICMSUFDEST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVICMSUFREMET: TFMTBCDField
      FieldName = 'VICMSUFREMET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsBOOUTDESPESAITEM: TStringField
      FieldName = 'BOOUTDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsBOOUTDESPESAITEMValidate
      Size = 1
    end
    object cdsRZSOCIALC: TStringField
      FieldName = 'RZSOCIALC'
      ProviderFlags = []
      Size = 100
    end
    object cdsRZSOCIALF: TStringField
      FieldName = 'RZSOCIALF'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBOITEMDESCONTO: TStringField
      FieldName = 'BOITEMDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsBOITEMDESCONTOValidate
      Size = 1
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTRANSPORTADORAValidate
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
    object cdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCNTCUSTOValidate
      Size = 100
    end
    object cdsBORATEIOCNTCUSTO: TStringField
      FieldName = 'BORATEIOCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBORATEIOPLCONTA: TStringField
      FieldName = 'BORATEIOPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdsitsaida: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'sumpsbruto'
        Expression = 'sum(psbruto)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'sumpsliquido'
        Expression = 'sum(psliquido)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdssdsitsaida
    Params = <>
    BeforePost = cdsitsaidaBeforePost
    AfterPost = cdsitsaidaAfterPost
    OnNewRecord = cdsitsaidaNewRecord
    Left = 1010
    Top = 87
    object cdsitsaidaCDITSAIDA: TIntegerField
      FieldName = 'CDITSAIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitsaidaCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaCDCFOPValidate
    end
    object cdsitsaidaCDSTITSAIDA: TIntegerField
      FieldName = 'CDSTITSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDTPGRADEVALOR: TIntegerField
      FieldName = 'CDTPGRADEVALOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDMODBCICMS: TIntegerField
      FieldName = 'CDMODBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDMODBCSTICMS: TIntegerField
      FieldName = 'CDMODBCSTICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsitsaidaNUSTIPI: TStringField
      FieldName = 'NUSTIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsitsaidaNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsitsaidaNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsitsaidaCDBCCALCULOCREDITO: TStringField
      FieldName = 'CDBCCALCULOCREDITO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsitsaidaCDTPCOMISSAO: TIntegerField
      FieldName = 'CDTPCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDTPREGIMEICMS: TIntegerField
      FieldName = 'CDTPREGIMEICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaNUPEDIDOValidate
      Size = 10
    end
    object cdsitsaidaCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaCDDIGITADOValidate
      Size = 30
    end
    object cdsitsaidaBOALTERACUSTOMEDIO: TStringField
      FieldName = 'BOALTERACUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLOUTDESPESA: TFMTBCDField
      FieldName = 'VLOUTDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaBORECUPERAAJUSTEICMS: TStringField
      FieldName = 'BORECUPERAAJUSTEICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaALICMSValidate
    end
    object cdsitsaidaVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaALICMSRED: TFloatField
      FieldName = 'ALICMSRED'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVLICMSRED: TFMTBCDField
      FieldName = 'VLICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLBASEICMSRED: TFMTBCDField
      FieldName = 'VLBASEICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaPRREDBCICMSSUBTRIB: TFloatField
      FieldName = 'PRREDBCICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaVLBASEIPI: TFMTBCDField
      FieldName = 'VLBASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaALIPIValidate
    end
    object cdsitsaidaVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLBASEISS: TFMTBCDField
      FieldName = 'VLBASEISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaALISS: TFloatField
      FieldName = 'ALISS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaALPISValidate
    end
    object cdsitsaidaVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLBASEPISRED: TFMTBCDField
      FieldName = 'VLBASEPISRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaALPISRED: TFloatField
      FieldName = 'ALPISRED'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVLPISRED: TFMTBCDField
      FieldName = 'VLPISRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaALCOFINSValidate
    end
    object cdsitsaidaVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLBASECOFINSRED: TFMTBCDField
      FieldName = 'VLBASECOFINSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaALCOFINSRED: TFloatField
      FieldName = 'ALCOFINSRED'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVLCOFINSRED: TFMTBCDField
      FieldName = 'VLCOFINSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaPSLIQUIDO: TFMTBCDField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsitsaidaPSBRUTO: TFMTBCDField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsitsaidaVLCUSTOMEDIO: TFMTBCDField
      FieldName = 'VLCUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsitsaidaVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaBOCOMISSAO: TStringField
      FieldName = 'BOCOMISSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLSALDOVALOR: TFMTBCDField
      FieldName = 'VLSALDOVALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLIRRF: TFMTBCDField
      FieldName = 'VLIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaPRMRGVLADICIONADOICMSSUBTRIB: TFloatField
      FieldName = 'PRMRGVLADICIONADOICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaPRREDBCICMS: TFloatField
      FieldName = 'PRREDBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaDSINFADICIONAL: TBlobField
      FieldName = 'DSINFADICIONAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaDSINFADICIONALValidate
      Size = 1
    end
    object cdsitsaidaBOICMSRED: TStringField
      FieldName = 'BOICMSRED'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaBOBASEIPIAJUSTE: TStringField
      FieldName = 'BOBASEIPIAJUSTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaBOBASEIPIAJUSTEValidate
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaALICMSCREDITO: TFloatField
      FieldName = 'ALICMSCREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVLICMSCREDITO: TFMTBCDField
      FieldName = 'VLICMSCREDITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaBOIPIBCICMS: TStringField
      FieldName = 'BOIPIBCICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaBOICMSSUBTRIBAJUSTE: TStringField
      FieldName = 'BOICMSSUBTRIBAJUSTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaBOICMSSUBTRIBAJUSTEValidate
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaBOAJUSTETOTAL: TStringField
      FieldName = 'BOAJUSTETOTAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaBOAJUSTETOTALValidate
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaBOBASEICMSAJUSTE: TStringField
      FieldName = 'BOBASEICMSAJUSTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaBOBASEICMSAJUSTEValidate
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaBOBASEPISAJUSTE: TStringField
      FieldName = 'BOBASEPISAJUSTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaBOBASEPISAJUSTEValidate
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaBOBASECOFINSAJUSTE: TStringField
      FieldName = 'BOBASECOFINSAJUSTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaBOBASECOFINSAJUSTEValidate
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaNUCOTACAO: TStringField
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsitsaidaVLINSS: TFMTBCDField
      FieldName = 'VLINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLBASEINSS: TFMTBCDField
      FieldName = 'VLBASEINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaALINSS: TFloatField
      FieldName = 'ALINSS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVLBASEIRRF: TFMTBCDField
      FieldName = 'VLBASEIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaALIRRF: TFMTBCDField
      FieldName = 'ALIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLTOTALTRIBUTO: TFMTBCDField
      FieldName = 'VLTOTALTRIBUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaPRTOTALTRIBUTO: TFloatField
      FieldName = 'PRTOTALTRIBUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsitsaidaBOSERVICO: TStringField
      FieldName = 'BOSERVICO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsitsaidaNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object cdsitsaidaCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaNUPLCONTAValidate
      Size = 100
    end
    object cdsitsaidaNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaNUCNTCUSTOValidate
    end
    object cdsitsaidaNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitsaidaNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsitsaidaBOESTOQUE: TStringField
      FieldName = 'BOESTOQUE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsitsaidaCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaCDLOCACAOValidate
    end
    object cdsitsaidaCDLOCACAODEVOLUCAO: TIntegerField
      FieldName = 'CDLOCACAODEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaQTITEM: TFMTBCDField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitsaidaQTITEMValidate
      Precision = 15
    end
    object cdsitsaidaBOBASEICMSSUBTRIBAJUSTE: TStringField
      FieldName = 'BOBASEICMSSUBTRIBAJUSTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaBOBASEICMSSUBTRIBAJUSTEValidate
      Size = 1
    end
    object cdsitsaidaCDLOCACAOPERIODO: TIntegerField
      FieldName = 'CDLOCACAOPERIODO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidasdsitsaidalote: TDataSetField
      FieldName = 'sdsitsaidalote'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaBOLOTEIMEI: TStringField
      FieldName = 'BOLOTEIMEI'
      ProviderFlags = []
      Size = 1
    end
    object cdsitsaidaQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDITORDSERV: TIntegerField
      FieldName = 'CDITORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaNUORDSERV: TIntegerField
      FieldName = 'NUORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaDSOBSERVACAO: TMemoField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsitsaidaBOICMSINCIDESIPI: TStringField
      FieldName = 'BOICMSINCIDESIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitsaidaPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaPICMSINTERPART: TFloatField
      FieldName = 'PICMSINTERPART'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVFCPUFDEST: TFMTBCDField
      FieldName = 'VFCPUFDEST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVICMSUFDEST: TFMTBCDField
      FieldName = 'VICMSUFDEST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVICMSUFREMET: TFMTBCDField
      FieldName = 'VICMSUFREMET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLUNITARIO: TFloatField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitsaidaVLUNITARIOValidate
    end
    object cdsitsaidaPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitsaidaVLDIFAL: TFMTBCDField
      FieldName = 'VLDIFAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaVLBASEDIFAL: TFMTBCDField
      FieldName = 'VLBASEDIFAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitsaidaCDORIGEM: TStringField
      FieldName = 'CDORIGEM'
      ProviderFlags = []
      Size = 1
    end
    object cdsitsaidaVLBASEICMSNTRIBUTAVEL: TFMTBCDField
      FieldName = 'VLBASEICMSNTRIBUTAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object cdsitsaidaVLBASEICMSORIGINAL: TFMTBCDField
      FieldName = 'VLBASEICMSORIGINAL'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object cdsitsaidaVLTOTALCOMPLETO: TFMTBCDField
      FieldName = 'VLTOTALCOMPLETO'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object cdsitsaidaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitsaidaNUITEM: TStringField
      FieldName = 'NUITEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object cdscartacorrecao: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdscartacorrecao
    Params = <>
    Left = 1010
    Top = 219
    object cdscartacorrecaoCDCARTACORRECAO: TIntegerField
      FieldName = 'CDCARTACORRECAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscartacorrecaoCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoDSCARTACORRECAO: TBlobField
      FieldName = 'DSCARTACORRECAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdscartacorrecaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdscartacorrecaoTSEMISSAO: TSQLTimeStampField
      FieldName = 'TSEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoNUPROTOCOLO: TStringField
      FieldName = 'NUPROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdscartacorrecaoNSEQEVENTO: TIntegerField
      FieldName = 'NSEQEVENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdssaidatpcomissao: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdssaidatpcomissao
    Params = <>
    BeforePost = cdssaidatpcomissaoBeforePost
    Left = 1009
    Top = 263
    object cdssaidatpcomissaoCDSAIDATPCOMISSAO: TIntegerField
      FieldName = 'CDSAIDATPCOMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdssaidatpcomissaoCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidatpcomissaoCDTPCOMISSAO: TIntegerField
      FieldName = 'CDTPCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidatpcomissaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidatpcomissaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidatpcomissaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidatpcomissaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidatpcomissaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidatpcomissaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidatpcomissaoPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdssaidatpcomissaoPRCOMISSAOValidate
    end
    object cdssaidatpcomissaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 1118
    Top = 44
  end
  object dtsitsaida: TDataSource
    DataSet = cdsitsaida
    Left = 1118
    Top = 87
  end
  object dtsduplicata: TDataSource
    DataSet = cdsduplicata
    Left = 1118
    Top = 132
  end
  object dtssaidareferenciada: TDataSource
    DataSet = cdssaidareferenciada
    Left = 1118
    Top = 175
  end
  object dtssaidatpcomissao: TDataSource
    DataSet = cdssaidatpcomissao
    Left = 1117
    Top = 263
  end
  object dtscartacorrecao: TDataSource
    DataSet = cdscartacorrecao
    Left = 1118
    Top = 219
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 1146
    Top = 44
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT S.*'#13#10',D.NMDOCFISCALICMS'#13#10',P.NMPLCONTA'#13#10',C.NMCNTCUSTO'#13#10',O.' +
      'NUORDSERV'#13#10',CLIENTE.RZSOCIAL RZSOCIALC'#13#10',FORNECEDOR.RZSOCIAL RZS' +
      'OCIALF'#13#10'FROM SAIDA S'#13#10'LEFT JOIN DOCFISCALICMS D ON D.NUDOCFISCAL' +
      'ICMS=S.NUDOCFISCALICMS'#13#10'LEFT JOIN PLCONTA P ON P.CDEMPRESA=S.CDE' +
      'MPRESA AND P.CDPLCONTA=S.CDPLCONTA'#13#10'LEFT JOIN CNTCUSTO C ON C.CD' +
      'EMPRESA=S.CDEMPRESA AND C.CDCNTCUSTO=S.CDCNTCUSTO'#13#10'LEFT JOIN ORD' +
      'SERV O ON O.CDEMPRESA=S.CDEMPRESA AND O.CDORDSERV=S.CDORDSERV '#13#10 +
      'LEFT JOIN CLIENTE ON CLIENTE.CDEMPRESA=S.CDEMPRESA AND CLIENTE.C' +
      'DCLIENTE=S.CDCLIENTE'#13#10'LEFT JOIN FORNECEDOR ON FORNECEDOR.CDEMPRE' +
      'SA=S.CDEMPRESA AND FORNECEDOR.CDFORNECEDOR=S.CDFORNECEDOR'#13#10'WHERE' +
      ' S.CDEMPRESA=:CDEMPRESA  AND S.CDSAIDA=:CDSAIDA'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDSAIDA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1223
    Top = 44
    object sdsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDTPSAIDA: TIntegerField
      FieldName = 'CDTPSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSERIE: TIntegerField
      FieldName = 'CDSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTRANSPORTE: TIntegerField
      FieldName = 'CDTRANSPORTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPSAIDAECF: TIntegerField
      FieldName = 'CDTPSAIDAECF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTPENTSAI: TStringField
      FieldName = 'TPENTSAI'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLLIQSDESC: TFMTBCDField
      FieldName = 'VLLIQSDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLOUTDESPESA: TFMTBCDField
      FieldName = 'VLOUTDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEIPI: TFMTBCDField
      FieldName = 'VLBASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLISENTAIPI: TFMTBCDField
      FieldName = 'VLISENTAIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLOUTIPI: TFMTBCDField
      FieldName = 'VLOUTIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLIPISFRETE: TFMTBCDField
      FieldName = 'VLIPISFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLISENTAICMS: TFMTBCDField
      FieldName = 'VLISENTAICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLOUTICMS: TFMTBCDField
      FieldName = 'VLOUTICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLICMSRED: TFMTBCDField
      FieldName = 'VLICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEICMSRED: TFMTBCDField
      FieldName = 'VLBASEICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLICMSSFRETE: TFMTBCDField
      FieldName = 'VLICMSSFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEISS: TFMTBCDField
      FieldName = 'VLBASEISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSERVICO: TFMTBCDField
      FieldName = 'VLSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBOIMPRESSA: TStringField
      FieldName = 'BOIMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOEXPORTADO: TStringField
      FieldName = 'BOEXPORTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBODESCONTOCOMISSAO: TStringField
      FieldName = 'BODESCONTOCOMISSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUCAIXA: TIntegerField
      FieldName = 'NUCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCUPOM: TIntegerField
      FieldName = 'NUCUPOM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLFRETESUB: TFMTBCDField
      FieldName = 'VLFRETESUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALIRRF: TFloatField
      FieldName = 'ALIRRF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLIRRF: TFMTBCDField
      FieldName = 'VLIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsVLBASEFRETESUB: TFMTBCDField
      FieldName = 'VLBASEFRETESUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALFRETESUB: TFloatField
      FieldName = 'ALFRETESUB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSXMLCANCEL: TBlobField
      FieldName = 'DSXMLCANCEL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object sdsBOENVIADO: TStringField
      FieldName = 'BOENVIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDSMARCA: TStringField
      FieldName = 'DSMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSESPECIE: TStringField
      FieldName = 'DSESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLPISSUBTRIB: TFMTBCDField
      FieldName = 'VLPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOFINSSUBTRIB: TFMTBCDField
      FieldName = 'VLCOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEPISSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALPISSUBTRIB: TFloatField
      FieldName = 'ALPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLBASECOFINSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASECOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALCOFINSSUBTRIB: TFloatField
      FieldName = 'ALCOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUSTDOCUMENTO: TStringField
      FieldName = 'NUSTDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsBORETENCAOPIS: TStringField
      FieldName = 'BORETENCAOPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBORETENCAOCOFINS: TStringField
      FieldName = 'BORETENCAOCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBORETENCAOINSS: TStringField
      FieldName = 'BORETENCAOINSS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBORETENCAOCONTRIBSOCIAL: TStringField
      FieldName = 'BORETENCAOCONTRIBSOCIAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsVLBASEINSS: TFMTBCDField
      FieldName = 'VLBASEINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALINSS: TFloatField
      FieldName = 'ALINSS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLINSS: TFMTBCDField
      FieldName = 'VLINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASECONTRIBSOCIAL: TFMTBCDField
      FieldName = 'VLBASECONTRIBSOCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALCONTRIBSOCIAL: TFloatField
      FieldName = 'ALCONTRIBSOCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCONTRIBSOCIAL: TFMTBCDField
      FieldName = 'VLCONTRIBSOCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEIRRF: TFMTBCDField
      FieldName = 'VLBASEIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsBORETENCAOIRRF: TStringField
      FieldName = 'BORETENCAOIRRF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBORETENCAOISS: TStringField
      FieldName = 'BORETENCAOISS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOIMPORTACAO: TStringField
      FieldName = 'BOIMPORTACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsVLBASECOFINSRET: TFMTBCDField
      FieldName = 'VLBASECOFINSRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALCOFINSRET: TFloatField
      FieldName = 'ALCOFINSRET'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOFINSRET: TFMTBCDField
      FieldName = 'VLCOFINSRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEPISRET: TFMTBCDField
      FieldName = 'VLBASEPISRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALPISRET: TFloatField
      FieldName = 'ALPISRET'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLPISRET: TFMTBCDField
      FieldName = 'VLPISRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCNF: TIntegerField
      FieldName = 'CNF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsINDPAG: TStringField
      FieldName = 'INDPAG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsTPIMP: TStringField
      FieldName = 'TPIMP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsTPEMIS: TStringField
      FieldName = 'TPEMIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsTPAMB: TStringField
      FieldName = 'TPAMB'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsPROCEMI: TStringField
      FieldName = 'PROCEMI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDV: TStringField
      FieldName = 'CDV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsFINNFE: TStringField
      FieldName = 'FINNFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNURECIBONFE: TStringField
      FieldName = 'NURECIBONFE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNUPROTOCOLOAUTORIZACAO: TStringField
      FieldName = 'NUPROTOCOLOAUTORIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNUPROTOCOLODENEGACAO: TStringField
      FieldName = 'NUPROTOCOLODENEGACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNUPROTOCOLOCANCELAMENTO: TStringField
      FieldName = 'NUPROTOCOLOCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNUPROTOCOLOINUTILIZACAO: TStringField
      FieldName = 'NUPROTOCOLOINUTILIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsDSCANCELAMENTO: TBlobField
      FieldName = 'DSCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNULOTE: TIntegerField
      FieldName = 'NULOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTVOLUME: TIntegerField
      FieldName = 'QTVOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUVOLUME: TStringField
      FieldName = 'NUVOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUFOCORRENCIA: TIntegerField
      FieldName = 'CDUFOCORRENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPFORMAEMISSAONFE: TIntegerField
      FieldName = 'CDTPFORMAEMISSAONFE'
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
    object sdsNUDOCFISCALICMS: TStringField
      FieldName = 'NUDOCFISCALICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsNUCHAVENFSE: TStringField
      FieldName = 'NUCHAVENFSE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsNSEQEVENTO: TIntegerField
      FieldName = 'NSEQEVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLII: TFMTBCDField
      FieldName = 'VLII'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDTREFERENCIA: TDateField
      FieldName = 'DTREFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLTOTALTRIBUTO: TFMTBCDField
      FieldName = 'VLTOTALTRIBUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRTOTALTRIBUTO: TFloatField
      FieldName = 'PRTOTALTRIBUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMREDESPACHO: TStringField
      FieldName = 'NMREDESPACHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsTSPROTOCOLOAUTORIZACAO: TSQLTimeStampField
      FieldName = 'TSPROTOCOLOAUTORIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDNFEFINALIDADE: TIntegerField
      FieldName = 'CDNFEFINALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMDOCFISCALICMS: TStringField
      FieldName = 'NMDOCFISCALICMS'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsNUORDSERV: TIntegerField
      FieldName = 'NUORDSERV'
      ProviderFlags = []
    end
    object sdsCDSAIDADEVOLUCAO: TIntegerField
      FieldName = 'CDSAIDADEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTPDEVOLUCAO: TStringField
      FieldName = 'TPDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDUFEMBARQUE: TIntegerField
      FieldName = 'CDUFEMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSLOCALEMBARQUE: TStringField
      FieldName = 'DSLOCALEMBARQUE'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdsCDUFSAIDA: TIntegerField
      FieldName = 'CDUFSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSLOCALEXPORTA: TStringField
      FieldName = 'DSLOCALEXPORTA'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdsDSLOCALDESPACHO: TStringField
      FieldName = 'DSLOCALDESPACHO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdsBOCONSUMIDORFINAL: TStringField
      FieldName = 'BOCONSUMIDORFINAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDINDPRES: TStringField
      FieldName = 'CDINDPRES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsVFCPUFDEST: TFMTBCDField
      FieldName = 'VFCPUFDEST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVICMSUFDEST: TFMTBCDField
      FieldName = 'VICMSUFDEST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVICMSUFREMET: TFMTBCDField
      FieldName = 'VICMSUFREMET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsBOOUTDESPESAITEM: TStringField
      FieldName = 'BOOUTDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsRZSOCIALC: TStringField
      FieldName = 'RZSOCIALC'
      ProviderFlags = []
      Size = 100
    end
    object sdsRZSOCIALF: TStringField
      FieldName = 'RZSOCIALF'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBOITEMDESCONTO: TStringField
      FieldName = 'BOITEMDESCONTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsBORATEIOCNTCUSTO: TStringField
      FieldName = 'BORATEIOCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBORATEIOPLCONTA: TStringField
      FieldName = 'BORATEIOPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
  end
  object sdsitsaida: TSQLDataSet
    CommandText = 
      'SELECT I.*,P.NMPRODUTO,T.BOSERVICO,U.NMUNIDADE,P.NUCLFISCAL,P.CD' +
      'ORIGEM,C.NMCNTCUSTO,L.NMPLCONTA,T.BOESTOQUE,T.BOLOTEIMEI'#13#10'FROM I' +
      'TSAIDA I'#13#10'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND P.C' +
      'DEMPRESA=I.CDEMPRESA'#13#10'LEFT JOIN TPPRODUTO T ON T.CDTPPRODUTO=P.C' +
      'DTPPRODUTO AND T.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOIN UNIDADE U ON U' +
      '.CDUNIDADE=P.CDUNIDADE AND U.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOIN CN' +
      'TCUSTO C ON C.CDEMPRESA=I.CDEMPRESA AND C.CDCNTCUSTO=I.CDCNTCUST' +
      'O'#13#10'LEFT JOIN PLCONTA L ON L.CDPLCONTA=I.CDPLCONTA AND L.CDEMPRES' +
      'A=I.CDEMPRESA'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDSAIDA=:CDSAI' +
      'DA'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDSAIDA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1223
    Top = 88
    object sdsitsaidaCDITSAIDA: TIntegerField
      FieldName = 'CDITSAIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitsaidaCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDSTITSAIDA: TIntegerField
      FieldName = 'CDSTITSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDTPGRADEVALOR: TIntegerField
      FieldName = 'CDTPGRADEVALOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDMODBCICMS: TIntegerField
      FieldName = 'CDMODBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDMODBCSTICMS: TIntegerField
      FieldName = 'CDMODBCSTICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdsitsaidaNUSTIPI: TStringField
      FieldName = 'NUSTIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsitsaidaNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsitsaidaNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsitsaidaCDBCCALCULOCREDITO: TStringField
      FieldName = 'CDBCCALCULOCREDITO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsitsaidaCDTPCOMISSAO: TIntegerField
      FieldName = 'CDTPCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDTPREGIMEICMS: TIntegerField
      FieldName = 'CDTPREGIMEICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsitsaidaCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsitsaidaBOALTERACUSTOMEDIO: TStringField
      FieldName = 'BOALTERACUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLOUTDESPESA: TFMTBCDField
      FieldName = 'VLOUTDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaBORECUPERAAJUSTEICMS: TStringField
      FieldName = 'BORECUPERAAJUSTEICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaALICMSRED: TFloatField
      FieldName = 'ALICMSRED'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLICMSRED: TFMTBCDField
      FieldName = 'VLICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLBASEICMSRED: TFMTBCDField
      FieldName = 'VLBASEICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaPRREDBCICMSSUBTRIB: TFloatField
      FieldName = 'PRREDBCICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaVLBASEIPI: TFMTBCDField
      FieldName = 'VLBASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLBASEISS: TFMTBCDField
      FieldName = 'VLBASEISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaALISS: TFloatField
      FieldName = 'ALISS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLBASEPISRED: TFMTBCDField
      FieldName = 'VLBASEPISRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaALPISRED: TFloatField
      FieldName = 'ALPISRED'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLPISRED: TFMTBCDField
      FieldName = 'VLPISRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLBASECOFINSRED: TFMTBCDField
      FieldName = 'VLBASECOFINSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaALCOFINSRED: TFloatField
      FieldName = 'ALCOFINSRED'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLCOFINSRED: TFMTBCDField
      FieldName = 'VLCOFINSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaPSLIQUIDO: TFMTBCDField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object sdsitsaidaPSBRUTO: TFMTBCDField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object sdsitsaidaVLCUSTOMEDIO: TFMTBCDField
      FieldName = 'VLCUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsitsaidaVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaBOCOMISSAO: TStringField
      FieldName = 'BOCOMISSAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLSALDOVALOR: TFMTBCDField
      FieldName = 'VLSALDOVALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLIRRF: TFMTBCDField
      FieldName = 'VLIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaPRMRGVLADICIONADOICMSSUBTRIB: TFloatField
      FieldName = 'PRMRGVLADICIONADOICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaPRREDBCICMS: TFloatField
      FieldName = 'PRREDBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaDSINFADICIONAL: TBlobField
      FieldName = 'DSINFADICIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitsaidaBOICMSRED: TStringField
      FieldName = 'BOICMSRED'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaBOBASEIPIAJUSTE: TStringField
      FieldName = 'BOBASEIPIAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaALICMSCREDITO: TFloatField
      FieldName = 'ALICMSCREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLICMSCREDITO: TFMTBCDField
      FieldName = 'VLICMSCREDITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaBOIPIBCICMS: TStringField
      FieldName = 'BOIPIBCICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaBOICMSSUBTRIBAJUSTE: TStringField
      FieldName = 'BOICMSSUBTRIBAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaBOAJUSTETOTAL: TStringField
      FieldName = 'BOAJUSTETOTAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaBOBASEICMSAJUSTE: TStringField
      FieldName = 'BOBASEICMSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaBOBASEPISAJUSTE: TStringField
      FieldName = 'BOBASEPISAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaBOBASECOFINSAJUSTE: TStringField
      FieldName = 'BOBASECOFINSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaNUCOTACAO: TStringField
      FieldName = 'NUCOTACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsitsaidaVLINSS: TFMTBCDField
      FieldName = 'VLINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLBASEINSS: TFMTBCDField
      FieldName = 'VLBASEINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaALINSS: TFloatField
      FieldName = 'ALINSS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLBASEIRRF: TFMTBCDField
      FieldName = 'VLBASEIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaALIRRF: TFMTBCDField
      FieldName = 'ALIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLTOTALTRIBUTO: TFMTBCDField
      FieldName = 'VLTOTALTRIBUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaPRTOTALTRIBUTO: TFloatField
      FieldName = 'PRTOTALTRIBUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsitsaidaBOSERVICO: TStringField
      FieldName = 'BOSERVICO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsitsaidaNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object sdsitsaidaCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitsaidaNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitsaidaNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsitsaidaBOESTOQUE: TStringField
      FieldName = 'BOESTOQUE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsitsaidaCDLOCACAO: TIntegerField
      FieldName = 'CDLOCACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDLOCACAODEVOLUCAO: TIntegerField
      FieldName = 'CDLOCACAODEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaQTITEM: TFMTBCDField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
    end
    object sdsitsaidaBOBASEICMSSUBTRIBAJUSTE: TStringField
      FieldName = 'BOBASEICMSSUBTRIBAJUSTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitsaidaCDLOCACAOPERIODO: TIntegerField
      FieldName = 'CDLOCACAOPERIODO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaBOLOTEIMEI: TStringField
      FieldName = 'BOLOTEIMEI'
      ProviderFlags = []
      Size = 1
    end
    object sdsitsaidaQTPECA: TFloatField
      FieldName = 'QTPECA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLUNITARIO: TFloatField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDITORDSERV: TIntegerField
      FieldName = 'CDITORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaNUORDSERV: TIntegerField
      FieldName = 'NUORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaDSOBSERVACAO: TMemoField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sdsitsaidaBOICMSINCIDESIPI: TStringField
      FieldName = 'BOICMSINCIDESIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitsaidaPFCPUFDEST: TFloatField
      FieldName = 'PFCPUFDEST'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaPICMSINTERPART: TFloatField
      FieldName = 'PICMSINTERPART'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVFCPUFDEST: TFMTBCDField
      FieldName = 'VFCPUFDEST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVICMSUFDEST: TFMTBCDField
      FieldName = 'VICMSUFDEST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVICMSUFREMET: TFMTBCDField
      FieldName = 'VICMSUFREMET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaPICMSUFDEST: TFloatField
      FieldName = 'PICMSUFDEST'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitsaidaVLDIFAL: TFMTBCDField
      FieldName = 'VLDIFAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaVLBASEDIFAL: TFMTBCDField
      FieldName = 'VLBASEDIFAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitsaidaCDORIGEM: TStringField
      FieldName = 'CDORIGEM'
      ProviderFlags = []
      Size = 1
    end
    object sdsitsaidaVLBASEICMSNTRIBUTAVEL: TFMTBCDField
      FieldName = 'VLBASEICMSNTRIBUTAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object sdsitsaidaVLBASEICMSORIGINAL: TFMTBCDField
      FieldName = 'VLBASEICMSORIGINAL'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object sdsitsaidaVLTOTALCOMPLETO: TFMTBCDField
      FieldName = 'VLTOTALCOMPLETO'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object sdsitsaidaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitsaidaNUITEM: TStringField
      FieldName = 'NUITEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object sdsduplicata: TSQLDataSet
    CommandText = 
      'SELECT D.*'#13#10',S.NMSTDUPLICATA'#13#10',P.NMPLCONTA'#13#10',C.NMCNTCUSTO'#13#10',S.NU' +
      'COR'#13#10',N.NUCOR NUCORCONTA'#13#10'FROM DUPLICATA D'#13#10'LEFT JOIN STDUPLICAT' +
      'A S ON S.CDSTDUPLICATA=D.CDSTDUPLICATA'#13#10'LEFT JOIN PLCONTA P ON P' +
      '.CDEMPRESA=D.CDEMPRESA AND P.CDPLCONTA=D.CDPLCONTA'#13#10'LEFT JOIN CN' +
      'TCUSTO C ON C.CDEMPRESA=D.CDEMPRESA AND C.CDCNTCUSTO=D.CDCNTCUST' +
      'O'#13#10'LEFT JOIN CONTA N ON N.CDEMPRESA=D.CDEMPRESA AND N.CDCONTA=D.' +
      'CDCONTA '#13#10'WHERE D.CDEMPRESA=:CDEMPRESA AND D.CDSAIDA=:CDSAIDA'
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
        Name = 'CDSAIDA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1222
    Top = 134
    object sdsduplicataCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsduplicataCDSTDUPLICATA: TIntegerField
      FieldName = 'CDSTDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataCDTPPAGAMENTO: TIntegerField
      FieldName = 'CDTPPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDSTREGCOBRANCA: TIntegerField
      FieldName = 'CDSTREGCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object sdsduplicataNUAGENCIA: TStringField
      FieldName = 'NUAGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdsduplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsduplicataDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsduplicataDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataPRMULTA: TFloatField
      FieldName = 'PRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataNUBOLETA: TStringField
      FieldName = 'NUBOLETA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataBOENVIADO: TStringField
      FieldName = 'BOENVIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsduplicataBOIMPRESSA: TStringField
      FieldName = 'BOIMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsduplicataNUCAIXA: TIntegerField
      FieldName = 'NUCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsduplicataNUNOSSONUMERO: TStringField
      FieldName = 'NUNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 17
    end
    object sdsduplicataCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsduplicataCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataDSPARCELA: TStringField
      FieldName = 'DSPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsduplicataCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDUSUARIOBAIXA: TIntegerField
      FieldName = 'CDUSUARIOBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDTPDUPLICATA: TIntegerField
      FieldName = 'CDTPDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataNUCPFCNPJ: TStringField
      FieldName = 'NUCPFCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataNUCPFCNPJ2: TStringField
      FieldName = 'NUCPFCNPJ2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataNMEMITENTE: TStringField
      FieldName = 'NMEMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsduplicataNMEMITENTE2: TStringField
      FieldName = 'NMEMITENTE2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsduplicataNUCONTACORRENTE: TStringField
      FieldName = 'NUCONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsduplicataTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsduplicataCDBANCODEVOLUCAO: TIntegerField
      FieldName = 'CDBANCODEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDNEGOCIACAOSAIDA: TIntegerField
      FieldName = 'CDNEGOCIACAOSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDSETBOLETO: TIntegerField
      FieldName = 'CDSETBOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataDSOBSERVACAOBOLETO: TBlobField
      FieldName = 'DSOBSERVACAOBOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsduplicataNMSTDUPLICATA: TStringField
      FieldName = 'NMSTDUPLICATA'
      ProviderFlags = []
      Size = 100
    end
    object sdsduplicataNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsduplicataNUCOR: TIntegerField
      FieldName = 'NUCOR'
      ProviderFlags = []
    end
    object sdsduplicataNUCORCONTA: TIntegerField
      FieldName = 'NUCORCONTA'
      ProviderFlags = []
    end
    object sdsduplicataCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsduplicataCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDITCONTRATOPARCELA: TIntegerField
      FieldName = 'CDITCONTRATOPARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsduplicataVLCOMISSAOABERTA: TFMTBCDField
      FieldName = 'VLCOMISSAOABERTA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsduplicataNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsduplicataBORATEIOCNTCUSTO: TStringField
      FieldName = 'BORATEIOCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsduplicataBORATEIOPLCONTA: TStringField
      FieldName = 'BORATEIOPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object sdssaidareferenciada: TSQLDataSet
    CommandText = 
      'SELECT * FROM SAIDAREFERENCIADA WHERE CDEMPRESA=:CDEMPRESA AND C' +
      'DSAIDA=:CDSAIDA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDSAIDA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1222
    Top = 177
    object sdssaidareferenciadaCDSAIDAREFERENCIADA: TIntegerField
      FieldName = 'CDSAIDAREFERENCIADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdssaidareferenciadaCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidareferenciadaCDSAIDAORIGEM: TIntegerField
      FieldName = 'CDSAIDAORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdssaidareferenciadaNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdssaidareferenciadaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidareferenciadaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidareferenciadaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidareferenciadaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidareferenciadaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidareferenciadaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidareferenciadaCDENTRADAORIGEM: TIntegerField
      FieldName = 'CDENTRADAORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdssaidareferenciadaNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      Size = 44
    end
    object sdssaidareferenciadaBODIGITARCHAVE: TStringField
      FieldName = 'BODIGITARCHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdssaidareferenciadaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdscartacorrecao: TSQLDataSet
    CommandText = 
      'SELECT * FROM CARTACORRECAO WHERE CDEMPRESA=:CDEMPRESA AND CDSAI' +
      'DA=:CDSAIDA'
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
        Name = 'CDSAIDA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1222
    Top = 221
    object sdscartacorrecaoCDCARTACORRECAO: TIntegerField
      FieldName = 'CDCARTACORRECAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdscartacorrecaoCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoDSCARTACORRECAO: TBlobField
      FieldName = 'DSCARTACORRECAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdscartacorrecaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdscartacorrecaoTSEMISSAO: TSQLTimeStampField
      FieldName = 'TSEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoNUPROTOCOLO: TStringField
      FieldName = 'NUPROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdscartacorrecaoNSEQEVENTO: TIntegerField
      FieldName = 'NSEQEVENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdssaidatpcomissao: TSQLDataSet
    CommandText = 
      'SELECT * FROM SAIDATPCOMISSAO WHERE CDEMPRESA=:CDEMPRESA AND CDS' +
      'AIDA=:CDSAIDA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDSAIDA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1222
    Top = 265
    object sdssaidatpcomissaoCDSAIDATPCOMISSAO: TIntegerField
      FieldName = 'CDSAIDATPCOMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdssaidatpcomissaoCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidatpcomissaoCDTPCOMISSAO: TIntegerField
      FieldName = 'CDTPCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidatpcomissaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidatpcomissaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidatpcomissaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidatpcomissaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidatpcomissaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidatpcomissaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidatpcomissaoPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidatpcomissaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 1261
    Top = 44
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 404
    Top = 429
  end
  object pumemail: TdxBarPopupMenu
    BarManager = bmg1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarLargeButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton31'
      end
      item
        Visible = True
        ItemName = 'dxBarButton28'
      end
      item
        Visible = True
        ItemName = 'dxBarButton30'
      end>
    UseOwnFont = True
    Left = 601
    Top = 429
  end
  object dts2: TDataSource
    DataSet = sdsitsaida
    Left = 1261
    Top = 88
  end
  object cdsitsaidalote: TClientDataSet
    Aggregates = <>
    DataSetField = cdsitsaidasdsitsaidalote
    Params = <>
    AfterInsert = cdsitsaidaloteAfterInsert
    BeforePost = cdsitsaidaloteBeforePost
    AfterDelete = cdsitsaidaloteAfterDelete
    Left = 1012
    Top = 311
    object cdsitsaidaloteCDITSAIDALOTE: TIntegerField
      FieldName = 'CDITSAIDALOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitsaidaloteCDITSAIDA: TIntegerField
      FieldName = 'CDITSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaloteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaloteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaloteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaloteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaloteCDITLOTE: TIntegerField
      FieldName = 'CDITLOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaloteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaloteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitsaidaloteNUIMEI: TStringField
      FieldName = 'NUIMEI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsitsaidaloteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitsaidalote: TDataSource
    DataSet = cdsitsaidalote
    Left = 1118
    Top = 311
  end
  object sdsitsaidalote: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITSAIDALOTE WHERE CDEMPRESA=:CDEMPRESA AND CDITSAI' +
      'DA=:CDITSAIDA'
    DataSource = dts2
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
        Name = 'CDITSAIDA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1223
    Top = 312
    object sdsitsaidaloteCDITSAIDALOTE: TIntegerField
      FieldName = 'CDITSAIDALOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitsaidaloteCDITSAIDA: TIntegerField
      FieldName = 'CDITSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaloteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaloteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaloteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaloteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaloteCDITLOTE: TIntegerField
      FieldName = 'CDITLOTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaloteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaloteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitsaidaloteNUIMEI: TStringField
      FieldName = 'NUIMEI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsitsaidaloteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdssaidaefd0450: TSQLDataSet
    CommandText = 
      'select s.*,e.nmefd0450 from SAIDAEFD0450 s left join EFD0450 e o' +
      'n s.cdempresa=e.cdempresa and s.cdefd0450=e.cdefd0450 where s.cd' +
      'empresa=:cdempresa and s.cdsaida=:cdsaida'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'cdempresa'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'cdsaida'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1224
    Top = 357
    object sdssaidaefd0450CDSAIDAEFD0450: TIntegerField
      FieldName = 'CDSAIDAEFD0450'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdssaidaefd0450CDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidaefd0450CDEFD0450: TIntegerField
      FieldName = 'CDEFD0450'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidaefd0450CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidaefd0450CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidaefd0450CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidaefd0450CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidaefd0450DSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdssaidaefd0450TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidaefd0450TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidaefd0450NMEFD0450: TStringField
      FieldName = 'NMEFD0450'
      ProviderFlags = []
      Size = 255
    end
    object sdssaidaefd0450CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object sdssaidac111: TSQLDataSet
    CommandText = 
      'select * from SAIDAC111 where cdempresa=:cdempresa and cdsaidaef' +
      'd0450=:cdsaidaefd0450'
    DataSource = dts3
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'cdempresa'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'cdsaidaefd0450'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1224
    Top = 400
    object sdssaidac111CDSAIDAC111: TIntegerField
      FieldName = 'CDSAIDAC111'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdssaidac111CDTPC111: TIntegerField
      FieldName = 'CDTPC111'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidac111CDSAIDAEFD0450: TIntegerField
      FieldName = 'CDSAIDAEFD0450'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidac111CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidac111CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidac111CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidac111CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidac111NUPROCESSO: TStringField
      FieldName = 'NUPROCESSO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object sdssaidac111TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidac111TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssaidac111CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dtssaidaefd0450: TDataSource
    DataSet = cdssaidaefd0450
    Left = 1116
    Top = 357
  end
  object dtssaidac111: TDataSource
    DataSet = cdssaidac111
    Left = 1116
    Top = 400
  end
  object cdssaidaefd0450: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdssaidaefd0450
    Params = <>
    BeforePost = cdssaidaefd0450BeforePost
    Left = 1008
    Top = 357
    object cdssaidaefd0450CDSAIDAEFD0450: TIntegerField
      FieldName = 'CDSAIDAEFD0450'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdssaidaefd0450CDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidaefd0450CDEFD0450: TIntegerField
      FieldName = 'CDEFD0450'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdssaidaefd0450CDEFD0450Validate
    end
    object cdssaidaefd0450CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidaefd0450CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidaefd0450CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidaefd0450CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidaefd0450DSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdssaidaefd0450TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidaefd0450TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidaefd0450sdssaidac111: TDataSetField
      FieldName = 'sdssaidac111'
      ProviderFlags = [pfInUpdate]
    end
    object cdssaidaefd0450NMEFD0450: TStringField
      FieldName = 'NMEFD0450'
      ProviderFlags = []
      Size = 255
    end
    object cdssaidaefd0450CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdssaidac111: TClientDataSet
    Aggregates = <>
    DataSetField = cdssaidaefd0450sdssaidac111
    Params = <>
    BeforePost = cdssaidac111BeforePost
    Left = 1008
    Top = 400
    object cdssaidac111CDSAIDAC111: TIntegerField
      FieldName = 'CDSAIDAC111'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdssaidac111CDTPC111: TIntegerField
      FieldName = 'CDTPC111'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidac111CDSAIDAEFD0450: TIntegerField
      FieldName = 'CDSAIDAEFD0450'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidac111CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidac111CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidac111CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidac111CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidac111NUPROCESSO: TStringField
      FieldName = 'NUPROCESSO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object cdssaidac111TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidac111TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssaidac111CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dts3: TDataSource
    DataSet = sdssaidaefd0450
    Left = 1292
    Top = 357
  end
  object NFSe: TACBrNFSe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 2000
    Configuracoes.WebServices.Tentativas = 10
    Configuracoes.WebServices.IntervaloTentativas = 3000
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.Certificados.ArquivoPFX = 'C:\Erp\Certificados\ErloPneus - Ibate - Fiorilli\erlopneus.pfx'
    Configuracoes.Certificados.Senha = 'italo'
    Left = 960
    Top = 80
  end
end

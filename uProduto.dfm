object frmProduto: TfrmProduto
  Left = 499
  Top = 149
  ClientHeight = 718
  ClientWidth = 1108
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = ']'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 59
    Width = 1108
    Height = 659
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1108
      Height = 45
      Align = alTop
      Shape = bsLeftLine
      ExplicitWidth = 1032
    end
    object lblcodigo: TLabel
      Left = 5
      Top = 23
      Width = 33
      Height = 14
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 77
      Top = 23
      Width = 27
      Height = 14
      Caption = 'Nome'
      Transparent = True
    end
    object lblgrupo: TLabel
      Left = 321
      Top = 23
      Width = 34
      Height = 14
      Caption = 'Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = ']'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = actabrirgrupoExecute
    end
    object Label22: TLabel
      Left = 671
      Top = 23
      Width = 19
      Height = 14
      Caption = 'Item'
      Transparent = True
    end
    object txtCDITEM: TcxDBLabel
      Left = 673
      Top = 43
      DataBinding.DataField = 'CDITEM'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = ']'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 21
      Width = 50
    end
    object edtnunivel: TcxDBButtonEdit
      Left = 321
      Top = 38
      DataBinding.DataField = 'NUNIVEL'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtnunivelPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = edtnunivelExit
      OnKeyDown = edtnunivelKeyDown
      Width = 120
    end
    object edtnome: TcxDBTextEdit
      Left = 77
      Top = 38
      DataBinding.DataField = 'NMPRODUTO'
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
      OnKeyPress = edtnomeKeyPress
      Width = 243
    end
    object edtcodigo: TcxTextEdit
      Left = 4
      Top = 38
      Properties.CharCase = ecUpperCase
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
    object pgc: TcxPageControl
      Left = 0
      Top = 68
      Width = 1108
      Height = 591
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = ']'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Properties.ActivePage = tbscadastro
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dtmmain.imlMain
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 591
      ClientRectRight = 1108
      ClientRectTop = 25
      object tbscadastro: TcxTabSheet
        Caption = 'Cadastro'
        ImageIndex = 40
        object gbxcomissao: TcxGroupBox
          Left = 5
          Top = 425
          Caption = 'Comiss'#227'o'
          TabOrder = 10
          Height = 39
          Width = 395
          object Label31: TLabel
            Left = 82
            Top = 19
            Width = 10
            Height = 14
            Caption = '%'
            Transparent = True
          end
          object Label16: TLabel
            Left = 175
            Top = 20
            Width = 20
            Height = 14
            Caption = 'Tipo'
            Transparent = True
          end
          object edtPRCOMISSAO: TcxDBCalcEdit
            Left = 93
            Top = 13
            DataBinding.DataField = 'PRCOMISSAO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 72
          end
          object ckbBOCOMISSAO: TcxDBCheckBox
            Left = 8
            Top = 13
            Caption = 'Comiss'#227'o'
            DataBinding.DataField = 'BOCOMISSAO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
          object cbxcdtpcomissaoproduto: TcxDBLookupComboBox
            Left = 219
            Top = 12
            DataBinding.DataField = 'CDTPCOMISSAOPRODUTO'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDTPCOMISSAOPRODUTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPCOMISSAOPRODUTO'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 171
          end
        end
        object gbxestoque: TcxGroupBox
          Left = 5
          Top = 320
          Caption = 'Estoque'
          TabOrder = 7
          Height = 61
          Width = 395
          object Label12: TLabel
            Left = 5
            Top = 19
            Width = 21
            Height = 14
            Caption = 'Real'
            Transparent = True
          end
          object Label13: TLabel
            Left = 5
            Top = 44
            Width = 32
            Height = 14
            Caption = 'M'#237'nimo'
            Transparent = True
          end
          object Label14: TLabel
            Left = 135
            Top = 44
            Width = 36
            Height = 14
            Caption = 'M'#225'ximo'
            Transparent = True
          end
          object Label15: TLabel
            Left = 271
            Top = 44
            Width = 33
            Height = 14
            Caption = 'Gatilho'
            Transparent = True
          end
          object lblqtmultiplo: TLabel
            Left = 269
            Top = 20
            Width = 35
            Height = 14
            Caption = 'M'#250'ltiplo'
            Transparent = True
          end
          object lblqtestoque2: TLabel
            Left = 135
            Top = 19
            Width = 30
            Height = 14
            Caption = 'Real 2'
            Transparent = True
          end
          object txtQTESTOQUE: TcxDBLabel
            Left = 45
            Top = 17
            DataBinding.DataField = 'QTESTOQUE'
            DataBinding.DataSource = dts
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = ']'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Transparent = True
            Height = 21
            Width = 84
          end
          object edtQTESTPREV: TcxDBCalcEdit
            Left = 305
            Top = 36
            DataBinding.DataField = 'QTESTPREV'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = colorexit
            Width = 86
          end
          object edtQTESTMAX: TcxDBCalcEdit
            Left = 179
            Top = 36
            DataBinding.DataField = 'QTESTMAX'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 86
          end
          object edtQTESTMIN: TcxDBCalcEdit
            Left = 45
            Top = 36
            DataBinding.DataField = 'QTESTMIN'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 86
          end
          object edtQTMULTIPLO: TcxDBCalcEdit
            Left = 305
            Top = 12
            DataBinding.DataField = 'QTMULTIPLO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Width = 86
          end
          object txtqtestoque2: TcxDBLabel
            Left = 181
            Top = 17
            DataBinding.DataField = 'QTESTOQUE2'
            DataBinding.DataSource = dts
            ParentFont = False
            Properties.Alignment.Horz = taLeftJustify
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = ']'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Transparent = True
            Height = 21
            Width = 84
          end
        end
        object gbxvalor: TcxGroupBox
          Left = 5
          Top = 165
          Caption = 'Valor'
          TabOrder = 5
          Height = 154
          Width = 395
          object Label33: TLabel
            Left = 5
            Top = 39
            Width = 31
            Height = 14
            Caption = 'Venda'
            Transparent = True
          end
          object Label34: TLabel
            Left = 5
            Top = 17
            Width = 28
            Height = 14
            Caption = 'Custo'
            Transparent = True
          end
          object Label35: TLabel
            Left = 277
            Top = 39
            Width = 10
            Height = 14
            Caption = '%'
            Transparent = True
          end
          object lblprecomedio: TLabel
            Left = 167
            Top = 16
            Width = 28
            Height = 14
            Caption = 'M'#233'dio'
            Transparent = True
          end
          object Label1: TLabel
            Left = 5
            Top = 85
            Width = 41
            Height = 14
            Caption = 'Atacado'
            Transparent = True
          end
          object Label42: TLabel
            Left = 5
            Top = 107
            Width = 40
            Height = 14
            Caption = 'Especial'
            Transparent = True
          end
          object Label47: TLabel
            Left = 277
            Top = 85
            Width = 10
            Height = 14
            Caption = '%'
            Transparent = True
          end
          object Label50: TLabel
            Left = 277
            Top = 108
            Width = 10
            Height = 14
            Caption = '%'
            Transparent = True
          end
          object Label66: TLabel
            Left = 271
            Top = 16
            Width = 46
            Height = 14
            Caption = 'Produ'#231#227'o'
            Transparent = True
          end
          object lblprdescontomaximo: TLabel
            Left = 5
            Top = 130
            Width = 61
            Height = 14
            Caption = '% Desc M'#225'x'
            Transparent = True
          end
          object lbl3: TLabel
            Left = 5
            Top = 62
            Width = 28
            Height = 14
            Caption = 'Prazo'
            Transparent = True
          end
          object lbl4: TLabel
            Left = 277
            Top = 62
            Width = 10
            Height = 14
            Caption = '%'
            Transparent = True
          end
          object cbxtpbslucroespecial: TcxDBComboBox
            Left = 171
            Top = 101
            DataBinding.DataField = 'tpbslucroespecial'
            DataBinding.DataSource = dts
            Properties.Items.Strings = (
              'Ultima Compra'
              'M'#233'dio Custo')
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 11
            OnEnter = colorenter
            OnExit = exitcalcularprecoespecial
            Width = 105
          end
          object cbxtpbslucroatacado: TcxDBComboBox
            Left = 171
            Top = 79
            DataBinding.DataField = 'tpbslucroatacado'
            DataBinding.DataSource = dts
            Properties.Items.Strings = (
              'Ultima Compra'
              'M'#233'dio Custo')
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            OnEnter = colorenter
            OnExit = exitcalcularprecoatacado
            Width = 105
          end
          object cbxTPBSLUCROPRAZO: TcxDBComboBox
            Left = 171
            Top = 56
            DataBinding.DataField = 'TPBSLUCROPRAZO'
            DataBinding.DataSource = dts
            Properties.Items.Strings = (
              'Ultima Compra'
              'M'#233'dio Custo')
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            OnEnter = colorenter
            OnExit = edtVLPRAZOExit
            Width = 105
          end
          object cbxtpbslucro: TcxDBComboBox
            Left = 171
            Top = 33
            DataBinding.DataField = 'tpbslucro'
            DataBinding.DataSource = dts
            Properties.Items.Strings = (
              'Ultima Compra'
              'M'#233'dio Custo')
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = exitcalcularprecovenda
            Width = 105
          end
          object edtPRLUCROESPECIAL: TcxDBCalcEdit
            Left = 288
            Top = 101
            DataBinding.DataField = 'PRLUCROESPECIAL'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 12
            OnEnter = colorenter
            OnExit = exitcalcularprecoespecial
            Width = 101
          end
          object edtPRLUCROATACADO: TcxDBCalcEdit
            Left = 288
            Top = 79
            DataBinding.DataField = 'PRLUCROATACADO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            OnEnter = colorenter
            OnExit = exitcalcularprecoatacado
            Width = 101
          end
          object edtPRLUCROPRAZO: TcxDBCalcEdit
            Left = 288
            Top = 56
            DataBinding.DataField = 'PRLUCROPRAZO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            OnEnter = colorenter
            OnExit = edtVLPRAZOExit
            Width = 101
          end
          object edtPRLUCRO: TcxDBCalcEdit
            Left = 288
            Top = 33
            DataBinding.DataField = 'PRLUCRO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = exitcalcularprecovenda
            Width = 101
          end
          object edtPRDESCONTOMAXIMO: TcxDBCalcEdit
            Left = 66
            Top = 124
            DataBinding.DataField = 'PRDESCONTOMAXIMO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            OnEnter = colorenter
            OnExit = colorexit
            Width = 101
          end
          object edtvlespecial: TcxDBCalcEdit
            Left = 66
            Top = 101
            DataBinding.DataField = 'vlespecial'
            DataBinding.DataSource = dts
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            OnEnter = colorenter
            OnExit = exitcalcularprecoespecial
            Width = 101
          end
          object edtvlatacado: TcxDBCalcEdit
            Left = 66
            Top = 79
            DataBinding.DataField = 'vlatacado'
            DataBinding.DataSource = dts
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            OnEnter = colorenter
            OnExit = exitcalcularprecoatacado
            Width = 101
          end
          object edtVLPRAZO: TcxDBCalcEdit
            Left = 66
            Top = 56
            DataBinding.DataField = 'VLPRAZO'
            DataBinding.DataSource = dts
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = colorenter
            OnExit = edtVLPRAZOExit
            Width = 101
          end
          object edtVLVENDA: TcxDBCalcEdit
            Left = 66
            Top = 33
            DataBinding.DataField = 'VLVENDA'
            DataBinding.DataSource = dts
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = exitcalcularprecovenda
            Width = 101
          end
          object edtVLCUSTO: TcxDBCalcEdit
            Left = 66
            Top = 11
            DataBinding.DataField = 'VLCUSTO'
            DataBinding.DataSource = dts
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = edtvlcustoExit
            Width = 101
          end
          object txtVLCUSTOMEDIO: TcxDBLabel
            Left = 196
            Top = 15
            DataBinding.DataField = 'VLCUSTOMEDIO'
            DataBinding.DataSource = dts
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = ']'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Transparent = True
            Height = 21
            Width = 72
          end
          object txtVLCUSTOPRODUCAO: TcxDBLabel
            Left = 319
            Top = 14
            DataBinding.DataField = 'VLCUSTOPRODUCAO'
            DataBinding.DataSource = dts
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = ']'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Transparent = True
            Height = 21
            Width = 69
          end
        end
        object tbxcadastro: TcxGroupBox
          Left = 5
          Top = 1
          Caption = 'Cadastro'
          TabOrder = 0
          Height = 165
          Width = 395
          object lbltpproduto: TLabel
            Left = 3
            Top = 23
            Width = 24
            Height = 14
            Caption = 'Tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = ']'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnDblClick = lbltpprodutoDblClick
          end
          object lblunidade: TLabel
            Left = 3
            Top = 93
            Width = 39
            Height = 14
            Caption = 'Unidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = ']'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblnuclfiscal: TLabel
            Left = 3
            Top = 46
            Width = 22
            Height = 14
            Caption = 'NCM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = ']'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 3
            Top = 115
            Width = 34
            Height = 14
            Caption = 'Origem'
            Transparent = True
          end
          object Label61: TLabel
            Left = 3
            Top = 72
            Width = 42
            Height = 14
            Caption = 'Tipo Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = ']'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblCDBCCALCULOCREDITO: TLabel
            Left = 3
            Top = 136
            Width = 51
            Height = 14
            Caption = 'BC Cr'#233'dito'
            Transparent = True
          end
          object lblunidade2: TLabel
            Left = 148
            Top = 93
            Width = 30
            Height = 14
            Caption = 'Unid 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = ']'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblprunidade: TLabel
            Left = 315
            Top = 93
            Width = 10
            Height = 14
            Caption = '%'
            Transparent = True
          end
          object Label8: TLabel
            Left = 187
            Top = 46
            Width = 62
            Height = 14
            Caption = 'C'#243'digo CEST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = ']'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object cbxCDBCCALCULOCREDITO: TcxDBLookupComboBox
            Left = 67
            Top = 133
            DataBinding.DataField = 'CDBCCALCULOCREDITO'
            DataBinding.DataSource = dts
            Properties.DropDownWidth = 650
            Properties.KeyFieldNames = 'CDBCCALCULOCREDITO'
            Properties.ListColumns = <
              item
                FieldName = 'NMBCCALCULOCREDITO'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            OnEnter = colorenter
            OnExit = colorexit
            Width = 318
          end
          object edtnuclfiscal: TcxDBTextEdit
            Left = 67
            Top = 40
            DataBinding.DataField = 'NUCLFISCAL'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 118
          end
          object cbxcdorigem: TcxDBLookupComboBox
            Left = 67
            Top = 110
            DataBinding.DataField = 'CDORIGEM'
            DataBinding.DataSource = dts
            Properties.DropDownWidth = 650
            Properties.KeyFieldNames = 'CDORIGEM'
            Properties.ListColumns = <
              item
                FieldName = 'NMORIGEM2'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            OnEnter = colorenter
            OnExit = colorexit
            Width = 318
          end
          object cbxcdunidade: TcxDBLookupComboBox
            Left = 67
            Top = 87
            DataBinding.DataField = 'CDUNIDADE'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDUNIDADE'
            Properties.ListColumns = <
              item
                FieldName = 'NMUNIDADE'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = colorenter
            OnExit = colorexit
            Width = 80
          end
          object cbxcdtpitem: TcxDBLookupComboBox
            Left = 67
            Top = 64
            DataBinding.DataField = 'CDTPITEM'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDTPITEM'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPITEM'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = colorexit
            Width = 318
          end
          object cbxcdtpproduto: TcxDBLookupComboBox
            Left = 67
            Top = 17
            DataBinding.DataField = 'CDTPPRODUTO'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDTPPRODUTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPPRODUTO'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = cbxcdtpprodutoExit
            Width = 318
          end
          object cbxcdunidade2: TcxDBLookupComboBox
            Left = 181
            Top = 87
            DataBinding.DataField = 'CDUNIDADE2'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDUNIDADE'
            Properties.ListColumns = <
              item
                FieldName = 'NMUNIDADE'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            OnEnter = colorenter
            OnExit = colorexit
            Width = 80
          end
          object edtprunidade: TcxDBCalcEdit
            Left = 328
            Top = 87
            DataBinding.DataField = 'PRUNIDADE'
            DataBinding.DataSource = dts
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            OnEnter = colorenter
            OnExit = colorexit
            Width = 57
          end
          object ckbbodividir: TcxDBCheckBox
            Left = 261
            Top = 88
            Caption = 'Dividir'
            DataBinding.DataField = 'BODIVIDIR'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Transparent = True
          end
          object edtnucest: TcxDBTextEdit
            Left = 267
            Top = 40
            DataBinding.DataField = 'NUCEST'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Visible = False
            OnEnter = colorenter
            OnExit = colorexit
            Width = 118
          end
        end
        object gbxpeso: TcxGroupBox
          Left = 5
          Top = 384
          Caption = 'Peso'
          TabOrder = 9
          Height = 41
          Width = 395
          object Label67: TLabel
            Left = 5
            Top = 22
            Width = 34
            Height = 14
            Caption = 'L'#237'quido'
            Transparent = True
          end
          object Label68: TLabel
            Left = 135
            Top = 22
            Width = 26
            Height = 14
            Caption = 'Bruto'
            Transparent = True
          end
          object edtPSBRUTO: TcxDBCalcEdit
            Left = 179
            Top = 13
            DataBinding.DataField = 'PSBRUTO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 86
          end
          object edtPSLIQUIDO: TcxDBCalcEdit
            Left = 45
            Top = 13
            DataBinding.DataField = 'PSLIQUIDO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Width = 86
          end
        end
        object gbxpis: TcxGroupBox
          Left = 404
          Top = 77
          Caption = 'PIS'
          TabOrder = 3
          Height = 40
          Width = 469
          object Label23: TLabel
            Left = 150
            Top = 17
            Width = 10
            Height = 14
            Caption = '%'
            Transparent = True
          end
          object Label37: TLabel
            Left = 220
            Top = 17
            Width = 13
            Height = 14
            Caption = 'ST'
            Transparent = True
          end
          object edtALPIS: TcxDBCalcEdit
            Left = 165
            Top = 15
            DataBinding.DataField = 'ALPIS'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 50
          end
          object ckbBORECUPERAPIS: TcxDBCheckBox
            Left = 4
            Top = 16
            Caption = 'Recupera'
            DataBinding.DataField = 'BORECUPERAPIS'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
          object ckbBOPIS: TcxDBCheckBox
            Left = 80
            Top = 16
            Caption = 'PIS'
            DataBinding.DataField = 'BOPIS'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Transparent = True
          end
          object cbxNUSTPIS: TcxDBLookupComboBox
            Left = 240
            Top = 15
            DataBinding.DataField = 'NUSTPIS'
            DataBinding.DataSource = dts
            Properties.DropDownWidth = 450
            Properties.KeyFieldNames = 'NUSTPIS'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTPIS'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.OnEditValueChanged = cbxNUSTPISPropertiesEditValueChanged
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = colorexit
            Width = 120
          end
        end
        object gbxcofins: TcxGroupBox
          Left = 404
          Top = 117
          Caption = 'Cofins'
          TabOrder = 4
          Height = 40
          Width = 469
          object Label19: TLabel
            Left = 150
            Top = 16
            Width = 10
            Height = 14
            Caption = '%'
            Transparent = True
          end
          object Label36: TLabel
            Left = 220
            Top = 16
            Width = 13
            Height = 14
            Caption = 'ST'
            Transparent = True
          end
          object ckbBORECUPERACOFINS: TcxDBCheckBox
            Left = 4
            Top = 14
            Caption = 'Recupera'
            DataBinding.DataField = 'BORECUPERACOFINS'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
          object cbxnustcofins: TcxDBLookupComboBox
            Left = 240
            Top = 15
            DataBinding.DataField = 'NUSTCOFINS'
            DataBinding.DataSource = dts
            Properties.DropDownWidth = 450
            Properties.KeyFieldNames = 'NUSTCOFINS'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTCOFINS'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.OnEditValueChanged = cbxnustcofinsPropertiesEditValueChanged
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = colorexit
            Width = 120
          end
          object edtALCOFINS: TcxDBCalcEdit
            Left = 165
            Top = 15
            DataBinding.DataField = 'ALCOFINS'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 50
          end
          object ckbBOCOFINS: TcxDBCheckBox
            Left = 80
            Top = 14
            Caption = 'COFINS'
            DataBinding.DataField = 'BOCOFINS'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Transparent = True
          end
        end
        object gbxIPI: TcxGroupBox
          Left = 404
          Top = 38
          Caption = 'IPI'
          TabOrder = 2
          Height = 40
          Width = 469
          object lblpercenteipi: TLabel
            Left = 150
            Top = 17
            Width = 10
            Height = 14
            Caption = '%'
            Transparent = True
          end
          object edtALIPI: TcxDBCalcEdit
            Left = 165
            Top = 15
            DataBinding.DataField = 'ALIPI'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 50
          end
          object ckbBORECUPERAIPI: TcxDBCheckBox
            Left = 4
            Top = 17
            Caption = 'Recupera'
            DataBinding.DataField = 'BORECUPERAIPI'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
          object ckbBOIPI: TcxDBCheckBox
            Left = 80
            Top = 17
            Caption = 'IPI'
            DataBinding.DataField = 'BOIPI'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Transparent = True
          end
          object ckbBOGERARLIVROPRODUCAO: TcxDBCheckBox
            Left = 363
            Top = 12
            Caption = 'Livro produ'#231#227'o'
            DataBinding.DataField = 'BOGERARLIVROPRODUCAO'
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
        end
        object gbxicmsi: TcxGroupBox
          Left = 404
          Top = 1
          Caption = 'ICMS'
          TabOrder = 1
          Height = 40
          Width = 469
          object lblpercenteicms: TLabel
            Left = 150
            Top = 18
            Width = 10
            Height = 14
            Caption = '%'
            Transparent = True
          end
          object lblpercentered: TLabel
            Left = 376
            Top = 17
            Width = 32
            Height = 14
            Caption = '% Red'
            Transparent = True
          end
          object Label20: TLabel
            Left = 220
            Top = 18
            Width = 13
            Height = 14
            Caption = 'ST'
            Transparent = True
          end
          object cbxnusticms: TcxDBLookupComboBox
            Left = 240
            Top = 16
            DataBinding.DataField = 'NUSTICMS'
            DataBinding.DataSource = dts
            Properties.DropDownWidth = 450
            Properties.KeyFieldNames = 'NUSTICMS'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTICMS'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = cbxnusticmsExit
            Width = 120
          end
          object edtALICMSRED: TcxDBCalcEdit
            Left = 411
            Top = 16
            DataBinding.DataField = 'ALICMSRED'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = colorenter
            OnExit = colorexit
            Width = 51
          end
          object edtALICMS: TcxDBCalcEdit
            Left = 165
            Top = 16
            DataBinding.DataField = 'ALICMS'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 50
          end
          object ckbBORECUPERAICMS: TcxDBCheckBox
            Left = 4
            Top = 15
            Caption = 'Recupera'
            DataBinding.DataField = 'BORECUPERAICMS'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
          object ckbBOICMS: TcxDBCheckBox
            Left = 80
            Top = 15
            Caption = 'ICMS'
            DataBinding.DataField = 'BOICMS'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Transparent = True
          end
        end
        object gbxdimensional: TcxGroupBox
          Left = 404
          Top = 394
          Caption = 'Dimensional'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Height = 114
          Width = 469
          object Label63: TLabel
            Left = 5
            Top = 69
            Width = 37
            Height = 14
            Caption = 'Material'
            Transparent = True
          end
          object Label64: TLabel
            Left = 244
            Top = 69
            Width = 30
            Height = 14
            Caption = 'Forma'
            Transparent = True
          end
          object lbllargura: TLabel
            Left = 244
            Top = 23
            Width = 38
            Height = 14
            Caption = 'Largura'
            Transparent = True
          end
          object lblespessura: TLabel
            Left = 120
            Top = 23
            Width = 52
            Height = 14
            Caption = 'Espessura'
            Transparent = True
          end
          object lblkilometro: TLabel
            Left = 5
            Top = 47
            Width = 43
            Height = 14
            Caption = 'Kg/Metro'
            Transparent = True
          end
          object lbldspolegada: TLabel
            Left = 5
            Top = 23
            Width = 44
            Height = 14
            Caption = 'Polegada'
            Transparent = True
          end
          object lblqtcomprimento: TLabel
            Left = 355
            Top = 24
            Width = 27
            Height = 14
            Caption = 'Comp'
            Transparent = True
          end
          object lblnorma: TLabel
            Left = 244
            Top = 47
            Width = 31
            Height = 14
            Caption = 'Norma'
            Transparent = True
          end
          object lbldstag1: TLabel
            Left = 5
            Top = 95
            Width = 26
            Height = 14
            Caption = 'Tag 1'
            Transparent = True
          end
          object lbldstag2: TLabel
            Left = 244
            Top = 95
            Width = 26
            Height = 14
            Caption = 'Tag 2'
            Transparent = True
          end
          object edtQTCOMPRIMENTO: TcxDBCalcEdit
            Left = 387
            Top = 15
            DataBinding.DataField = 'QTCOMPRIMENTO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = colorexit
            Width = 70
          end
          object edtQTLARGURA: TcxDBCalcEdit
            Left = 283
            Top = 15
            DataBinding.DataField = 'QTLARGURA'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 70
          end
          object edtQTESPESSURA: TcxDBCalcEdit
            Left = 172
            Top = 15
            DataBinding.DataField = 'QTESPESSURA'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 70
          end
          object edtQTKILOMETRO: TcxDBTextEdit
            Left = 50
            Top = 38
            DataBinding.DataField = 'QTKILOMETRO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = colorenter
            OnExit = colorexit
            Width = 70
          end
          object edtDSPOLEGADA: TcxDBTextEdit
            Left = 50
            Top = 15
            DataBinding.DataField = 'DSPOLEGADA'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Width = 70
          end
          object edtDSTAG2: TcxDBTextEdit
            Left = 283
            Top = 87
            DataBinding.DataField = 'DSTAG2'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            OnEnter = colorenter
            OnExit = colorexit
            Width = 175
          end
          object edtDSTAG1: TcxDBTextEdit
            Left = 50
            Top = 87
            DataBinding.DataField = 'DSTAG1'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            OnEnter = colorenter
            OnExit = colorexit
            Width = 193
          end
          object cbxcdforma: TcxDBLookupComboBox
            Left = 283
            Top = 63
            DataBinding.DataField = 'CDFORMA'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDFORMA'
            Properties.ListColumns = <
              item
                FieldName = 'NMFORMA'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            OnEnter = colorenter
            OnExit = colorexit
            Width = 175
          end
          object cbxcdnorma: TcxDBLookupComboBox
            Left = 283
            Top = 38
            DataBinding.DataField = 'CDNORMA'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDNORMA'
            Properties.ListColumns = <
              item
                FieldName = 'NMNORMA'
              end>
            Properties.ListOptions.RowSelect = False
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            OnEnter = colorenter
            OnExit = colorexit
            Width = 175
          end
          object cbxcdmaterial: TcxDBLookupComboBox
            Left = 50
            Top = 63
            DataBinding.DataField = 'CDMATERIAL'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDMATERIAL'
            Properties.ListColumns = <
              item
                FieldName = 'NMMATERIAL'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            OnEnter = colorenter
            OnExit = colorexit
            Width = 193
          end
        end
        object gbxcaracteristicas: TcxGroupBox
          Left = 404
          Top = 296
          Caption = 'Caracter'#237'sticas'
          TabOrder = 8
          Height = 85
          Width = 469
          object Label41: TLabel
            Left = 255
            Top = 60
            Width = 17
            Height = 14
            Caption = 'Cor'
            Transparent = True
          end
          object Label43: TLabel
            Left = 5
            Top = 60
            Width = 43
            Height = 14
            Caption = 'Tamanho'
            Transparent = True
          end
          object lblfornecedorexclusivo: TLabel
            Left = 5
            Top = 37
            Width = 56
            Height = 14
            Caption = 'Fornecedor'
            Transparent = True
          end
          object txtnmfornecedor: TDBText
            Left = 164
            Top = 34
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
          end
          object ckbBOCRITICO: TcxDBCheckBox
            Left = 63
            Top = 13
            Caption = 'Produto cr'#237'tico'
            DataBinding.DataField = 'BOCRITICO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
          object cbxcdcor: TcxDBLookupComboBox
            Left = 273
            Top = 54
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
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 190
          end
          object cbxcdtamanho: TcxDBLookupComboBox
            Left = 63
            Top = 54
            DataBinding.DataField = 'CDTAMANHO'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDTAMANHO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTAMANHO'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 190
          end
          object edtcdfornecedor: TcxDBButtonEdit
            Left = 63
            Top = 32
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
            OnEnter = colorenter
            OnExit = edtcdfornecedorExit
            OnKeyDown = edtcdfornecedorKeyDown
            Width = 99
          end
        end
        object gbxcombustivel: TcxGroupBox
          Left = 5
          Top = 465
          Caption = 'Combust'#237'vel'
          TabOrder = 11
          Height = 43
          Width = 395
          object lbl1: TLabel
            Left = 6
            Top = 20
            Width = 56
            Height = 14
            Caption = 'C'#243'digo ANP'
            Transparent = True
          end
          object lbl2: TLabel
            Left = 175
            Top = 23
            Width = 61
            Height = 14
            Caption = 'UF Consumo'
            Transparent = True
          end
          object edtCDANP: TcxDBTextEdit
            Left = 66
            Top = 18
            DataBinding.DataField = 'CDANP'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Width = 101
          end
          object cbxcduf: TcxDBLookupComboBox
            Left = 240
            Top = 17
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
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 150
          end
        end
        object gbx1: TcxGroupBox
          Left = 404
          Top = 156
          Caption = 'Outros'
          TabOrder = 6
          Height = 139
          Width = 469
          object Label17: TLabel
            Left = 3
            Top = 23
            Width = 49
            Height = 14
            Caption = 'Descri'#231#227'o'
            Transparent = True
          end
          object lblCDCODFORNECEDOR: TLabel
            Left = 3
            Top = 46
            Width = 58
            Height = 14
            Caption = 'C'#243'd F'#225'brica'
            Transparent = True
          end
          object lblcdalternativo: TLabel
            Left = 3
            Top = 68
            Width = 62
            Height = 14
            Caption = 'C'#243'd. Alternat'
            Transparent = True
          end
          object lblgrade: TLabel
            Left = 2
            Top = 91
            Width = 30
            Height = 14
            Caption = 'Grade'
            Transparent = True
          end
          object lbldslocalizacao: TLabel
            Left = 3
            Top = 110
            Width = 58
            Height = 14
            Caption = 'Localiza'#231#227'o'
            Transparent = True
          end
          object lblnudiasgarantia: TLabel
            Left = 196
            Top = 110
            Width = 65
            Height = 14
            Caption = 'Dias Garantia'
            Transparent = True
          end
          object lblcean: TLabel
            Left = 235
            Top = 45
            Width = 21
            Height = 14
            Caption = 'EAN'
            Transparent = True
          end
          object edtNUDIASGARANTIA: TcxDBSpinEdit
            Left = 262
            Top = 107
            DataBinding.DataField = 'NUDIASGARANTIA'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            OnEnter = colorenter
            OnExit = colorexit
            Width = 43
          end
          object ckbBOSINCRONIZADO: TcxDBCheckBox
            Left = 310
            Top = 107
            Caption = 'Sincronizado com o PDV'
            DataBinding.DataField = 'BOSINCRONIZADO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Transparent = True
          end
          object edtCDALTERNATIVO: TcxDBTextEdit
            Left = 67
            Top = 62
            DataBinding.DataField = 'CDALTERNATIVO'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = colorexit
            Width = 388
          end
          object edtCEAN: TcxDBTextEdit
            Left = 260
            Top = 39
            DataBinding.DataField = 'CEAN'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 195
          end
          object edtDSLOCALIZACAO: TcxDBTextEdit
            Left = 67
            Top = 107
            DataBinding.DataField = 'DSLOCALIZACAO'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            OnEnter = colorenter
            OnExit = colorexit
            Width = 128
          end
          object edtCDCODFORNECEDOR: TcxDBTextEdit
            Left = 67
            Top = 40
            DataBinding.DataField = 'CDCODFORNECEDOR'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 166
          end
          object edtDSPRODUTO: TcxDBTextEdit
            Left = 67
            Top = 17
            DataBinding.DataField = 'DSPRODUTO'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Width = 388
          end
          object cbxcdgrade: TcxDBLookupComboBox
            Left = 67
            Top = 85
            DataBinding.DataField = 'CDGRADE'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDGRADE'
            Properties.ListColumns = <
              item
                FieldName = 'NMGRADE'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = colorenter
            OnExit = colorexit
            Width = 390
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
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Height = 566
          Width = 1108
        end
      end
      object tbsespecificaotecnica: TcxTabSheet
        Caption = 'Espec. T'#233'cnica'
        ImageIndex = 62
        object dxBevel1: TdxBevel
          Left = 0
          Top = 0
          Width = 1108
          Height = 30
          Align = alTop
          LookAndFeel.NativeStyle = False
          ExplicitWidth = 1032
        end
        object lblcdfuncionario: TLabel
          Left = 5
          Top = 9
          Width = 104
          Height = 14
          Caption = 'T'#233'cnico Respons'#225'vel'
          Transparent = True
        end
        object cbxcdfuncionario: TcxDBLookupComboBox
          Left = 112
          Top = 3
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
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Width = 400
        end
        object gbxdsmaterial: TcxGroupBox
          Left = 0
          Top = 180
          Align = alTop
          Caption = 'Descri'#231#227'o do Material'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 150
          Width = 1108
          object memdsmaterial: TcxDBMemo
            Left = 2
            Top = 19
            Align = alClient
            DataBinding.DataField = 'DSMATERIAL'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Height = 129
            Width = 1104
          end
        end
        object gbxdsespecificacaotecnica: TcxGroupBox
          Left = 0
          Top = 330
          Align = alTop
          Caption = 'Especifica'#231#227'o T'#233'cnica'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 150
          Width = 1108
          object memdsespecificacaotecnica: TcxDBMemo
            Left = 2
            Top = 19
            Align = alClient
            DataBinding.DataField = 'dsespecificacaotecnica'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Height = 129
            Width = 1104
          end
        end
        object gbxdsarmazenamento: TcxGroupBox
          Left = 0
          Top = 30
          Align = alTop
          Caption = 'Armazenamento'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Height = 150
          Width = 1108
          object memdsarmazenamento: TcxDBMemo
            Left = 2
            Top = 19
            Align = alClient
            DataBinding.DataField = 'DSARMAZENAMENTO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Height = 129
            Width = 1104
          end
        end
      end
      object tbsconsulta: TcxTabSheet
        Caption = 'Consulta'
        ImageIndex = 41
        object grdconsulta: TcxGrid
          Left = 0
          Top = 38
          Width = 1108
          Height = 320
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvorcamento: TcxGridDBTableView
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
            OnCellDblClick = tbvorcamentoCellDblClick
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbvorcamentoVLTOTAL
              end
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvorcamentoQTITEM
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvorcamentoCDORCAMENTO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDORCAMENTO'
              Styles.Content = dtmmain.cxStyle1
            end
            object tbvorcamentoDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbvorcamentoNMSTORCAMENTO: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTORCAMENTO'
              Width = 80
            end
            object tbvorcamentoCDCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'd Cliente'
              DataBinding.FieldName = 'CDCLIENTE'
            end
            object tbvorcamentoRZSOCIAL: TcxGridDBColumn
              Caption = 'Raz'#227'o Social do Cliente'
              DataBinding.FieldName = 'RZSOCIAL'
              Width = 200
            end
            object tbvorcamentoQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
            end
            object tbvorcamentoVLUNITARIO: TcxGridDBColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 84
            end
            object tbvorcamentoVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 100
            end
          end
          object tbvcliente: TcxGridDBTableView
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
            OnCellDblClick = tbvclienteCellDblClick
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvclienteQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbvclienteVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvclienteCDCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDCLIENTE'
              Styles.Content = dtmmain.cxStyle1
              Width = 80
            end
            object tbvclienteRZSOCIAL: TcxGridDBColumn
              Caption = 'Raz'#227'o Social'
              DataBinding.FieldName = 'RZSOCIAL'
              Width = 200
            end
            object tbvclienteDSENDERECO: TcxGridDBColumn
              Caption = 'Endere'#231'o'
              DataBinding.FieldName = 'DSENDERECO'
              Width = 100
            end
            object tbvclienteNMBAIRRO: TcxGridDBColumn
              Caption = 'Bairro'
              DataBinding.FieldName = 'NMBAIRRO'
              Width = 100
            end
            object tbvclienteNMMUNCIPIO: TcxGridDBColumn
              Caption = 'Munic'#237'pio'
              DataBinding.FieldName = 'NMMUNICIPIO'
              Width = 100
            end
            object tbvclienteSGUF: TcxGridDBColumn
              Caption = 'UF'
              DataBinding.FieldName = 'SGUF'
              Width = 40
            end
            object tbvclienteQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
            end
            object tbvclienteVLUNITARIO: TcxGridDBColumn
              Caption = 'M'#233'dia'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
            object tbvclienteVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
          end
          object tbvfornecedor: TcxGridDBTableView
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
            OnCellDblClick = tbvfornecedorCellDblClick
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbvfornecedorVLTOTAL
              end
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvfornecedorQTITEM
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvfornecedorCDFORNECEDOR: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDFORNECEDOR'
              Styles.Content = dtmmain.cxStyle1
              Width = 80
            end
            object tbvfornecedorRZSOCIAL: TcxGridDBColumn
              Caption = 'Raz'#227'o Social'
              DataBinding.FieldName = 'RZSOCIAL'
              Width = 200
            end
            object tbvfornecedorDSENDERECO: TcxGridDBColumn
              Caption = 'Endere'#231'o'
              DataBinding.FieldName = 'DSENDERECO'
              Width = 80
            end
            object tbvfornecedorNMBAIRRO: TcxGridDBColumn
              Caption = 'Bairro'
              DataBinding.FieldName = 'NMBAIRRO'
              Width = 80
            end
            object tbvfornecedorNMMUNICIPIO: TcxGridDBColumn
              Caption = 'Munic'#237'pio'
              DataBinding.FieldName = 'NMMUNICIPIO'
              Width = 80
            end
            object tbvfornecedorSGUF: TcxGridDBColumn
              Caption = 'UF'
              DataBinding.FieldName = 'SGUF'
              Width = 40
            end
            object tbvfornecedorQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
              Width = 80
            end
            object tbvfornecedorVLUNITARIO: TcxGridDBColumn
              Caption = 'M'#233'dia Valor'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
            object tbvfornecedorVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
          end
          object tbvpedido: TcxGridDBTableView
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
            OnCellDblClick = tbvpedidoCellDblClick
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvpedidoQTITEM
              end
              item
                Kind = skSum
                FieldName = 'QTATENDIDA'
                Column = tbvpedidoQTATENDIDA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbvpedidoVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvpedidoNUPEDIDO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'NUPEDIDO'
              Styles.Content = dtmmain.cxStyle1
            end
            object tbvpedidoDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbvpedidoNMSTPEDIDO: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTPEDIDO'
              Width = 100
            end
            object tbvpedidoCDCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'd Cliente'
              DataBinding.FieldName = 'CDCLIENTE'
              Width = 80
            end
            object tbvpedidoRZSOCIAL: TcxGridDBColumn
              Caption = 'Raz'#227'o Social do Cliente'
              DataBinding.FieldName = 'RZSOCIAL'
              Width = 200
            end
            object tbvpedidoQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
            end
            object tbvpedidoQTATENDIDA: TcxGridDBColumn
              Caption = 'Qtd Atendida'
              DataBinding.FieldName = 'QTATENDIDA'
            end
            object tbvpedidoVLUNITARIO: TcxGridDBColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
            object tbvpedidoVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
          end
          object tbvsaida: TcxGridDBTableView
            OnKeyDown = exportarGradeExcel
            Navigator.Buttons.CustomButtons = <>
            Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellDblClick = tbvsaidaCellDblClick
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvsaidaQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbvsaidaVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvsaidaNUSAIDA: TcxGridDBColumn
              Caption = 'Documento'
              DataBinding.FieldName = 'NUSAIDA'
              Styles.Content = dtmmain.cxStyle1
            end
            object tbvsaidaNMTPSAIDA: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'NMTPSAIDA'
              Width = 100
            end
            object tbvsaidaDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbvsaidaCDCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'd Cliente'
              DataBinding.FieldName = 'CDCLIENTE'
              Width = 80
            end
            object tbvsaidaRZSOCIAL: TcxGridDBColumn
              Caption = 'Raz'#227'o Social do Cliente'
              DataBinding.FieldName = 'RZSOCIAL'
              Width = 150
            end
            object tbvsaidaCDCFOP: TcxGridDBColumn
              Caption = 'CFOP'
              DataBinding.FieldName = 'CDCFOP'
              Width = 50
            end
            object tbvsaidaNUSTICMS: TcxGridDBColumn
              Caption = 'ST ICMS'
              DataBinding.FieldName = 'NUSTICMS'
            end
            object tbvsaidaALICMS: TcxGridDBColumn
              Caption = '% ICMS'
              DataBinding.FieldName = 'ALICMS'
              Width = 50
            end
            object tbvsaidaALIPI: TcxGridDBColumn
              Caption = '% IPI'
              DataBinding.FieldName = 'ALIPI'
              Width = 50
            end
            object tbvsaidaQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
            end
            object tbvsaidaVLUNITARIO: TcxGridDBColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
            object tbvsaidaVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
          end
          object tbventrada: TcxGridDBTableView
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
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellDblClick = tbventradaCellDblClick
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbventradaQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbventradaVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbventradaNUENTRADA: TcxGridDBColumn
              Caption = 'Documento'
              DataBinding.FieldName = 'NUENTRADA'
              Styles.Content = dtmmain.cxStyle1
            end
            object tbventradaNMTPENTRADA: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'NMTPENTRADA'
              Width = 120
            end
            object tbventradaDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbventradaDTSAIDA: TcxGridDBColumn
              Caption = 'Entrada'
              DataBinding.FieldName = 'DTSAIDA'
            end
            object tbventradaNUDOCFISCALICMS: TcxGridDBColumn
              Caption = 'Doc Fiscal'
              DataBinding.FieldName = 'NUDOCFISCALICMS'
              Width = 60
            end
            object tbventradaCDFORNECEDOR: TcxGridDBColumn
              Caption = 'C'#243'd Fornecedor'
              DataBinding.FieldName = 'CDFORNECEDOR'
            end
            object tbventradaRZSOCIAL: TcxGridDBColumn
              Caption = 'Raz'#227'o Social do Fornecedor'
              DataBinding.FieldName = 'RZSOCIAL'
              Width = 200
            end
            object tbventradaCDCFOP: TcxGridDBColumn
              Caption = 'CFOP'
              DataBinding.FieldName = 'CDCFOP'
            end
            object tbventradaQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
            end
            object tbventradaVLUNITARIO: TcxGridDBColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object tbventradaVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object tbventradaNUSTICMS: TcxGridDBColumn
              Caption = 'ST ICMS'
              DataBinding.FieldName = 'NUSTICMS'
            end
            object tbventradaALICMS: TcxGridDBColumn
              Caption = '% ICMS'
              DataBinding.FieldName = 'ALICMS'
            end
            object tbventradaALIPI: TcxGridDBColumn
              Caption = '% IPI'
              DataBinding.FieldName = 'ALIPI'
            end
          end
          object tbvmovto: TcxGridDBTableView
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
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellDblClick = tbvmovtoCellDblClick
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvmovtoQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbvmovtoVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvmovtoCDMOVTO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDMOVTO'
              Styles.Content = dtmmain.cxStyle1
            end
            object tbvmovtoDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbvmovtoNMTPMOVTO: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'NMTPMOVTO'
              Width = 150
            end
            object tbvmovtoNMCNTCUSTO: TcxGridDBColumn
              Caption = 'Centro Custo'
              DataBinding.FieldName = 'NMCNTCUSTO'
              Width = 250
            end
            object tbvmovtoQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
            end
            object tbvmovtoVLUNITARIO: TcxGridDBColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
            object tbvmovtoVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
            object tbvmovtoNUSAIDA: TcxGridDBColumn
              Caption = 'Nota Fiscal'
              DataBinding.FieldName = 'NUSAIDA'
            end
          end
          object tbvhcustomedio: TcxGridDBTableView
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
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvhcustomedioDTHISTORICO: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DTHISTORICO'
            end
            object tbvhcustomedioQTESTOQUE: TcxGridDBColumn
              Caption = 'Quantidade Estoque'
              DataBinding.FieldName = 'QTESTOQUE'
              Width = 120
            end
            object tbvhcustomedioVLCUSTOMEDIO: TcxGridDBColumn
              Caption = 'Valor Custo M'#233'dio'
              DataBinding.FieldName = 'VLCUUSTOMEDIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 120
            end
          end
          object tbvordserv: TcxGridDBTableView
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
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellDblClick = tbvordservCellDblClick
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvordservQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbvordservVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvordservNUORDSERV: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'NUORDSERV'
              Styles.Content = dtmmain.cxStyle1
            end
            object tbvordservDTENTRADA: TcxGridDBColumn
              Caption = 'Entrada'
              DataBinding.FieldName = 'DTENTRADA'
            end
            object tbvordservNMSTORDSERV: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTORDSERV'
              Width = 100
            end
            object tbvordservCDCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'd Cliente'
              DataBinding.FieldName = 'CDCLIENTE'
            end
            object tbvordservRZSOCIAL: TcxGridDBColumn
              Caption = 'Raz'#227'o Social do Cliente'
              DataBinding.FieldName = 'RZSOCIAL'
              Width = 200
            end
            object tbvordservQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
            end
            object tbvordservVLUNITARIO: TcxGridDBColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
            object tbvordservVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
          end
          object tbvordservexterno: TcxGridDBTableView
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
            OnCellDblClick = tbvordservexternoCellDblClick
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvordservexternoQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbvordservexternoVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvordservexternoNUORDSERV: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'NUORDSERV'
              Styles.Content = dtmmain.cxStyle1
            end
            object tbvordservexternoDTENTRADA: TcxGridDBColumn
              Caption = 'Entrada'
              DataBinding.FieldName = 'DTENTRADA'
            end
            object tbvordservexternoNMSTORDSERV: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTORDSERV'
              Width = 100
            end
            object tbvordservexternoCDCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'd Cliente'
              DataBinding.FieldName = 'CDCLIENTE'
              Width = 80
            end
            object tbvordservexternoRZSOCIAL: TcxGridDBColumn
              Caption = 'Raz'#227'o Social do Cliente'
              DataBinding.FieldName = 'RZSOCIAL'
              Width = 200
            end
            object tbvordservexternoQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
            end
            object tbvordservexternoVLUNITARIO: TcxGridDBColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
            object tbvordservexternoVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 80
            end
          end
          object tbvitlote: TcxGridDBTableView
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
                FieldName = 'QTENTRADA'
                Column = tbvitloteQTENTRADA
              end
              item
                Kind = skSum
                FieldName = 'QTESTOQUE'
                Column = tbvitloteQTESTOQUE
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLCUSTO'
                Column = tbvitloteVLCUSTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLVENDA'
                Column = tbvitloteVLVENDA
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object tbvitloteCDITLOTE: TcxGridDBColumn
              Caption = 'C'#243'digo Lote'
              DataBinding.FieldName = 'CDITLOTE'
            end
            object tbvitloteDTCOMPRA: TcxGridDBColumn
              Caption = 'Data Compra'
              DataBinding.FieldName = 'DTCOMPRA'
              Width = 80
            end
            object tbvitloteDTFABRICACAO: TcxGridDBColumn
              Caption = 'Data Fabrica'#231#227'o'
              DataBinding.FieldName = 'DTFABRICACAO'
              Width = 90
            end
            object tbvitloteDTVALIDADE: TcxGridDBColumn
              Caption = 'Data Validade'
              DataBinding.FieldName = 'DTVALIDADE'
              Width = 90
            end
            object tbvitloteNUIMEI: TcxGridDBColumn
              Caption = 'N'#186' S'#233'rie'
              DataBinding.FieldName = 'NUIMEI'
              Width = 150
            end
            object tbvitloteQTESTOQUE: TcxGridDBColumn
              Caption = 'Qtd Estoque'
              DataBinding.FieldName = 'QTESTOQUE'
              Width = 70
            end
            object tbvitloteQTENTRADA: TcxGridDBColumn
              Caption = 'Qtd Entrada'
              DataBinding.FieldName = 'QTENTRADA'
              Width = 70
            end
            object tbvitloteVLCUSTO: TcxGridDBColumn
              Caption = 'Custo'
              DataBinding.FieldName = 'VLCUSTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object tbvitloteVLVENDA: TcxGridDBColumn
              Caption = 'Valor Venda'
              DataBinding.FieldName = 'VLVENDA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 100
            end
          end
          object tbvitloteentrada: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dtsitloteentrada
            DataController.DetailKeyFieldNames = 'CDITLOTE'
            DataController.KeyFieldNames = 'NUENTRADA'
            DataController.MasterKeyFieldNames = 'CDITLOTE'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsView.GroupByBox = False
            object tbvitloteentradaNUENTRADA: TcxGridDBColumn
              Caption = 'Compra'
              DataBinding.FieldName = 'NUENTRADA'
            end
            object tbvitloteentradaDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbvitloteentradaCDCFOP: TcxGridDBColumn
              Caption = 'CFOP'
              DataBinding.FieldName = 'CDCFOP'
            end
          end
          object tbvitlotesaida: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dtsitlotesaida
            DataController.DetailKeyFieldNames = 'CDITLOTE'
            DataController.KeyFieldNames = 'CDITSAIDALOTE'
            DataController.MasterKeyFieldNames = 'CDITLOTE'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object tbvitlotesaidaNUSAIDA: TcxGridDBColumn
              Caption = 'Nota Fiscal'
              DataBinding.FieldName = 'NUSAIDA'
            end
            object tbvitlotesaidaDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbvitlotesaidaCDCFOP: TcxGridDBColumn
              Caption = 'CFOP'
              DataBinding.FieldName = 'CDCFOP'
            end
          end
          object tbvordproducao: TcxGridDBTableView
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
            OnCellDblClick = tbvordproducaoCellDblClick
            DataController.DataSource = dtsconsulta
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvordproducaoQTITEM
              end
              item
                Kind = skSum
                FieldName = 'QTPRODUCAO'
                Column = tbvordproducaoQTPRODUCAO
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvordproducaoCDORDPRODUCAO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDORDPRODUCAO'
              Styles.Content = dtmmain.cxStyle1
            end
            object tbvordproducaoDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbvordproducaoDTPRVENTREGA: TcxGridDBColumn
              Caption = 'Previs'#227'o'
              DataBinding.FieldName = 'DTPRVENTREGA'
            end
            object tbvordproducaoDTENTREGA: TcxGridDBColumn
              Caption = 'Entrega'
              DataBinding.FieldName = 'DTENTREGA'
            end
            object tbvordproducaoNMSTORDPRODUCAO: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTORDPRODUCAO'
              Width = 150
            end
            object tbvordproducaoNMTPORDPRODUCAO: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'NMTPORDPRODUCAO'
              Width = 150
            end
            object tbvordproducaoQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
            end
            object tbvordproducaoQTPRODUCAO: TcxGridDBColumn
              Caption = 'Produ'#231#227'o'
              DataBinding.FieldName = 'QTPRODUCAO'
            end
          end
          object glvLevel1: TcxGridLevel
            Options.DetailTabsPosition = dtpTop
          end
        end
        object bdcconsulta: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1108
          Height = 38
          Align = dalTop
          BarManager = bmg1
        end
        object grditlote: TcxGrid
          Left = 0
          Top = 366
          Width = 1108
          Height = 200
          Align = alBottom
          TabOrder = 2
          Visible = False
          LookAndFeel.NativeStyle = False
          RootLevelOptions.DetailTabsPosition = dtpTop
          object tbvitentradalote: TcxGridDBTableView
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
            DataController.DataSource = dtsitloteentrada
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvitentradaloteNUENTRADA: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'NUENTRADA'
            end
            object tbvitentradaloteDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbvitentradaloteCDCFOP: TcxGridDBColumn
              Caption = 'CFOP'
              DataBinding.FieldName = 'CDCFOP'
            end
          end
          object tbvitsaidalote: TcxGridDBTableView
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
            DataController.DataSource = dtsitlotesaida
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object tbvitsaidaloteNUSAIDA: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'NUSAIDA'
            end
            object tbvitsaidaloteDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbvitsaidaloteCDCFOP: TcxGridDBColumn
              Caption = 'CFOP'
              DataBinding.FieldName = 'CDCFOP'
            end
          end
          object glvitentradalote: TcxGridLevel
            Caption = 'Compra'
            GridView = tbvitentradalote
          end
          object glvitsaidalote: TcxGridLevel
            Caption = 'Nota Fiscal'
            GridView = tbvitsaidalote
          end
        end
        object splitlote: TcxSplitter
          Left = 0
          Top = 358
          Width = 1108
          Height = 8
          AlignSplitter = salBottom
          Visible = False
        end
      end
      object tbscontabilidade: TcxTabSheet
        Caption = 'Contabilidade'
        ExplicitTop = 22
        object Label62: TLabel
          Left = 5
          Top = 10
          Width = 70
          Height = 14
          Caption = 'Conta Estoque'
          Transparent = True
        end
        object lblplconta: TLabel
          Left = 5
          Top = 30
          Width = 103
          Height = 14
          Caption = 'Plano Contas Entrada'
          Transparent = True
        end
        object lblcntcusto: TLabel
          Left = 5
          Top = 53
          Width = 103
          Height = 14
          Caption = 'Centro Custo Entrada'
          Transparent = True
        end
        object lbldsfuncaobem: TLabel
          Left = 5
          Top = 126
          Width = 60
          Height = 14
          Caption = 'Fun'#231#227'o Bem'
          Transparent = True
        end
        object lblnuvidautil: TLabel
          Left = 5
          Top = 150
          Width = 91
          Height = 14
          Caption = 'Vida '#218'til em meses'
          Transparent = True
        end
        object lbl6: TLabel
          Left = 5
          Top = 76
          Width = 93
          Height = 14
          Caption = 'Plano Contas Sa'#237'da'
          Transparent = True
        end
        object lbl7: TLabel
          Left = 5
          Top = 99
          Width = 93
          Height = 14
          Caption = 'Centro Custo Sa'#237'da'
          Transparent = True
        end
        object edtNUVIDAUTIL: TcxDBSpinEdit
          Left = 110
          Top = 144
          DataBinding.DataField = 'NUVIDAUTIL'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Width = 301
        end
        object edtDSFUNCAOBEM: TcxDBTextEdit
          Left = 110
          Top = 120
          DataBinding.DataField = 'DSFUNCAOBEM'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          Width = 301
        end
        object edtNUCONTAESTOQUE: TcxDBTextEdit
          Left = 110
          Top = 4
          DataBinding.DataField = 'NUCONTAESTOQUE'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Width = 301
        end
        object cxGroupBox2: TcxGroupBox
          Left = 8
          Top = 169
          Caption = 'Conta Ativo Imobilizado'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Height = 106
          Width = 390
          object Label6: TLabel
            Left = 5
            Top = 20
            Width = 64
            Height = 14
            Caption = 'C'#243'digo Conta'
            Transparent = True
          end
          object Label4: TLabel
            Left = 208
            Top = 20
            Width = 54
            Height = 14
            Caption = 'N'#237'vel Conta'
            Transparent = True
          end
          object Label11: TLabel
            Left = 5
            Top = 43
            Width = 58
            Height = 14
            Caption = 'Nome Conta'
            Transparent = True
          end
          object Label39: TLabel
            Left = 5
            Top = 63
            Width = 75
            Height = 14
            Caption = 'Natureza Conta'
            Transparent = True
          end
          object Label40: TLabel
            Left = 5
            Top = 83
            Width = 75
            Height = 14
            Caption = 'Indicador Conta'
            Transparent = True
          end
          object edtNMCONTATIVO: TcxDBTextEdit
            Left = 92
            Top = 38
            DataBinding.DataField = 'NMCONTAATIVO'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 295
          end
          object edtnucontaativo: TcxDBTextEdit
            Left = 271
            Top = 15
            DataBinding.DataField = 'nucontaativo'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 116
          end
          object edtCDCONTAATIVO: TcxDBTextEdit
            Left = 92
            Top = 15
            DataBinding.DataField = 'CDCONTAATIVO'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Width = 116
          end
          object cbxCDINDICADORTPCONTA: TcxDBLookupComboBox
            Left = 92
            Top = 80
            DataBinding.DataField = 'CDINDICADORTPCONTA'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDINDICADORTPCONTA'
            Properties.ListColumns = <
              item
                FieldName = 'NMINDICADORTPCONTA'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = colorenter
            OnExit = colorexit
            Width = 295
          end
          object cbxCDNATUREZACONTA: TcxDBLookupComboBox
            Left = 92
            Top = 59
            DataBinding.DataField = 'CDNATUREZACONTA'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDNATUREZACONTA'
            Properties.ListColumns = <
              item
                FieldName = 'NMNATUREZACONTA'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = colorexit
            Width = 295
          end
        end
        object txtnmplconta: TcxDBLabel
          Left = 225
          Top = 29
          DataBinding.DataField = 'NMPLCONTA'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 191
        end
        object edtnuplconta: TcxDBButtonEdit
          Left = 110
          Top = 27
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
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtnuplcontaKeyDown
          Width = 112
        end
        object txtnmcntcusto: TcxDBLabel
          Left = 225
          Top = 53
          DataBinding.DataField = 'NMCNTCUSTO'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 191
        end
        object edtnucntcusto: TcxDBButtonEdit
          Left = 110
          Top = 51
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
          TabOrder = 2
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtnucntcustoKeyDown
          Width = 112
        end
        object txtNMPLCONTASAIDA: TcxDBLabel
          Left = 225
          Top = 75
          DataBinding.DataField = 'NMPLCONTASAIDA'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 191
        end
        object edtNUPLCONTASAIDA: TcxDBButtonEdit
          Left = 110
          Top = 73
          DataBinding.DataField = 'NUPLCONTASAIDA'
          DataBinding.DataSource = dts
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edtNUPLCONTASAIDAPropertiesButtonClick
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtNUPLCONTASAIDAKeyDown
          Width = 112
        end
        object txtNMCNTCUSTOSAIDA: TcxDBLabel
          Left = 225
          Top = 99
          DataBinding.DataField = 'NMCNTCUSTOSAIDA'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 191
        end
        object edtNUCNTCUSTOSAIDA: TcxDBButtonEdit
          Left = 110
          Top = 97
          DataBinding.DataField = 'NUCNTCUSTOSAIDA'
          DataBinding.DataSource = dts
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edtNUCNTCUSTOSAIDAPropertiesButtonClick
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtNUCNTCUSTOSAIDAKeyDown
          Width = 112
        end
      end
      object tbsst: TcxTabSheet
        Caption = 'Situa'#231#227'o Tribut'#225'ria'
        object lblregrast: TLabel
          Left = 6
          Top = 11
          Width = 122
          Height = 14
          Caption = 'Regra Situa'#231#227'o Tribut'#225'ria'
          Transparent = True
        end
        object cbxcdregrast: TcxDBLookupComboBox
          Left = 131
          Top = 5
          DataBinding.DataField = 'cdregrast'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDREGRAST'
          Properties.ListColumns = <
            item
              FieldName = 'NMREGRAST'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Width = 297
        end
        object gbxicms: TcxGroupBox
          Left = 6
          Top = 121
          Caption = 'ICMS'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 97
          Width = 429
          object Label57: TLabel
            Left = 6
            Top = 22
            Width = 120
            Height = 14
            Caption = 'Modalidade Base C'#225'lculo'
            Transparent = True
          end
          object Label58: TLabel
            Left = 6
            Top = 44
            Width = 136
            Height = 14
            Caption = 'Modalidade Base C'#225'lculo ST'
            Transparent = True
          end
          object Label65: TLabel
            Left = 6
            Top = 68
            Width = 23
            Height = 14
            Caption = 'MVA'
            Transparent = True
          end
          object edtALMVA: TcxDBTextEdit
            Left = 144
            Top = 64
            DataBinding.DataField = 'ALMVA'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 281
          end
          object cbxcdmodbcsticms: TcxDBLookupComboBox
            Left = 144
            Top = 40
            DataBinding.DataField = 'cdmodbcsticms'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'cdmodbcsticms'
            Properties.ListColumns = <
              item
                FieldName = 'NMmodbcsticms'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 281
          end
          object cbxcdmodbcicms: TcxDBLookupComboBox
            Left = 144
            Top = 16
            DataBinding.DataField = 'cdmodbcicms'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'cdmodbcicms'
            Properties.ListColumns = <
              item
                FieldName = 'NMmodbcicms'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Width = 281
          end
        end
        object gbxipi2: TcxGroupBox
          Left = 6
          Top = 28
          Caption = 'IPI'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 92
          Width = 429
          object Label54: TLabel
            Left = 6
            Top = 23
            Width = 25
            Height = 14
            Caption = 'CNPJ'
            Transparent = True
          end
          object Label55: TLabel
            Left = 6
            Top = 40
            Width = 111
            Height = 14
            Caption = 'Classe Enquadramento'
            Transparent = True
          end
          object Label56: TLabel
            Left = 6
            Top = 62
            Width = 111
            Height = 14
            Caption = 'C'#243'digo Enquadramento'
            Transparent = True
          end
          object edtcdenq: TcxDBTextEdit
            Left = 122
            Top = 59
            DataBinding.DataField = 'cdenq'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            Width = 302
          end
          object edtCLENQ: TcxDBTextEdit
            Left = 122
            Top = 38
            DataBinding.DataField = 'CLENQ'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            Width = 302
          end
          object edtNUCNPJ: TcxDBTextEdit
            Left = 122
            Top = 16
            DataBinding.DataField = 'NUCNPJ'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            Width = 302
          end
        end
      end
      object tbsusarproduto: TcxTabSheet
        Caption = 'Usar Produto em'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = ']'
        Font.Style = []
        ParentFont = False
        object gbxusarproduto: TcxGroupBox
          Left = 5
          Top = 8
          Caption = 'Usar Produto em '
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 67
          Width = 370
          object ckbsaida: TcxDBCheckBox
            Left = 4
            Top = 16
            Caption = 'Nota Fiscal'
            DataBinding.DataField = 'BOSAIDA'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
          object ckbpedido: TcxDBCheckBox
            Left = 78
            Top = 16
            Caption = 'Pedido'
            DataBinding.DataField = 'BOPEDIDO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Transparent = True
          end
          object ckbentrada: TcxDBCheckBox
            Left = 4
            Top = 37
            Caption = 'Compra'
            DataBinding.DataField = 'BOENTRADA'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Transparent = True
          end
          object ckbordcompra: TcxDBCheckBox
            Left = 78
            Top = 37
            Caption = 'Ordem de Compra'
            DataBinding.DataField = 'BOORDCOMPRA'
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
          object ckbordserv: TcxDBCheckBox
            Left = 261
            Top = 16
            Caption = 'Ordem de Servi'#231'o'
            DataBinding.DataField = 'BOORDSERV'
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
          object ckbpedidomaterial: TcxDBCheckBox
            Left = 185
            Top = 37
            Caption = 'Cota'#231#227'o'
            DataBinding.DataField = 'BOPEDIDOMATERIAL'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Transparent = True
          end
          object ckborcamento: TcxDBCheckBox
            Left = 185
            Top = 16
            Caption = 'Or'#231'amento'
            DataBinding.DataField = 'BOORCAMENTO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Transparent = True
          end
          object ckbmovto: TcxDBCheckBox
            Left = 261
            Top = 37
            Caption = 'Mov de Estoque'
            DataBinding.DataField = 'BOMOVTO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Transparent = True
          end
        end
      end
      object tbsImovel: TcxTabSheet
        Caption = 'Im'#243'vel'
        object Label2: TLabel
          Left = 4
          Top = 13
          Width = 30
          Height = 14
          Caption = 'Forma'
          Transparent = True
        end
        object lblnulote: TLabel
          Left = 4
          Top = 37
          Width = 61
          Height = 14
          Caption = 'Lote N'#250'mero'
          Transparent = True
        end
        object lblnuquadra: TLabel
          Left = 4
          Top = 59
          Width = 76
          Height = 14
          Caption = 'Quadra N'#250'mero'
          Transparent = True
        end
        object lbldslocalizacaoimovel: TLabel
          Left = 4
          Top = 78
          Width = 58
          Height = 14
          Caption = 'Localiza'#231#227'o'
          Transparent = True
        end
        object edtdsquadra: TcxDBTextEdit
          Left = 82
          Top = 51
          DataBinding.DataField = 'DSQUADRA'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyPress = nextcontrol
          Width = 382
        end
        object edtdslote: TcxDBTextEdit
          Left = 82
          Top = 29
          DataBinding.DataField = 'DSLOTE'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyPress = nextcontrol
          Width = 382
        end
        object cbxcdformaimovel: TcxDBLookupComboBox
          Left = 82
          Top = 7
          DataBinding.DataField = 'CDFORMA'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDFORMA'
          Properties.ListColumns = <
            item
              FieldName = 'NMFORMA'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Width = 382
        end
        object edtdslocalizacaoimovel: TcxDBTextEdit
          Left = 82
          Top = 73
          DataBinding.DataField = 'DSLOCALIZACAO'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyPress = nextcontrol
          Width = 382
        end
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 100
          Caption = 'Dimensional'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 133
          Width = 769
          object Label9: TLabel
            Left = 2
            Top = 42
            Width = 120
            Height = 14
            Caption = 'Frente (Metros Lineares)'
            Transparent = True
          end
          object Label10: TLabel
            Left = 2
            Top = 20
            Width = 153
            Height = 14
            Caption = #193'rea Total (Metros Quadrados) '
            Transparent = True
          end
          object Label24: TLabel
            Left = 2
            Top = 64
            Width = 119
            Height = 14
            Caption = 'Direita (Metros Lineares)'
            Transparent = True
          end
          object lbl5: TLabel
            Left = 2
            Top = 86
            Width = 135
            Height = 14
            Caption = 'Esquerda (Metros Lineares)'
            Transparent = True
          end
          object Label5: TLabel
            Left = 2
            Top = 108
            Width = 125
            Height = 14
            Caption = 'Fundos (Metros Lineares)'
            Transparent = True
          end
          object lblnmconfrontantefrente: TLabel
            Left = 318
            Top = 42
            Width = 63
            Height = 14
            Caption = 'Confrontante'
            Transparent = True
          end
          object lblnmconfrontantedireita: TLabel
            Left = 318
            Top = 64
            Width = 63
            Height = 14
            Caption = 'Confrontante'
            Transparent = True
          end
          object lblnmconfrontanteEsquerda: TLabel
            Left = 318
            Top = 86
            Width = 63
            Height = 14
            Caption = 'Confrontante'
            Transparent = True
          end
          object lblnmconfrontantefundo: TLabel
            Left = 318
            Top = 108
            Width = 63
            Height = 14
            Caption = 'Confrontante'
            Transparent = True
          end
          object edtdsfundo: TcxDBTextEdit
            Left = 156
            Top = 103
            DataBinding.DataField = 'DSFUNDO'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyPress = nextcontrol
            Width = 161
          end
          object edtdsesquerda: TcxDBTextEdit
            Left = 156
            Top = 81
            DataBinding.DataField = 'DSESQUERDA'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyPress = nextcontrol
            Width = 161
          end
          object edtdsdireita: TcxDBTextEdit
            Left = 156
            Top = 59
            DataBinding.DataField = 'DSDIREITA'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyPress = nextcontrol
            Width = 161
          end
          object edtdsfrente: TcxDBTextEdit
            Left = 156
            Top = 37
            DataBinding.DataField = 'DSFRENTE'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyPress = nextcontrol
            Width = 161
          end
          object edtdsarea: TcxDBTextEdit
            Left = 156
            Top = 15
            DataBinding.DataField = 'DSAREA'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyPress = nextcontrol
            Width = 161
          end
          object edtnmconfrontantefrente: TcxDBTextEdit
            Left = 383
            Top = 37
            DataBinding.DataField = 'NMCONFRONTANTEFRENTE'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyPress = nextcontrol
            Width = 382
          end
          object edtnmconfrontantedireita: TcxDBTextEdit
            Left = 383
            Top = 59
            DataBinding.DataField = 'NMCONFRONTANTEDIREITA'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyPress = nextcontrol
            Width = 382
          end
          object edtnmconfrontanteesquerda: TcxDBTextEdit
            Left = 383
            Top = 81
            DataBinding.DataField = 'NMCONFRONTANTEESQUERDA'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyPress = nextcontrol
            Width = 382
          end
          object edtnmconfrontantefundo: TcxDBTextEdit
            Left = 383
            Top = 103
            DataBinding.DataField = 'NMCONFRONTANTEFUNDO'
            DataBinding.DataSource = dts
            Properties.CharCase = ecUpperCase
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyPress = nextcontrol
            Width = 382
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
    object txtnmgrupo: TcxDBLabel
      Left = 443
      Top = 39
      DataBinding.DataField = 'NMGRUPO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 214
    end
    object ckbBOATIVAR: TcxDBCheckBox
      Left = 726
      Top = 41
      Caption = 'Ativar'
      DataBinding.DataField = 'BOATIVAR'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 607
    Top = 59
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
    object actabrirfornecedor: TAction
      Hint = 'fornecedor'
      ImageIndex = 36
      OnExecute = actabrirfornecedorExecute
    end
    object actabrirsaida: TAction
      Hint = 'saida'
      ImageIndex = 19
      OnExecute = actabrirsaidaExecute
    end
    object actabrirentrada: TAction
      Hint = 'Entrada'
      ImageIndex = 27
      OnExecute = actabrirentradaExecute
    end
    object actabrirmovto: TAction
      Hint = 'movto'
      ImageIndex = 45
      OnExecute = actabrirmovtoExecute
    end
    object actabrircliente: TAction
      Hint = 'Cliente'
      ImageIndex = 35
      OnExecute = actabrirclienteExecute
    end
    object actAbrirPedido: TAction
      Hint = 'Pedido'
      ImageIndex = 25
      OnExecute = actAbrirPedidoExecute
    end
    object actabrirorcamento: TAction
      Hint = 'orcamento'
      OnExecute = actabrirorcamentoExecute
    end
    object actabrirordserv: TAction
      Hint = 'ordserv'
      OnExecute = actabrirordservExecute
    end
    object actabrirtpproduto: TAction
      Hint = 'tpproduto'
      ImageIndex = 24
      OnExecute = actabrirtpprodutoExecute
    end
    object actconsultacliente: TAction
      AutoCheck = True
      Caption = 'Cliente'
      GroupIndex = 1
      ImageIndex = 35
      OnExecute = actconsultaclienteExecute
    end
    object actconsultafornecedor: TAction
      AutoCheck = True
      Caption = 'Fornecedor'
      GroupIndex = 1
      ImageIndex = 36
      OnExecute = actconsultafornecedorExecute
    end
    object actconsultapedido: TAction
      AutoCheck = True
      Caption = 'Pedido'
      GroupIndex = 1
      ImageIndex = 25
      OnExecute = actconsultapedidoExecute
    end
    object actconsultaorcamento: TAction
      AutoCheck = True
      Caption = 'Or'#231'amento'
      GroupIndex = 1
      ImageIndex = 156
      OnExecute = actconsultaorcamentoExecute
    end
    object actconsultasaida: TAction
      AutoCheck = True
      Caption = 'Nota Fiscal'
      GroupIndex = 1
      ImageIndex = 19
      OnExecute = actconsultasaidaExecute
    end
    object actconsultaentrada: TAction
      AutoCheck = True
      Caption = 'Compra'
      GroupIndex = 1
      ImageIndex = 27
      OnExecute = actconsultaentradaExecute
    end
    object actconsultamovto: TAction
      AutoCheck = True
      Caption = 'Mov. Estoque'
      GroupIndex = 1
      ImageIndex = 45
      OnExecute = actconsultamovtoExecute
    end
    object actconsultahcustomedio: TAction
      AutoCheck = True
      Caption = 'Custo M'#233'dio'
      GroupIndex = 1
      ImageIndex = 24
      OnExecute = actconsultahcustomedioExecute
    end
    object actconsultaordserv: TAction
      AutoCheck = True
      Caption = 'Ordem Servi'#231'o'
      GroupIndex = 1
      ImageIndex = 64
      OnExecute = actconsultaordservExecute
    end
    object actconsultaordproducao: TAction
      AutoCheck = True
      Caption = 'Ordem Produ'#231#227'o'
      GroupIndex = 1
      ImageIndex = 157
      OnExecute = actconsultaordproducaoExecute
    end
    object actconsultaordservexterno: TAction
      AutoCheck = True
      Caption = 'Ordem Servi'#231'o Externo'
      GroupIndex = 1
      ImageIndex = 64
      OnExecute = actconsultaordservexternoExecute
    end
    object actaplicar: TAction
      Caption = 'Aplicar Configura'#231#227'o do Grupo'
      Enabled = False
      ImageIndex = 12
      OnExecute = actaplicarExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actmetodoprocesso: TAction
      Caption = 'M'#233'todo Processo'
      ImageIndex = 24
      OnExecute = actmetodoprocessoExecute
    end
    object actmetodoprocessorecriarOrdProducao: TAction
      Caption = 'M'#233'todo Processo - Recriar Ordem de Produ'#231#227'o com status Aberto'
      OnExecute = actmetodoprocessorecriarOrdProducaoExecute
    end
    object actconsultalote: TAction
      AutoCheck = True
      Caption = 'Lote'
      GroupIndex = 1
      ImageIndex = 24
      OnExecute = actconsultaloteExecute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actabrirgrupo: TAction
      OnExecute = actabrirgrupoExecute
    end
    object actitprodutofornecedor: TAction
      Caption = 'Fornecedor'
      OnExecute = actitprodutofornecedorExecute
    end
    object actprodutocliente: TAction
      Caption = 'C'#243'digo do Produto no Cliente'
      OnExecute = actprodutoclienteExecute
    end
    object actprodutosimilar: TAction
      Caption = 'Produto Similar'
      OnExecute = actprodutosimilarExecute
    end
    object actgrade: TAction
      Caption = 'Grade'
      OnExecute = actgradeExecute
    end
    object actitproduto: TAction
      Caption = 'Composto'
      OnExecute = actitprodutoExecute
    end
    object acthcustoproducaop: TAction
      Caption = 'Custo Produ'#231#227'o'
      OnExecute = acthcustoproducaopExecute
    end
    object actprodutotpcliente: TAction
      Caption = 'Tipo Cliente'
      OnExecute = actprodutotpclienteExecute
    end
    object actprodutofornecedor: TAction
      Caption = 'C'#243'digo Fornecedor'
      OnExecute = actprodutofornecedorExecute
    end
    object actconsulta: TAction
      Caption = 'Consulta'
      OnExecute = actconsultaExecute
    end
    object actarquivo: TAction
      Caption = 'Arquivo(s)'
      OnExecute = actarquivoExecute
    end
    object actprodutocomposicaoquimica: TAction
      Caption = 'Composi'#231#227'o Qu'#237'mica'
      OnExecute = actprodutocomposicaoquimicaExecute
    end
    object actprodutopropriedadefisica: TAction
      Caption = 'Propriedade F'#237'sica'
      OnExecute = actprodutopropriedadefisicaExecute
    end
    object actabrirordproducao: TAction
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
    end
  end
  object bmg1: TdxBarManager
    AlwaysMerge = True
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
    Left = 579
    Top = 59
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
      Caption = 'produto'
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
    object bmg1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'consulta'
      CaptionButtons = <>
      DockControl = bdcconsulta
      DockedDockControl = bdcconsulta
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 407
      FloatTop = 131
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btncliente'
        end
        item
          Visible = True
          ItemName = 'btnfornecedor'
        end
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
          ItemName = 'btnentrada'
        end
        item
          Visible = True
          ItemName = 'btnmovto'
        end
        item
          Visible = True
          ItemName = 'btnhcustomedio'
        end
        item
          Visible = True
          ItemName = 'btnordserv'
        end
        item
          Visible = True
          ItemName = 'btnordservexterno'
        end
        item
          Visible = True
          ItemName = 'btnitlote'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
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
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem2'
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
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actaplicar
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actmetodoprocesso
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton6: TdxBarButton
      Action = actitprodutofornecedor
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actmetodoprocesso
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actitprodutofornecedor
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actprodutocliente
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actprodutosimilar
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actgrade
      Category = 0
    end
    object dxBarSubItem2: TdxBarSubItem
      Action = actopcoes
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end>
    end
    object dxBarButton12: TdxBarButton
      Action = actitproduto
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = actitproduto
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = actprodutocliente
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actgrade
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = actprodutosimilar
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = acthcustoproducaop
      Category = 0
    end
    object dxBarButton18: TdxBarButton
      Action = acthcustoproducaop
      Category = 0
    end
    object dxBarButton19: TdxBarButton
      Action = actprodutotpcliente
      Category = 0
    end
    object dxBarButton20: TdxBarButton
      Action = actprodutotpcliente
      Category = 0
    end
    object dxBarButton21: TdxBarButton
      Action = actprodutofornecedor
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = actprodutofornecedor
      Category = 0
    end
    object dxBarSubItem3: TdxBarSubItem
      Action = actconsulta
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
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
          ItemName = 'dxBarButton28'
        end
        item
          Visible = True
          ItemName = 'dxBarButton29'
        end
        item
          Visible = True
          ItemName = 'dxBarButton30'
        end
        item
          Visible = True
          ItemName = 'dxBarButton31'
        end
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end>
    end
    object dxBarButton23: TdxBarButton
      Action = actconsultacliente
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = actconsultafornecedor
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = actconsultaorcamento
      Category = 0
    end
    object dxBarButton26: TdxBarButton
      Action = actconsultapedido
      Category = 0
    end
    object dxBarButton27: TdxBarButton
      Action = actconsultasaida
      Category = 0
    end
    object dxBarButton28: TdxBarButton
      Action = actconsultaentrada
      Category = 0
    end
    object dxBarButton29: TdxBarButton
      Action = actconsultamovto
      Category = 0
    end
    object dxBarButton30: TdxBarButton
      Action = actconsultahcustomedio
      Category = 0
    end
    object dxBarButton31: TdxBarButton
      Action = actconsultaordserv
      Category = 0
    end
    object dxBarButton32: TdxBarButton
      Action = actconsultaordservexterno
      Category = 0
    end
    object dxBarButton33: TdxBarButton
      Action = actconsultalote
      Category = 0
    end
    object btncliente: TdxBarLargeButton
      Action = actconsultacliente
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnfornecedor: TdxBarLargeButton
      Action = actconsultafornecedor
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnorcamento: TdxBarLargeButton
      Action = actconsultaorcamento
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnpedido: TdxBarLargeButton
      Action = actconsultapedido
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnsaida: TdxBarLargeButton
      Action = actconsultasaida
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnentrada: TdxBarLargeButton
      Action = actconsultaentrada
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnmovto: TdxBarLargeButton
      Action = actconsultamovto
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnhcustomedio: TdxBarLargeButton
      Action = actconsultahcustomedio
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnordserv: TdxBarLargeButton
      Action = actconsultaordserv
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnordservexterno: TdxBarLargeButton
      Action = actconsultaordservexterno
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnitlote: TdxBarLargeButton
      Action = actconsultalote
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object dxBarButton1: TdxBarButton
      Action = actarquivo
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actprodutocomposicaoquimica
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actprodutopropriedadefisica
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actconsultaordproducao
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actmetodoprocessorecriarOrdProducao
      Category = 0
    end
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarSubItem3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end>
    UseOwnFont = True
    Left = 524
    Top = 59
  end
  object dtsconsulta: TDataSource
    Left = 947
    Top = 128
  end
  object dts: TDataSource
    DataSet = qry
    OnStateChange = dtsStateChange
    Left = 949
    Top = 80
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <>
    UseOwnFont = False
    Left = 552
    Top = 59
  end
  object dtsitloteentrada: TDataSource
    Left = 947
    Top = 176
  end
  object dtsitlotesaida: TDataSource
    Left = 947
    Top = 224
  end
  object qry: TFDQuery
    BeforePost = qryBeforePost
    AfterScroll = qryAfterScroll
    OnNewRecord = qryNewRecord
    Connection = dtmmain.confire
    SQL.Strings = (
      
        'SELECT PRODUTO.*,GRUPO.NMGRUPO,PLCONTA.NMPLCONTA,CNTCUSTO.NMCNTC' +
        'USTO,FORNECEDOR.NMFORNECEDOR'
      'FROM PRODUTO '
      
        'LEFT JOIN GRUPO ON GRUPO.CDEMPRESA=PRODUTO.CDEMPRESA AND GRUPO.C' +
        'DGRUPO=PRODUTO.CDGRUPO '
      
        'LEFT JOIN PLCONTA ON PLCONTA.CDEMPRESA=PRODUTO.CDEMPRESA AND PLC' +
        'ONTA.CDPLCONTA=PRODUTO.CDPLCONTA'
      
        'LEFT JOIN CNTCUSTO ON CNTCUSTO.CDEMPRESA=PRODUTO.CDEMPRESA AND C' +
        'NTCUSTO.CDCNTCUSTO=PRODUTO.CDCNTCUSTO'
      
        'LEFT JOIN FORNECEDOR ON FORNECEDOR.CDEMPRESA=PRODUTO.CDEMPRESA A' +
        'ND FORNECEDOR.CDFORNECEDOR=PRODUTO.CDFORNECEDOR'
      
        'WHERE PRODUTO.CDEMPRESA=:CDEMPRESA AND PRODUTO.CDPRODUTO=:CDPROD' +
        'UTO')
    Left = 952
    Top = 280
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CDPRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end

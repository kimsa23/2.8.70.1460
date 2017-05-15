object frmmdfe: Tfrmmdfe
  Left = 503
  Top = 170
  ClientHeight = 649
  ClientWidth = 1090
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
    Width = 1090
    Height = 75
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 80
    object lbltpmdfe: TLabel
      Left = 2
      Top = 1
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
    end
    object lblcodigo: TLabel
      Left = 147
      Top = 1
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lbldtemissao: TLabel
      Left = 216
      Top = 1
      Width = 65
      Height = 13
      Caption = 'Data Emiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblhremissao: TLabel
      Left = 301
      Top = 1
      Width = 65
      Height = 13
      Caption = 'Hora Emiss'#227'o'
      Transparent = True
    end
    object lblcduf: TLabel
      Left = 387
      Top = 1
      Width = 14
      Height = 13
      Caption = 'UF'
      Transparent = True
    end
    object lblCDMDFETPEMITENTE: TLabel
      Left = 475
      Top = 1
      Width = 80
      Height = 13
      Caption = 'Tipo de Emitente'
      Transparent = True
    end
    object lblcdmdfemodalidade: TLabel
      Left = 668
      Top = 1
      Width = 55
      Height = 13
      Caption = 'Modalidade'
      Transparent = True
    end
    object lblcdmdfeformaemissao: TLabel
      Left = 758
      Top = 1
      Width = 86
      Height = 13
      Caption = 'Forma de Emiss'#227'o'
      Transparent = True
    end
    object lblcdstmdfe: TLabel
      Left = 857
      Top = 1
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lblveiculo: TLabel
      Left = 2
      Top = 37
      Width = 45
      Height = 13
      Caption = 'Ve'#237'culo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnDblClick = lblveiculoDblClick
    end
    object lbl3: TLabel
      Left = 147
      Top = 37
      Width = 25
      Height = 13
      Caption = 'CIOT'
      Transparent = True
    end
    object lbl1: TLabel
      Left = 301
      Top = 37
      Width = 83
      Height = 13
      Caption = 'UF Carregamento'
      Transparent = True
    end
    object lbl2: TLabel
      Left = 387
      Top = 37
      Width = 89
      Height = 13
      Caption = 'UF Descarremento'
      Transparent = True
    end
    object cbxcdtpmdfe: TcxDBLookupComboBox
      Left = 1
      Top = 15
      DataBinding.DataField = 'CDTPMDFE'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDTPMDFE'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPMDFE'
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
    object edtcodigo: TcxTextEdit
      Left = 147
      Top = 15
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
      Left = 216
      Top = 15
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
    object edthremissao: TcxDBTimeEdit
      Left = 301
      Top = 15
      DataBinding.DataField = 'HREMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 87
    end
    object cbxcduf: TcxDBLookupComboBox
      Left = 387
      Top = 15
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
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      Width = 89
    end
    object cbxCDMDFETPEMITENTE: TcxDBLookupComboBox
      Left = 475
      Top = 15
      DataBinding.DataField = 'CDMDFETPEMITENTE'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 265
      Properties.KeyFieldNames = 'CDMDFETPEMITENTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMMDFETPEMITENTE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      Width = 194
    end
    object cbxCDMDFEMODALIDADE: TcxDBLookupComboBox
      Left = 668
      Top = 15
      DataBinding.DataField = 'CDMDFEMODALIDADE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDMDFEMODALIDADE'
      Properties.ListColumns = <
        item
          FieldName = 'NMMDFEMODALIDADE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      Width = 90
    end
    object cbxCDMDFEFORMAEMISSAO: TcxDBLookupComboBox
      Left = 758
      Top = 15
      DataBinding.DataField = 'CDMDFEFORMAEMISSAO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDMDFEFORMAEMISSAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMMDFEFORMAEMISSAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      Width = 100
    end
    object txtnmstmdfe: TcxDBLabel
      Left = 857
      Top = 15
      DataBinding.DataField = 'NMSTMDFE'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 121
    end
    object edtcdveiculo: TcxDBButtonEdit
      Left = 1
      Top = 49
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
      TabOrder = 9
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdveiculoKeyDown
      Width = 145
    end
    object edtcdciot: TcxDBTextEdit
      Left = 147
      Top = 49
      DataBinding.DataField = 'CDCIOT'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 154
    end
    object cbxcdufinicio: TcxDBLookupComboBox
      Left = 301
      Top = 49
      DataBinding.DataField = 'CDUFINICIO'
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
      TabOrder = 11
      OnEnter = colorenter
      OnExit = colorexit
      Width = 87
    end
    object cbxcduffim: TcxDBLookupComboBox
      Left = 387
      Top = 49
      DataBinding.DataField = 'CDUFFIM'
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
      TabOrder = 12
      OnEnter = colorenter
      OnExit = colorexit
      Width = 89
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
    Style.Font.Height = -17
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object gbx1: TcxGroupBox
    Left = 0
    Top = 538
    Align = alBottom
    Caption = 'Totais de Fornecimento'
    TabOrder = 2
    Height = 111
    Width = 1090
    object Label2: TLabel
      Left = 6
      Top = 16
      Width = 88
      Height = 13
      Caption = 'Quantidade de cte'
      Transparent = True
    end
    object lbl4: TLabel
      Left = 6
      Top = 34
      Width = 88
      Height = 13
      Caption = 'Quantidade de nfe'
      Transparent = True
    end
    object Label3: TLabel
      Left = 6
      Top = 70
      Width = 40
      Height = 13
      Caption = 'Unidade'
      Transparent = True
    end
    object Label4: TLabel
      Left = 6
      Top = 52
      Width = 102
      Height = 13
      Caption = 'Valor total mercadoria'
      Transparent = True
    end
    object Label5: TLabel
      Left = 6
      Top = 87
      Width = 52
      Height = 13
      Caption = 'Peso Bruto'
      Transparent = True
    end
    object txt1: TcxDBLabel
      Left = 128
      Top = 13
      DataBinding.DataField = 'QTCTE'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 121
    end
    object txt2: TcxDBLabel
      Left = 128
      Top = 31
      DataBinding.DataField = 'QTNFE'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 121
    end
    object edtvlcarga: TcxDBCalcEdit
      Left = 128
      Top = 48
      DataBinding.DataField = 'VLCARGA'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
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
    object cbxcdunidade: TcxDBLookupComboBox
      Left = 128
      Top = 68
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
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtqtcarga: TcxDBCalcEdit
      Left = 128
      Top = 88
      DataBinding.DataField = 'QTCARGA'
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
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 157
    Width = 1090
    Height = 381
    Align = alClient
    TabOrder = 7
    Properties.ActivePage = tbscarregamento
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 381
    ClientRectRight = 1090
    ClientRectTop = 25
    object tbscarregamento: TcxTabSheet
      Caption = 'Local de Carregamento'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdmdfecarregamento: TcxGrid
        Left = 0
        Top = 0
        Width = 1090
        Height = 356
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdmdfecarregamentoDBTableView1: TcxGridDBTableView
          OnKeyDown = grdmdfecarregamentoDBTableView1KeyDown
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
          DataController.DataSource = dtsmdfecarregamento
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdmdfecarregamentoDBTableView1CDMUNICIPIO: TcxGridDBColumn
            Caption = 'Munic'#237'pio'
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
        end
        object grdmdfecarregamentoLevel1: TcxGridLevel
          GridView = grdmdfecarregamentoDBTableView1
        end
      end
    end
    object tbspercurso: TcxTabSheet
      Caption = 'UF'#180's do Percurso'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdmdfeufpercurso: TcxGrid
        Left = 0
        Top = 0
        Width = 1090
        Height = 356
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdmdfeufpercursoDBTableView1: TcxGridDBTableView
          OnKeyDown = grdmdfeufpercursoDBTableView1KeyDown
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
          DataController.DataSource = dtsmdfeufpercurso
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdmdfeufpercursoDBTableView1CDUF: TcxGridDBColumn
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
        object grdmdfeufpercursoLevel1: TcxGridLevel
          GridView = grdmdfeufpercursoDBTableView1
        end
      end
    end
    object tbsdocumento: TcxTabSheet
      Caption = 'Informa'#231#245'es dos documentos'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdmdfedescarregamento: TcxGrid
        Left = 0
        Top = 17
        Width = 1090
        Height = 138
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdmdfedescarregamentoDBTableView1: TcxGridDBTableView
          OnKeyDown = grdmdfedescarregamentoDBTableView1KeyDown
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
          DataController.DataSource = dtsmdfedescarregamento
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTCTE'
              Column = grdmdfedescarregamentoDBTableView1QTCTE
            end
            item
              Kind = skSum
              FieldName = 'QTNFE'
              Column = grdmdfedescarregamentoDBTableView1QTNFE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCARGA'
              Column = grdmdfedescarregamentoDBTableView1VLCARGA
            end
            item
              Kind = skSum
              FieldName = 'QTCARGA'
              Column = grdmdfedescarregamentoDBTableView1QTCARGA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object grdmdfedescarregamentoDBTableView1CDMUNICIPIO: TcxGridDBColumn
            Caption = 'Munic'#237'pio'
            DataBinding.FieldName = 'CDMUNICIPIO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDMUNICIPIO'
            Properties.ListColumns = <
              item
                FieldName = 'NMMUNICIPIO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 423
          end
          object grdmdfedescarregamentoDBTableView1QTCTE: TcxGridDBColumn
            Caption = 'Qt CTE'
            DataBinding.FieldName = 'QTCTE'
            Options.Focusing = False
          end
          object grdmdfedescarregamentoDBTableView1QTNFE: TcxGridDBColumn
            Caption = 'Qt NFE'
            DataBinding.FieldName = 'QTNFE'
            Options.Focusing = False
          end
          object grdmdfedescarregamentoDBTableView1VLCARGA: TcxGridDBColumn
            Caption = 'Valor Carga'
            DataBinding.FieldName = 'VLCARGA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdmdfedescarregamentoDBTableView1QTCARGA: TcxGridDBColumn
            Caption = 'Carga'
            DataBinding.FieldName = 'QTCARGA'
          end
        end
        object grdmdfedescarregamentoLevel1: TcxGridLevel
          GridView = grdmdfedescarregamentoDBTableView1
        end
      end
      object pgcdocumento: TcxPageControl
        Left = 0
        Top = 163
        Width = 1090
        Height = 193
        Align = alBottom
        TabOrder = 1
        Properties.ActivePage = tbscte
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 193
        ClientRectRight = 1090
        ClientRectTop = 24
        object tbscte: TcxTabSheet
          Caption = 'CT-e'#39's'
          ImageIndex = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grdmdfecte: TcxGrid
            Left = 0
            Top = 0
            Width = 1090
            Height = 169
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object grdmdfecteDBTableView1: TcxGridDBTableView
              OnKeyDown = grdmdfecteDBTableView1KeyDown
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
              OnCellDblClick = grdmdfecteDBTableView1CellDblClick
              OnEditKeyDown = grdmdfecteDBTableView1EditKeyDown
              DataController.DataSource = dtsmdfecte
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLCARGA'
                  Column = grdmdfecteDBTableView1VLCARGA
                end
                item
                  Kind = skSum
                  FieldName = 'QTCARGA'
                  Column = grdmdfecteDBTableView1QTCARGA
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object grdmdfecteDBTableView1CDCTE: TcxGridDBColumn
                Caption = 'C'#243'digo CTE'
                DataBinding.FieldName = 'CDCTE'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = grdmdfecteDBTableView1CDCTEPropertiesButtonClick
                Styles.Content = dtmmain.cxStyle1
                Width = 95
              end
              object grdmdfecteDBTableView1DTEMISSAO: TcxGridDBColumn
                Caption = 'DT Emiss'#227'o'
                DataBinding.FieldName = 'DTEMISSAO'
                Options.Focusing = False
                Width = 100
              end
              object grdmdfecteDBTableView1VLCARGA: TcxGridDBColumn
                Caption = 'Valor Mercadoria'
                DataBinding.FieldName = 'VLCARGA'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 111
              end
              object grdmdfecteDBTableView1QTCARGA: TcxGridDBColumn
                Caption = 'Carga'
                DataBinding.FieldName = 'QTCARGA'
                Width = 104
              end
              object grdmdfecteDBTableView1NUCHAVENFE: TcxGridDBColumn
                Caption = 'Chave'
                DataBinding.FieldName = 'NUCHAVENFE'
                Width = 455
              end
            end
            object grdmdfecteLevel1: TcxGridLevel
              GridView = grdmdfecteDBTableView1
            end
          end
        end
        object tbsnfe: TcxTabSheet
          Caption = 'NF-e'#39's'
          ImageIndex = 1
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grdmdfenfe: TcxGrid
            Left = 0
            Top = 0
            Width = 1090
            Height = 169
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object grdmdfenfeDBTableView1: TcxGridDBTableView
              OnKeyDown = grdmdfenfeDBTableView1KeyDown
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.PriorPage.Enabled = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.NextPage.Enabled = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Insert.Visible = True
              Navigator.Buttons.Append.Enabled = False
              Navigator.Buttons.Delete.Visible = True
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
              DataController.DataSource = dtsmdfenfe
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsView.GroupByBox = False
              object grdmdfenfeDBTableView1NUCHAVENFE: TcxGridDBColumn
                Caption = 'Chave'
                DataBinding.FieldName = 'NUCHAVENFE'
                Width = 569
              end
            end
            object grdmdfenfeLevel1: TcxGridLevel
              GridView = grdmdfenfeDBTableView1
            end
          end
        end
      end
      object spl1: TcxSplitter
        Left = 0
        Top = 155
        Width = 1090
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = pgcdocumento
        ExplicitWidth = 8
      end
      object cxLabel1: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Munic'#237'pio de Descarregamento'
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object tbsinfoadic: TcxTabSheet
      Caption = 'Lacres'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblnmstdocumento: TLabel
        Left = 187
        Top = 6
        Width = 191
        Height = 15
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object grdmdfelacre: TcxGrid
        Left = 0
        Top = 0
        Width = 1090
        Height = 356
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdmdfelacreDBTableView1: TcxGridDBTableView
          OnKeyDown = grdmdfelacreDBTableView1KeyDown
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
          DataController.DataSource = dtsmdfelacre
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdmdfelacreDBTableView1NULACRE: TcxGridDBColumn
            Caption = 'N'#250'mero Lacre'
            DataBinding.FieldName = 'NULACRE'
          end
        end
        object grdmdfelacreLevel1: TcxGridLevel
          GridView = grdmdfelacreDBTableView1
        end
      end
    end
    object tbstransportadora: TcxTabSheet
      Caption = 'Condutor'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdmdfetransportadora: TcxGrid
        Left = 0
        Top = 0
        Width = 1090
        Height = 356
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdmdfetransportadoraDBTableView1: TcxGridDBTableView
          OnKeyDown = grdmdfetransportadoraDBTableView1KeyDown
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
          OnCellDblClick = grdmdfetransportadoraDBTableView1CellDblClick
          OnEditKeyDown = grdmdfetransportadoraDBTableView1EditKeyDown
          DataController.DataSource = dtsmdfetransportadora
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdmdfetransportadoraDBTableView1CDTRANSPORTADORA: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDTRANSPORTADORA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grdmdfetransportadoraDBTableView1CDTRANSPORTADORAPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 139
          end
          object grdmdfetransportadoraDBTableView1NMTRANSPORTADORA: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMTRANSPORTADORA'
            Options.Focusing = False
          end
          object grdmdfetransportadoraDBTableView1NUCPF: TcxGridDBColumn
            Caption = 'CPF'
            DataBinding.FieldName = 'NUCPF'
            Options.Focusing = False
          end
        end
        object grdmdfetransportadoraLevel1: TcxGridLevel
          GridView = grdmdfetransportadoraDBTableView1
        end
      end
    end
    object tbsreboque: TcxTabSheet
      Caption = 'Reboque'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdmdfeveiculo: TcxGrid
        Left = 0
        Top = 0
        Width = 1090
        Height = 356
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdmdfeveiculoDBTableView1: TcxGridDBTableView
          OnKeyDown = grdmdfeveiculoDBTableView1KeyDown
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Refresh.Enabled = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          OnCellDblClick = grdmdfeveiculoDBTableView1CellDblClick
          OnEditKeyDown = grdmdfeveiculoDBTableView1EditKeyDown
          DataController.DataSource = dtsmdfeveiculo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          object grdmdfeveiculoDBTableView1CDVEICULO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDVEICULO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grdmdfeveiculoDBTableView1CDVEICULOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 75
          end
          object grdmdfeveiculoDBTableView1NUPLACA: TcxGridDBColumn
            Caption = 'Placa'
            DataBinding.FieldName = 'NUPLACA'
            Options.Focusing = False
            Width = 106
          end
        end
        object grdmdfeveiculoLevel1: TcxGridLevel
          GridView = grdmdfeveiculoDBTableView1
        end
      end
    end
    object tbspedagio: TcxTabSheet
      Caption = 'Vale Ped'#225'gio'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdmdfepedagio: TcxGrid
        Left = 0
        Top = 0
        Width = 1090
        Height = 356
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdmdfepedagioDBTableView1: TcxGridDBTableView
          OnKeyDown = grdmdfepedagioDBTableView1KeyDown
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
          OnCellDblClick = grdmdfepedagioDBTableView1CellDblClick
          OnEditKeyDown = grdmdfepedagioDBTableView1EditKeyDown
          DataController.DataSource = dtsmdfepedagio
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          object grdmdfepedagioDBTableView1CDFORNECEDOR: TcxGridDBColumn
            Caption = 'C'#243'd Fornecedor'
            DataBinding.FieldName = 'CDFORNECEDOR'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grdmdfepedagioDBTableView1CDFORNECEDORPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
          end
          object grdmdfepedagioDBTableView1NMFORNECEDOR: TcxGridDBColumn
            Caption = 'Nome Fornecedor'
            DataBinding.FieldName = 'NMFORNECEDOR'
            Options.Focusing = False
            Width = 300
          end
          object grdmdfepedagioDBTableView1NUCOMPROVANTE: TcxGridDBColumn
            Caption = 'Comprovante'
            DataBinding.FieldName = 'NUCOMPROVANTE'
          end
          object grdmdfepedagioDBTableView1CDRESPONSAVEL: TcxGridDBColumn
            Caption = 'C'#243'd Respons'#225'vel'
            DataBinding.FieldName = 'CDRESPONSAVEL'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grdmdfepedagioDBTableView1CDRESPONSAVELPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
          end
          object grdmdfepedagioDBTableView1NMRESPONSAVEL: TcxGridDBColumn
            Caption = 'Nome Respons'#225'vel'
            DataBinding.FieldName = 'NMRESPONSAVEL'
            Options.Focusing = False
            Width = 300
          end
        end
        object grdmdfepedagioLevel1: TcxGridLevel
          GridView = grdmdfepedagioDBTableView1
        end
      end
    end
    object tbsObservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
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
        Height = 356
        Width = 1090
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 714
    Top = 181
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
    object actnfemenu: TAction
      Caption = 'MDFE'
      ImageIndex = 134
      OnExecute = actnfemenuExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actabrircte: TAction
      Hint = 'cte'
      OnExecute = actabrircteExecute
    end
    object actabrirfornecedor: TAction
      Hint = 'fornecedor'
      OnExecute = actabrirfornecedorExecute
    end
    object actabrirresponsavel: TAction
      Hint = 'fornecedor'
      OnExecute = actabrirresponsavelExecute
    end
    object actabrirtransportadora: TAction
      Hint = 'transportadora'
      OnExecute = actabrirtransportadoraExecute
    end
    object actabrirveiculo: TAction
      Hint = 'veiculo'
      OnExecute = actabrirveiculoExecute
    end
    object actstatus: TAction
      Caption = 'Status Servi'#231'o'
      OnExecute = actstatusExecute
    end
    object actconfigurar: TAction
      Caption = 'Configurar'
      OnExecute = actconfigurarExecute
    end
    object actvalidar: TAction
      Caption = 'Validar'
      Enabled = False
      ImageIndex = 149
      OnExecute = actvalidarExecute
    end
    object actenviar: TAction
      Caption = 'Enviar'
      Enabled = False
      ImageIndex = 148
      OnExecute = actenviarExecute
    end
    object actabrirveiculo2: TAction
      Hint = 'veiculo'
      OnExecute = actabrirveiculo2Execute
    end
    object actcancelarmdfe: TAction
      Caption = 'Cancelar'
      Enabled = False
      ImageIndex = 142
      OnExecute = actcancelarmdfeExecute
    end
    object actencerrar: TAction
      Caption = 'Encerrar'
      Enabled = False
      ImageIndex = 164
      OnExecute = actencerrarExecute
    end
    object actexportarxml: TAction
      Caption = 'Exportar XML'
      ImageIndex = 134
      OnExecute = actexportarxmlExecute
    end
    object actgerarpdf: TAction
      Caption = 'Gerar PDF'
      ImageIndex = 145
      OnExecute = actgerarpdfExecute
    end
    object actenviaremail: TAction
      Caption = 'Enviar email'
      ImageIndex = 146
      OnExecute = actenviaremailExecute
    end
    object actenviaremailremetente: TAction
      Caption = 'Enviar email para remetente(s)'
      ImageIndex = 146
      OnExecute = actenviaremailremetenteExecute
    end
    object actconsultar: TAction
      Caption = 'Consultar'
      ImageIndex = 151
      OnExecute = actconsultarExecute
    end
    object actImportarXML: TAction
      Caption = 'Importar XML'
      OnExecute = actImportarXMLExecute
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
    Left = 685
    Top = 181
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
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'btnmdfe'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
          ItemName = 'btnmdfe'
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
    object dxBarButton3: TdxBarButton
      Caption = 'Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancelar Nota Fiscal'
      Visible = ivAlways
      ImageIndex = 142
    end
    object dxBarButton15: TdxBarButton
      Caption = 'Imprimir'
      Category = 0
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton16: TdxBarButton
      Caption = 'Exportar xml'
      Category = 0
      Enabled = False
      Visible = ivAlways
      ImageIndex = 134
      PaintStyle = psCaptionGlyph
    end
    object btnmdfe: TdxBarLargeButton
      Action = actnfemenu
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumnfe
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actconfigurar
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actstatus
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actenviar
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actconsultar
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actgerarpdf
      Category = 0
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Caption = 'Visualizar'
      Category = 0
      Enabled = False
      Hint = 'Visualizar'
      Visible = ivAlways
      LargeImageIndex = 125
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = actcancelarmdfe
      Category = 0
    end
    object dxBarLargeButton18: TdxBarLargeButton
      Action = actexportarxml
      Category = 0
    end
    object dxBarLargeButton19: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 3
    end
    object dxBarLargeButton22: TdxBarLargeButton
      Action = actvalidar
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actenviaremail
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
    end
    object dxBarButton2: TdxBarButton
      Action = actencerrar
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actenviaremailremetente
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actImportarXML
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
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton6'
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
    Left = 655
    Top = 142
  end
  object ACBrMDFe1: TACBrMDFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 742
    Top = 181
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 914
    Top = 107
    object cdsCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object cdsCDSERIE: TIntegerField
      FieldName = 'CDSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDMDFETPEMITENTE: TIntegerField
      FieldName = 'CDMDFETPEMITENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDMDFETPEMITENTEValidate
    end
    object cdsCDMDFEMODALIDADE: TIntegerField
      FieldName = 'CDMDFEMODALIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDMDFEFORMAEMISSAO: TIntegerField
      FieldName = 'CDMDFEFORMAEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDUFINICIO: TIntegerField
      FieldName = 'CDUFINICIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDUFINICIOValidate
    end
    object cdsCDUFFIM: TIntegerField
      FieldName = 'CDUFFIM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDUFFIMValidate
    end
    object cdsCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPMDFE: TIntegerField
      FieldName = 'CDTPMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPMDFEValidate
    end
    object cdsCDSTMDFE: TIntegerField
      FieldName = 'CDSTMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDSTMDFEValidate
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
    object cdsNUMDFE: TIntegerField
      FieldName = 'NUMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNUCHAVE: TStringField
      FieldName = 'NUCHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsCDVERIFICADORCHAVE: TStringField
      FieldName = 'CDVERIFICADORCHAVE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsQTCTE: TIntegerField
      FieldName = 'QTCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsQTNFE: TIntegerField
      FieldName = 'QTNFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsVLCARGA: TFMTBCDField
      FieldName = 'VLCARGA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsNURNTRC: TStringField
      FieldName = 'NURNTRC'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsCDCIOT: TStringField
      FieldName = 'CDCIOT'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdssdsmdfeufpercurso: TDataSetField
      FieldName = 'sdsmdfeufpercurso'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsmdfeveiculo: TDataSetField
      FieldName = 'sdsmdfeveiculo'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsmdfepedagio: TDataSetField
      FieldName = 'sdsmdfepedagio'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsmdfetransportadora: TDataSetField
      FieldName = 'sdsmdfetransportadora'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsmdfelacre: TDataSetField
      FieldName = 'sdsmdfelacre'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMSTMDFE: TStringField
      FieldName = 'NMSTMDFE'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object cdssdsmdfedescarregamento: TDataSetField
      FieldName = 'sdsmdfedescarregamento'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsmdfecarregamento: TDataSetField
      FieldName = 'sdsmdfecarregamento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTCARGA: TFloatField
      FieldName = 'QTCARGA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNULOTE: TIntegerField
      FieldName = 'NULOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPROTOCOLOAUTORIZACAO: TStringField
      FieldName = 'NUPROTOCOLOAUTORIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsTSPROTOCOLOAUTORIZACAO: TSQLTimeStampField
      FieldName = 'TSPROTOCOLOAUTORIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsNURECIBONFE: TStringField
      FieldName = 'NURECIBONFE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsDSCANCELAMENTO: TBlobField
      FieldName = 'DSCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUPROTOCOLOCANCELAMENTO: TStringField
      FieldName = 'NUPROTOCOLOCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsDSXMLCANCEL: TBlobField
      FieldName = 'DSXMLCANCEL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUSEQEVENTO: TIntegerField
      FieldName = 'NUSEQEVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPROTOCOLOENCERRAMENTO: TStringField
      FieldName = 'NUPROTOCOLOENCERRAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsDSXMLENCERRAMENTO: TBlobField
      FieldName = 'DSXMLENCERRAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 975
    Top = 107
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 886
    Top = 107
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 997
    Top = 107
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT M.*,S.NMSTMDFE FROM MDFE M INNER JOIN STMDFE S ON S.CDSTM' +
      'DFE=M.CDSTMDFE WHERE M.CDEMPRESA=:CDEMPRESA AND M.CDMDFE=:CDMDFE'
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
        Name = 'CDMDFE'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 858
    Top = 107
    object sdsCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object sdsCDSERIE: TIntegerField
      FieldName = 'CDSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDMDFETPEMITENTE: TIntegerField
      FieldName = 'CDMDFETPEMITENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDMDFEMODALIDADE: TIntegerField
      FieldName = 'CDMDFEMODALIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDMDFEFORMAEMISSAO: TIntegerField
      FieldName = 'CDMDFEFORMAEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDUFINICIO: TIntegerField
      FieldName = 'CDUFINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUFFIM: TIntegerField
      FieldName = 'CDUFFIM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPMDFE: TIntegerField
      FieldName = 'CDTPMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDSTMDFE: TIntegerField
      FieldName = 'CDSTMDFE'
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
    object sdsNUMDFE: TIntegerField
      FieldName = 'NUMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNUCHAVE: TStringField
      FieldName = 'NUCHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sdsCDVERIFICADORCHAVE: TStringField
      FieldName = 'CDVERIFICADORCHAVE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsQTCTE: TIntegerField
      FieldName = 'QTCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsQTNFE: TIntegerField
      FieldName = 'QTNFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsVLCARGA: TFMTBCDField
      FieldName = 'VLCARGA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsNURNTRC: TStringField
      FieldName = 'NURNTRC'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sdsCDCIOT: TStringField
      FieldName = 'CDCIOT'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sdsNMSTMDFE: TStringField
      FieldName = 'NMSTMDFE'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object sdsQTCARGA: TFloatField
      FieldName = 'QTCARGA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNULOTE: TIntegerField
      FieldName = 'NULOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPROTOCOLOAUTORIZACAO: TStringField
      FieldName = 'NUPROTOCOLOAUTORIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsTSPROTOCOLOAUTORIZACAO: TSQLTimeStampField
      FieldName = 'TSPROTOCOLOAUTORIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object sdsNURECIBONFE: TStringField
      FieldName = 'NURECIBONFE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsDSCANCELAMENTO: TBlobField
      FieldName = 'DSCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNUPROTOCOLOCANCELAMENTO: TStringField
      FieldName = 'NUPROTOCOLOCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsDSXMLCANCEL: TBlobField
      FieldName = 'DSXMLCANCEL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNUSEQEVENTO: TIntegerField
      FieldName = 'NUSEQEVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPROTOCOLOENCERRAMENTO: TStringField
      FieldName = 'NUPROTOCOLOENCERRAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsDSXMLENCERRAMENTO: TBlobField
      FieldName = 'DSXMLENCERRAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sdsmdfeufpercurso: TSQLDataSet
    CommandText = 
      'SELECT * FROM MDFEUFPERCURSO WHERE CDEMPRESA=:CDEMPRESA AND CDMD' +
      'FE=:CDMDFE'
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
        Name = 'CDMDFE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 858
    Top = 135
    object sdsmdfeufpercursoCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfeufpercursoCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfeufpercursoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeufpercursoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeufpercursoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeufpercursoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeufpercursoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeufpercursoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeufpercursoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsmdfeufpercurso: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsmdfeufpercurso
    Params = <>
    BeforePost = cdsmdfeufpercursoBeforePost
    Left = 915
    Top = 135
    object cdsmdfeufpercursoCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfeufpercursoCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsmdfeufpercursoCDUFValidate
    end
    object cdsmdfeufpercursoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeufpercursoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeufpercursoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeufpercursoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeufpercursoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeufpercursoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeufpercursoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsmdfeufpercurso: TDataSource
    DataSet = cdsmdfeufpercurso
    Left = 975
    Top = 135
  end
  object sdsmdfeveiculo: TSQLDataSet
    CommandText = 
      'SELECT M.*,V.NUPLACA '#13#10'FROM MDFEVEICULO M'#13#10'INNER JOIN VEICULO V ' +
      'ON V.CDEMPRESA=M.CDEMPRESA AND V.CDVEICULO=M.CDVEICULO'#13#10'WHERE M.' +
      'CDEMPRESA=:CDEMPRESA AND M.CDMDFE=:CDMDFE'
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
        Name = 'CDMDFE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 858
    Top = 163
    object sdsmdfeveiculoCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfeveiculoCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfeveiculoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeveiculoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeveiculoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeveiculoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeveiculoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeveiculoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfeveiculoNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = []
      Required = True
      Size = 8
    end
    object sdsmdfeveiculoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsmdfeveiculo: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsmdfeveiculo
    Params = <>
    BeforePost = cdsmdfeveiculoBeforePost
    Left = 915
    Top = 163
    object cdsmdfeveiculoCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfeveiculoCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsmdfeveiculoCDVEICULOValidate
    end
    object cdsmdfeveiculoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeveiculoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeveiculoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeveiculoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeveiculoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeveiculoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfeveiculoNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = []
      Required = True
      Size = 8
    end
    object cdsmdfeveiculoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsmdfeveiculo: TDataSource
    DataSet = cdsmdfeveiculo
    Left = 975
    Top = 163
  end
  object sdsmdfepedagio: TSQLDataSet
    CommandText = 
      'SELECT M.* '#13#10',F.NMFORNECEDOR'#13#10',R.NMFORNECEDOR NMRESPONSAVEL'#13#10'FRO' +
      'M MDFEPEDAGIO M'#13#10'INNER JOIN FORNECEDOR F ON F.CDEMPRESA=M.CDEMPR' +
      'ESA AND F.CDFORNECEDOR=M.CDFORNECEDOR'#13#10'INNER JOIN FORNECEDOR R O' +
      'N R.CDEMPRESA=M.CDEMPRESA AND R.CDFORNECEDOR=M.CDRESPONSAVEL'#13#10'WH' +
      'ERE M.CDEMPRESA=:CDEMPRESA AND M.CDMDFE=:CDMDFE'
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
        Name = 'CDMDFE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 858
    Top = 191
    object sdsmdfepedagioCDMDFEPEDAGIO: TIntegerField
      FieldName = 'CDMDFEPEDAGIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfepedagioCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfepedagioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfepedagioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfepedagioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfepedagioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfepedagioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfepedagioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfepedagioNUCOMPROVANTE: TStringField
      FieldName = 'NUCOMPROVANTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfepedagioNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object sdsmdfepedagioNMRESPONSAVEL: TStringField
      FieldName = 'NMRESPONSAVEL'
      ProviderFlags = []
      Size = 100
    end
    object sdsmdfepedagioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfepedagioCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfepedagioCDRESPONSAVEL: TLargeintField
      FieldName = 'CDRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsmdfepedagio: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsmdfepedagio
    Params = <>
    BeforePost = cdsmdfepedagioBeforePost
    Left = 915
    Top = 191
    object cdsmdfepedagioCDMDFEPEDAGIO: TIntegerField
      FieldName = 'CDMDFEPEDAGIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfepedagioCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfepedagioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfepedagioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfepedagioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfepedagioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfepedagioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfepedagioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfepedagioNUCOMPROVANTE: TStringField
      FieldName = 'NUCOMPROVANTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfepedagioNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object cdsmdfepedagioNMRESPONSAVEL: TStringField
      FieldName = 'NMRESPONSAVEL'
      ProviderFlags = []
      Size = 100
    end
    object cdsmdfepedagioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfepedagioCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsmdfepedagioCDFORNECEDORValidate
    end
    object cdsmdfepedagioCDRESPONSAVEL: TLargeintField
      FieldName = 'CDRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsmdfepedagioCDRESPONSAVELValidate
    end
  end
  object dtsmdfepedagio: TDataSource
    DataSet = cdsmdfepedagio
    Left = 975
    Top = 191
  end
  object sdsmdfelacre: TSQLDataSet
    CommandText = 
      'SELECT * FROM MDFELACRE WHERE CDEMPRESA=:CDEMPRESA AND CDMDFE=:C' +
      'DMDFE'
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
        Name = 'CDMDFE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 858
    Top = 219
    object sdsmdfelacreCDMDFELACRE: TIntegerField
      FieldName = 'CDMDFELACRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfelacreCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfelacreCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfelacreCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfelacreCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfelacreCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfelacreTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfelacreTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfelacreNULACRE: TStringField
      FieldName = 'NULACRE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object sdsmdfelacreCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsmdfelacre: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsmdfelacre
    Params = <>
    BeforePost = cdsmdfelacreBeforePost
    Left = 915
    Top = 219
    object cdsmdfelacreCDMDFELACRE: TIntegerField
      FieldName = 'CDMDFELACRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfelacreCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfelacreCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfelacreCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfelacreCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfelacreCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfelacreTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfelacreTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfelacreNULACRE: TStringField
      FieldName = 'NULACRE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object cdsmdfelacreCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsmdfelacre: TDataSource
    DataSet = cdsmdfelacre
    Left = 975
    Top = 219
  end
  object sdsmdfetransportadora: TSQLDataSet
    CommandText = 
      'SELECT M.*,T.NMTRANSPORTADORA,T.NUCPF'#13#10'FROM MDFETRANSPORTADORA M' +
      #13#10'INNER JOIN TRANSPORTADORA T ON T.CDEMPRESA=M.CDEMPRESA AND T.C' +
      'DTRANSPORTADORA=M.CDTRANSPORTADORA'#13#10'WHERE M.CDEMPRESA=:CDEMPRESA' +
      ' AND M.CDMDFE=:CDMDFE'
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
        Name = 'CDMDFE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 858
    Top = 247
    object sdsmdfetransportadoraCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfetransportadoraCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfetransportadoraCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfetransportadoraCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfetransportadoraCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfetransportadoraTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfetransportadoraTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfetransportadoraNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object sdsmdfetransportadoraNUCPF: TStringField
      FieldName = 'NUCPF'
      ProviderFlags = []
      Size = 15
    end
    object sdsmdfetransportadoraCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfetransportadoraCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object cdsmdfetransportadora: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsmdfetransportadora
    Params = <>
    BeforePost = cdsmdfetransportadoraBeforePost
    Left = 915
    Top = 247
    object cdsmdfetransportadoraCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfetransportadoraCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfetransportadoraCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfetransportadoraCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfetransportadoraCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfetransportadoraTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfetransportadoraTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfetransportadoraNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object cdsmdfetransportadoraNUCPF: TStringField
      FieldName = 'NUCPF'
      ProviderFlags = []
      Size = 15
    end
    object cdsmdfetransportadoraCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfetransportadoraCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsmdfetransportadoraCDTRANSPORTADORAValidate
    end
  end
  object dtsmdfetransportadora: TDataSource
    DataSet = cdsmdfetransportadora
    Left = 975
    Top = 247
  end
  object sdsmdfecarregamento: TSQLDataSet
    CommandText = 
      'SELECT * FROM MDFECARREGAMENTO WHERE CDEMPRESA=:CDEMPRESA AND CD' +
      'MDFE=:CDMDFE'
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
        Name = 'CDMDFE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 858
    Top = 275
    object sdsmdfecarregamentoCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfecarregamentoCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfecarregamentoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecarregamentoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecarregamentoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecarregamentoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecarregamentoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecarregamentoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecarregamentoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsmdfecarregamento: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsmdfecarregamento
    Params = <>
    BeforePost = cdsmdfecarregamentoBeforePost
    OnNewRecord = cdsmdfecarregamentoNewRecord
    Left = 915
    Top = 275
    object cdsmdfecarregamentoCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfecarregamentoCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsmdfecarregamentoCDMUNICIPIOValidate
    end
    object cdsmdfecarregamentoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecarregamentoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecarregamentoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecarregamentoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecarregamentoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecarregamentoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecarregamentoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsmdfecarregamento: TDataSource
    DataSet = cdsmdfecarregamento
    Left = 975
    Top = 275
  end
  object sdsmdfecte: TSQLDataSet
    CommandText = 
      'SELECT M.*'#13#10',C.DTEMISSAO'#13#10',C.NUCHAVENFE '#13#10'FROM MDFECTE M '#13#10'INNER' +
      ' JOIN CTE C ON C.CDEMPRESA=M.CDEMPRESA AND C.CDCTE=M.CDCTE '#13#10'WHE' +
      'RE M.CDEMPRESA=:CDEMPRESA AND M.CDMDFE=:CDMDFE AND M.CDMUNICIPIO' +
      '=:CDMUNICIPIO'
    DataSource = dts4
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
        Name = 'CDMDFE'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'CDMUNICIPIO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 858
    Top = 332
    object sdsmdfecteCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfecteCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfecteCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfecteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfecteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdsmdfecteVLCARGA: TFMTBCDField
      FieldName = 'VLCARGA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsmdfecteNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = []
      Size = 44
    end
    object sdsmdfecteQTCARGA: TFloatField
      FieldName = 'QTCARGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsmdfecteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsmdfecte: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'sum_vlcarga'
        Expression = 'SUM(VLCARGA)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'sum_qtcarga'
        Expression = 'SUM(QTCARGA)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdsmdfedescarregamentosdsmdfecte
    Params = <>
    BeforePost = cdsmdfecteBeforePost
    AfterPost = cdsmdfecteAfterPost
    Left = 915
    Top = 332
    object cdsmdfecteCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfecteCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfecteCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsmdfecteCDCTEValidate
    end
    object cdsmdfecteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfecteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdsmdfecteVLCARGA: TFMTBCDField
      FieldName = 'VLCARGA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsmdfecteNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = []
      Size = 44
    end
    object cdsmdfecteQTCARGA: TFloatField
      FieldName = 'QTCARGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmdfecteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsmdfecte: TDataSource
    DataSet = cdsmdfecte
    Left = 975
    Top = 332
  end
  object sdsmdfenfe: TSQLDataSet
    CommandText = 
      'SELECT * FROM MDFENFE WHERE CDEMPRESA=:CDEMPRESA AND CDMDFE=:CDM' +
      'DFE AND CDMUNICIPIO=:CDMUNICIPIO'
    DataSource = dts4
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
        Name = 'CDMDFE'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'CDMUNICIPIO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 859
    Top = 368
    object sdsmdfenfeCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfenfeCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfenfeCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfenfeCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfenfeCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfenfeCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfenfeTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfenfeTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfenfeNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 44
    end
    object sdsmdfenfeCDMDFENFE: TIntegerField
      FieldName = 'CDMDFENFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfenfeCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsmdfenfe: TClientDataSet
    Aggregates = <>
    DataSetField = cdsmdfedescarregamentosdsmdfenfe
    Params = <>
    BeforePost = cdsmdfenfeBeforePost
    AfterPost = cdsmdfenfeAfterPost
    Left = 915
    Top = 369
    object cdsmdfenfeCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfenfeCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfenfeCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfenfeCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfenfeCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfenfeCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfenfeTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfenfeTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfenfeNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 44
    end
    object cdsmdfenfeCDMDFENFE: TIntegerField
      FieldName = 'CDMDFENFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfenfeCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsmdfenfe: TDataSource
    DataSet = cdsmdfenfe
    Left = 975
    Top = 361
  end
  object sdsmdfedescarregamento: TSQLDataSet
    CommandText = 
      'SELECT * FROM MDFEDESCARREGAMENTO WHERE CDEMPRESA=:CDEMPRESA AND' +
      ' CDMDFE=:CDMDFE'
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
        Name = 'CDMDFE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 858
    Top = 303
    object sdsmdfedescarregamentoCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfedescarregamentoCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmdfedescarregamentoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfedescarregamentoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfedescarregamentoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfedescarregamentoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfedescarregamentoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfedescarregamentoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfedescarregamentoQTCTE: TIntegerField
      FieldName = 'QTCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfedescarregamentoQTNFE: TIntegerField
      FieldName = 'QTNFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmdfedescarregamentoVLCARGA: TFMTBCDField
      FieldName = 'VLCARGA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsmdfedescarregamentoQTCARGA: TFloatField
      FieldName = 'QTCARGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsmdfedescarregamentoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsmdfedescarregamento: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'sum_qtcte'
        Expression = 'SUM(QTCTE)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'sum_nfe'
        Expression = 'SUM(QTNFE)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'sum_vlcarga'
        Expression = 'SUM(VLCARGA)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'sum_qtcarga'
        Expression = 'SUM(QTCARGA)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdssdsmdfedescarregamento
    Params = <>
    BeforePost = cdsmdfedescarregamentoBeforePost
    AfterPost = cdsmdfedescarregamentoAfterPost
    OnNewRecord = cdsmdfedescarregamentoNewRecord
    Left = 915
    Top = 303
    object cdsmdfedescarregamentoCDMDFE: TIntegerField
      FieldName = 'CDMDFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmdfedescarregamentoCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsmdfedescarregamentoCDMUNICIPIOValidate
    end
    object cdsmdfedescarregamentoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfedescarregamentoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfedescarregamentoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfedescarregamentoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfedescarregamentoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfedescarregamentoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfedescarregamentosdsmdfenfe: TDataSetField
      FieldName = 'sdsmdfenfe'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmdfedescarregamentosdsmdfecte: TDataSetField
      FieldName = 'sdsmdfecte'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmdfedescarregamentoQTCTE: TIntegerField
      FieldName = 'QTCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfedescarregamentoQTNFE: TIntegerField
      FieldName = 'QTNFE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmdfedescarregamentoVLCARGA: TFMTBCDField
      FieldName = 'VLCARGA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsmdfedescarregamentoQTCARGA: TFloatField
      FieldName = 'QTCARGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmdfedescarregamentoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsmdfedescarregamento: TDataSource
    DataSet = cdsmdfedescarregamento
    Left = 975
    Top = 303
  end
  object dts4: TDataSource
    DataSet = sdsmdfedescarregamento
    Left = 1003
    Top = 303
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 744
    Top = 210
  end
end

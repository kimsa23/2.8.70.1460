object frmlivro: Tfrmlivro
  Left = 548
  Top = 113
  ClientHeight = 658
  ClientWidth = 1306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 84
    Width = 1306
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 74
      Top = 2
      Width = 53
      Height = 13
      Caption = 'Data In'#237'cio'
      Transparent = True
    end
    object Label1: TLabel
      Left = 6
      Top = 2
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label19: TLabel
      Left = 159
      Top = 2
      Width = 48
      Height = 13
      Caption = 'Data Final'
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 6
      Top = 16
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 67
    end
    object cxDBLabel2: TcxDBLabel
      Left = 159
      Top = 16
      DataBinding.DataField = 'DTFINAL'
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
      Height = 21
      Width = 65
    end
    object cxDBLabel1: TcxDBLabel
      Left = 74
      Top = 16
      DataBinding.DataField = 'DTINICIO'
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
      Height = 21
      Width = 65
    end
  end
  object pnl: TPanel
    Left = 0
    Top = 63
    Width = 1306
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
    TabOrder = 2
  end
  object ToolBar4: TToolBar
    Left = 0
    Top = 82
    Width = 1306
    Height = 2
    AutoSize = True
    Caption = 'ToolBar4'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    EdgeOuter = esNone
    Images = dtmmain.imlMain
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 3
    Transparent = True
    object ToolButton17: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton17'
      ImageIndex = 66
      Style = tbsSeparator
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 125
    Width = 1306
    Height = 533
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tbsICMS
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 533
    ClientRectRight = 1306
    ClientRectTop = 24
    object tbsICMS: TcxTabSheet
      Caption = 'ICMS'
      ImageIndex = 0
      ExplicitHeight = 472
      object grditufp1a: TcxGrid
        Left = 0
        Top = 309
        Width = 1306
        Height = 200
        Align = alBottom
        TabOrder = 0
        Visible = False
        LookAndFeel.NativeStyle = False
        object grditufp1aDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dtsitufp1a
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASE'
              Column = grditufp1aDBTableView1VLBASE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCONTABIL'
              Column = grditufp1aDBTableView1VLCONTABIL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIMPOSTO'
              Column = grditufp1aDBTableView1VLIMPOSTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTRAS'
              Column = grditufp1aDBTableView1VLOUTRAS
            end
            item
              Kind = skCount
              FieldName = 'SGUF'
              Column = grditufp1aDBTableView1SGUF
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLISENTAS'
              Column = grditufp1aDBTableView1VLISENTAS
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grditufp1aDBTableView1CDLP1A: TcxGridDBColumn
            DataBinding.FieldName = 'CDLP1A'
            Visible = False
          end
          object grditufp1aDBTableView1NUITAPUF: TcxGridDBColumn
            DataBinding.FieldName = 'NUITAPUF'
            Visible = False
          end
          object grditufp1aDBTableView1TPSAIENT: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TPSAIENT'
            Width = 41
          end
          object grditufp1aDBTableView1SGUF: TcxGridDBColumn
            Caption = 'UF'
            DataBinding.FieldName = 'SGUF'
            Width = 51
          end
          object grditufp1aDBTableView1VLCONTABIL: TcxGridDBColumn
            Caption = 'Cont'#225'bil'
            DataBinding.FieldName = 'VLCONTABIL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditufp1aDBTableView1VLBASE: TcxGridDBColumn
            Caption = 'Base'
            DataBinding.FieldName = 'VLBASE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditufp1aDBTableView1VLIMPOSTO: TcxGridDBColumn
            Caption = 'Imposto'
            DataBinding.FieldName = 'VLIMPOSTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditufp1aDBTableView1VLISENTAS: TcxGridDBColumn
            Caption = 'Isentas'
            DataBinding.FieldName = 'VLISENTAS'
          end
          object grditufp1aDBTableView1VLOUTRAS: TcxGridDBColumn
            Caption = 'Outras'
            DataBinding.FieldName = 'VLOUTRAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grditufp1aLevel1: TcxGridLevel
          GridView = grditufp1aDBTableView1
        end
      end
      object spt: TcxSplitter
        Left = 0
        Top = 301
        Width = 1306
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Visible = False
        ExplicitWidth = 8
      end
      object grdicms: TcxGrid
        Left = 0
        Top = 22
        Width = 1306
        Height = 279
        Align = alClient
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        object grdicmsDBTableView1: TcxGridDBTableView
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
          OnCellDblClick = grdicmsDBTableView1CellDblClick
          DataController.DataSource = dtsicms
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
              Column = grdicmsDBTableView1VLBASE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
              Column = grdicmsDBTableView1VLCONTABIL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
              Column = grdicmsDBTableView1VLIMPOSTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
              Column = grdicmsDBTableView1VLISENTAS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
              Column = grdicmsDBTableView1VLOUTRAS
            end
            item
              Kind = skCount
              Position = spFooter
              Column = grdicmsDBTableView1NUDOCUMENTO
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASE'
              Column = grdicmsDBTableView1VLBASE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCONTABIL'
              Column = grdicmsDBTableView1VLCONTABIL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIMPOSTO'
              Column = grdicmsDBTableView1VLIMPOSTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLISENTAS'
              Column = grdicmsDBTableView1VLISENTAS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTRAS'
              Column = grdicmsDBTableView1VLOUTRAS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEICMSSUBTRIB'
              Column = grdicmsDBTableView1VLBASEICMSSUBTRIB
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSSUBTRIB'
              Column = grdicmsDBTableView1VLICMSSUBTRIB
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.Indicator = True
          object grdicmsDBTableView1NUDOCUMENTO: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'NUDOCUMENTO'
          end
          object grdicmsDBTableView1CDSAIDA: TcxGridDBColumn
            DataBinding.FieldName = 'CDSAIDA'
            Visible = False
          end
          object grdicmsDBTableView1CDCFOP: TcxGridDBColumn
            Caption = 'CFOP'
            DataBinding.FieldName = 'CDCFOP'
            Width = 38
          end
          object grdicmsDBTableView1NMTPIMPOSTO: TcxGridDBColumn
            Caption = 'Imp'
            DataBinding.FieldName = 'NMTPIMPOSTO'
            Width = 32
          end
          object grdicmsDBTableView1CDENTRADA: TcxGridDBColumn
            DataBinding.FieldName = 'CDENTRADA'
            Visible = False
          end
          object grdicmsDBTableView1SGUF: TcxGridDBColumn
            Caption = 'UF'
            DataBinding.FieldName = 'SGUF'
          end
          object grdicmsDBTableView1CDTPOP1A: TcxGridDBColumn
            DataBinding.FieldName = 'CDTPOP1A'
            Visible = False
          end
          object grdicmsDBTableView1TPSAIENT: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TPSAIENT'
            Width = 28
          end
          object grdicmsDBTableView1DTENTRADA: TcxGridDBColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'DTENTRADA'
          end
          object grdicmsDBTableView1NMESPECIE: TcxGridDBColumn
            Caption = 'Esp'
            DataBinding.FieldName = 'NMESPECIE'
            Width = 29
          end
          object grdicmsDBTableView1NUSERIE: TcxGridDBColumn
            Caption = 'S'#233'rie'
            DataBinding.FieldName = 'NUSERIE'
            Width = 33
          end
          object grdicmsDBTableView1DTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object grdicmsDBTableView1VLCONTABIL: TcxGridDBColumn
            Caption = 'Cont'#225'bil'
            DataBinding.FieldName = 'VLCONTABIL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdicmsDBTableView1VLBASE: TcxGridDBColumn
            Caption = 'Base'
            DataBinding.FieldName = 'VLBASE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdicmsDBTableView1ALIQUOTA: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'ALIQUOTA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
            Width = 29
          end
          object grdicmsDBTableView1VLIMPOSTO: TcxGridDBColumn
            Caption = 'Imposto'
            DataBinding.FieldName = 'VLIMPOSTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdicmsDBTableView1VLISENTAS: TcxGridDBColumn
            Caption = 'Isentas'
            DataBinding.FieldName = 'VLISENTAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdicmsDBTableView1VLOUTRAS: TcxGridDBColumn
            Caption = 'Outras'
            DataBinding.FieldName = 'VLOUTRAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdicmsDBTableView1DSOBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            Width = 158
          end
          object grdicmsDBTableView1VLBASEICMSSUBTRIB: TcxGridDBColumn
            Caption = 'Base Sub Trib'
            DataBinding.FieldName = 'VLBASEICMSSUBTRIB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdicmsDBTableView1VLICMSSUBTRIB: TcxGridDBColumn
            Caption = 'Sub Trib'
            DataBinding.FieldName = 'VLICMSSUBTRIB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdicmsDBTableView1ALICMSSUBTRIB: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'ALICMSSUBTRIB'
          end
        end
        object grdicmsLevel1: TcxGridLevel
          GridView = grdicmsDBTableView1
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1306
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
    end
    object tbsipi: TcxTabSheet
      Caption = 'IPI'
      ImageIndex = 3
      ExplicitHeight = 472
      object grdipi: TcxGrid
        Left = 0
        Top = 22
        Width = 1306
        Height = 487
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
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
          OnCellDblClick = cxGridDBTableView1CellDblClick
          DataController.DataSource = dtsipi
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGridDBColumn16
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGridDBColumn15
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGridDBColumn18
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGridDBColumn19
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGridDBColumn20
            end
            item
              Kind = skCount
              Position = spFooter
              Column = cxGridDBColumn3
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASE'
              Column = cxGridDBColumn16
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCONTABIL'
              Column = cxGridDBColumn15
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIMPOSTO'
              Column = cxGridDBColumn18
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLISENTAS'
              Column = cxGridDBColumn19
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTRAS'
              Column = cxGridDBColumn20
            end
            item
              Kind = skCount
              FieldName = 'NUDOCUMENTO'
              Column = cxGridDBColumn3
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.Indicator = True
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'NUDOCUMENTO'
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'CDSAIDA'
            Visible = False
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'CFOP'
            DataBinding.FieldName = 'CDCFOP'
            Width = 38
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Imp'
            DataBinding.FieldName = 'NMTPIMPOSTO'
            Width = 32
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'CDENTRADA'
            Visible = False
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'UF'
            DataBinding.FieldName = 'SGUF'
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'CDTPOP1A'
            Visible = False
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TPSAIENT'
            Width = 28
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'DTENTRADA'
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Esp'
            DataBinding.FieldName = 'NMESPECIE'
            Width = 29
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'S'#233'rie'
            DataBinding.FieldName = 'NUSERIE'
            Width = 33
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Cont'#225'bil'
            DataBinding.FieldName = 'VLCONTABIL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Base'
            DataBinding.FieldName = 'VLBASE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'ALIQUOTA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
            Width = 29
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Imposto'
            DataBinding.FieldName = 'VLIMPOSTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Isentas'
            DataBinding.FieldName = 'VLISENTAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'Outras'
            DataBinding.FieldName = 'VLOUTRAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            Width = 158
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1306
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
    end
    object tbsapuracao: TcxTabSheet
      Caption = 'Apura'#231#227'o ICMS'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditapuf: TcxGrid
        Left = 0
        Top = 337
        Width = 1306
        Height = 172
        Align = alBottom
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grditapufDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dtsitapuf
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASE'
              Column = grditapufDBTableView1VLBASE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCONTABIL'
              Column = grditapufDBTableView1VLCONTABIL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIMPOSTO'
              Column = grditapufDBTableView1VLIMPOSTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLISENTAS'
              Column = grditapufDBTableView1VLISENTAS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTRAS'
              Column = grditapufDBTableView1VLOUTRAS
            end
            item
              Kind = skCount
              FieldName = 'NMTPIMPOSTO'
              Column = grditapufDBTableView1NMTPIMPOSTO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grditapufDBTableView1CDLP1A: TcxGridDBColumn
            DataBinding.FieldName = 'CDLP1A'
            Visible = False
          end
          object grditapufDBTableView1NUITAPUF: TcxGridDBColumn
            DataBinding.FieldName = 'NUITAPUF'
            Visible = False
          end
          object grditapufDBTableView1CDTPIMPOSTO: TcxGridDBColumn
            DataBinding.FieldName = 'CDTPIMPOSTO'
            Visible = False
          end
          object grditapufDBTableView1NMTPIMPOSTO: TcxGridDBColumn
            Caption = 'Tp Imposto'
            DataBinding.FieldName = 'NMTPIMPOSTO'
            Width = 59
          end
          object grditapufDBTableView1TPSAIENT: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TPSAIENT'
          end
          object grditapufDBTableView1VLCONTABIL: TcxGridDBColumn
            Caption = 'Cont'#225'bil'
            DataBinding.FieldName = 'VLCONTABIL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditapufDBTableView1VLBASE: TcxGridDBColumn
            Caption = 'Base'
            DataBinding.FieldName = 'VLBASE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditapufDBTableView1VLIMPOSTO: TcxGridDBColumn
            Caption = 'Imposto'
            DataBinding.FieldName = 'VLIMPOSTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditapufDBTableView1VLISENTAS: TcxGridDBColumn
            Caption = 'Isentas'
            DataBinding.FieldName = 'VLISENTAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditapufDBTableView1VLOUTRAS: TcxGridDBColumn
            Caption = 'Outras'
            DataBinding.FieldName = 'VLOUTRAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
        end
        object grditapufLevel1: TcxGridLevel
          GridView = grditapufDBTableView1
        end
      end
      object grditapuracaoicms: TcxGrid
        Left = 0
        Top = 0
        Width = 1306
        Height = 329
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object grditapuracaoicmsDBTableView1: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
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
          DataController.DataSource = dtsitapuracaoicms
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASE'
              Column = grditapuracaoicmsDBTableView1VLBASE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCONTABIL'
              Column = grditapuracaoicmsDBTableView1VLCONTABIL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIMPOSTO'
              Column = grditapuracaoicmsDBTableView1VLIMPOSTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLISENTAS'
              Column = grditapuracaoicmsDBTableView1VLISENTAS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTRAS'
              Column = grditapuracaoicmsDBTableView1VLOUTRAS
            end
            item
              Kind = skCount
              FieldName = 'CDCFOP'
              Column = grditapuracaoicmsDBTableView1CDCFOP
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTROSCREDITOS'
              Column = grditapuracaoicmsDBTableView1VLOUTROSCREDITOS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTROSDEBITOS'
              Column = grditapuracaoicmsDBTableView1VLOUTROSDEBITOS
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grditapuracaoicmsDBTableView1CDLP1A: TcxGridDBColumn
            DataBinding.FieldName = 'CDLP1A'
            Visible = False
          end
          object grditapuracaoicmsDBTableView1NUITAPURACAO: TcxGridDBColumn
            DataBinding.FieldName = 'NUITAPURACAO'
            Visible = False
          end
          object grditapuracaoicmsDBTableView1TPSAIENT: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TPSAIENT'
          end
          object grditapuracaoicmsDBTableView1CDCFOP: TcxGridDBColumn
            Caption = 'CFOP'
            DataBinding.FieldName = 'CDCFOP'
          end
          object grditapuracaoicmsDBTableView1VLCONTABIL: TcxGridDBColumn
            Caption = 'Cont'#225'bil'
            DataBinding.FieldName = 'VLCONTABIL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditapuracaoicmsDBTableView1VLBASE: TcxGridDBColumn
            Caption = 'Base'
            DataBinding.FieldName = 'VLBASE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditapuracaoicmsDBTableView1VLIMPOSTO: TcxGridDBColumn
            Caption = 'Imposto'
            DataBinding.FieldName = 'VLIMPOSTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditapuracaoicmsDBTableView1VLISENTAS: TcxGridDBColumn
            Caption = 'Isentas'
            DataBinding.FieldName = 'VLISENTAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditapuracaoicmsDBTableView1VLOUTRAS: TcxGridDBColumn
            Caption = 'Outras'
            DataBinding.FieldName = 'VLOUTRAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grditapuracaoicmsDBTableView1VLOUTROSCREDITOS: TcxGridDBColumn
            Caption = 'Outros Cr'#233'ditos'
            DataBinding.FieldName = 'VLOUTROSCREDITOS'
            Width = 86
          end
          object grditapuracaoicmsDBTableView1VLOUTROSDEBITOS: TcxGridDBColumn
            Caption = 'Outros D'#233'bitos'
            DataBinding.FieldName = 'VLOUTROSDEBITOS'
            Width = 88
          end
        end
        object grditapuracaoicmsLevel1: TcxGridLevel
          GridView = grditapuracaoicmsDBTableView1
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 329
        Width = 8
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = grditapuf
      end
    end
    object tbsapuracaoipi: TcxTabSheet
      Caption = 'Apura'#231#227'o IPI'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditapuracaoipi: TcxGrid
        Left = 0
        Top = 0
        Width = 1306
        Height = 509
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
          DataController.DataSource = dtsitapuracaoipi
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASE'
              Column = cxGridDBColumn27
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCONTABIL'
              Column = cxGridDBColumn26
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIMPOSTO'
              Column = cxGridDBColumn28
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLISENTAS'
              Column = cxGridDBColumn29
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTRAS'
              Column = cxGridDBColumn30
            end
            item
              Kind = skCount
              FieldName = 'CDCFOP'
              Column = cxGridDBColumn25
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTROSCREDITOS'
              Column = cxGridDBColumn31
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTROSDEBITOS'
              Column = cxGridDBColumn32
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBColumn22: TcxGridDBColumn
            DataBinding.FieldName = 'CDLP1A'
            Visible = False
          end
          object cxGridDBColumn23: TcxGridDBColumn
            DataBinding.FieldName = 'NUITAPURACAO'
            Visible = False
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TPSAIENT'
          end
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = 'CFOP'
            DataBinding.FieldName = 'CDCFOP'
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = 'Cont'#225'bil'
            DataBinding.FieldName = 'VLCONTABIL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = 'Base'
            DataBinding.FieldName = 'VLBASE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGridDBColumn28: TcxGridDBColumn
            Caption = 'Imposto'
            DataBinding.FieldName = 'VLIMPOSTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGridDBColumn29: TcxGridDBColumn
            Caption = 'Isentas'
            DataBinding.FieldName = 'VLISENTAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGridDBColumn30: TcxGridDBColumn
            Caption = 'Outras'
            DataBinding.FieldName = 'VLOUTRAS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGridDBColumn31: TcxGridDBColumn
            Caption = 'Outros Cr'#233'ditos'
            DataBinding.FieldName = 'VLOUTROSCREDITOS'
            Width = 86
          end
          object cxGridDBColumn32: TcxGridDBColumn
            Caption = 'Outros D'#233'bitos'
            DataBinding.FieldName = 'VLOUTROSDEBITOS'
            Width = 88
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object tbssaldo: TcxTabSheet
      Caption = 'Saldo ICMS'
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object vgrditregapuracao1: TcxDBVerticalGrid
        Left = 0
        Top = 0
        Width = 837
        Height = 509
        Align = alClient
        LayoutStyle = lsMultiRecordView
        LookAndFeel.NativeStyle = False
        OptionsView.CellAutoHeight = True
        OptionsView.ScrollBars = ssVertical
        OptionsView.ShowEditButtons = ecsbAlways
        OptionsView.RowHeaderWidth = 300
        OptionsView.ValueWidth = 183
        Navigator.Buttons.CustomButtons = <>
        TabOrder = 0
        DataController.DataSource = dtsitregapuracao1
        Version = 1
        object vgrditregapuracao1CategoryRow1: TcxCategoryRow
          Properties.Caption = 'D'#233'bito do Imposto'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow1: TcxDBEditorRow
          Properties.Caption = '001 - Por sa'#237'das / Presta'#231#245'es com d'#233'bito do imposto'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLDEBITO'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow2: TcxDBEditorRow
          Properties.Caption = '002 - Outros d'#233'bitos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDOUTROS'
          ID = 2
          ParentID = 0
          Index = 1
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow3: TcxDBEditorRow
          Properties.Caption = '003 - Estorno de cr'#233'ditos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDESTORNO'
          ID = 3
          ParentID = 0
          Index = 2
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow4: TcxDBEditorRow
          Properties.Caption = '004 - Total'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLDTOTAL'
          ID = 4
          ParentID = 0
          Index = 3
          Version = 1
        end
        object vgrditregapuracao1CategoryRow2: TcxCategoryRow
          Properties.Caption = 'Cr'#233'dito do Imposto'
          ID = 5
          ParentID = -1
          Index = 1
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow5: TcxDBEditorRow
          Properties.Caption = '005 - Por Entradas / Aquisi'#231#245'es com cr'#233'dito do imposto'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCREDITO'
          ID = 6
          ParentID = 5
          Index = 0
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow6: TcxDBEditorRow
          Properties.Caption = '006 - Outro cr'#233'dito'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLCOUTROS'
          ID = 7
          ParentID = 5
          Index = 1
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow7: TcxDBEditorRow
          Properties.Caption = '007 - Estorno de d'#233'bitos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLCESTORNO'
          ID = 8
          ParentID = 5
          Index = 2
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow8: TcxDBEditorRow
          Properties.Caption = '008 - Subtotal'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCSUBTOTAL'
          ID = 9
          ParentID = 5
          Index = 3
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow9: TcxDBEditorRow
          Properties.Caption = '009 - Saldo credor do per'#237'odo anterior'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCSALDOCREDOR'
          ID = 10
          ParentID = 5
          Index = 4
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow10: TcxDBEditorRow
          Properties.Caption = '010 - Total'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCTOTAL'
          ID = 11
          ParentID = 5
          Index = 5
          Version = 1
        end
        object vgrditregapuracao1CategoryRow3: TcxCategoryRow
          Properties.Caption = 'Saldo'
          ID = 12
          ParentID = -1
          Index = 2
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow11: TcxDBEditorRow
          Properties.Caption = '011 - Saldo devedor (d'#233'bito menos cr'#233'dito)'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLSALDODEVEDOR'
          ID = 13
          ParentID = 12
          Index = 0
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow12: TcxDBEditorRow
          Properties.Caption = '012 - Dedu'#231#245'es'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDEDUCOES'
          ID = 14
          ParentID = 12
          Index = 1
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow13: TcxDBEditorRow
          Properties.Caption = '013 - Imposto a recolher'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLIMPOSTO'
          ID = 15
          ParentID = 12
          Index = 2
          Version = 1
        end
        object vgrditregapuracao1DBEditorRow14: TcxDBEditorRow
          Properties.Caption = '014 - Saldo credor'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLSALDOCREDOR'
          ID = 16
          ParentID = 12
          Index = 3
          Version = 1
        end
      end
      object gbxobservacaoicms: TcxGroupBox
        Left = 845
        Top = 0
        Align = alRight
        Caption = 'Observa'#231#227'o'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 509
        Width = 461
        object mem3: TcxDBMemo
          Left = 2
          Top = 18
          Align = alClient
          DataBinding.DataField = 'DSOBSERVACAO'
          DataBinding.DataSource = dtsitregapuracao1
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 489
          Width = 457
        end
      end
      object spl3: TcxSplitter
        Left = 837
        Top = 0
        Width = 8
        Height = 509
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salRight
        Control = gbxobservacaoicms
      end
    end
    object tbsicmssubtrib: TcxTabSheet
      Caption = 'Saldo ICMS Substitui'#231#227'o Tribut'#225'ria'
      ImageIndex = 5
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object vgrditregapuracao3: TcxDBVerticalGrid
        Left = 0
        Top = 0
        Width = 1306
        Height = 509
        Align = alClient
        LayoutStyle = lsMultiRecordView
        LookAndFeel.NativeStyle = False
        OptionsView.CellAutoHeight = True
        OptionsView.ScrollBars = ssVertical
        OptionsView.ShowEditButtons = ecsbAlways
        OptionsView.RowHeaderWidth = 300
        OptionsView.ValueWidth = 183
        Navigator.Buttons.CustomButtons = <>
        TabOrder = 0
        DataController.DataSource = dtsitregapuracao3
        Version = 1
        object cxCategoryRow4: TcxCategoryRow
          Properties.Caption = 'D'#233'bito do Imposto'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object cxDBEditorRow15: TcxDBEditorRow
          Properties.Caption = '001 - Por sa'#237'das / Presta'#231#245'es com d'#233'bito do imposto'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLDEBITO'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object cxDBEditorRow16: TcxDBEditorRow
          Properties.Caption = '002 - Outros d'#233'bitos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDOUTROS'
          ID = 2
          ParentID = 0
          Index = 1
          Version = 1
        end
        object cxDBEditorRow17: TcxDBEditorRow
          Properties.Caption = '003 - Estorno de cr'#233'ditos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDESTORNO'
          ID = 3
          ParentID = 0
          Index = 2
          Version = 1
        end
        object cxDBEditorRow18: TcxDBEditorRow
          Properties.Caption = '004 - Total'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLDTOTAL'
          ID = 4
          ParentID = 0
          Index = 3
          Version = 1
        end
        object cxCategoryRow5: TcxCategoryRow
          Properties.Caption = 'Cr'#233'dito do Imposto'
          ID = 5
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxDBEditorRow19: TcxDBEditorRow
          Properties.Caption = '005 - Por Entradas / Aquisi'#231#245'es com cr'#233'dito do imposto'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCREDITO'
          ID = 6
          ParentID = 5
          Index = 0
          Version = 1
        end
        object cxDBEditorRow20: TcxDBEditorRow
          Properties.Caption = '006 - Outro cr'#233'dito'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLCOUTROS'
          ID = 7
          ParentID = 5
          Index = 1
          Version = 1
        end
        object cxDBEditorRow21: TcxDBEditorRow
          Properties.Caption = '007 - Estorno de d'#233'bitos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLCESTORNO'
          ID = 8
          ParentID = 5
          Index = 2
          Version = 1
        end
        object cxDBEditorRow22: TcxDBEditorRow
          Properties.Caption = '008 - Subtotal'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCSUBTOTAL'
          ID = 9
          ParentID = 5
          Index = 3
          Version = 1
        end
        object cxDBEditorRow23: TcxDBEditorRow
          Properties.Caption = '009 - Saldo credor do per'#237'odo anterior'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCSALDOCREDOR'
          ID = 10
          ParentID = 5
          Index = 4
          Version = 1
        end
        object cxDBEditorRow24: TcxDBEditorRow
          Properties.Caption = '010 - Total'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCTOTAL'
          ID = 11
          ParentID = 5
          Index = 5
          Version = 1
        end
        object cxCategoryRow6: TcxCategoryRow
          Properties.Caption = 'Saldo'
          ID = 12
          ParentID = -1
          Index = 2
          Version = 1
        end
        object cxDBEditorRow25: TcxDBEditorRow
          Properties.Caption = '011 - Saldo devedor (d'#233'bito menos cr'#233'dito)'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLSALDODEVEDOR'
          ID = 13
          ParentID = 12
          Index = 0
          Version = 1
        end
        object cxDBEditorRow26: TcxDBEditorRow
          Properties.Caption = '012 - Dedu'#231#245'es'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDEDUCOES'
          ID = 14
          ParentID = 12
          Index = 1
          Version = 1
        end
        object cxDBEditorRow27: TcxDBEditorRow
          Properties.Caption = '013 - Imposto a recolher'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLIMPOSTO'
          ID = 15
          ParentID = 12
          Index = 2
          Version = 1
        end
        object cxDBEditorRow28: TcxDBEditorRow
          Properties.Caption = '014 - Saldo credor'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLSALDOCREDOR'
          ID = 16
          ParentID = 12
          Index = 3
          Version = 1
        end
      end
    end
    object tbssaldoipi: TcxTabSheet
      Caption = 'Saldo IPI'
      ImageIndex = 4
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object vgrditregapuracao2: TcxDBVerticalGrid
        Left = 0
        Top = 0
        Width = 837
        Height = 509
        Align = alClient
        LayoutStyle = lsMultiRecordView
        LookAndFeel.NativeStyle = False
        OptionsView.RowHeaderWidth = 285
        OptionsView.ValueWidth = 140
        Navigator.Buttons.CustomButtons = <>
        TabOrder = 0
        DataController.DataSource = dtsitregapuracao2
        Version = 1
        object cxCategoryRow1: TcxCategoryRow
          Properties.Caption = 'Demonstrativo de Cr'#233'ditos'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object cxDBEditorRow1: TcxDBEditorRow
          Properties.Caption = '001 - Por entradas do mercado nacional'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCREDITO'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object cxDBEditorRow2: TcxDBEditorRow
          Properties.Caption = '002 - Por entradas do mercado externo'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          ID = 2
          ParentID = 0
          Index = 1
          Version = 1
        end
        object cxDBEditorRow3: TcxDBEditorRow
          Properties.Caption = '003 - Por sa'#237'das para o mercado externo'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          ID = 3
          ParentID = 0
          Index = 2
          Version = 1
        end
        object cxDBEditorRow4: TcxDBEditorRow
          Properties.Caption = '004 - Estorno de d'#233'bitos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLCESTORNO'
          ID = 4
          ParentID = 0
          Index = 3
          Version = 1
        end
        object cxDBEditorRow5: TcxDBEditorRow
          Properties.Caption = '005 - Outros Cr'#233'ditos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLCOUTROS'
          ID = 5
          ParentID = 0
          Index = 4
          Version = 1
        end
        object cxDBEditorRow6: TcxDBEditorRow
          Properties.Caption = '006 - Subtotal'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCSUBTOTAL'
          ID = 6
          ParentID = 0
          Index = 5
          Version = 1
        end
        object cxDBEditorRow7: TcxDBEditorRow
          Properties.Caption = '007 - Saldo credor do per'#237'odo anterior'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCSALDOCREDOR'
          ID = 7
          ParentID = 0
          Index = 6
          Version = 1
        end
        object cxDBEditorRow8: TcxDBEditorRow
          Properties.Caption = '008 - Total'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLCTOTAL'
          ID = 8
          ParentID = 0
          Index = 7
          Version = 1
        end
        object cxCategoryRow2: TcxCategoryRow
          Properties.Caption = 'Demonstrativo de D'#233'bitos'
          ID = 9
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxDBEditorRow9: TcxDBEditorRow
          Properties.Caption = '009 - Por sa'#237'das para o mercado nacional'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLDEBITO'
          ID = 10
          ParentID = 9
          Index = 0
          Version = 1
        end
        object cxDBEditorRow10: TcxDBEditorRow
          Properties.Caption = '010 - Estorno de Cr'#233'ditos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDESTORNO'
          ID = 11
          ParentID = 9
          Index = 1
          Version = 1
        end
        object cxDBEditorRow11: TcxDBEditorRow
          Properties.Caption = '011 - Ressarcimento de cr'#233'didos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDRESSARCIMENTO'
          ID = 12
          ParentID = 9
          Index = 2
          Version = 1
        end
        object cxDBEditorRow12: TcxDBEditorRow
          Properties.Caption = '012 - Outros d'#233'bitos'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDOUTROS'
          ID = 13
          ParentID = 9
          Index = 3
          Version = 1
        end
        object cxDBEditorRow13: TcxDBEditorRow
          Properties.Caption = '013 - Total'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLDTOTAL'
          ID = 14
          ParentID = 9
          Index = 4
          Version = 1
        end
        object cxCategoryRow3: TcxCategoryRow
          Properties.Caption = 'Apura'#231#227'o do Saldo'
          ID = 15
          ParentID = -1
          Index = 2
          Version = 1
        end
        object cxDBEditorRow14: TcxDBEditorRow
          Properties.Caption = '014 - D'#233'bito total'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          ID = 16
          ParentID = 15
          Index = 0
          Version = 1
        end
        object vgrditregapuracao2DBEditorRow1: TcxDBEditorRow
          Properties.Caption = '015 - Dedu'#231#245'es'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DataBinding.FieldName = 'VLDEDUCOES'
          ID = 17
          ParentID = 15
          Index = 1
          Version = 1
        end
        object vgrditregapuracao2DBEditorRow2: TcxDBEditorRow
          Properties.Caption = '016 - Saldo devedor'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLSALDODEVEDOR'
          ID = 18
          ParentID = 15
          Index = 2
          Version = 1
        end
        object vgrditregapuracao2DBEditorRow3: TcxDBEditorRow
          Properties.Caption = '017 - Saldo Credor'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.DataBinding.FieldName = 'VLSALDOCREDOR'
          ID = 19
          ParentID = 15
          Index = 3
          Version = 1
        end
      end
      object spl1: TcxSplitter
        Left = 837
        Top = 0
        Width = 8
        Height = 509
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salRight
        Control = gbxobservacao
      end
      object gbxobservacao: TcxGroupBox
        Left = 845
        Top = 0
        Align = alRight
        Caption = 'Observa'#231#227'o'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 509
        Width = 461
        object mem1: TcxDBMemo
          Left = 2
          Top = 18
          Align = alClient
          DataBinding.DataField = 'DSOBSERVACAO'
          DataBinding.DataSource = dtsitregapuracao2
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 489
          Width = 457
        end
      end
    end
    object tbsciapi: TcxTabSheet
      Caption = 'CIAPI'
      ImageIndex = 7
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 1306
        Height = 23
        Align = alTop
        ExplicitWidth = 1052
      end
      object Label3: TLabel
        Left = 3
        Top = 4
        Width = 116
        Height = 13
        Caption = 'Tributadas e Exporta'#231#227'o'
        Transparent = True
      end
      object lbl1: TLabel
        Left = 251
        Top = 4
        Width = 34
        Height = 13
        Caption = 'Sa'#237'das'
        Transparent = True
      end
      object lbl2: TLabel
        Left = 491
        Top = 4
        Width = 53
        Height = 13
        Caption = 'Coeficiente'
        Transparent = True
      end
      object grdlp1acipi: TcxGrid
        Left = 0
        Top = 23
        Width = 1306
        Height = 486
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvlp1aciapi: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = True
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
          OnCellDblClick = tbvlp1aciapiCellDblClick
          DataController.DataSource = dtslp1aciapi
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skCount
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLAJUSTE'
              Column = tbvlp1aciapiVLAJUSTE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDEDUCAO'
              Column = tbvlp1aciapiVLDEDUCAO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMS'
              Column = tbvlp1aciapiVLICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLSALDO'
              Column = tbvlp1aciapiVLSALDO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSDIFALIQUOTA'
              Column = tbvlp1aciapiVLICMSDIFALIQUOTA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSFRETE'
              Column = tbvlp1aciapiVLICMSFRETE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSSUBTRIB'
              Column = tbvlp1aciapiVLICMSSUBTRIB
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.Indicator = True
          object tbvlp1aciapiBOATIVADO: TcxGridDBColumn
            Caption = 'Ativado'
            DataBinding.FieldName = 'BOATIVADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 55
          end
          object tbvlp1aciapiCDINDICADOREMITENTE: TcxGridDBColumn
            Caption = 'Indic Emitente'
            DataBinding.FieldName = 'CDINDICADOREMITENTE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDINDICADOREMITENTE'
            Properties.ListColumns = <
              item
                FieldName = 'NMINDICADOREMITENTE'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 100
          end
          object tbvlp1aciapiNUDOCUMENTO: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'NUDOCUMENTO'
            Width = 81
          end
          object tbvlp1aciapiNUSERIE: TcxGridDBColumn
            Caption = 'S'#233'rie'
            DataBinding.FieldName = 'NUSERIE'
            Width = 58
          end
          object tbvlp1aciapiCDTPCIAPI: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'CDTPCIAPI'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'CDTPCIAPI'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPCIAPI'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 150
          end
          object tbvlp1aciapiNUDOCFISCALICMS: TcxGridDBColumn
            Caption = 'Doc Fiscal'
            DataBinding.FieldName = 'NUDOCFISCALICMS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 600
            Properties.KeyFieldNames = 'NUDOCFISCALICMS'
            Properties.ListColumns = <
              item
                FieldName = 'NMDOCFISCALICMS'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 73
          end
          object tbvlp1aciapiNUCHAVENFE: TcxGridDBColumn
            Caption = 'Chave'
            DataBinding.FieldName = 'NUCHAVENFE'
            Width = 100
          end
          object tbvlp1aciapiDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 73
          end
          object tbvlp1aciapiCDFORNECEDOR: TcxGridDBColumn
            Caption = 'Cd Fornecedor'
            DataBinding.FieldName = 'CDFORNECEDOR'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvlp1aciapiCDFORNECEDORPropertiesButtonClick
            Width = 100
          end
          object tbvlp1aciapiNMFORNECEDOR: TcxGridDBColumn
            Caption = 'Fornecedor'
            DataBinding.FieldName = 'NMFORNECEDOR'
            Options.Focusing = False
            Width = 100
          end
          object tbvlp1aciapiCDCLIENTE: TcxGridDBColumn
            Caption = 'Cd Cliente'
            DataBinding.FieldName = 'CDCLIENTE'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvlp1aciapiCDCLIENTEPropertiesButtonClick
            Width = 100
          end
          object tbvlp1aciapiNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Options.Focusing = False
            Width = 100
          end
          object tbvlp1aciapiCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBTableView3CDDIGITADOPropertiesButtonClick
            Width = 100
          end
          object tbvlp1aciapiNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 100
          end
          object tbvlp1aciapiNUPARCELA: TcxGridDBColumn
            Caption = 'Parcela'
            DataBinding.FieldName = 'NUPARCELA'
            Width = 100
          end
          object tbvlp1aciapiVLICMS: TcxGridDBColumn
            Caption = 'ICMS'
            DataBinding.FieldName = 'VLICMS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 100
          end
          object tbvlp1aciapiVLDEDUCAO: TcxGridDBColumn
            Caption = 'Dedu'#231#227'o'
            DataBinding.FieldName = 'VLDEDUCAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 100
          end
          object tbvlp1aciapiVLSALDO: TcxGridDBColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'VLSALDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 100
          end
          object tbvlp1aciapiVLAJUSTE: TcxGridDBColumn
            Caption = 'Valor Ajuste'
            DataBinding.FieldName = 'VLAJUSTE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 100
          end
          object tbvlp1aciapiVLICMSSUBTRIB: TcxGridDBColumn
            Caption = 'ICMS Sub Trib'
            DataBinding.FieldName = 'VLICMSSUBTRIB'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 100
          end
          object tbvlp1aciapiVLICMSFRETE: TcxGridDBColumn
            Caption = 'ICMS Frete'
            DataBinding.FieldName = 'VLICMSFRETE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 100
          end
          object tbvlp1aciapiVLICMSDIFALIQUOTA: TcxGridDBColumn
            Caption = 'ICMS Dif Al'#237'quota'
            DataBinding.FieldName = 'VLICMSDIFALIQUOTA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 100
          end
          object tbvlp1aciapiNUITEM: TcxGridDBColumn
            Caption = 'N'#186' '#205'tem na nota'
            DataBinding.FieldName = 'NUITEM'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.MaxValue = 999.000000000000000000
            Properties.MinValue = 1.000000000000000000
            Width = 100
          end
          object tbvlp1aciapiCDTPMERCADORIAATIVO: TcxGridDBColumn
            Caption = 'Merc Ativo'
            DataBinding.FieldName = 'CDTPMERCADORIAATIVO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'CDTPMERCADORIAATIVO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPMERCADORIAATIVO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 100
          end
          object tbvlp1aciapiCDINDIVIDUALBEM: TcxGridDBColumn
            Caption = 'C'#243'd Indiv Bem ou N'#186' Patrim'#244'nio'
            DataBinding.FieldName = 'CDINDIVIDUALBEM'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 180
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = tbvlp1aciapi
        end
      end
      object txtvltributadaciapi: TcxDBLabel
        Left = 122
        Top = 3
        DataBinding.DataField = 'VLTRIBUTADACIAPI'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 20
        Width = 121
      end
      object txt1: TcxDBLabel
        Left = 370
        Top = 3
        DataBinding.DataField = 'VLSAIDACIAPI'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 20
        Width = 121
      end
      object txt2: TcxDBLabel
        Left = 610
        Top = 3
        DataBinding.DataField = 'PRCOEFICIENTECIAPI'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 20
        Width = 121
      end
    end
    object tbsinfadicional: TcxTabSheet
      Caption = 'Informa'#231#245'es Adicionais'
      ImageIndex = 8
      object cxLabel1: TcxLabel
        Left = 4
        Top = 7
        Caption = 'N'#250'mero de empregados no '#250'ltimo dia do per'#237'odo'
        Transparent = True
      end
      object edtnufuncionarios: TcxDBSpinEdit
        Left = 246
        Top = 3
        DataBinding.DataField = 'NUFUNCIONARIOS'
        DataBinding.DataSource = dts
        Properties.MinValue = 1.000000000000000000
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 140
      end
      object cxLabel2: TcxLabel
        Left = 4
        Top = 27
        Caption = 'Valor da Folha de Pagamento'
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 4
        Top = 48
        Caption = 'Valor devido de Cofins'
        Transparent = True
      end
      object edtvlfolhapagamento: TcxDBCalcEdit
        Left = 246
        Top = 23
        DataBinding.DataField = 'VLFOLHAPAGAMENTO'
        DataBinding.DataSource = dts
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 140
      end
      object edtvlcofins: TcxDBCalcEdit
        Left = 246
        Top = 44
        DataBinding.DataField = 'VLCOFINS'
        DataBinding.DataSource = dts
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 140
      end
      object cxLabel4: TcxLabel
        Left = 4
        Top = 68
        Caption = 'Energia El'#233'trica consumido no per'#237'odo (em kWh)'
        Transparent = True
      end
      object edtqtenergia: TcxDBCalcEdit
        Left = 246
        Top = 64
        DataBinding.DataField = 'QTENERGIA'
        DataBinding.DataSource = dts
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 140
      end
    end
    object tbsECF: TcxTabSheet
      Caption = 'ECF 60A'
      ImageIndex = 9
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdreg60a: TcxGrid
        Left = 0
        Top = 0
        Width = 1306
        Height = 509
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdreg60atbv: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Append.Visible = False
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
          DataController.DataSource = dtsreg60a
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTALPARCIAL'
              Column = grdreg60atbvVLTOTALPARCIAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdreg60atbvNUSERIE: TcxGridDBColumn
            Caption = 'N'#186' S'#233'rie'
            DataBinding.FieldName = 'NUSERIE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 180
          end
          object grdreg60atbvDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 105
          end
          object grdreg60atbvVLTOTALPARCIAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTALPARCIAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object grdreg60atbvSTALIQUOTA: TcxGridDBColumn
            Caption = 'Al'#237'quota'
            DataBinding.FieldName = 'STALIQUOTA'
            Width = 78
          end
        end
        object grdreg60aLevel1: TcxGridLevel
          GridView = grdreg60atbv
        end
      end
    end
    object tbsECF60M: TcxTabSheet
      Caption = 'ECF 60M'
      ImageIndex = 10
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdreg60m: TcxGrid
        Left = 0
        Top = 0
        Width = 1306
        Height = 509
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvreg60m: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
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
          DataController.DataSource = dtsreg60m
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Column = tbvreg60mNUSERIE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBRUTA'
              Column = tbvreg60mVLBRUTA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLEQUIPAMENTO'
              Column = tbvreg60mVLEQUIPAMENTO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvreg60mNUSERIE: TcxGridDBColumn
            Caption = 'N'#186' S'#233'rie'
            DataBinding.FieldName = 'NUSERIE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 180
          end
          object tbvreg60mDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object tbvreg60mNUORDSEQ: TcxGridDBColumn
            Caption = 'Ordem Sequ'#234'ncia'
            DataBinding.FieldName = 'NUORDSEQ'
            Width = 100
          end
          object tbvreg60mMDDOCFISCAL: TcxGridDBColumn
            Caption = 'MD Doc Fiscal'
            DataBinding.FieldName = 'MDDOCFISCAL'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 92
          end
          object tbvreg60mCOOINICIAL: TcxGridDBColumn
            Caption = 'COO Inicial'
            DataBinding.FieldName = 'COOINICIAL'
          end
          object tbvreg60mCOOFINAL: TcxGridDBColumn
            Caption = 'COO Final'
            DataBinding.FieldName = 'COOFINAL'
          end
          object tbvreg60mNUREDUCAOZ: TcxGridDBColumn
            Caption = 'N'#186' Redu'#231#227'o Z'
            DataBinding.FieldName = 'NUREDUCAOZ'
            Width = 78
          end
          object tbvreg60mNUCRO: TcxGridDBColumn
            Caption = 'N'#186' CRO'
            DataBinding.FieldName = 'NUCRO'
          end
          object tbvreg60mVLBRUTA: TcxGridDBColumn
            Caption = 'Valor Bruto'
            DataBinding.FieldName = 'VLBRUTA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 123
          end
          object tbvreg60mVLEQUIPAMENTO: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'VLEQUIPAMENTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 119
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = tbvreg60m
        end
      end
    end
    object tbsPISCOFINS: TcxTabSheet
      Caption = 'EFD PIS/COFINS'
      ImageIndex = 13
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbltpcobranca: TLabel
        Left = 5
        Top = 10
        Width = 83
        Height = 13
        Caption = 'Tipo Escritura'#231#227'o'
        Transparent = True
      end
      object lbl3: TLabel
        Left = 5
        Top = 31
        Width = 132
        Height = 13
        Caption = 'Indicador Situa'#231#227'o Especial'
        Transparent = True
      end
      object lblnureciboanterior: TLabel
        Left = 5
        Top = 49
        Width = 113
        Height = 13
        Caption = 'N'#250'mero Recibo Anterior'
        Transparent = True
      end
      object cbxcdtpescrituracao: TcxDBLookupComboBox
        Left = 139
        Top = 3
        DataBinding.DataField = 'CDTPESCRITURACAO'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDTPESCRITURACAO'
        Properties.ListColumns = <
          item
            FieldName = 'NMTPESCRITURACAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 128
      end
      object cbxcdindicadorsituacaoespecial: TcxDBLookupComboBox
        Left = 139
        Top = 24
        DataBinding.DataField = 'CDINDICADORSITUACAOESPECIAL'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDINDICADORSITUACAOESPECIAL'
        Properties.ListColumns = <
          item
            FieldName = 'NMINDICADORSITUACAOESPECIAL'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 128
      end
      object edtnureciboanterior: TcxDBTextEdit
        Left = 139
        Top = 45
        DataBinding.DataField = 'NURECIBOANTERIOR'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 243
      end
      object btnefdpiscofins: TcxButton
        Left = 139
        Top = 66
        Width = 243
        Height = 25
        Action = actefdpiscofins
        LookAndFeel.NativeStyle = False
        TabOrder = 3
      end
      object btnefdpiscofins1: TcxButton
        Left = 139
        Top = 93
        Width = 243
        Height = 25
        Action = actefdpiscofinscte
        LookAndFeel.NativeStyle = False
        TabOrder = 4
      end
      object btnspedcte: TcxButton
        Left = 139
        Top = 119
        Width = 243
        Height = 25
        Action = actspedcte
        LookAndFeel.NativeStyle = False
        TabOrder = 5
      end
    end
    object tbsativo: TcxTabSheet
      Caption = 'Ativo'
      ImageIndex = 12
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdlp1aativopiscofins: TcxGrid
        Left = 0
        Top = 0
        Width = 1306
        Height = 509
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grdlp1aativopiscofinsDBBandedTableView1: TcxGridDBBandedTableView
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
          DataController.DataSource = dtslp1aativopiscofins
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CDPRODUTO'
              Column = grdlp1aativopiscofinsDBBandedTableView1CDPRODUTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASECOFINS'
              Column = grdlp1aativopiscofinsDBBandedTableView1VLBASECOFINS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEPIS'
              Column = grdlp1aativopiscofinsDBBandedTableView1VLBASEPIS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCOFINS'
              Column = grdlp1aativopiscofinsDBBandedTableView1VLCOFINS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDEDUCAO'
              Column = grdlp1aativopiscofinsDBBandedTableView1VLDEDUCAO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLENTRADA'
              Column = grdlp1aativopiscofinsDBBandedTableView1VLENTRADA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLPIS'
              Column = grdlp1aativopiscofinsDBBandedTableView1VLPIS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLSALDO'
              Column = grdlp1aativopiscofinsDBBandedTableView1VLSALDO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Produto'
            end
            item
              Caption = 'Documento'
            end
            item
              Caption = 'Valores'
            end
            item
              Caption = 'PIS'
            end
            item
              Caption = 'COFINS'
            end
            item
              Caption = 'Outros'
            end>
          object grdlp1aativopiscofinsDBBandedTableView1CDBCCALCULOCREDITO: TcxGridDBBandedColumn
            Caption = 'Base C'#225'lculo Cr'#233'dito'
            DataBinding.FieldName = 'CDBCCALCULOCREDITO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 750
            Properties.KeyFieldNames = 'CDBCCALCULOCREDITO'
            Properties.ListColumns = <
              item
                FieldName = 'NMBCCALCULOCREDITO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 300
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1CDPISCOFINSBEMATIVO: TcxGridDBBandedColumn
            Caption = 'Bem Ativo'
            DataBinding.FieldName = 'CDPISCOFINSBEMATIVO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 350
            Properties.KeyFieldNames = 'CDPISCOFINSBEMATIVO'
            Properties.ListColumns = <
              item
                FieldName = 'NMPISCOFINSBEMATIVO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 200
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1CDPISCOFINSBEMORIGEM: TcxGridDBBandedColumn
            Caption = 'Origem Bem'
            DataBinding.FieldName = 'CDPISCOFINSBEMORIGEM'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 250
            Properties.KeyFieldNames = 'CDPISCOFINSBEMORIGEM'
            Properties.ListColumns = <
              item
                FieldName = 'NMPISCOFINSBEMORIGEM'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 200
            Position.BandIndex = 5
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1NUSTPIS: TcxGridDBBandedColumn
            Caption = 'Situa'#231#227'o Tribut'#225'ria'
            DataBinding.FieldName = 'NUSTPIS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 450
            Properties.KeyFieldNames = 'NUSTPIS'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTPIS'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 150
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1NUSTCOFINS: TcxGridDBBandedColumn
            Caption = 'Situa'#231#227'o Tribut'#225'ria'
            DataBinding.FieldName = 'NUSTCOFINS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 450
            Properties.KeyFieldNames = 'NUSTCOFINS'
            Properties.ListColumns = <
              item
                FieldName = 'NMSTCOFINS'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 150
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1NUPARCELA: TcxGridDBBandedColumn
            Caption = 'Parcela'
            DataBinding.FieldName = 'NUPARCELA'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1VLBASEPIS: TcxGridDBBandedColumn
            Caption = 'Base'
            DataBinding.FieldName = 'VLBASEPIS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1ALPIS: TcxGridDBBandedColumn
            Caption = 'Al'#237'quota'
            DataBinding.FieldName = 'ALPIS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1VLPIS: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLPIS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1VLBASECOFINS: TcxGridDBBandedColumn
            Caption = 'Base'
            DataBinding.FieldName = 'VLBASECOFINS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1ALCOFINS: TcxGridDBBandedColumn
            Caption = 'Al'#237'quota'
            DataBinding.FieldName = 'ALCOFINS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1VLCOFINS: TcxGridDBBandedColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLCOFINS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 4
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1CDPISCOFINSBEMUTILIZACAO: TcxGridDBBandedColumn
            Caption = 'Utiliza'#231#227'o do Bem'
            DataBinding.FieldName = 'CDPISCOFINSBEMUTILIZACAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 250
            Properties.KeyFieldNames = 'CDPISCOFINSBEMUTILIZACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMPISCOFINSBEMUTILIZACAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 200
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1NUDOCUMENTO: TcxGridDBBandedColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUDOCUMENTO'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1DTEMISSAO: TcxGridDBBandedColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1VLDEDUCAO: TcxGridDBBandedColumn
            Caption = 'Dedu'#231#227'o'
            DataBinding.FieldName = 'VLDEDUCAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1VLSALDO: TcxGridDBBandedColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'VLSALDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1CDPRODUTO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDPRODUTO'
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1NMPRODUTO: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 291
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdlp1aativopiscofinsDBBandedTableView1VLENTRADA: TcxGridDBBandedColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'VLENTRADA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = grdlp1aativopiscofinsDBBandedTableView1
        end
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 188
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
    object actabrirsaida: TAction
      Caption = 'Abrir Sa'#237'da'
      Hint = 'saida'
      ImageIndex = 19
      OnExecute = actabrirsaidaExecute
    end
    object actabrirEntrada: TAction
      Caption = 'Abrir Entrada'
      Hint = 'entrada'
      ImageIndex = 27
      OnExecute = actabrirEntradaExecute
    end
    object actimprimirapuracaoicmslaser: TAction
      Caption = '69 - Apura'#231#227'o de ICMS'
      Hint = 'Apura'#231#227'o de ICMS'
      OnExecute = actimprimirapuracaoicmslaserExecute
    end
    object actimprimirapuracaoipilaser: TAction
      Caption = '70 - Apura'#231#227'o de IPI'
      Hint = 'Apura'#231#227'o de IPI'
      OnExecute = actimprimirapuracaoipilaserExecute
    end
    object actvoltar: TAction
      Caption = 'Voltar'
      Hint = 'Voltar'
      ImageIndex = 12
    end
    object actsalvarimpressao: TAction
      Caption = 'Salvar'
      Hint = 'Salvar'
      ImageIndex = 2
    end
    object actimprimirmemo: TAction
      Caption = 'Imprimir'
      Hint = 'Imprimir'
      ImageIndex = 3
    end
    object actimprimirlivrofiscalentradaicmsipip1aemitentelaser: TAction
      Caption = 'Livro Fiscal Entrada - ICMS/IPI P1/A (Emitente)'
      Hint = 'Livro Fiscal Entrada - ICMS/IPI P1/A (Emitente)'
      OnExecute = actimprimirlivrofiscalentradaicmsipip1aemitentelaserExecute
    end
    object actimprimirtermoLaser: TAction
      Caption = 'Termo Abertura/Encerramento'
      OnExecute = actimprimirtermoLaserExecute
    end
    object actgerarsintegra: TAction
      Caption = 'Sintegra'
      Enabled = False
      Hint = 'Gerar sintegra'
      ImageIndex = 65
      OnExecute = actgerarsintegraExecute
    end
    object actimprimirlivrofiscalentradaicmsipi1aLaser: TAction
      Caption = 'Livro Fiscal Entrada - ICMS/IPI P1/A'
      OnExecute = actimprimirlivrofiscalentradaicmsipi1aLaserExecute
    end
    object actimprimirlivrofiscalentradaipi1aLaser: TAction
      Caption = 'Livro Fiscal Entrada - IPI P1A'
      OnExecute = actimprimirlivrofiscalentradaipi1aLaserExecute
    end
    object actimprimirlivrofiscalentradaicms1aLaser: TAction
      Caption = 'Livro Fiscal Entrada - ICMS P1A'
      OnExecute = actimprimirlivrofiscalentradaicms1aLaserExecute
    end
    object actimprimirlivrofiscalemitentesentradaLaser: TAction
      Caption = 'Lista de Emitentes (Entrada)'
      OnExecute = actimprimirlivrofiscalemitentesentradaLaserExecute
    end
    object actimprimirlivrofiscalemitentessaidasLaser: TAction
      Caption = 'Lista de Emitentes (Saidas)'
      OnExecute = actimprimirlivrofiscalemitentessaidasLaserExecute
    end
    object actimprimirlivrofiscalsaidaicms2aLaser: TAction
      Caption = 'Livro Fiscal Sa'#237'da - ICMS P2'
      OnExecute = actimprimirlivrofiscalsaidaicms2aLaserExecute
    end
    object actimprimirlivrofiscalsaidaipi2aLaser: TAction
      Caption = 'Livro Fiscal Sa'#237'da - IPI P2'
      OnExecute = actimprimirlivrofiscalsaidaipi2aLaserExecute
    end
    object actimprimirlivrofiscalsaidaicmsipi2aLaser: TAction
      Caption = 'Livro Fiscal Sa'#237'da - ICMS/IPI P2'
      OnExecute = actimprimirlivrofiscalsaidaicmsipi2aLaserExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actefd: TAction
      Caption = 'SPED'
      Enabled = False
      ImageIndex = 143
      OnExecute = actefdExecute
    end
    object actefditem: TAction
      Caption = 'SPED Item'
      Enabled = False
      ImageIndex = 143
      OnExecute = actefdExecute
    end
    object actExportarNFENotaFiscal: TAction
      Caption = 'Nota Fiscal'
      ImageIndex = 19
      OnExecute = actExportarNFENotaFiscalExecute
    end
    object actExportar: TAction
      Caption = 'Exportar'
      Enabled = False
      ImageIndex = 12
      OnExecute = actExportarExecute
    end
    object actexportarnfeCompra: TAction
      Caption = 'Compra'
      ImageIndex = 27
      OnExecute = actexportarnfeCompraExecute
    end
    object actexportarcte: TAction
      Caption = 'Ct-e'
      OnExecute = actexportarcteExecute
    end
    object actadicionar: TAction
      Caption = 'actadicionar'
    end
    object actefdpiscofins: TAction
      Caption = 'Gerar SPED PIS/COFINS'
      Enabled = False
      OnExecute = actefdpiscofinsExecute
    end
    object actexportarpdf: TAction
      Caption = 'PDF'
    end
    object actexportarctepdf: TAction
      Caption = 'CT-e'
      OnExecute = actexportarctepdfExecute
    end
    object actexportarnfepdf: TAction
      Caption = 'Nota Fiscal'
      OnExecute = actexportarnfepdfExecute
    end
    object actexportarxml: TAction
      Caption = 'XML'
      OnExecute = actexportarxmlExecute
    end
    object actimpativopiscofins: TAction
      Caption = 'Ativo PIS/COFINS'
      OnExecute = actimpativopiscofinsExecute
    end
    object actimprimirdemonstrativopiscofins: TAction
      Caption = '425 - Demonstrativo PIS/COFINS'
      OnExecute = actimprimirdemonstrativopiscofinsExecute
    end
    object actspedcte: TAction
      Caption = 'Jun'#231#227'o SPED ICMS/IPI com Ct-e'
      Enabled = False
      OnExecute = actspedcteExecute
    end
    object actefdpiscofinscte: TAction
      Caption = 'Gerar SPED PIS/COFINS Ct-e'
      Enabled = False
      OnExecute = actefdpiscofinscteExecute
    end
    object actexportarseried: TAction
      Caption = 'S'#233'rie D'
      OnExecute = actexportarseriedExecute
    end
    object actfiltraricms: TAction
      Caption = 'Filtrar'
      Hint = 'Filtrar'
      ImageIndex = 13
      OnExecute = actfiltraricmsExecute
    end
    object actagruparicms: TAction
      Caption = 'Agrupar'
      Hint = 'Agrupar'
      ImageIndex = 54
      OnExecute = actagruparicmsExecute
    end
    object actexcelicms: TAction
      Caption = 'Excel'
      Hint = 'Exportar Excel'
      ImageIndex = 15
      OnExecute = actexcelicmsExecute
    end
    object actfiltraripi: TAction
      Caption = 'Filtrar'
      Hint = 'Filtrar'
      ImageIndex = 13
      OnExecute = actfiltraripiExecute
    end
    object actagruparipi: TAction
      Caption = 'Agrupar'
      Hint = 'Agrupar'
      ImageIndex = 54
      OnExecute = actagruparipiExecute
    end
    object actexcelipi: TAction
      Caption = 'Excel'
      Hint = 'Excel'
      ImageIndex = 15
      OnExecute = actexcelipiExecute
    end
  end
  object sds: TSQLDataSet
    CommandText = 'SELECT * FROM LP1A WHERE CDEMPRESA=:CDEMPRESA AND CDLP1A=:CDLP1A'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'CDLP1A'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 372
    Top = 196
    object sdsCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTFINAL: TDateField
      FieldName = 'DTFINAL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNUFUNCIONARIOS: TIntegerField
      FieldName = 'NUFUNCIONARIOS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLFOLHAPAGAMENTO: TFMTBCDField
      FieldName = 'VLFOLHAPAGAMENTO'
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
    object sdsQTENERGIA: TFloatField
      FieldName = 'QTENERGIA'
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
    object sdsVLTRIBUTADACIAPI: TFMTBCDField
      FieldName = 'VLTRIBUTADACIAPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSAIDACIAPI: TFMTBCDField
      FieldName = 'VLSAIDACIAPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRCOEFICIENTECIAPI: TFloatField
      FieldName = 'PRCOEFICIENTECIAPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPESCRITURACAO: TIntegerField
      FieldName = 'CDTPESCRITURACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDINDICADORSITUACAOESPECIAL: TIntegerField
      FieldName = 'CDINDICADORSITUACAOESPECIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNURECIBOANTERIOR: TStringField
      FieldName = 'NURECIBOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Size = 41
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsicms: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT VLBASEICMSSUBTRIB,VLICMSSUBTRIB,ALICMSSUBTRIB,CDLP1A,CDIT' +
      'LP1A,NUDOCUMENTO,CDSAIDA,CDCFOP,NMTPIMPOSTO,CDENTRADA,SGUF,CDTPO' +
      'P1A,TPSAIENT,DTENTRADA,NMESPECIE,NUSERIE,DTEMISSAO,VLCONTABIL,VL' +
      'BASE,ALIQUOTA,VLIMPOSTO,VLISENTAS,VLOUTRAS,DSOBSERVACAO '#13#10'FROM I' +
      'TLP1A '#13#10'LEFT JOIN TPIMPOSTO ON TPIMPOSTO.CDTPIMPOSTO=ITLP1A.CDTP' +
      'IMPOSTO '#13#10'LEFT JOIN UF ON UF.CDUF=ITLP1A.CDUF'#13#10'WHERE ITLP1A.CDEM' +
      'PRESA=:CDEMPRESA AND ITLP1A.CDTPIMPOSTO=1 AND ITLP1A.CDLP1A=:CDL' +
      'P1A'
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
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 441
    Top = 196
    object sdsicmsCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsicmsCDITLP1A: TIntegerField
      FieldName = 'CDITLP1A'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsicmsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsicmsNMTPIMPOSTO: TStringField
      FieldName = 'NMTPIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsicmsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsicmsSGUF: TStringField
      FieldName = 'SGUF'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsicmsCDTPOP1A: TIntegerField
      FieldName = 'CDTPOP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsicmsTPSAIENT: TStringField
      FieldName = 'TPSAIENT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsicmsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsicmsNMESPECIE: TStringField
      FieldName = 'NMESPECIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object sdsicmsNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object sdsicmsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsicmsVLCONTABIL: TFMTBCDField
      FieldName = 'VLCONTABIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsicmsVLBASE: TFMTBCDField
      FieldName = 'VLBASE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsicmsVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsicmsVLISENTAS: TFMTBCDField
      FieldName = 'VLISENTAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsicmsVLOUTRAS: TFMTBCDField
      FieldName = 'VLOUTRAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsicmsDSOBSERVACAO: TStringField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsicmsNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
    end
    object sdsicmsCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
    end
    object sdsicmsVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsicmsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsicmsALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = []
    end
    object sdsicmsALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sdsitufp1a: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT ITUFP1A.*,SGUF '#13#10'FROM ITUFP1A INNER JOIN UF ON UF.CDUF=IT' +
      'UFP1A.CDUF WHERE CDEMPRESA=:CDEMPRESA AND CDLP1A=:CDLP1A'
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
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 487
    Top = 196
    object sdsitufp1aCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitufp1aCDITUFP1A: TIntegerField
      FieldName = 'CDITUFP1A'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitufp1aCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitufp1aTPSAIENT: TStringField
      FieldName = 'TPSAIENT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitufp1aVLCONTABIL: TFMTBCDField
      FieldName = 'VLCONTABIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitufp1aVLBASE: TFMTBCDField
      FieldName = 'VLBASE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitufp1aVLOUTRAS: TFMTBCDField
      FieldName = 'VLOUTRAS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitufp1aVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitufp1aSGUF: TStringField
      FieldName = 'SGUF'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsitufp1aCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitufp1aCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitufp1aCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitufp1aCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitufp1aTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitufp1aTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitufp1aVLISENTAS: TFMTBCDField
      FieldName = 'VLISENTAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitufp1aCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitapuracaoicms: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT ITAPURACAO.*,TPIMPOSTO.NMTPIMPOSTO '#13#10'FROM ITAPURACAO '#13#10'IN' +
      'NER JOIN TPIMPOSTO ON TPIMPOSTO.CDTPIMPOSTO=ITAPURACAO.CDTPIMPOS' +
      'TO '#13#10'INNER JOIN CFOP ON CFOP.CDCFOP=ITAPURACAO.CDCFOP'#13#10'WHERE ITA' +
      'PURACAO.CDEMPRESA=:CDEMPRESA AND ITAPURACAO.CDTPIMPOSTO=1 AND IT' +
      'APURACAO.CDLP1A=:CDLP1A'
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
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 560
    Top = 196
  end
  object sdsitapuf: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT ITAPUF.*,NMTPIMPOSTO '#13#10'FROM ITAPUF '#13#10'LEFT JOIN TPIMPOSTO ' +
      'ON TPIMPOSTO.CDTPIMPOSTO=ITAPUF.CDTPIMPOSTO '#13#10'WHERE ITAPUF.CDEMP' +
      'RESA=CDEMPRESA AND ITAPUF.CDLP1A=:CDLP1A'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 629
    Top = 196
    object sdsitapufCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitapufCDITAPUF: TIntegerField
      FieldName = 'CDITAPUF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitapufCDTPIMPOSTO: TIntegerField
      FieldName = 'CDTPIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitapufTPSAIENT: TStringField
      FieldName = 'TPSAIENT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitapufVLCONTABIL: TFMTBCDField
      FieldName = 'VLCONTABIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitapufVLBASE: TFMTBCDField
      FieldName = 'VLBASE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitapufVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitapufVLISENTAS: TFMTBCDField
      FieldName = 'VLISENTAS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitapufVLOUTRAS: TFMTBCDField
      FieldName = 'VLOUTRAS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitapufNMTPIMPOSTO: TStringField
      FieldName = 'NMTPIMPOSTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitapufCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitapufCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitapufCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitapufCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitapufTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitapufTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitapufCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitregapuracao1: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM ITREGAPURACAO '#13#10'WHERE CDEMPRESA=:CDEMPRESA AND C' +
      'DTPIMPOSTO=1 AND ITREGAPURACAO.CDLP1A=:CDLP1A'
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
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 700
    Top = 196
    object sdsitregapuracao1CDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao1CDITREGAPURACAO: TIntegerField
      FieldName = 'CDITREGAPURACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitregapuracao1CDTPIMPOSTO: TIntegerField
      FieldName = 'CDTPIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao1VLDEBITO: TFMTBCDField
      FieldName = 'VLDEBITO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLDOUTROS: TFMTBCDField
      FieldName = 'VLDOUTROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLDESTORNO: TFMTBCDField
      FieldName = 'VLDESTORNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLDTOTAL: TFMTBCDField
      FieldName = 'VLDTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLCREDITO: TFMTBCDField
      FieldName = 'VLCREDITO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLCOUTROS: TFMTBCDField
      FieldName = 'VLCOUTROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLCESTORNO: TFMTBCDField
      FieldName = 'VLCESTORNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLCSUBTOTAL: TFMTBCDField
      FieldName = 'VLCSUBTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLCSALDOCREDOR: TFMTBCDField
      FieldName = 'VLCSALDOCREDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLCTOTAL: TFMTBCDField
      FieldName = 'VLCTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLSALDODEVEDOR: TFMTBCDField
      FieldName = 'VLSALDODEVEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLDEDUCOES: TFMTBCDField
      FieldName = 'VLDEDUCOES'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLSALDOCREDOR: TFMTBCDField
      FieldName = 'VLSALDOCREDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1VLDRESSARCIMENTO: TFMTBCDField
      FieldName = 'VLDRESSARCIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao1DSOBSERVACAO: TMemoField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sdsitregapuracao1CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao1CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao1CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao1CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao1TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao1TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao1CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 372
    Top = 312
  end
  object dtsicms: TDataSource
    DataSet = cdsicms
    Left = 441
    Top = 312
  end
  object dtsitufp1a: TDataSource
    DataSet = cdsitufp1a
    Left = 487
    Top = 312
  end
  object dtsitapuracaoicms: TDataSource
    DataSet = cdsitapuracaoicms
    Left = 560
    Top = 312
  end
  object dtsitapuf: TDataSource
    DataSet = cdsitapuf
    Left = 629
    Top = 312
  end
  object dtsitregapuracao1: TDataSource
    DataSet = cdsitregapuracao1
    Left = 700
    Top = 312
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 372
    Top = 232
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    AfterOpen = cdsAfterOpen
    AfterScroll = cdsAfterScroll
    Left = 372
    Top = 268
    object cdsCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDTFINAL: TDateField
      FieldName = 'DTFINAL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssdsitufp1a: TDataSetField
      FieldName = 'sdsitufp1a'
    end
    object cdssdsicms: TDataSetField
      FieldName = 'sdsicms'
    end
    object cdssdsipi: TDataSetField
      FieldName = 'sdsipi'
    end
    object cdssdsitapuracaoicms: TDataSetField
      FieldName = 'sdsitapuracaoicms'
    end
    object cdssdsitapuf: TDataSetField
      FieldName = 'sdsitapuf'
    end
    object cdssdsitapuracaoipi: TDataSetField
      FieldName = 'sdsitapuracaoipi'
    end
    object cdssdsitregapuracao3: TDataSetField
      FieldName = 'sdsitregapuracao3'
    end
    object cdssdsitregapuracao2: TDataSetField
      FieldName = 'sdsitregapuracao2'
    end
    object cdssdsitregapuracao1: TDataSetField
      FieldName = 'sdsitregapuracao1'
    end
    object cdssdsLP1ACIAPI: TDataSetField
      FieldName = 'sdsLP1ACIAPI'
    end
    object cdsNUFUNCIONARIOS: TIntegerField
      FieldName = 'NUFUNCIONARIOS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLFOLHAPAGAMENTO: TFMTBCDField
      FieldName = 'VLFOLHAPAGAMENTO'
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
    object cdsQTENERGIA: TFloatField
      FieldName = 'QTENERGIA'
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
    object cdsVLTRIBUTADACIAPI: TFMTBCDField
      FieldName = 'VLTRIBUTADACIAPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLSAIDACIAPI: TFMTBCDField
      FieldName = 'VLSAIDACIAPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPRCOEFICIENTECIAPI: TFloatField
      FieldName = 'PRCOEFICIENTECIAPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPESCRITURACAO: TIntegerField
      FieldName = 'CDTPESCRITURACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDINDICADORSITUACAOESPECIAL: TIntegerField
      FieldName = 'CDINDICADORSITUACAOESPECIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNURECIBOANTERIOR: TStringField
      FieldName = 'NURECIBOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Size = 41
    end
    object cdssdslp1aativopiscofins: TDataSetField
      FieldName = 'sdslp1aativopiscofins'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsicms: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsicms
    Params = <>
    ReadOnly = True
    Left = 441
    Top = 268
    object cdsicmsCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsicmsCDITLP1A: TIntegerField
      FieldName = 'CDITLP1A'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsicmsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsicmsNMTPIMPOSTO: TStringField
      FieldName = 'NMTPIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsicmsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsicmsSGUF: TStringField
      FieldName = 'SGUF'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsicmsCDTPOP1A: TIntegerField
      FieldName = 'CDTPOP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsicmsTPSAIENT: TStringField
      FieldName = 'TPSAIENT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsicmsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsicmsNMESPECIE: TStringField
      FieldName = 'NMESPECIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object cdsicmsNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object cdsicmsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsicmsVLCONTABIL: TFMTBCDField
      FieldName = 'VLCONTABIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsicmsVLBASE: TFMTBCDField
      FieldName = 'VLBASE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsicmsVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsicmsVLISENTAS: TFMTBCDField
      FieldName = 'VLISENTAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsicmsVLOUTRAS: TFMTBCDField
      FieldName = 'VLOUTRAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsicmsDSOBSERVACAO: TStringField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsicmsNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
    end
    object cdsicmsCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
    end
    object cdsicmsVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsicmsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsicmsALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = []
    end
    object cdsicmsALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsitufp1a: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitufp1a
    Params = <>
    ReadOnly = True
    Left = 487
    Top = 268
    object cdsitufp1aCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitufp1aCDITUFP1A: TIntegerField
      FieldName = 'CDITUFP1A'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitufp1aCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitufp1aTPSAIENT: TStringField
      FieldName = 'TPSAIENT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitufp1aVLCONTABIL: TFMTBCDField
      FieldName = 'VLCONTABIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitufp1aVLBASE: TFMTBCDField
      FieldName = 'VLBASE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitufp1aVLOUTRAS: TFMTBCDField
      FieldName = 'VLOUTRAS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitufp1aVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitufp1aSGUF: TStringField
      FieldName = 'SGUF'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsitufp1aCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitufp1aCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitufp1aCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitufp1aCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitufp1aTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitufp1aTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitufp1aVLISENTAS: TFMTBCDField
      FieldName = 'VLISENTAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitufp1aCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitapuracaoicms: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitapuracaoicms
    Params = <>
    ReadOnly = True
    Left = 560
    Top = 268
  end
  object cdsitregapuracao1: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitregapuracao1
    Params = <>
    Left = 700
    Top = 268
    object cdsitregapuracao1CDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao1CDITREGAPURACAO: TIntegerField
      FieldName = 'CDITREGAPURACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitregapuracao1CDTPIMPOSTO: TIntegerField
      FieldName = 'CDTPIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao1VLDEBITO: TFMTBCDField
      FieldName = 'VLDEBITO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLDOUTROS: TFMTBCDField
      FieldName = 'VLDOUTROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitregapuracao1VLCOUTROSValidate
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLDESTORNO: TFMTBCDField
      FieldName = 'VLDESTORNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitregapuracao1VLCOUTROSValidate
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLDTOTAL: TFMTBCDField
      FieldName = 'VLDTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLCREDITO: TFMTBCDField
      FieldName = 'VLCREDITO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLCOUTROS: TFMTBCDField
      FieldName = 'VLCOUTROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitregapuracao1VLCOUTROSValidate
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLCESTORNO: TFMTBCDField
      FieldName = 'VLCESTORNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitregapuracao1VLCOUTROSValidate
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLCSUBTOTAL: TFMTBCDField
      FieldName = 'VLCSUBTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLCSALDOCREDOR: TFMTBCDField
      FieldName = 'VLCSALDOCREDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLCTOTAL: TFMTBCDField
      FieldName = 'VLCTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLSALDODEVEDOR: TFMTBCDField
      FieldName = 'VLSALDODEVEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLDEDUCOES: TFMTBCDField
      FieldName = 'VLDEDUCOES'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLSALDOCREDOR: TFMTBCDField
      FieldName = 'VLSALDOCREDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1VLDRESSARCIMENTO: TFMTBCDField
      FieldName = 'VLDRESSARCIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao1DSOBSERVACAO: TMemoField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsitregapuracao1CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao1CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao1CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao1CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao1TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao1TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao1CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitapuf: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitapuf
    Params = <>
    ReadOnly = True
    Left = 629
    Top = 268
    object cdsitapufCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitapufCDITAPUF: TIntegerField
      FieldName = 'CDITAPUF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitapufCDTPIMPOSTO: TIntegerField
      FieldName = 'CDTPIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitapufTPSAIENT: TStringField
      FieldName = 'TPSAIENT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitapufVLCONTABIL: TFMTBCDField
      FieldName = 'VLCONTABIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitapufVLBASE: TFMTBCDField
      FieldName = 'VLBASE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitapufVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitapufVLISENTAS: TFMTBCDField
      FieldName = 'VLISENTAS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitapufVLOUTRAS: TFMTBCDField
      FieldName = 'VLOUTRAS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitapufNMTPIMPOSTO: TStringField
      FieldName = 'NMTPIMPOSTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitapufCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitapufCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitapufCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitapufCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitapufTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitapufTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitapufCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitregapuracao2: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM ITREGAPURACAO '#13#10'WHERE CDEMPRESA=:CDEMPRESA AND C' +
      'DTPIMPOSTO=2 AND ITREGAPURACAO.CDLP1A=:CDLP1A'
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
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 792
    Top = 196
    object sdsitregapuracao2CDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao2CDITREGAPURACAO: TIntegerField
      FieldName = 'CDITREGAPURACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitregapuracao2CDTPIMPOSTO: TIntegerField
      FieldName = 'CDTPIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao2VLDEBITO: TFMTBCDField
      FieldName = 'VLDEBITO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLDOUTROS: TFMTBCDField
      FieldName = 'VLDOUTROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLDESTORNO: TFMTBCDField
      FieldName = 'VLDESTORNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLDTOTAL: TFMTBCDField
      FieldName = 'VLDTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLCREDITO: TFMTBCDField
      FieldName = 'VLCREDITO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLCOUTROS: TFMTBCDField
      FieldName = 'VLCOUTROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLCESTORNO: TFMTBCDField
      FieldName = 'VLCESTORNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLCSUBTOTAL: TFMTBCDField
      FieldName = 'VLCSUBTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLCSALDOCREDOR: TFMTBCDField
      FieldName = 'VLCSALDOCREDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLCTOTAL: TFMTBCDField
      FieldName = 'VLCTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLSALDODEVEDOR: TFMTBCDField
      FieldName = 'VLSALDODEVEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLDEDUCOES: TFMTBCDField
      FieldName = 'VLDEDUCOES'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLSALDOCREDOR: TFMTBCDField
      FieldName = 'VLSALDOCREDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2VLDRESSARCIMENTO: TFMTBCDField
      FieldName = 'VLDRESSARCIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitregapuracao2DSOBSERVACAO: TMemoField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sdsitregapuracao2CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao2CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao2CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao2CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao2TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao2TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitregapuracao2CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitregapuracao2: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitregapuracao2
    Params = <>
    Left = 792
    Top = 268
    object cdsitregapuracao2CDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao2CDITREGAPURACAO: TIntegerField
      FieldName = 'CDITREGAPURACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitregapuracao2CDTPIMPOSTO: TIntegerField
      FieldName = 'CDTPIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao2VLDEBITO: TFMTBCDField
      FieldName = 'VLDEBITO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLDOUTROS: TFMTBCDField
      FieldName = 'VLDOUTROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitregapuracao2VLDRESSARCIMENTOValidate
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLDESTORNO: TFMTBCDField
      FieldName = 'VLDESTORNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitregapuracao2VLDRESSARCIMENTOValidate
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLDTOTAL: TFMTBCDField
      FieldName = 'VLDTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLCREDITO: TFMTBCDField
      FieldName = 'VLCREDITO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLCOUTROS: TFMTBCDField
      FieldName = 'VLCOUTROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitregapuracao2VLDRESSARCIMENTOValidate
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLCESTORNO: TFMTBCDField
      FieldName = 'VLCESTORNO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsitregapuracao2VLDRESSARCIMENTOValidate
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLCSUBTOTAL: TFMTBCDField
      FieldName = 'VLCSUBTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLCSALDOCREDOR: TFMTBCDField
      FieldName = 'VLCSALDOCREDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLCTOTAL: TFMTBCDField
      FieldName = 'VLCTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLSALDODEVEDOR: TFMTBCDField
      FieldName = 'VLSALDODEVEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLDEDUCOES: TFMTBCDField
      FieldName = 'VLDEDUCOES'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLSALDOCREDOR: TFMTBCDField
      FieldName = 'VLSALDOCREDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsitregapuracao2VLDRESSARCIMENTO: TFMTBCDField
      FieldName = 'VLDRESSARCIMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitregapuracao2VLDRESSARCIMENTOValidate
      Precision = 32
    end
    object cdsitregapuracao2DSOBSERVACAO: TMemoField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsitregapuracao2CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao2CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao2CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao2CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao2TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao2TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitregapuracao2CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitregapuracao2: TDataSource
    DataSet = cdsitregapuracao2
    Left = 792
    Top = 312
  end
  object sdsipi: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT CDLP1A,CDITLP1A,NUDOCUMENTO,CDSAIDA,CDCFOP,NMTPIMPOSTO,CD' +
      'ENTRADA,SGUF,CDTPOP1A,TPSAIENT,DTENTRADA,NMESPECIE,NUSERIE,DTEMI' +
      'SSAO,VLCONTABIL,VLBASE,ALIQUOTA,VLIMPOSTO'#13#10',VLISENTAS,VLOUTRAS,D' +
      'SOBSERVACAO '#13#10'FROM ITLP1A '#13#10'LEFT JOIN TPIMPOSTO ON TPIMPOSTO.CDT' +
      'PIMPOSTO=ITLP1A.CDTPIMPOSTO '#13#10'LEFT JOIN UF ON UF.CDUF=ITLP1A.CDU' +
      'F '#13#10'WHERE ITLP1A.CDEMPRESA=:CDEMPRESA AND ITLP1A.CDTPIMPOSTO=2 A' +
      'ND ITLP1A.CDLP1A=:CDLP1A'
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
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 407
    Top = 196
    object sdsipiCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsipiCDITLP1A: TIntegerField
      FieldName = 'CDITLP1A'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsipiCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsipiNMTPIMPOSTO: TStringField
      FieldName = 'NMTPIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsipiCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsipiSGUF: TStringField
      FieldName = 'SGUF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsipiCDTPOP1A: TIntegerField
      FieldName = 'CDTPOP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsipiTPSAIENT: TStringField
      FieldName = 'TPSAIENT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsipiDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsipiNMESPECIE: TStringField
      FieldName = 'NMESPECIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object sdsipiNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object sdsipiDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsipiVLCONTABIL: TFMTBCDField
      FieldName = 'VLCONTABIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsipiVLBASE: TFMTBCDField
      FieldName = 'VLBASE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsipiVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsipiVLISENTAS: TFMTBCDField
      FieldName = 'VLISENTAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsipiVLOUTRAS: TFMTBCDField
      FieldName = 'VLOUTRAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsipiDSOBSERVACAO: TStringField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsipiNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
    end
    object sdsipiCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
    end
    object sdsipiALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsipi: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsipi
    Params = <>
    ReadOnly = True
    Left = 407
    Top = 268
    object cdsipiCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsipiCDITLP1A: TIntegerField
      FieldName = 'CDITLP1A'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsipiCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsipiNMTPIMPOSTO: TStringField
      FieldName = 'NMTPIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsipiCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsipiSGUF: TStringField
      FieldName = 'SGUF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsipiCDTPOP1A: TIntegerField
      FieldName = 'CDTPOP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsipiTPSAIENT: TStringField
      FieldName = 'TPSAIENT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsipiDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsipiNMESPECIE: TStringField
      FieldName = 'NMESPECIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object cdsipiNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object cdsipiDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsipiVLCONTABIL: TFMTBCDField
      FieldName = 'VLCONTABIL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsipiVLBASE: TFMTBCDField
      FieldName = 'VLBASE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsipiVLIMPOSTO: TFMTBCDField
      FieldName = 'VLIMPOSTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsipiVLISENTAS: TFMTBCDField
      FieldName = 'VLISENTAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsipiVLOUTRAS: TFMTBCDField
      FieldName = 'VLOUTRAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsipiDSOBSERVACAO: TStringField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsipiNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
    end
    object cdsipiCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
    end
    object cdsipiALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dtsipi: TDataSource
    DataSet = cdsipi
    Left = 407
    Top = 312
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 342
    Top = 312
  end
  object sdsitregapuracao3: TSQLDataSet
    CommandText = 
      'SELECT ITLP1A.CDLP1A,0.0 VLDEBITO,SUM(ITSAIDAFRETESUB.VLFRETESUB' +
      ') VLDOUTROS,0.0 VLDESTORNO,SUM(ITSAIDAFRETESUB.VLFRETESUB) VLDTO' +
      'TAL,0.0 VLCREDITO,SUM(ITSAIDAFRETESUB.VLCREDITO) VLCOUTROS,0.0 V' +
      'LCESTORNO,0.0 VLCSUBTOTAL,0.0 VLCSALDOCREDOR,SUM(ITSAIDAFRETESUB' +
      '.VLCREDITO) VLCTOTAL,SUM(ITSAIDAFRETESUB.VLICMS) VLSALDODEVEDOR,' +
      '0.0 VLDEDUCOES,SUM(ITSAIDAFRETESUB.VLICMS) VLIMPOSTO,0.0 VLSALDO' +
      'CREDOR,0.0 VLDRESSARCIMENTO '#13#10'FROM ITLP1A '#13#10'INNER JOIN  SAIDA ON' +
      ' ITLP1A.CDSAIDA=SAIDA.CDSAIDA AND ITLP1A.CDEMPRESA=SAIDA.CDEMPRE' +
      'SA'#13#10'INNER JOIN ITSAIDAFRETESUB ON ITSAIDAFRETESUB.CDSAIDA=SAIDA.' +
      'CDSAIDA AND ITLP1A.CDEMPRESA=ITSAIDAFRETESUB.CDEMPRESA '#13#10'WHERE I' +
      'TLP1A.CDEMPRESA=:CDEMPRESA AND ITLP1A.CDLP1A=:CDLP1A AND SAIDA.T' +
      'PENTSAI='#39'S'#39' AND ITLP1A.CDTPIMPOSTO=1 GROUP BY ITLP1A.CDLP1A'
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
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 279
    Top = 228
  end
  object cdsitregapuracao3: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitregapuracao3
    Params = <>
    Left = 279
    Top = 284
  end
  object dtsitregapuracao3: TDataSource
    DataSet = cdsitregapuracao3
    Left = 279
    Top = 312
  end
  object sdsitapuracaoipi: TSQLDataSet
    CommandText = 
      'SELECT ITAPURACAO.*,TPIMPOSTO.NMTPIMPOSTO '#13#10'FROM ITAPURACAO '#13#10'IN' +
      'NER JOIN TPIMPOSTO ON TPIMPOSTO.CDTPIMPOSTO=ITAPURACAO.CDTPIMPOS' +
      'TO '#13#10'WHERE ITAPURACAO.CDEMPRESA=:CDEMPRESA AND ITAPURACAO.CDTPIM' +
      'POSTO=2 AND ITAPURACAO.CDLP1A=:CDLP1A'
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
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 190
    Top = 228
  end
  object cdsitapuracaoipi: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitapuracaoipi
    Params = <>
    ReadOnly = True
    Left = 190
    Top = 284
  end
  object dtsitapuracaoipi: TDataSource
    DataSet = cdsitapuracaoipi
    Left = 190
    Top = 312
  end
  object sdsLP1ACIAPI: TSQLDataSet
    CommandText = 
      'SELECT L.*'#13#10',P.NMPRODUTO'#13#10',F.NMFORNECEDOR'#13#10',C.NMCLIENTE '#13#10'FROM L' +
      'P1ACIAPI L  '#13#10'INNER JOIN PRODUTO P ON P.CDPRODUTO=L.CDPRODUTO AN' +
      'D L.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOIN FORNECEDOR F ON F.CDFORNECE' +
      'DOR=L.CDFORNECEDOR AND F.CDEMPRESA=L.CDEMPRESA'#13#10'LEFT JOIN CLIENT' +
      'E C ON C.CDCLIENTE=L.CDCLIENTE AND C.CDEMPRESA=L.CDEMPRESA'#13#10'WHER' +
      'E L.CDEMPRESA=:CDEMPRESA AND L.CDLP1A=:CDLP1A'
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
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 874
    Top = 197
    object sdsLP1ACIAPICDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPICDITLP1ACIAPI: TIntegerField
      FieldName = 'CDLP1ACIAPI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLP1ACIAPICDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLP1ACIAPICDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPICDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPICDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPICDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPINUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPINUPARCELA: TIntegerField
      FieldName = 'NUPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPIVLAJUSTE: TFMTBCDField
      FieldName = 'VLAJUSTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsLP1ACIAPITSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPITSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPIDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLP1ACIAPINMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Required = True
      Size = 250
    end
    object sdsLP1ACIAPICDITSAIDA: TIntegerField
      FieldName = 'CDITSAIDA'
    end
    object sdsLP1ACIAPICDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
    end
    object sdsLP1ACIAPIVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsLP1ACIAPIVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsLP1ACIAPIVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsLP1ACIAPIBOATIVADO: TStringField
      FieldName = 'BOATIVADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsLP1ACIAPICDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPICDTPCIAPI: TIntegerField
      FieldName = 'CDTPCIAPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLP1ACIAPIVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsLP1ACIAPIVLICMSFRETE: TFMTBCDField
      FieldName = 'VLICMSFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsLP1ACIAPIVLICMSDIFALIQUOTA: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsLP1ACIAPINUITEM: TIntegerField
      FieldName = 'NUITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPICDINDIVIDUALBEM: TStringField
      FieldName = 'CDINDIVIDUALBEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object sdsLP1ACIAPICDTPMERCADORIAATIVO: TIntegerField
      FieldName = 'CDTPMERCADORIAATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPICDINDICADOREMITENTE: TIntegerField
      FieldName = 'CDINDICADOREMITENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsLP1ACIAPINUDOCFISCALICMS: TStringField
      FieldName = 'NUDOCFISCALICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsLP1ACIAPINUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sdsLP1ACIAPINUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object sdsLP1ACIAPINMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsLP1ACIAPINMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsLP1ACIAPICDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLP1ACIAPICDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsLP1ACIAPICDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdslp1aciapi: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsLP1ACIAPI
    Params = <>
    BeforePost = cdslp1aciapiBeforePost
    AfterScroll = cdslp1aciapiAfterScroll
    OnNewRecord = cdslp1aciapiNewRecord
    Left = 874
    Top = 268
    object cdslp1aciapiCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiCDLP1ACIAPI: TIntegerField
      FieldName = 'CDLP1ACIAPI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdslp1aciapiCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdslp1aciapiCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiNUPARCELA: TIntegerField
      FieldName = 'NUPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiVLAJUSTE: TFMTBCDField
      FieldName = 'VLAJUSTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdslp1aciapiTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdslp1aciapiDTEMISSAOValidate
    end
    object cdslp1aciapiNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Required = True
      Size = 250
    end
    object cdslp1aciapiCDITSAIDA: TIntegerField
      FieldName = 'CDITSAIDA'
    end
    object cdslp1aciapiCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
    end
    object cdslp1aciapiVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdslp1aciapiVLICMSValidate
      Precision = 15
      Size = 2
    end
    object cdslp1aciapiVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdslp1aciapiVLDEDUCAOValidate
      Precision = 15
      Size = 2
    end
    object cdslp1aciapiVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdslp1aciapiBOATIVADO: TStringField
      FieldName = 'BOATIVADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdslp1aciapiCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdslp1aciapiCDDIGITADOValidate
    end
    object cdslp1aciapiCDTPCIAPI: TIntegerField
      FieldName = 'CDTPCIAPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdslp1aciapiVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdslp1aciapiVLICMSFRETE: TFMTBCDField
      FieldName = 'VLICMSFRETE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdslp1aciapiVLICMSDIFALIQUOTA: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdslp1aciapiNUITEM: TIntegerField
      FieldName = 'NUITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiCDINDIVIDUALBEM: TStringField
      FieldName = 'CDINDIVIDUALBEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object cdslp1aciapiCDTPMERCADORIAATIVO: TIntegerField
      FieldName = 'CDTPMERCADORIAATIVO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiCDINDICADOREMITENTE: TIntegerField
      FieldName = 'CDINDICADOREMITENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aciapiNUDOCFISCALICMS: TStringField
      FieldName = 'NUDOCFISCALICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdslp1aciapiNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdslp1aciapiNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdslp1aciapiNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdslp1aciapiNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdslp1aciapiCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdslp1aciapiCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdslp1aciapiCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dtslp1aciapi: TDataSource
    DataSet = cdslp1aciapi
    Left = 874
    Top = 312
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
    Left = 160
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
      Caption = 'lp1a'
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
          ItemName = 'dxBarLargeButton2'
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
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          Visible = True
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'btnexportar'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton15'
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
      Caption = 'icms'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 213
      FloatTop = 63
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnfiltroicms'
        end
        item
          Visible = True
          ItemName = 'btnagruparicms'
        end
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end>
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
      Caption = 'ipi'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 269
      FloatTop = 60
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnfiltroipi'
        end
        item
          Visible = True
          ItemName = 'btnagruparipi'
        end
        item
          Visible = True
          ItemName = 'dxBarButton38'
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
          ItemName = 'dxBarLargeButton2'
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
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end>
    end
    object dxBarButton18: TdxBarButton
      Action = actimprimirlivrofiscalentradaicms1aLaser
      Category = 0
    end
    object dxBarButton19: TdxBarButton
      Action = actimprimirlivrofiscalentradaipi1aLaser
      Category = 0
    end
    object dxBarButton20: TdxBarButton
      Action = actimprimirlivrofiscalentradaicmsipi1aLaser
      Category = 0
    end
    object dxBarButton21: TdxBarButton
      Action = actimprimirlivrofiscalentradaicmsipip1aemitentelaser
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = actimprimirlivrofiscalemitentesentradaLaser
      Category = 0
    end
    object dxBarSeparator5: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton23: TdxBarButton
      Action = actimprimirlivrofiscalsaidaipi2aLaser
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = actimprimirlivrofiscalsaidaicms2aLaser
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = actimprimirlivrofiscalsaidaicmsipi2aLaser
      Category = 0
    end
    object dxBarButton26: TdxBarButton
      Action = actimprimirlivrofiscalemitentessaidasLaser
      Category = 0
    end
    object dxBarSeparator6: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton27: TdxBarButton
      Action = actimprimirapuracaoicmslaser
      Category = 0
    end
    object dxBarButton28: TdxBarButton
      Action = actimprimirapuracaoipilaser
      Category = 0
    end
    object dxBarSeparator7: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton29: TdxBarButton
      Action = actimprimirtermoLaser
      Category = 0
    end
    object dxBarButton44: TdxBarButton
      Action = actExportarNFENotaFiscal
      Category = 0
    end
    object dxBarButton45: TdxBarButton
      Action = actexportarnfeCompra
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actNovo
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actAbrir
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actEditar
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actSalvar
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actCancelar
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actExcluir
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actPrimeiro
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actAnterior
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actProximo
      Category = 0
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = actUltimo
      Category = 0
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = actgerarsintegra
      Category = 0
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Action = actefd
      Category = 0
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = actfechar
      Category = 0
    end
    object dxBarButton30: TdxBarButton
      Action = actexportarcte
      Category = 0
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'PDF'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton31'
        end
        item
          Visible = True
          ItemName = 'dxBarButton35'
        end>
    end
    object dxBarButton31: TdxBarButton
      Action = actexportarctepdf
      Category = 0
    end
    object dxBarSubItem6: TdxBarSubItem
      Action = actexportarxml
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton44'
        end
        item
          Visible = True
          ItemName = 'dxBarButton45'
        end
        item
          Visible = True
          ItemName = 'dxBarButton30'
        end>
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actefditem
      Category = 0
    end
    object dxBarButton32: TdxBarButton
      Action = actimpativopiscofins
      Category = 0
    end
    object dxBarButton33: TdxBarButton
      Action = actimprimirdemonstrativopiscofins
      Category = 0
    end
    object dxBarButton34: TdxBarButton
      Action = actexportarseried
      Category = 0
    end
    object btnfiltroicms: TdxBarButton
      Action = actfiltraricms
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnagruparicms: TdxBarButton
      Action = actagruparicms
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton37: TdxBarButton
      Action = actexcelicms
      Category = 0
    end
    object btnfiltroipi: TdxBarButton
      Action = actfiltraripi
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnagruparipi: TdxBarButton
      Action = actagruparipi
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton38: TdxBarButton
      Action = actexcelipi
      Category = 0
    end
    object dxBarButton35: TdxBarButton
      Action = actexportarnfepdf
      Category = 0
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object btnexportar: TdxBarLargeButton
      Action = actExportar
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumexportar
    end
  end
  object sdsreg60a: TSQLDataSet
    CommandText = 
      'SELECT * FROM REG60A WHERE DTEMISSAO BETWEEN :DTINICIO AND :DTFI' +
      'NAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DTINICIO'
        ParamType = ptInput
        Value = '01/01/2010'
      end
      item
        DataType = ftString
        Name = 'DTFINAL'
        ParamType = ptInput
        Value = '01/31/2011'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 941
    Top = 196
    object sdsreg60aVLTOTALPARCIAL: TFMTBCDField
      FieldName = 'VLTOTALPARCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsreg60aDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsreg60aNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsreg60aSTALIQUOTA: TStringField
      FieldName = 'STALIQUOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object sdsreg60aCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dspreg60a: TDataSetProvider
    DataSet = sdsreg60a
    Options = [poIncFieldProps]
    UpdateMode = upWhereKeyOnly
    Left = 941
    Top = 240
  end
  object cdsreg60a: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspreg60a'
    BeforePost = cdsreg60aBeforePost
    OnPostError = cdsreg60aPostError
    Left = 941
    Top = 268
    object cdsreg60aVLTOTALPARCIAL: TFMTBCDField
      FieldName = 'VLTOTALPARCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsreg60aDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsreg60aNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsreg60aSTALIQUOTA: TStringField
      FieldName = 'STALIQUOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object cdsreg60aCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsreg60a: TDataSource
    DataSet = cdsreg60a
    Left = 941
    Top = 312
  end
  object sdsreg60m: TSQLDataSet
    CommandText = 
      'SELECT * FROM REG60M WHERE DTEMISSAO BETWEEN :DTINICIO AND :DTFI' +
      'NAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DTINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 998
    Top = 196
    object sdsreg60mDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsreg60mNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsreg60mNUORDSEQ: TSmallintField
      FieldName = 'NUORDSEQ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsreg60mMDDOCFISCAL: TStringField
      FieldName = 'MDDOCFISCAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsreg60mCOOINICIAL: TIntegerField
      FieldName = 'COOINICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsreg60mCOOFINAL: TIntegerField
      FieldName = 'COOFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsreg60mNUREDUCAOZ: TIntegerField
      FieldName = 'NUREDUCAOZ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsreg60mNUCRO: TSmallintField
      FieldName = 'NUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsreg60mVLBRUTA: TFMTBCDField
      FieldName = 'VLBRUTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsreg60mVLEQUIPAMENTO: TFMTBCDField
      FieldName = 'VLEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsreg60mCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dspreg60m: TDataSetProvider
    DataSet = sdsreg60m
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 998
    Top = 240
  end
  object cdsreg60m: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspreg60m'
    OnNewRecord = cdsreg60mNewRecord
    OnPostError = cdsreg60mPostError
    Left = 998
    Top = 268
    object cdsreg60mDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsreg60mNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsreg60mNUORDSEQ: TSmallintField
      FieldName = 'NUORDSEQ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsreg60mMDDOCFISCAL: TStringField
      FieldName = 'MDDOCFISCAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsreg60mCOOINICIAL: TIntegerField
      FieldName = 'COOINICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsreg60mCOOFINAL: TIntegerField
      FieldName = 'COOFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsreg60mNUREDUCAOZ: TIntegerField
      FieldName = 'NUREDUCAOZ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsreg60mNUCRO: TSmallintField
      FieldName = 'NUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsreg60mVLBRUTA: TFMTBCDField
      FieldName = 'VLBRUTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsreg60mVLEQUIPAMENTO: TFMTBCDField
      FieldName = 'VLEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsreg60mCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsreg60m: TDataSource
    DataSet = cdsreg60m
    Left = 998
    Top = 312
  end
  object sdslp1aativopiscofins: TSQLDataSet
    CommandText = 
      'SELECT L.*'#13#10',P.NMPRODUTO'#13#10',A.CDBCCALCULOCREDITO'#13#10',A.CDPISCOFINSB' +
      'EMATIVO'#13#10',A.CDPISCOFINSBEMORIGEM'#13#10',A.CDPISCOFINSBEMUTILIZACAO'#13#10',' +
      'A.CDPRODUTO'#13#10',A.NUSTPIS'#13#10',A.NUSTCOFINS'#13#10',A.ALPIS'#13#10',A.ALCOFINS'#13#10',' +
      'A.VLENTRADA'#13#10',A.NUDOCUMENTO'#13#10',A.DTEMISSAO'#13#10',F.NMFORNECEDOR'#13#10'FROM' +
      ' LP1AATIVOPISCOFINS L'#13#10'LEFT JOIN ATIVOPISCOFINS a ON A.CDATIVOPI' +
      'SCOFINS=L.CDATIVOPISCOFINS AND L.CDEMPRESA=A.CDEMPRESA'#13#10'LEFT JOI' +
      'N FORNECEDOR F ON F.CDFORNECEDOR=A.CDFORNECEDOR AND F.CDEMPRESA=' +
      'A.CDEMPRESA'#13#10'LEFT JOIN PRODUTO P ON P.CDPRODUTO=A.CDPRODUTO AND ' +
      'P.CDEMPRESA=A.CDEMPRESA'#13#10'WHERE L.CDEMPRESA=:CDEMPRESA AND CDLP1A' +
      '=:CDLP1A'
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
        Name = 'CDLP1A'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1080
    Top = 196
    object sdslp1aativopiscofinsCDLP1AATIVOPISCOFINS: TIntegerField
      FieldName = 'CDLP1AATIVOPISCOFINS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdslp1aativopiscofinsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdslp1aativopiscofinsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdslp1aativopiscofinsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdslp1aativopiscofinsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdslp1aativopiscofinsCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdslp1aativopiscofinsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdslp1aativopiscofinsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdslp1aativopiscofinsNUPARCELA: TIntegerField
      FieldName = 'NUPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdslp1aativopiscofinsVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdslp1aativopiscofinsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdslp1aativopiscofinsVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdslp1aativopiscofinsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdslp1aativopiscofinsVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdslp1aativopiscofinsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdslp1aativopiscofinsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdslp1aativopiscofinsCDATIVOPISCOFINS: TIntegerField
      FieldName = 'CDATIVOPISCOFINS'
      ProviderFlags = []
      Required = True
    end
    object sdslp1aativopiscofinsCDBCCALCULOCREDITO: TStringField
      FieldName = 'CDBCCALCULOCREDITO'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sdslp1aativopiscofinsCDPISCOFINSBEMATIVO: TStringField
      FieldName = 'CDPISCOFINSBEMATIVO'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sdslp1aativopiscofinsCDPISCOFINSBEMORIGEM: TIntegerField
      FieldName = 'CDPISCOFINSBEMORIGEM'
      ProviderFlags = []
    end
    object sdslp1aativopiscofinsCDPISCOFINSBEMUTILIZACAO: TIntegerField
      FieldName = 'CDPISCOFINSBEMUTILIZACAO'
      ProviderFlags = []
    end
    object sdslp1aativopiscofinsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = []
    end
    object sdslp1aativopiscofinsNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sdslp1aativopiscofinsNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sdslp1aativopiscofinsALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = []
    end
    object sdslp1aativopiscofinsALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = []
    end
    object sdslp1aativopiscofinsNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = []
    end
    object sdslp1aativopiscofinsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdslp1aativopiscofinsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdslp1aativopiscofinsVLENTRADA: TFMTBCDField
      FieldName = 'VLENTRADA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdslp1aativopiscofinsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdslp1aativopiscofins: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdslp1aativopiscofins
    Params = <>
    BeforePost = cdslp1aativopiscofinsBeforePost
    Left = 1080
    Top = 268
    object cdslp1aativopiscofinsCDLP1AATIVOPISCOFINS: TIntegerField
      FieldName = 'CDLP1AATIVOPISCOFINS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdslp1aativopiscofinsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aativopiscofinsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aativopiscofinsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aativopiscofinsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aativopiscofinsCDLP1A: TIntegerField
      FieldName = 'CDLP1A'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aativopiscofinsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aativopiscofinsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aativopiscofinsNUPARCELA: TIntegerField
      FieldName = 'NUPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdslp1aativopiscofinsVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdslp1aativopiscofinsALPISValidate
      Precision = 15
      Size = 2
    end
    object cdslp1aativopiscofinsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdslp1aativopiscofinsVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdslp1aativopiscofinsALCOFINSValidate
      Precision = 15
      Size = 2
    end
    object cdslp1aativopiscofinsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdslp1aativopiscofinsVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdslp1aativopiscofinsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdslp1aativopiscofinsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdslp1aativopiscofinsCDATIVOPISCOFINS: TIntegerField
      FieldName = 'CDATIVOPISCOFINS'
      ProviderFlags = []
      Required = True
    end
    object cdslp1aativopiscofinsCDBCCALCULOCREDITO: TStringField
      FieldName = 'CDBCCALCULOCREDITO'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdslp1aativopiscofinsCDPISCOFINSBEMATIVO: TStringField
      FieldName = 'CDPISCOFINSBEMATIVO'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdslp1aativopiscofinsCDPISCOFINSBEMORIGEM: TIntegerField
      FieldName = 'CDPISCOFINSBEMORIGEM'
      ProviderFlags = []
    end
    object cdslp1aativopiscofinsCDPISCOFINSBEMUTILIZACAO: TIntegerField
      FieldName = 'CDPISCOFINSBEMUTILIZACAO'
      ProviderFlags = []
    end
    object cdslp1aativopiscofinsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = []
    end
    object cdslp1aativopiscofinsNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdslp1aativopiscofinsNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdslp1aativopiscofinsALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = []
    end
    object cdslp1aativopiscofinsALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = []
    end
    object cdslp1aativopiscofinsNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = []
    end
    object cdslp1aativopiscofinsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdslp1aativopiscofinsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdslp1aativopiscofinsVLENTRADA: TFMTBCDField
      FieldName = 'VLENTRADA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdslp1aativopiscofinsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtslp1aativopiscofins: TDataSource
    DataSet = cdslp1aativopiscofins
    Left = 1080
    Top = 312
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end
      item
        Visible = True
        ItemName = 'dxBarSeparator5'
      end
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
        ItemName = 'dxBarSeparator6'
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
        ItemName = 'dxBarSeparator7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton32'
      end
      item
        Visible = True
        ItemName = 'dxBarButton33'
      end>
    UseOwnFont = False
    Left = 440
    Top = 84
  end
  object pumexportar: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSubItem6'
      end
      item
        Visible = True
        ItemName = 'dxBarSubItem4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton34'
      end>
    UseOwnFont = False
    Left = 552
    Top = 92
  end
end

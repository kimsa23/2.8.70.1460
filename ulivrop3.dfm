object frmlivroP3: TfrmlivroP3
  Left = 298
  Top = 161
  ClientHeight = 585
  ClientWidth = 1100
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
  object Label4: TLabel
    Left = 192
    Top = 4
    Width = 46
    Height = 15
    Caption = 'Quantidade'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 200
    Top = 12
    Width = 46
    Height = 15
    Caption = 'Quantidade'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 208
    Top = 20
    Width = 46
    Height = 15
    Caption = 'Quantidade'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label12: TLabel
    Left = 737
    Top = 5
    Width = 10
    Height = 15
    Caption = 'IPI'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label13: TLabel
    Left = 745
    Top = 13
    Width = 10
    Height = 15
    Caption = 'IPI'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label14: TLabel
    Left = 753
    Top = 21
    Width = 10
    Height = 15
    Caption = 'IPI'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label16: TLabel
    Left = 532
    Top = 4
    Width = 72
    Height = 15
    Caption = 'Saida Quantidade'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object pnl: TPanel
    Left = 0
    Top = 63
    Width = 1100
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
    Width = 1100
    Height = 42
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 4
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 82
      Top = 5
      Width = 53
      Height = 13
      Caption = 'Data In'#237'cio'
      Transparent = True
    end
    object Label19: TLabel
      Left = 179
      Top = 5
      Width = 48
      Height = 13
      Caption = 'Data Final'
      Transparent = True
    end
    object edtCodigo: TcxTextEdit
      Left = 6
      Top = 18
      TabOrder = 2
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 67
    end
    object lblinicio: TcxDBLabel
      Left = 84
      Top = 20
      DataBinding.DataField = 'DTINICIO'
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
      Width = 85
    end
    object lbldttermino: TcxDBLabel
      Left = 181
      Top = 21
      DataBinding.DataField = 'DTTERMINO'
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
      Width = 84
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 124
    Width = 1100
    Height = 461
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = tbsitlivro
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    OnChange = pgcChange
    ClientRectBottom = 461
    ClientRectRight = 1100
    ClientRectTop = 25
    object tbsitlivro: TcxTabSheet
      Caption = 'Movimenta'#231#227'o'
      ImageIndex = 0
      object grditlivro: TcxGrid
        Left = 0
        Top = 0
        Width = 1100
        Height = 436
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object grditlivroDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          DataController.DataSource = dtsitlivro
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object grditlivroDBTableView1CDPRODUTO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDPRODUTO'
          end
          object grditlivroDBTableView1NMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 280
          end
          object grditlivroDBTableView1DSESPECIE: TcxGridDBColumn
            Caption = 'Esp'#233'cie'
            DataBinding.FieldName = 'DSESPECIE'
          end
          object grditlivroDBTableView1DSSUBSERIE: TcxGridDBColumn
            Caption = 'Sub-S'#233'rie'
            DataBinding.FieldName = 'DSSUBSERIE'
          end
          object grditlivroDBTableView1NUDOCUMENTO: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'NUDOCUMENTO'
          end
          object grditlivroDBTableView1NULIVRO: TcxGridDBColumn
            Caption = 'Livro'
            DataBinding.FieldName = 'NULIVRO'
            Width = 35
          end
          object grditlivroDBTableView1NUFOLHA: TcxGridDBColumn
            Caption = 'Folha'
            DataBinding.FieldName = 'NUFOLHA'
            Width = 35
          end
          object grditlivroDBTableView1DTSAIDA: TcxGridDBColumn
            Caption = 'Sa'#237'da'
            DataBinding.FieldName = 'DTSAIDA'
          end
          object grditlivroDBTableView1NUDIA: TcxGridDBColumn
            Caption = 'Dia'
            DataBinding.FieldName = 'NUDIA'
            Width = 24
          end
          object grditlivroDBTableView1NUMES: TcxGridDBColumn
            Caption = 'M'#234's'
            DataBinding.FieldName = 'NUMES'
            Width = 30
          end
          object grditlivroDBTableView1DSCONTABIL: TcxGridDBColumn
            Caption = 'Cont'#225'bil'
            DataBinding.FieldName = 'DSCONTABIL'
          end
          object grditlivroDBTableView1NUFISCAL: TcxGridDBColumn
            Caption = 'Fiscal'
            DataBinding.FieldName = 'NUFISCAL'
          end
          object grditlivroDBTableView1TPENTSAI: TcxGridDBColumn
            Caption = 'E/S'
            DataBinding.FieldName = 'TPENTSAI'
          end
          object grditlivroDBTableView1QTITEMENTRADA: TcxGridDBColumn
            Caption = 'Qt Entrada'
            DataBinding.FieldName = 'QTITEMENTRADA'
          end
          object grditlivroDBTableView1VLBASEIPIENTRADA: TcxGridDBColumn
            Caption = 'Base IPI Entrada'
            DataBinding.FieldName = 'VLBASEIPIENTRADA'
          end
          object grditlivroDBTableView1VLIPIENTRADA: TcxGridDBColumn
            Caption = 'IPI Entrada'
            DataBinding.FieldName = 'VLIPIENTRADA'
          end
          object grditlivroDBTableView1QTESTOQUE: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'QTESTOQUE'
          end
          object grditlivroDBTableView1QTITEMSAIDA: TcxGridDBColumn
            Caption = 'Qt Sa'#237'da'
            DataBinding.FieldName = 'QTITEMSAIDA'
          end
          object grditlivroDBTableView1VLBASEIPISAIDA: TcxGridDBColumn
            Caption = 'Base IPI Sa'#237'da'
            DataBinding.FieldName = 'VLBASEIPISAIDA'
          end
          object grditlivroDBTableView1VLIPISAIDA: TcxGridDBColumn
            Caption = 'IPI Sa'#237'da'
            DataBinding.FieldName = 'VLIPISAIDA'
          end
          object grditlivroDBTableView1QTENTPROPRIO: TcxGridDBColumn
            Caption = 'Entrada Pr'#243'prio'
            DataBinding.FieldName = 'QTENTPROPRIO'
          end
          object grditlivroDBTableView1QTENTOUTRO: TcxGridDBColumn
            Caption = 'Entrada Outro'
            DataBinding.FieldName = 'QTENTOUTRO'
          end
          object grditlivroDBTableView1QTSAIPROPRIO: TcxGridDBColumn
            Caption = 'Sa'#237'da Pr'#243'prio'
            DataBinding.FieldName = 'QTSAIPROPRIO'
          end
          object grditlivroDBTableView1QTSAIOUTRO: TcxGridDBColumn
            Caption = 'Sa'#237'da Outro'
            DataBinding.FieldName = 'QTSAIOUTRO'
          end
          object grditlivroDBTableView1OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'OBSERVACAO'
            Width = 241
          end
        end
        object grditlivroDBBandedTableView1: TcxGridDBBandedTableView
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
          DataController.DataSource = dtsitlivro
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTENTOUTRO'
              Column = grditlivroDBBandedTableView1QTENTOUTRO
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTENTPROPRIO'
              Column = grditlivroDBBandedTableView1QTENTPROPRIO
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTITEMENTRADA'
              Column = grditlivroDBBandedTableView1QTITEMENTRADA
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTITEMSAIDA'
              Column = grditlivroDBBandedTableView1QTITEMSAIDA
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTSAIOUTRO'
              Column = grditlivroDBBandedTableView1QTSAIOUTRO
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTSAIPROPRIO'
              Column = grditlivroDBBandedTableView1QTSAIPROPRIO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEIPIENTRADA'
              Column = grditlivroDBBandedTableView1VLBASEIPIENTRADA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEIPISAIDA'
              Column = grditlivroDBBandedTableView1VLBASEIPISAIDA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPIENTRADA'
              Column = grditlivroDBBandedTableView1VLIPIENTRADA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPISAIDA'
              Column = grditlivroDBBandedTableView1VLIPISAIDA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Produto'
              Width = 300
            end
            item
              Caption = 'Quantidade'
            end
            item
              Caption = 'Documenta'#231#227'o'
            end
            item
              Caption = 'IPI'
            end>
          object grditlivroDBBandedTableView1CDPRODUTO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDPRODUTO'
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1DSESPECIE: TcxGridDBBandedColumn
            Caption = 'Esp'
            DataBinding.FieldName = 'DSESPECIE'
            Width = 25
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1DSSUBSERIE: TcxGridDBBandedColumn
            Caption = 'Sub'
            DataBinding.FieldName = 'DSSUBSERIE'
            Width = 27
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1NUDOCUMENTO: TcxGridDBBandedColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'NUDOCUMENTO'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1NULIVRO: TcxGridDBBandedColumn
            Caption = 'Livro'
            DataBinding.FieldName = 'NULIVRO'
            Width = 30
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1NUFOLHA: TcxGridDBBandedColumn
            Caption = 'Folha'
            DataBinding.FieldName = 'NUFOLHA'
            Width = 33
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1DTSAIDA: TcxGridDBBandedColumn
            Caption = 'Sa'#237'da'
            DataBinding.FieldName = 'DTSAIDA'
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1NUDIA: TcxGridDBBandedColumn
            Caption = 'Dia'
            DataBinding.FieldName = 'NUDIA'
            Width = 29
            Position.BandIndex = 2
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1NUMES: TcxGridDBBandedColumn
            Caption = 'M'#234's'
            DataBinding.FieldName = 'NUMES'
            Width = 36
            Position.BandIndex = 2
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1DSCONTABIL: TcxGridDBBandedColumn
            Caption = 'Cont'#225'bil'
            DataBinding.FieldName = 'DSCONTABIL'
            Position.BandIndex = 2
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1NUFISCAL: TcxGridDBBandedColumn
            Caption = 'Fiscal'
            DataBinding.FieldName = 'NUFISCAL'
            Width = 35
            Position.BandIndex = 2
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1TPENTSAI: TcxGridDBBandedColumn
            Caption = 'E/S'
            DataBinding.FieldName = 'TPENTSAI'
            Width = 25
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1QTITEMENTRADA: TcxGridDBBandedColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'QTITEMENTRADA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1VLBASEIPIENTRADA: TcxGridDBBandedColumn
            Caption = 'Base Entrada'
            DataBinding.FieldName = 'VLBASEIPIENTRADA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1VLIPIENTRADA: TcxGridDBBandedColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'VLIPIENTRADA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1QTESTOQUE: TcxGridDBBandedColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'QTESTOQUE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1OBSERVACAO: TcxGridDBBandedColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'OBSERVACAO'
            Width = 191
            Position.BandIndex = 2
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1QTITEMSAIDA: TcxGridDBBandedColumn
            Caption = 'Sa'#237'da'
            DataBinding.FieldName = 'QTITEMSAIDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1VLBASEIPISAIDA: TcxGridDBBandedColumn
            Caption = 'Base Sa'#237'da'
            DataBinding.FieldName = 'VLBASEIPISAIDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1VLIPISAIDA: TcxGridDBBandedColumn
            Caption = 'Sa'#237'da'
            DataBinding.FieldName = 'VLIPISAIDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1QTENTPROPRIO: TcxGridDBBandedColumn
            Caption = 'Ent Pr'#243'prio'
            DataBinding.FieldName = 'QTENTPROPRIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1QTENTOUTRO: TcxGridDBBandedColumn
            Caption = 'Ent Outro'
            DataBinding.FieldName = 'QTENTOUTRO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1QTSAIPROPRIO: TcxGridDBBandedColumn
            Caption = 'Sa'#237' Pr'#243'prio'
            DataBinding.FieldName = 'QTSAIPROPRIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1QTSAIOUTRO: TcxGridDBBandedColumn
            Caption = 'Sa'#237' Outro'
            DataBinding.FieldName = 'QTSAIOUTRO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grditlivroDBBandedTableView1NMPRODUTO: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 217
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object grditlivroLevel1: TcxGridLevel
          GridView = grditlivroDBBandedTableView1
        end
      end
    end
    object tbslivroproduto: TcxTabSheet
      Caption = 'Produto'
      ImageIndex = 24
      object spl1: TcxSplitter
        Left = 0
        Top = 0
        Width = 1100
        Height = 8
        AlignSplitter = salTop
        Control = grdlivroproduto
      end
      object grdlivroproduto: TcxGrid
        Left = 0
        Top = 8
        Width = 1100
        Height = 428
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object grdlivroprodutoDBBandedTableView1: TcxGridDBBandedTableView
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
          DataController.DataSource = dtslivroproduto
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CDPRODUTO'
              Column = grdlivroprodutoDBBandedTableView1CDPRODUTO
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTENTOUTRO'
              Column = grdlivroprodutoDBBandedTableView1QTENTOUTRO
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTENTPROPRIO'
              Column = grdlivroprodutoDBBandedTableView1QTENTPROPRIO
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTITEMENTRADA'
              Column = grdlivroprodutoDBBandedTableView1QTITEMENTRADA
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTITEMSAIDA'
              Column = grdlivroprodutoDBBandedTableView1QTITEMSAIDA
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTSAIOUTRO'
              Column = grdlivroprodutoDBBandedTableView1QTSAIOUTRO
            end
            item
              Format = ' ,0.000;- ,0.000'
              Kind = skSum
              FieldName = 'QTSAIPROPRIO'
              Column = grdlivroprodutoDBBandedTableView1QTSAIPROPRIO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEIPIENTRADA'
              Column = grdlivroprodutoDBBandedTableView1VLBASEIPIENTRADA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEIPIENTRADA'
              Column = grdlivroprodutoDBBandedTableView1VLBASEIPISAIDA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPIENTRADA'
              Column = grdlivroprodutoDBBandedTableView1VLIPIENTRADA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPISAIDA'
              Column = grdlivroprodutoDBBandedTableView1VLIPISAIDA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Produto'
              Width = 286
            end
            item
              Caption = 'Estoque'
            end
            item
              Caption = 'IPI'
            end>
          object grdlivroprodutoDBBandedTableView1CDPRODUTO: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDPRODUTO'
            Width = 52
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1NMPRODUTO: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 234
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1QTESTOQUE: TcxGridDBBandedColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'QTESTOQUE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1QTITEMENTRADA: TcxGridDBBandedColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'QTITEMENTRADA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1VLBASEIPIENTRADA: TcxGridDBBandedColumn
            Caption = 'Base Entrada'
            DataBinding.FieldName = 'VLBASEIPIENTRADA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1VLIPIENTRADA: TcxGridDBBandedColumn
            Caption = 'Valor Entrada'
            DataBinding.FieldName = 'VLIPIENTRADA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1QTITEMSAIDA: TcxGridDBBandedColumn
            Caption = 'Sa'#237'da'
            DataBinding.FieldName = 'QTITEMSAIDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1VLBASEIPISAIDA: TcxGridDBBandedColumn
            Caption = 'Base Sa'#237'da'
            DataBinding.FieldName = 'VLBASEIPISAIDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1VLIPISAIDA: TcxGridDBBandedColumn
            Caption = 'Valor Sa'#237'da'
            DataBinding.FieldName = 'VLIPISAIDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1QTENTPROPRIO: TcxGridDBBandedColumn
            Caption = 'Ent Pr'#243'prio'
            DataBinding.FieldName = 'QTENTPROPRIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1QTENTOUTRO: TcxGridDBBandedColumn
            Caption = 'Ent Outro'
            DataBinding.FieldName = 'QTENTOUTRO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1QTSAIPROPRIO: TcxGridDBBandedColumn
            Caption = 'Sa'#237' Pr'#243'prio'
            DataBinding.FieldName = 'QTSAIPROPRIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdlivroprodutoDBBandedTableView1QTSAIOUTRO: TcxGridDBBandedColumn
            Caption = 'Sa'#237' Outro'
            DataBinding.FieldName = 'QTSAIOUTRO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object grdlivroprodutoLevel1: TcxGridLevel
          GridView = grdlivroprodutoDBBandedTableView1
        end
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 72
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
    object actAbrirProduto: TAction
      Caption = 'Abri rProduto'
      Hint = 'produto'
      OnExecute = actAbrirProdutoExecute
    end
    object actGerarLivro: TAction
      Caption = 'GerarLivro'
      OnExecute = actGerarLivroExecute
    end
    object actimprimirlivro: TAction
      Caption = 'Livro'
      OnExecute = actimprimirlivroExecute
    end
    object actimprimirtermoabertura: TAction
      Caption = 'Termo Abertura'
      OnExecute = actimprimirtermoaberturaExecute
    end
    object actimprimirtermofechamento: TAction
      Caption = 'Termo Fechamento'
      OnExecute = actimprimirtermofechamentoExecute
    end
    object actimprimirlivroImpostoNota: TAction
      Caption = 'IPI (Nota)'
      OnExecute = actimprimirlivroImpostoNotaExecute
    end
    object actimprimirlivroImpostoMes: TAction
      Caption = 'IPI (M'#234's)'
      OnExecute = actimprimirlivroImpostoMesExecute
    end
    object actimprimirlivroResumoMovimentacao: TAction
      Caption = 'Resumo de Movimenta'#231#227'o'
      OnExecute = actimprimirlivroResumoMovimentacaoExecute
    end
    object actimprimirlivroResumoMovimentacaoMP: TAction
      Caption = 'Resumo de Movimenta'#231#227'o (Mat'#233'ria-Prima)'
      OnExecute = actimprimirlivroResumoMovimentacaoMPExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actGerarEstoqueDiario: TAction
      Caption = 'Gerar Estoque Di'#225'rio'
      OnExecute = actGerarEstoqueDiarioExecute
    end
    object actprocessarporproduto: TAction
      Caption = 'Reprocessar produto'
      Hint = 'Reprocessar por produto'
      ImageIndex = 75
      OnExecute = actprocessarporprodutoExecute
    end
  end
  object pumimprimir: TPopupMenu
    Left = 44
    object mnilivro: TMenuItem
      Action = actimprimirlivro
    end
    object TermoDeEncerramento: TMenuItem
      Action = actimprimirtermoabertura
    end
    object ermoFechamento1: TMenuItem
      Action = actimprimirtermofechamento
    end
    object Imprimir2: TMenuItem
      Action = actimprimirlivroImpostoMes
    end
    object IPINota1: TMenuItem
      Action = actimprimirlivroImpostoNota
    end
    object ermoFechamento3: TMenuItem
      Action = actimprimirlivroResumoMovimentacao
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
    Left = 96
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
      Caption = 'livro'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 290
      FloatTop = 192
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
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxbrsbtm1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
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
      FloatLeft = 209
      FloatTop = 45
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
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxbrsbtm1'
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
    object dxbrlrgbtn1: TdxBarLargeButton
      Caption = 'Reprocessar'
      Category = 0
      Enabled = False
      Hint = 'Processar por bitola'
      Visible = ivAlways
      LargeImageIndex = 75
    end
    object dxBarSubItem1: TdxBarSubItem
      Action = actImprimir
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtn3'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtn5'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtn6'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtn7'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtn8'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtn9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
    end
    object dxbrlrgbtn3: TdxBarLargeButton
      Action = actimprimirlivro
      Category = 0
    end
    object dxbrlrgbtn5: TdxBarLargeButton
      Action = actimprimirtermoabertura
      Category = 0
    end
    object dxbrlrgbtn6: TdxBarLargeButton
      Action = actimprimirtermofechamento
      Category = 0
    end
    object dxbrlrgbtn7: TdxBarLargeButton
      Action = actimprimirlivroImpostoMes
      Category = 0
    end
    object dxbrlrgbtn8: TdxBarLargeButton
      Action = actimprimirlivroImpostoNota
      Category = 0
    end
    object dxbrlrgbtn9: TdxBarLargeButton
      Action = actimprimirlivroResumoMovimentacao
      Category = 0
    end
    object dxbrlrgbtn10: TdxBarLargeButton
      Action = actImprimir
      Category = 0
    end
    object dxbrlrgbtn11: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      GlyphLayout = glLeft
    end
    object dxbrsbtm1: TdxBarSubItem
      Caption = 'Op'#231#245'es'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtn1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actGerarEstoqueDiario
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actimprimirlivroResumoMovimentacaoMP
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actprocessarporproduto
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actfechar
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM LIVRO WHERE CDEMPRESA=:CDEMPRESA AND CDLIVRO=:CDLI' +
      'VRO'
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
        Name = 'CDLIVRO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 124
    object sdsCDLIVRO: TIntegerField
      FieldName = 'CDLIVRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
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
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poCascadeDeletes]
    Left = 152
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    Left = 180
    object cdsCDLIVRO: TIntegerField
      FieldName = 'CDLIVRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssdsitlivro: TDataSetField
      FieldName = 'sdsitlivro'
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
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts: TDataSource
    DataSet = cds
    Left = 208
  end
  object sdsitlivro: TSQLDataSet
    CommandText = 
      'SELECT I.*'#13#10',P.NMPRODUTO '#13#10'FROM ITLIVRO I '#13#10'LEFT JOIN PRODUTO P ' +
      'ON P.CDPRODUTO=I.CDPRODUTO AND I.CDEMPRESA=P.CDEMPRESA'#13#10'WHERE I.' +
      'CDEMPRESA=:CDEMPRESA AND I.CDLIVRO=:CDLIVRO '#13#10'ORDER BY I.CDPRODU' +
      'TO,I.CDLIVRO,I.CDITLIVRO'
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
        Name = 'CDLIVRO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 236
    object sdsitlivroCDLIVRO: TIntegerField
      FieldName = 'CDLIVRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlivroCDITLIVRO: TIntegerField
      FieldName = 'CDITLIVRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitlivroCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlivroDSESPECIE: TStringField
      FieldName = 'DSESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsitlivroDSSUBSERIE: TStringField
      FieldName = 'DSSUBSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsitlivroNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroNULIVRO: TIntegerField
      FieldName = 'NULIVRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroNUFOLHA: TIntegerField
      FieldName = 'NUFOLHA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroNUDIA: TIntegerField
      FieldName = 'NUDIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroNUMES: TIntegerField
      FieldName = 'NUMES'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroDSCONTABIL: TStringField
      FieldName = 'DSCONTABIL'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdsitlivroNUFISCAL: TIntegerField
      FieldName = 'NUFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroTPENTSAI: TStringField
      FieldName = 'TPENTSAI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitlivroQTITEMENTRADA: TFloatField
      FieldName = 'QTITEMENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroVLBASEIPIENTRADA: TFMTBCDField
      FieldName = 'VLBASEIPIENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitlivroVLIPIENTRADA: TFMTBCDField
      FieldName = 'VLIPIENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitlivroQTESTOQUE: TFloatField
      FieldName = 'QTESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitlivroQTITEMSAIDA: TFloatField
      FieldName = 'QTITEMSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroVLBASEIPISAIDA: TFMTBCDField
      FieldName = 'VLBASEIPISAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitlivroVLIPISAIDA: TFMTBCDField
      FieldName = 'VLIPISAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitlivroQTENTPROPRIO: TFloatField
      FieldName = 'QTENTPROPRIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroQTENTOUTRO: TFloatField
      FieldName = 'QTENTOUTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroQTSAIPROPRIO: TFloatField
      FieldName = 'QTSAIPROPRIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroQTSAIOUTRO: TFloatField
      FieldName = 'QTSAIOUTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitlivroCDITSAIDA: TIntegerField
      FieldName = 'CDITSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlivroCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlivroCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlivroCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlivroQTESTOQUEA: TFloatField
      FieldName = 'QTESTOQUEA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlivroTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitlivroCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroCDITMOVTO: TIntegerField
      FieldName = 'CDITMOVTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroCDREINSPECAO: TIntegerField
      FieldName = 'CDREINSPECAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitlivroCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitlivro: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitlivro
    FetchOnDemand = False
    Params = <>
    BeforePost = cdsBeforePost
    Left = 264
    object cdsitlivroCDLIVRO: TIntegerField
      FieldName = 'CDLIVRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlivroCDITLIVRO: TIntegerField
      FieldName = 'CDITLIVRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitlivroCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlivroDSESPECIE: TStringField
      FieldName = 'DSESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsitlivroDSSUBSERIE: TStringField
      FieldName = 'DSSUBSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsitlivroNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroNULIVRO: TIntegerField
      FieldName = 'NULIVRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroNUFOLHA: TIntegerField
      FieldName = 'NUFOLHA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroNUDIA: TIntegerField
      FieldName = 'NUDIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroNUMES: TIntegerField
      FieldName = 'NUMES'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroDSCONTABIL: TStringField
      FieldName = 'DSCONTABIL'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsitlivroNUFISCAL: TIntegerField
      FieldName = 'NUFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroTPENTSAI: TStringField
      FieldName = 'TPENTSAI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitlivroQTITEMENTRADA: TFloatField
      FieldName = 'QTITEMENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroVLBASEIPIENTRADA: TFMTBCDField
      FieldName = 'VLBASEIPIENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitlivroVLIPIENTRADA: TFMTBCDField
      FieldName = 'VLIPIENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitlivroQTESTOQUE: TFloatField
      FieldName = 'QTESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsitlivroQTITEMSAIDA: TFloatField
      FieldName = 'QTITEMSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroVLBASEIPISAIDA: TFMTBCDField
      FieldName = 'VLBASEIPISAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitlivroVLIPISAIDA: TFMTBCDField
      FieldName = 'VLIPISAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitlivroQTENTPROPRIO: TFloatField
      FieldName = 'QTENTPROPRIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroQTENTOUTRO: TFloatField
      FieldName = 'QTENTOUTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroQTSAIPROPRIO: TFloatField
      FieldName = 'QTSAIPROPRIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroQTSAIOUTRO: TFloatField
      FieldName = 'QTSAIOUTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitlivroCDITSAIDA: TIntegerField
      FieldName = 'CDITSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlivroCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlivroCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlivroCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlivroQTESTOQUEA: TFloatField
      FieldName = 'QTESTOQUEA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlivroTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitlivroCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroCDITMOVTO: TIntegerField
      FieldName = 'CDITMOVTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroCDREINSPECAO: TIntegerField
      FieldName = 'CDREINSPECAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitlivroCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitlivro: TDataSource
    DataSet = cdsitlivro
    Left = 292
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 207
    Top = 28
  end
  object sdslivroproduto: TSQLDataSet
    CommandText = 
      'SELECT L.CDEMPRESA,L.CDLIVRO'#13#10',L.CDPRODUTO'#13#10',P.NMPRODUTO'#13#10',L.QTE' +
      'STOQUE'#13#10',L.QTITEMENTRADA'#13#10',L.VLBASEIPIENTRADA'#13#10',L.VLIPIENTRADA'#13#10 +
      ',L.QTITEMSAIDA'#13#10',L.VLBASEIPISAIDA'#13#10',L.VLIPISAIDA'#13#10',L.QTENTPROPRI' +
      'O'#13#10',L.QTENTOUTRO'#13#10',L.QTSAIPROPRIO'#13#10',L.QTSAIOUTRO '#13#10'FROM LIVROPRO' +
      'DUTO L '#13#10'INNER JOIN PRODUTO P ON P.CDPRODUTO=L.CDPRODUTO AND P.C' +
      'DEMPRESA=L.CDEMPRESA'#13#10'WHERE L.CDEMPRESA=:CDEMPRESA AND L.CDLIVRO' +
      '=:CDLIVRO'
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
        Name = 'CDLIVRO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 532
    Top = 192
    object sdslivroprodutoCDLIVRO: TIntegerField
      FieldName = 'CDLIVRO'
      Required = True
    end
    object sdslivroprodutoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      Required = True
    end
    object sdslivroprodutoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      Required = True
      Size = 250
    end
    object sdslivroprodutoQTESTOQUE: TFloatField
      FieldName = 'QTESTOQUE'
      Required = True
    end
    object sdslivroprodutoQTITEMENTRADA: TFloatField
      FieldName = 'QTITEMENTRADA'
    end
    object sdslivroprodutoVLBASEIPIENTRADA: TFMTBCDField
      FieldName = 'VLBASEIPIENTRADA'
      Precision = 15
      Size = 2
    end
    object sdslivroprodutoVLIPIENTRADA: TFMTBCDField
      FieldName = 'VLIPIENTRADA'
      Precision = 15
      Size = 2
    end
    object sdslivroprodutoQTITEMSAIDA: TFloatField
      FieldName = 'QTITEMSAIDA'
    end
    object sdslivroprodutoVLBASEIPISAIDA: TFMTBCDField
      FieldName = 'VLBASEIPISAIDA'
      Precision = 15
      Size = 2
    end
    object sdslivroprodutoVLIPISAIDA: TFMTBCDField
      FieldName = 'VLIPISAIDA'
      Precision = 15
      Size = 2
    end
    object sdslivroprodutoQTENTPROPRIO: TFloatField
      FieldName = 'QTENTPROPRIO'
    end
    object sdslivroprodutoQTENTOUTRO: TFloatField
      FieldName = 'QTENTOUTRO'
    end
    object sdslivroprodutoQTSAIPROPRIO: TFloatField
      FieldName = 'QTSAIPROPRIO'
    end
    object sdslivroprodutoQTSAIOUTRO: TFloatField
      FieldName = 'QTSAIOUTRO'
    end
    object sdslivroprodutoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdslivroproduto: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'dsplivroproduto'
    Left = 620
    Top = 192
    object cdslivroprodutoCDLIVRO: TIntegerField
      FieldName = 'CDLIVRO'
      Required = True
    end
    object cdslivroprodutoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      Required = True
    end
    object cdslivroprodutoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      Required = True
      Size = 250
    end
    object cdslivroprodutoQTESTOQUE: TFloatField
      FieldName = 'QTESTOQUE'
      Required = True
    end
    object cdslivroprodutoQTITEMENTRADA: TFloatField
      FieldName = 'QTITEMENTRADA'
    end
    object cdslivroprodutoVLBASEIPIENTRADA: TFMTBCDField
      FieldName = 'VLBASEIPIENTRADA'
      Precision = 15
      Size = 2
    end
    object cdslivroprodutoVLIPIENTRADA: TFMTBCDField
      FieldName = 'VLIPIENTRADA'
      Precision = 15
      Size = 2
    end
    object cdslivroprodutoQTITEMSAIDA: TFloatField
      FieldName = 'QTITEMSAIDA'
    end
    object cdslivroprodutoVLBASEIPISAIDA: TFMTBCDField
      FieldName = 'VLBASEIPISAIDA'
      Precision = 15
      Size = 2
    end
    object cdslivroprodutoVLIPISAIDA: TFMTBCDField
      FieldName = 'VLIPISAIDA'
      Precision = 15
      Size = 2
    end
    object cdslivroprodutoQTENTPROPRIO: TFloatField
      FieldName = 'QTENTPROPRIO'
    end
    object cdslivroprodutoQTENTOUTRO: TFloatField
      FieldName = 'QTENTOUTRO'
    end
    object cdslivroprodutoQTSAIPROPRIO: TFloatField
      FieldName = 'QTSAIPROPRIO'
    end
    object cdslivroprodutoQTSAIOUTRO: TFloatField
      FieldName = 'QTSAIOUTRO'
    end
    object cdslivroprodutoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtslivroproduto: TDataSource
    DataSet = cdslivroproduto
    Left = 706
  end
end

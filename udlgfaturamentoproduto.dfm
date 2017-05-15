object frmdlgfaturamentoproduto: Tfrmdlgfaturamentoproduto
  Left = 318
  Top = 136
  BorderStyle = bsDialog
  Caption = 'Gerar Produto'
  ClientHeight = 548
  ClientWidth = 675
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblprodutoorigem: TLabel
    Left = 6
    Top = 33
    Width = 75
    Height = 13
    Caption = 'Produto Origem'
  end
  object lblprodutodestino: TLabel
    Left = 6
    Top = 54
    Width = 77
    Height = 13
    Caption = 'Produto Destino'
  end
  object lblnmprodutoorigem: TLabel
    Left = 208
    Top = 29
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblnmprodutodestino: TLabel
    Left = 208
    Top = 50
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblfaturamento: TLabel
    Left = 6
    Top = 11
    Width = 62
    Height = 13
    Caption = 'Faturamento'
  end
  object OKBtn: TButton
    Left = 260
    Top = 520
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 5
  end
  object CancelBtn: TButton
    Left = 340
    Top = 520
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 6
  end
  object edtcdprodutoorigem: TcxButtonEdit
    Left = 85
    Top = 25
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = edtcdprodutoorigemPropertiesButtonClick
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    OnExit = edtcdprodutoorigemExit
    OnKeyDown = edtcdprodutoorigemKeyDown
    Width = 121
  end
  object edtcdprodutodestino: TcxButtonEdit
    Left = 85
    Top = 48
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = edtcdprodutodestinoPropertiesButtonClick
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    OnExit = edtcdprodutodestinoExit
    OnKeyDown = edtcdprodutodestinoKeyDown
    Width = 121
  end
  object edtcdfaturamento: TcxButtonEdit
    Left = 85
    Top = 3
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = edtcdfaturamentoPropertiesButtonClick
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    OnExit = edtcdfaturamentoExit
    OnKeyDown = edtcdfaturamentoKeyDown
    Width = 121
  end
  object grd: TcxGrid
    Left = 8
    Top = 80
    Width = 657
    Height = 433
    TabOrder = 4
    LookAndFeel.NativeStyle = False
    object grdDBTableView1: TcxGridDBTableView
      OnKeyDown = grdDBTableView1KeyDown
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
      Navigator.Visible = True
      DataController.DataSource = dts1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'vlunitario'
          Column = grdDBTableView1vlunitario
        end
        item
          Kind = skCount
          FieldName = 'cdcliente'
          Column = grdDBTableView1cdcliente
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdDBTableView1cdcliente: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'cdcliente'
      end
      object grdDBTableView1rzsocial: TcxGridDBColumn
        Caption = 'Nome Fantasia'
        DataBinding.FieldName = 'rzsocial'
        Width = 401
      end
      object grdDBTableView1qtitem: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'qtitem'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object grdDBTableView1vlunitario: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'vlunitario'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = grdDBTableView1
    end
  end
  object btnexibir: TcxButton
    Left = 528
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Exibir'
    TabOrder = 3
    OnClick = btnexibirClick
  end
  object cds1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cdcliente'
        DataType = ftLargeint
        Precision = 32
      end
      item
        Name = 'rzsocial'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'qtitem'
        DataType = ftFloat
      end
      item
        Name = 'vlunitario'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 512
    Top = 8
    object cds1cdcliente: TFMTBCDField
      FieldName = 'cdcliente'
    end
    object cds1rzsocial: TStringField
      FieldName = 'rzsocial'
      Size = 100
    end
    object cds1qtitem: TFloatField
      FieldName = 'qtitem'
    end
    object cds1vlunitario: TCurrencyField
      FieldName = 'vlunitario'
    end
  end
  object dts1: TDataSource
    DataSet = cds1
    Left = 544
    Top = 8
  end
end

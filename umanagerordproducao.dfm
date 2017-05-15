object frmmanagerordproducao: Tfrmmanagerordproducao
  Left = 387
  Top = 198
  ClientHeight = 538
  ClientWidth = 1369
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
  object cxSplitter1: TcxSplitter
    Left = 186
    Top = 42
    Width = 8
    Height = 496
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AutoSnap = True
    Control = nvb
  end
  object nvb: TdxNavBar
    Left = 0
    Top = 42
    Width = 186
    Height = 496
    Align = alLeft
    ActiveGroupIndex = 2
    TabOrder = 1
    View = 13
    OnActiveGroupChanged = nvbActiveGroupChanged
    object nvbstorcamento: TdxNavBarGroup
      Caption = 'Or'#231'amento'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object nvbstordproducao: TdxNavBarGroup
      Caption = 'Ordem Produ'#231#227'o'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object nvbapontamento: TdxNavBarGroup
      Caption = 'Apontamento'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object nvbstorcamentoControl: TdxNavBarGroupControl
      Left = 1
      Top = 26
      Width = 184
      Height = 494
      Caption = 'nvbstorcamentoControl'
      TabOrder = 0
      GroupIndex = 0
      OriginalHeight = 452
      object trvstorcamento: TcxTreeView
        Left = 0
        Top = 0
        Width = 184
        Height = 494
        Align = alClient
        TabOrder = 0
        OnDragDrop = trvstorcamentoDragDrop
        OnDragOver = trvstorcamentoDragOver
        ReadOnly = True
        RowSelect = True
        OnChange = trvstorcamentoChange
      end
    end
    object nvbstordproducaoControl: TdxNavBarGroupControl
      Left = 1
      Top = 26
      Width = 184
      Height = 522
      Caption = 'nvbstordproducaoControl'
      TabOrder = 2
      GroupIndex = 1
      OriginalHeight = 41
      object trvstordproducao: TcxTreeView
        Left = 0
        Top = 0
        Width = 184
        Height = 522
        Align = alClient
        TabOrder = 0
        OnDragDrop = trvstordproducaoDragDrop
        OnDragOver = trvstordproducaoDragOver
        ReadOnly = True
        RowSelect = True
        OnChange = trvstordproducaoChange
      end
    end
    object nvbapontamentoControl: TdxNavBarGroupControl
      Left = 1
      Top = 26
      Width = 184
      Height = 367
      Caption = 'nvbapontamentoControl'
      TabOrder = 1
      GroupIndex = 2
      OriginalHeight = 41
      object trvAPONTAMENTO: TcxTreeView
        Left = 0
        Top = 0
        Width = 184
        Height = 367
        Align = alClient
        TabOrder = 0
        OnClick = trvAPONTAMENTOClick
        ReadOnly = True
      end
    end
  end
  object ntb: TNotebook
    Left = 194
    Top = 42
    Width = 1175
    Height = 496
    Align = alClient
    TabOrder = 6
    object TPage
      Left = 0
      Top = 0
      Caption = 'grade'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pgc: TcxPageControl
        Left = 0
        Top = 219
        Width = 1175
        Height = 277
        Align = alBottom
        TabOrder = 0
        Visible = False
        Properties.ActivePage = tbsproduto
        Properties.CustomButtons.Buttons = <>
        Properties.Images = dtmmain.imlMain
        Properties.NavigatorPosition = npLeftTop
        ClientRectBottom = 273
        ClientRectLeft = 4
        ClientRectRight = 1171
        ClientRectTop = 25
        object tbsproduto: TcxTabSheet
          Caption = 'Produto'
          ImageIndex = 24
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grddetail1: TcxGrid
            Left = 0
            Top = 0
            Width = 1167
            Height = 248
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object grddetail1DBBandedTableView1: TcxGridDBBandedTableView
              OnKeyDown = ExportarGradeExcel
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.PriorPage.Enabled = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.NextPage.Enabled = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Insert.Enabled = False
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Append.Enabled = False
              Navigator.Buttons.Append.Visible = False
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
              DataController.DataSource = dtsdetail
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'QTAPROVADO'
                  Column = grddetail1DBBandedTableView1QTATENDIDA
                end
                item
                  Kind = skSum
                  FieldName = 'QTITEM'
                  Column = grddetail1DBBandedTableView1QTITEM
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLDESCONTO'
                  Column = grddetail1DBBandedTableView1VLDESCONTO
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLFRETE'
                  Column = grddetail1DBBandedTableView1VLFRETE
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLICMSSUBTRIB'
                  Column = grddetail1DBBandedTableView1VLICMSSUBTRIB
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLIPI'
                  Column = grddetail1DBBandedTableView1VLIPI
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLTOTAL'
                  Column = grddetail1DBBandedTableView1VLTOTAL
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLTOTALCIPI'
                  Column = grddetail1DBBandedTableView1VLTOTALCIPI
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLICMS'
                  Column = grddetail1DBBandedTableView1VLICMS
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.NavigatorHints = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsData.Appending = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Bands = <
                item
                  Caption = 'Produto'
                  Width = 476
                end
                item
                  Caption = 'Cota'#231#227'o'
                end
                item
                  Caption = 'Madeira'
                end
                item
                  Caption = 'Desenho'
                  Width = 254
                end
                item
                  Caption = 'Quantidade'
                  Width = 100
                end
                item
                  Caption = 'Datas'
                end
                item
                  Caption = 'Valor'
                  Width = 320
                end
                item
                  Caption = 'ICMS'
                end
                item
                  Caption = 'ICMS Sub Trib'
                  Width = 155
                end
                item
                  Caption = 'IPI'
                end
                item
                  Caption = 'Status'
                  Visible = False
                  Width = 105
                end>
              object grddetail1DBBandedTableView1CDDIGITADO: TcxGridDBBandedColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CDDIGITADO'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.CharCase = ecUpperCase
                Styles.Content = dtmmain.cxStyle1
                Width = 120
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1NMPRODUTO: TcxGridDBBandedColumn
                Caption = 'Nome'
                DataBinding.FieldName = 'NMPRODUTO'
                Options.Editing = False
                Width = 500
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1DTPRVENTREGA: TcxGridDBBandedColumn
                Caption = 'Prev Entrega'
                DataBinding.FieldName = 'DTPRVENTREGA'
                Width = 48
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1DSFORMULA: TcxGridDBBandedColumn
                Caption = 'F'#243'rmula'
                DataBinding.FieldName = 'DSFORMULA'
                Width = 141
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1DSOBSERVACAO: TcxGridDBBandedColumn
                Caption = 'Observa'#231#227'o'
                DataBinding.FieldName = 'DSOBSERVACAO'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekMemo
                Properties.BlobPaintStyle = bpsText
                Width = 82
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1DSDESENHO: TcxGridDBBandedColumn
                Caption = 'Desenho'
                DataBinding.FieldName = 'DSDESENHO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 120
                Position.BandIndex = 3
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1DSDESENHOPOSICAO: TcxGridDBBandedColumn
                Caption = 'Posi'#231#227'o'
                DataBinding.FieldName = 'DSDESENHOPOSICAO'
                Width = 54
                Position.BandIndex = 3
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1DSDESENHOREVISAO: TcxGridDBBandedColumn
                Caption = 'Revis'#227'o'
                DataBinding.FieldName = 'DSDESENHOREVISAO'
                Width = 64
                Position.BandIndex = 3
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1NUCOTACAO: TcxGridDBBandedColumn
                Caption = 'N'#250'mero'
                DataBinding.FieldName = 'NUCOTACAO'
                Width = 86
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1NUITEM: TcxGridDBBandedColumn
                Caption = 'N'#186' '#205'tem'
                DataBinding.FieldName = 'NUITEM'
                Width = 53
                Position.BandIndex = 1
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1CDTPGRADEVALOR: TcxGridDBBandedColumn
                Caption = 'Grade Valor'
                DataBinding.FieldName = 'CDTPGRADEVALOR'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDTPGRADEVALOR'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMTPGRADEVALOR'
                  end>
                Properties.ListOptions.ShowHeader = False
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1CDforma: TcxGridDBBandedColumn
                Caption = 'forma'
                DataBinding.FieldName = 'CDforma'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDforma'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMforma'
                  end>
                Properties.ListOptions.ShowHeader = False
                Width = 61
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object colgrddetail1DBBandedTableView1QTLARGURA1: TcxGridDBBandedColumn
                Caption = 'Largura'
                DataBinding.FieldName = 'QTLARGURA1'
                Width = 42
                Position.BandIndex = 2
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object colgrddetail1DBBandedTableView1QTCOMPRIMENTO1: TcxGridDBBandedColumn
                Caption = 'Comprimento'
                DataBinding.FieldName = 'QTCOMPRIMENTO1'
                Width = 73
                Position.BandIndex = 2
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object colgrddetail1DBBandedTableView1QTALTURA1: TcxGridDBBandedColumn
                Caption = 'Espessura'
                DataBinding.FieldName = 'QTALTURA1'
                Width = 58
                Position.BandIndex = 2
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object colgrddetail1DBBandedTableView1QTPECA: TcxGridDBBandedColumn
                Caption = 'Qt Pe'#231'a'
                DataBinding.FieldName = 'QTPECA'
                Width = 51
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1QTITEM: TcxGridDBBandedColumn
                Caption = 'Qtd'
                DataBinding.FieldName = 'QTITEM'
                Position.BandIndex = 4
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1QTATENDIDA: TcxGridDBBandedColumn
                Caption = 'Aprovado'
                DataBinding.FieldName = 'QTAPROVADO'
                Options.Editing = False
                Position.BandIndex = 4
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1VLUNITARIO: TcxGridDBBandedColumn
                Caption = 'Unit'#225'rio'
                DataBinding.FieldName = 'VLUNITARIO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
                Width = 63
                Position.BandIndex = 6
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1VLTOTAL: TcxGridDBBandedColumn
                Caption = 'Total'
                DataBinding.FieldName = 'VLTOTAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Width = 86
                Position.BandIndex = 6
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1VLFRETE: TcxGridDBBandedColumn
                Caption = 'Frete'
                DataBinding.FieldName = 'VLFRETE'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 67
                Position.BandIndex = 6
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1VLDESCONTO: TcxGridDBBandedColumn
                Caption = 'Desconto'
                DataBinding.FieldName = 'VLDESCONTO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 104
                Position.BandIndex = 6
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1CDTPICMS: TcxGridDBBandedColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'CDTPICMS'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDTPICMS'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMTPICMS'
                  end>
                Properties.ListOptions.ShowHeader = False
                Width = 100
                Position.BandIndex = 7
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1ALICMS: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'ALICMS'
                Width = 24
                Position.BandIndex = 7
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1VLICMS: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLICMS'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Position.BandIndex = 7
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1ALMVA: TcxGridDBBandedColumn
                Caption = 'MVA'
                DataBinding.FieldName = 'ALMVA'
                Width = 38
                Position.BandIndex = 8
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1VLICMSSUBTRIB: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLICMSSUBTRIB'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 103
                Position.BandIndex = 8
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1ALICMSSUBTRIB: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'ALICMSSUBTRIB'
                Width = 28
                Position.BandIndex = 8
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1CDTPIPI: TcxGridDBBandedColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'CDTPIPI'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDTPIPI'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMTPIPI'
                  end>
                Properties.ListOptions.ShowHeader = False
                Position.BandIndex = 9
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1ALIPI: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'ALIPI'
                Width = 24
                Position.BandIndex = 9
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1VLIPI: TcxGridDBBandedColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VLIPI'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Width = 76
                Position.BandIndex = 9
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1VLTOTALCIPI: TcxGridDBBandedColumn
                Caption = 'Total c IPI'
                DataBinding.FieldName = 'VLTOTALCIPI'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Position.BandIndex = 9
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1NUPRAZOENTREGA: TcxGridDBBandedColumn
                Caption = 'Prazo Entrega'
                DataBinding.FieldName = 'NUPRAZOENTREGA'
                PropertiesClassName = 'TcxSpinEditProperties'
                Position.BandIndex = 5
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1DTAPROVACAO: TcxGridDBBandedColumn
                Caption = 'Dt Aprova'#231#227'o'
                DataBinding.FieldName = 'DTAPROVACAO'
                PropertiesClassName = 'TcxDateEditProperties'
                Position.BandIndex = 5
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1NUCLFISCAL: TcxGridDBBandedColumn
                Caption = 'Classe Fiscal'
                DataBinding.FieldName = 'NUCLFISCAL'
                Position.BandIndex = 7
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1DSOBSERVACAOMADEIRA: TcxGridDBBandedColumn
                Caption = 'Observa'#231#227'o'
                DataBinding.FieldName = 'DSOBSERVACAO'
                PropertiesClassName = 'TcxMemoProperties'
                Position.BandIndex = 2
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1NUSEQUENCIA: TcxGridDBBandedColumn
                Caption = 'N'#176
                DataBinding.FieldName = 'NUSEQUENCIA'
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1DSPRODUTO: TcxGridDBBandedColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'DSPRODUTO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object grddetail1DBBandedTableView1CDSTITORCAMENTO: TcxGridDBBandedColumn
                Caption = 'Status'
                DataBinding.FieldName = 'CDSTITORCAMENTO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 80
                Properties.KeyFieldNames = 'CDSTITORCAMENTO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMSTITORCAMENTO'
                  end>
                Properties.ListOptions.ShowHeader = False
                Visible = False
                Options.Focusing = False
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
            end
            object grlgrddetail1Level1: TcxGridLevel
              GridView = grddetail1DBBandedTableView1
            end
          end
        end
        object tbsobservacao: TcxTabSheet
          Caption = 'Observa'#231#227'o'
          ImageIndex = 62
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object memdsobservacao: TcxDBMemo
            Left = 0
            Top = 0
            Align = alClient
            DataBinding.DataField = 'DSOBSERVACAO'
            DataBinding.DataSource = dts
            TabOrder = 0
            Height = 248
            Width = 1167
          end
        end
        object tbsobsinterna: TcxTabSheet
          Caption = 'Observa'#231#227'o Interna'
          ImageIndex = 62
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object memDSOBSINTERNA: TcxDBMemo
            Left = 0
            Top = 0
            Align = alClient
            DataBinding.DataField = 'DSOBSINTERNA'
            DataBinding.DataSource = dts
            TabOrder = 0
            Height = 248
            Width = 1167
          end
        end
      end
      object grd: TcxGrid
        Left = 0
        Top = 23
        Width = 1175
        Height = 188
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object Tbvordproducao: TcxGridDBTableView
          DragMode = dmAutomatic
          OnKeyDown = ExportarGradeExcel
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
          OnCellDblClick = TbvordproducaoCellDblClick
          OnCustomDrawCell = TbvordproducaoCustomDrawCell
          DataController.DataSource = dts
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTHORAORCADA'
              Column = TbvordproducaoQTHORAORCADA
            end
            item
              Kind = skSum
              FieldName = 'QTHORAPRODUCAO'
              Column = TbvordproducaoQTHORAPRODUCAO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object TbvordproducaoCDORDPRODUCAO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDORDPRODUCAO'
            Styles.Content = cxStyle1
          end
          object TbvordproducaoDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
          end
          object TbvordproducaoDTPREVENTREGA: TcxGridDBColumn
            Caption = 'Prev Entrega'
            DataBinding.FieldName = 'DTPRVENTREGA'
            Width = 82
          end
          object TbvordproducaoDTPRVINSTALACAO: TcxGridDBColumn
            Caption = 'Prev Instala'#231#227'o'
            DataBinding.FieldName = 'DTPRVINSTALACAO'
            Width = 81
          end
          object TbvordproducaoDTENTREGA: TcxGridDBColumn
            Caption = 'Entrega'
            DataBinding.FieldName = 'DTENTREGA'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 94
          end
          object TbvordproducaoCDORCAMENTO: TcxGridDBColumn
            Caption = 'Orcamento'
            DataBinding.FieldName = 'CDORCAMENTO'
            Styles.Content = cxStyle1
            Width = 65
          end
          object TbvordproducaoNMTPORCAMENTO: TcxGridDBColumn
            Caption = 'Tipo Or'#231'amento'
            DataBinding.FieldName = 'NMTPORCAMENTO'
            Width = 120
          end
          object TbvordproducaoNUPEDIDO: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'NUPEDIDO'
            Styles.Content = cxStyle1
            Width = 95
          end
          object TbvordproducaoNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Styles.Content = cxStyle1
            Width = 178
          end
          object TbvordproducaoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'd Produto'
            DataBinding.FieldName = 'CDDIGITADO'
            Width = 70
          end
          object TbvordproducaoNMPRODUTO: TcxGridDBColumn
            Caption = 'Nome Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Width = 200
          end
          object TbvordproducaoNUESTRUTURAL: TcxGridDBColumn
            Caption = 'N'#186' Estrutural'
            DataBinding.FieldName = 'NUESTRUTURAL'
            Width = 70
          end
          object TbvordproducaoNMSTSORDPRODUCAO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTORDPRODUCAO'
            Width = 107
          end
          object Tbvordproducaonmfuncionario: TcxGridDBColumn
            Caption = 'Funcion'#225'rio'
            DataBinding.FieldName = 'NMFUNCIONARIO'
            Width = 150
          end
          object TbvordproducaoNMMUNICIPIO: TcxGridDBColumn
            Caption = 'Munic'#237'pio'
            DataBinding.FieldName = 'NMMUNICIPIO'
            Width = 150
          end
          object TbvordproducaoDSOBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            OnGetCellHint = TbvordproducaoDSOBSERVACAOGetCellHint
          end
          object TbvordproducaoQTHORAORCADA: TcxGridDBColumn
            Caption = 'Hora Orc'
            DataBinding.FieldName = 'QTHORAORCADA'
          end
          object TbvordproducaoQTHORAPRODUCAO: TcxGridDBColumn
            Caption = 'Hora Prod'
            DataBinding.FieldName = 'QTHORAPRODUCAO'
          end
          object TbvordproducaoNUSAIDA: TcxGridDBColumn
            Caption = 'Nota Fiscal'
            DataBinding.FieldName = 'NUSAIDA'
          end
          object TbvordproducaoDSDESENHO: TcxGridDBColumn
            Caption = 'Desenho'
            DataBinding.FieldName = 'DSDESENHO'
            Width = 100
          end
          object TbvordproducaoNUCOTACAO: TcxGridDBColumn
            Caption = 'Ordem Compra'
            DataBinding.FieldName = 'NUCOTACAO'
            Width = 100
          end
          object TbvordproducaoNUITEM: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'NUITEM'
            Width = 90
          end
          object TbvordproducaoNUCOR: TcxGridDBColumn
            DataBinding.FieldName = 'NUCOR'
            Visible = False
          end
        end
        object TbvOrcamento: TcxGridDBTableView
          DragMode = dmAutomatic
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
          OnCellDblClick = TbvOrcamentoCellDblClick
          OnCustomDrawCell = TbvOrcamentoCustomDrawCell
          DataController.DataSource = dts
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTATENDIDA'
              Column = TbvOrcamentoQTATENDIDA
            end
            item
              Kind = skSum
              FieldName = 'QTPEDIDO'
              Column = TbvOrcamentoQTPEDIDO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = TbvOrcamentoVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object TbvOrcamentoCDORCAMENTO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDORCAMENTO'
            Styles.Content = cxStyle1
          end
          object TbvOrcamentoCDTPORCAMENTO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'CDTPORCAMENTO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPORCAMENTO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPORCAMENTO'
              end>
            Properties.ListOptions.ShowHeader = False
          end
          object TbvOrcamentoDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object TbvOrcamentoDTRESPOSTA: TcxGridDBColumn
            Caption = 'Resposta'
            DataBinding.FieldName = 'DTRESPOSTA'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object TbvOrcamentoCDCLIENTE: TcxGridDBColumn
            Caption = 'C'#243'd Cliente'
            DataBinding.FieldName = 'CDCLIENTE'
            Styles.Content = cxStyle1
            Width = 100
          end
          object TbvOrcamentoNMCLIENTE: TcxGridDBColumn
            Caption = 'Nome Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Width = 200
          end
          object TbvOrcamentoNMREPRESENTANTE: TcxGridDBColumn
            Caption = 'Representante'
            DataBinding.FieldName = 'NMREPRESENTANTE'
            Width = 120
          end
          object TbvOrcamentoNMCONDPAGTO: TcxGridDBColumn
            Caption = 'Condi'#231#227'o Pagamento'
            DataBinding.FieldName = 'NMCONDPAGTO'
            Width = 120
          end
          object TbvOrcamentoVLTOTAL: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 70
          end
          object TbvOrcamentoNMSTORCAMENTO: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTORCAMENTO'
            Width = 70
          end
          object TbvOrcamentoDTPRVENTREGA: TcxGridDBColumn
            Caption = 'Prev Entrega'
            DataBinding.FieldName = 'DTPRVENTREGA'
            Width = 70
          end
          object TbvOrcamentoQTPEDIDO: TcxGridDBColumn
            Caption = 'Qtd Or'#231'ada'
            DataBinding.FieldName = 'QTPEDIDO'
          end
          object TbvOrcamentoQTATENDIDA: TcxGridDBColumn
            Caption = 'Qtd Aprovada'
            DataBinding.FieldName = 'QTATENDIDA'
          end
          object TbvOrcamentoNUCOR: TcxGridDBColumn
            DataBinding.FieldName = 'NUCOR'
            Visible = False
          end
        end
        object grdLevel1: TcxGridLevel
          GridView = Tbvordproducao
        end
      end
      object spt: TcxSplitter
        Left = 0
        Top = 211
        Width = 1175
        Height = 8
        AlignSplitter = salBottom
        Visible = False
      end
      object lblgrade: TcxLabel
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
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'APONTAMENTO'
      object Scheduler: TcxScheduler
        Left = 0
        Top = 45
        Width = 1175
        Height = 451
        DateNavigator.ColCount = 4
        DateNavigator.ShowDatesContainingHolidaysInColor = True
        DateNavigator.Visible = False
        ViewDay.Active = True
        ViewDay.TimeRulerMinutes = True
        Align = alClient
        ContentPopupMenu.UseBuiltInPopupMenu = False
        ContentPopupMenu.Items = []
        ControlBox.Visible = False
        EventOperations.DialogShowing = False
        EventOperations.ReadOnly = True
        EventPopupMenu.UseBuiltInPopupMenu = False
        EventPopupMenu.Items = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookAndFeel.NativeStyle = False
        OptionsCustomize.DynamicSizing = True
        OptionsView.GroupingKind = gkByDate
        OptionsView.HorzSplitterWidth = 3
        OptionsView.ResourceHeaders.MultilineCaptions = True
        OptionsView.ResourceHeaders.ImagePosition = ipTop
        OptionsView.ResourceHeaders.RotateCaptions = False
        OptionsView.ResourcesPerPage = 1
        OptionsView.RotateResourceCaptions = False
        OptionsView.ShowEventsWithoutResource = True
        OptionsView.VertSplitterWidth = 3
        OptionsView.ViewPosition = vpRight
        Storage = Storage
        TabOrder = 0
        OnDblClick = SchedulerDblClick
        OnLayoutChanged = SchedulerLayoutChanged
        Splitters = {
          D00200007E0000005F03000083000000CB02000001000000D0020000DE010000}
        StoredClientBounds = {010000000100000096040000C2010000}
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 23
        Width = 1175
        Height = 22
        Align = dalTop
        BarManager = dxBarManager1
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
    end
  end
  object dts: TDataSource
    Left = 372
    Top = 112
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 568
    Top = 112
    object actfechar: TAction
      Caption = 'Fechar'
      ImageIndex = 133
      OnExecute = actfecharExecute
    end
    object actatualizar: TAction
      Caption = 'Atualizar'
      ImageIndex = 12
      OnExecute = actatualizarExecute
    end
    object actabrirordproducao: TAction
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
    end
    object actabrirorcamento: TAction
      Hint = 'orcamento'
      OnExecute = actabrirorcamentoExecute
    end
    object actabrirpedido: TAction
      Hint = 'pedido'
      OnExecute = actabrirpedidoExecute
    end
    object actabrircliente: TAction
      Hint = 'cliente'
      OnExecute = actabrirclienteExecute
    end
    object actgerarpedido: TAction
      Caption = 'Gerar Pedido'
      ImageIndex = 25
      Visible = False
      OnExecute = actgerarpedidoExecute
    end
    object actimprimir: TAction
      Caption = 'Imprimir'
      ImageIndex = 3
      OnExecute = actimprimirExecute
    end
    object actimprimirorcamento: TAction
      Caption = 'Or'#231'amento'
      Visible = False
      OnExecute = actimprimirorcamentoExecute
    end
    object actimprimiranalitico: TAction
      Caption = 'Anal'#237'tico'
      Visible = False
      OnExecute = actimprimiranaliticoExecute
    end
    object actimprimirordproducao: TAction
      Caption = 'Ordem Produ'#231#227'o'
      Visible = False
      OnExecute = actimprimirordproducaoExecute
    end
    object actequipamento: TAction
      Caption = 'Equipamento...'
      Visible = False
      OnExecute = actequipamentoExecute
    end
    object actfuncionario: TAction
      Caption = 'Funcion'#225'rio...'
      Visible = False
      OnExecute = actfuncionarioExecute
    end
    object actMapaProducao: TAction
      Caption = 'Mapa Produ'#231#227'o'
      OnExecute = actMapaProducaoExecute
    end
  end
  object dxBarManager1: TdxBarManager
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
    ImageOptions.LargeImages = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 540
    Top = 112
    DockControlHeights = (
      0
      0
      42
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 220
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'edtdti'
        end
        item
          Visible = True
          ItemName = 'edtdtf'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'APONTAMENTO'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 190
      FloatTop = 174
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
      WholeRow = True
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actfechar
      Category = 0
    end
    object edtdti: TcxBarEditItem
      Caption = 'Data'
      Category = 0
      Hint = 'Data'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object edtdtf: TcxBarEditItem
      Caption = 'at'#233
      Category = 0
      Hint = 'at'#233
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actatualizar
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actgerarpedido
      Category = 0
    end
    object btnimprimir: TdxBarLargeButton
      Action = actimprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumiimprimir
    end
    object dxBarButton1: TdxBarButton
      Action = actimprimirorcamento
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actimprimiranalitico
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actimprimirordproducao
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actequipamento
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actfuncionario
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actMapaProducao
      Category = 0
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 57
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      TextColor = clBlue
    end
  end
  object dtsdetail: TDataSource
    Left = 372
    Top = 140
  end
  object pumiimprimir: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 960
    Top = 140
  end
  object Storage: TcxSchedulerStorage
    CustomFields = <>
    Resources.Items = <>
    Left = 596
    Top = 113
  end
  object DBStorage: TcxSchedulerDBStorage
    Tag = 1
    UseActualTimeRange = True
    Reminders.Active = False
    Resources.Items = <>
    CustomFields = <>
    DataSource = dtsapontamento
    FieldNames.ActualFinish = 'ACTUALFINISH'
    FieldNames.ActualStart = 'ACTUALSTART'
    FieldNames.Caption = 'CAPTION'
    FieldNames.EventType = 'EVENTTYPE'
    FieldNames.Finish = 'TSFIM'
    FieldNames.ID = 'CDAPONTAMENTO'
    FieldNames.LabelColor = 'LABELCOLOR'
    FieldNames.Location = 'LOCATION'
    FieldNames.Message = 'MESSAGE'
    FieldNames.Options = 'OPTIONS'
    FieldNames.ParentID = 'PARENTID'
    FieldNames.RecurrenceIndex = 'RECURRENCEINDEX'
    FieldNames.RecurrenceInfo = 'RECURRENCEINFO'
    FieldNames.ReminderDate = 'REMINDERDATE'
    FieldNames.ReminderMinutesBeforeStart = 'REMINDERMINUTESBEFORESTART'
    FieldNames.ReminderResourcesData = 'REMINDERRESOURCESDATA'
    FieldNames.ResourceID = 'RESOURCEID'
    FieldNames.Start = 'TSINICIO'
    FieldNames.State = 'STATE'
    FieldNames.TaskCompleteField = 'TASKCOMPLETEFIELD'
    FieldNames.TaskIndexField = 'TASKINDEXFIELD'
    FieldNames.TaskLinksField = 'TASKLINKSFIELD'
    FieldNames.TaskStatusField = 'TASKSTATUSFIELD'
    Left = 625
    Top = 113
  end
  object dtsapontamento: TDataSource
    Left = 444
    Top = 152
  end
end

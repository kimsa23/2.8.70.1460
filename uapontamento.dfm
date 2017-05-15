object frmapontamento: Tfrmapontamento
  Left = 464
  Top = 86
  Caption = 'Apontamento'
  ClientHeight = 590
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 82
    Width = 1128
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 1128
      Height = 40
      Align = alTop
    end
    object Label1: TLabel
      Left = 3
      Top = 3
      Width = 136
      Height = 13
      Caption = 'Etapa Produ'#231#227'o (Ctrl+E)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnDblClick = DLG
    end
    object cbxcdtpequipamento: TcxLookupComboBox
      Left = 3
      Top = 16
      Properties.KeyFieldNames = 'CDTPEQUIPAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPEQUIPAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = cbxcdtpequipamentoPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = cbxcdtpequipamentoEnter
      Width = 277
    end
  end
  object pnl: TcxLabel
    Left = 0
    Top = 59
    Align = alTop
    AutoSize = False
    Caption = 'Apontamento'
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -17
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
    Height = 23
    Width = 1128
  end
  object grd: TcxGrid
    Left = 0
    Top = 123
    Width = 1128
    Height = 467
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBBandedTableView
      OnKeyDown = tbvKeyDown
      OnKeyUp = tbvKeyUp
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
      OnCellDblClick = tbvCellDblClick
      OnCustomDrawCell = tbvCustomDrawCell
      DataController.DataSource = dts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'QTITEM'
          Column = tbvQTITEM
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.Selection = dtmmain.cxStyle5
      Bands = <
        item
          Caption = 'Ordem Produ'#231#227'o'
        end
        item
          Caption = 'Produto'
        end
        item
          Caption = 'In'#237'cio'
        end
        item
          Caption = 'Previs'#227'o In'#237'cio'
        end
        item
          Caption = 'Previs'#227'o T'#233'rmino'
        end>
      object tbvCDORDPRODUCAO: TcxGridDBBandedColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CDORDPRODUCAO'
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle1
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvDTEMISSAO: TcxGridDBBandedColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'DTEMISSAO'
        Options.Focusing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvDTPRVENTREGA: TcxGridDBBandedColumn
        Caption = 'Previs'#227'o'
        DataBinding.FieldName = 'DTPRVENTREGA'
        Options.Focusing = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvCDPRODUTO: TcxGridDBBandedColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CDPRODUTO'
        Options.Focusing = False
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvCDALTERNATIVO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDALTERNATIVO'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvNMPRODUTO: TcxGridDBBandedColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'NMPRODUTO'
        Options.Focusing = False
        Width = 350
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvQTITEM: TcxGridDBBandedColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'QTITEM'
        Options.Focusing = False
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tbvDTINICIO: TcxGridDBBandedColumn
        Caption = 'Data'
        DataBinding.FieldName = 'DTINICIO'
        Options.Focusing = False
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvHRINICIO: TcxGridDBBandedColumn
        Caption = 'Hora'
        DataBinding.FieldName = 'HRINICIO'
        Options.Focusing = False
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvDTINICIOPREVISTA: TcxGridDBBandedColumn
        Caption = 'Data'
        DataBinding.FieldName = 'DTINICIOPREVISTA'
        Options.Focusing = False
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvHRINICIOPREVISTA: TcxGridDBBandedColumn
        Caption = 'Hora'
        DataBinding.FieldName = 'HRINICIOPREVISTA'
        Options.Focusing = False
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvDTTERMINOPREVISTA: TcxGridDBBandedColumn
        Caption = 'Data'
        DataBinding.FieldName = 'DTTERMINOPREVISTA'
        Options.Focusing = False
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvHRTERMINOPREVISTA: TcxGridDBBandedColumn
        Caption = 'Hora'
        DataBinding.FieldName = 'HRTERMINOPREVISTA'
        Options.Focusing = False
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvCDITORDPRODUCAORECURSO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDITORDPRODUCAORECURSO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvNUCOR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NUCOR'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tbvNMFORMULACAO: TcxGridDBBandedColumn
        Caption = 'Formula'#231#227'o'
        DataBinding.FieldName = 'NMFORMULACAO'
        Width = 150
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvdsdesenho: TcxGridDBBandedColumn
        Caption = 'Desenho'
        DataBinding.FieldName = 'DSDESENHO'
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tbvNUESTRUTURAL: TcxGridDBBandedColumn
        Caption = 'N'#186' Estrutural'
        DataBinding.FieldName = 'NUESTRUTURAL'
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
    end
  end
  object dts: TDataSource
    Left = 464
    Top = 31
  end
  object bmg: TdxBarManager
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
    Left = 192
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
      Caption = 'apontamento'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 392
      FloatTop = 299
      FloatClientWidth = 62
      FloatClientHeight = 494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 1
      UseOwnFont = True
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
          ItemName = 'dxbrlrgbtnfechar'
        end>
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 232
    Top = 1
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actsetfocusrecurso: TAction
      Caption = 'Foco Etapa'
      Hint = 'Foco'
      ImageIndex = 1
      ShortCut = 16453
      Visible = False
      OnExecute = actsetfocusrecursoExecute
    end
    object actatualizarquery: TAction
      ShortCut = 116
      OnExecute = actatualizarqueryExecute
    end
    object actabrirordproducao: TAction
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
    end
    object actabrirtpequipamento: TAction
      Hint = 'tpequipamento'
      OnExecute = actabrirtpequipamentoExecute
    end
  end
end

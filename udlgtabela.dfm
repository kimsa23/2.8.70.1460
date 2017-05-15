object frmdlttabela: Tfrmdlttabela
  Left = 485
  Top = 149
  ClientHeight = 701
  ClientWidth = 790
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grd: TcxGrid
    Left = 0
    Top = 45
    Width = 790
    Height = 615
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
      OnKeyDown = tbvKeyDown
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Enabled = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Enabled = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Insert.Visible = True
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
      DataController.DataSource = dts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
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
  object Panel1: TPanel
    Left = 0
    Top = 660
    Width = 790
    Height = 41
    Align = alBottom
    TabOrder = 6
    object btnfechar: TcxButton
      Left = 362
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Fechar'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnfecharClick
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    Left = 407
    Top = 2
    object actexportarexcel: TAction
      Hint = 'Exportar Excel'
      ImageIndex = 15
      OnExecute = actexportarexcelExecute
    end
    object actfiltrar: TAction
      Caption = 'actfiltrar'
      Hint = 'Filtrar'
      ImageIndex = 13
      OnExecute = actfiltrarExecute
    end
    object actagrupar: TAction
      Caption = 'actagrupar'
      Hint = 'Agrupar'
      ImageIndex = 54
      OnExecute = actagruparExecute
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
    Left = 376
    DockControlHeights = (
      0
      0
      22
      0)
    object bmg1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'grade'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 755
      FloatTop = 180
      FloatClientWidth = 160
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnfiltro'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'btnagrupar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = actexportarexcel
      Category = 0
    end
    object btnfiltro: TdxBarButton
      Action = actfiltrar
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnagrupar: TdxBarButton
      Action = actagrupar
      Category = 0
      ButtonStyle = bsChecked
    end
  end
  object dts: TDataSource
    Left = 445
    Top = 1
  end
end

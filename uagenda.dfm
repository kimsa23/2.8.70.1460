object frmagenda: Tfrmagenda
  Left = 542
  Top = 225
  ClientHeight = 556
  ClientWidth = 1039
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
  PixelsPerInch = 96
  TextHeight = 13
  object scd: TcxScheduler
    Left = 0
    Top = 45
    Width = 1039
    Height = 511
    DateNavigator.ColCount = 4
    DateNavigator.Visible = False
    ViewDay.Active = True
    ViewDay.TimeRulerMinutes = True
    Align = alClient
    ContentPopupMenu.PopupMenu = pumevento
    ContentPopupMenu.UseBuiltInPopupMenu = False
    ContentPopupMenu.Items = [cpmiNewEvent]
    ControlBox.Visible = False
    EventOperations.DialogEditing = False
    EventOperations.DialogShowing = False
    EventOperations.InplaceEditing = False
    EventOperations.Intersection = False
    EventOperations.Recurrence = False
    EventPopupMenu.PopupMenu = pumevento2
    EventPopupMenu.UseBuiltInPopupMenu = False
    EventPopupMenu.Items = [epmiDelete]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OptionsBehavior.SelectOnRightClick = True
    OptionsCustomize.DynamicSizing = True
    OptionsView.GroupingKind = gkByDate
    OptionsView.HorzSplitterWidth = 3
    OptionsView.ResourceHeaders.MultilineCaptions = True
    OptionsView.ResourceHeaders.ImagePosition = ipTop
    OptionsView.ResourceHeaders.RotateCaptions = False
    OptionsView.ResourcesPerPage = 1
    OptionsView.RotateResourceCaptions = False
    OptionsView.ShowEventsWithoutResource = True
    OptionsView.ShowNavigationButtons = False
    OptionsView.VertSplitterWidth = 3
    OptionsView.ViewPosition = vpRight
    ResourceNavigator.Buttons.Prev.Visible = True
    ResourceNavigator.Buttons.Next.Visible = True
    Storage = dbstorage
    Styles.DayHeader = dtmmain.cxStyle2
    TabOrder = 0
    OnDblClick = scdDblClick
    OnFirstVisibleResourceChanged = scdFirstVisibleResourceChanged
    OnGetEventHintText = scdGetEventHintText
    OnMouseMove = scdMouseMove
    OnSelectionChanged = scdSelectionChanged
    Splitters = {
      5B0200007E000000EA0200008300000056020000010000005B02000058010000}
    StoredClientBounds = {01000000010000000E040000FE010000}
  end
  object dbstorage: TcxSchedulerDBStorage
    UseActualTimeRange = True
    Reminders.Active = False
    Resources.Items = <>
    CustomFields = <>
    DataSource = dts
    FieldNames.ActualFinish = 'D1'
    FieldNames.ActualStart = 'D1'
    FieldNames.Caption = 'NMTAREFA'
    FieldNames.EventType = 'EVENTO'
    FieldNames.Finish = 'TSFIM'
    FieldNames.ID = 'CDITAGENDA'
    FieldNames.LabelColor = 'LABELCOLOR'
    FieldNames.Message = 'message'
    FieldNames.Options = 'OPTIONS'
    FieldNames.ResourceID = 'CDEQUIPAMENTO'
    FieldNames.Start = 'TSINICIO'
    FieldNames.State = 'STATE'
    OnEventDeleted = dbstorageEventDeleted
    OnEventInserted = dbstorageEventInserted
    OnEventModified = dbstorageEventModified
    Left = 216
    Top = 56
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
    ImageOptions.Images = dtmmain.imgMain
    ImageOptions.LargeImages = dtmmain.imgMain
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 184
    Top = 56
    DockControlHeights = (
      0
      0
      45
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Agenda'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 265
      FloatTop = 272
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'edtdtinicio'
        end
        item
          Visible = True
          ItemName = 'edtdttermino'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end>
      OneOnRow = True
      Row = 1
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = '&Registro'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Action = actvisualizar
      Category = 0
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
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = actvisualizardia
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actvisualizarsemanatrabalho
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actvisualizarsemana
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actvisualizarmes
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actvisualizartimegrid
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actvisualizarano
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actvisualizarirparadata
      Category = 0
    end
    object dxBarSeparator1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton8: TdxBarButton
      Action = actvisualizarcalendario
      Category = 0
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Posi'#231#227'o'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end>
    end
    object dxBarButton9: TdxBarButton
      Action = actvisualizarposicaoesquerda
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actvisualizarposicaodireita
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actvisualizardia
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actvisualizarsemanatrabalho
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actvisualizarsemana
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actvisualizarmes
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actvisualizartimegrid
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actvisualizarano
      Category = 0
    end
    object dxBarSubItem4: TdxBarSubItem
      Action = actvisualizar
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
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
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end>
    end
    object dxBarButton11: TdxBarButton
      Action = actfechar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton12: TdxBarButton
      Action = actfechar
      Category = 0
    end
    object edtdtinicio: TcxBarEditItem
      Caption = 'Data'
      Category = 0
      Hint = 'Data'
      Visible = ivAlways
      OnChange = edtdtinicioChange
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object edtdttermino: TcxBarEditItem
      Caption = 'at'#233
      Category = 0
      Hint = 'at'#233
      Visible = ivAlways
      OnChange = edtdtinicioChange
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarButton13: TdxBarButton
      Action = actequipamento
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton14: TdxBarButton
      Action = actequipamento
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actnovo
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton16: TdxBarButton
      Action = actexcluir
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton17: TdxBarButton
      Action = actatualizar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton19: TdxBarButton
      Action = actnovo
      Category = 0
    end
    object dxBarButton20: TdxBarButton
      Action = actatualizar
      Category = 0
    end
    object dxBarButton21: TdxBarButton
      Action = actequipamento
      Category = 0
    end
    object dxBarButton18: TdxBarButton
      Action = actexcluir
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = actlocalizar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object act: TActionList
    Images = dtmmain.imgMain
    OnExecute = actExecute
    Left = 280
    Top = 56
    object actvisualizardia: TAction
      Caption = 'Dia'
      ImageIndex = 0
      OnExecute = actvisualizardiaExecute
    end
    object actvisualizarsemanatrabalho: TAction
      Caption = 'Trabalho'
      ImageIndex = 1
      OnExecute = actvisualizarsemanatrabalhoExecute
    end
    object actvisualizarsemana: TAction
      Caption = 'Semana'
      ImageIndex = 2
      OnExecute = actvisualizarsemanaExecute
    end
    object actvisualizarmes: TAction
      Caption = 'M'#234's'
      ImageIndex = 3
      OnExecute = actvisualizarmesExecute
    end
    object actvisualizartimegrid: TAction
      Caption = 'Time Grid'
      ImageIndex = 4
      OnExecute = actvisualizartimegridExecute
    end
    object actvisualizarano: TAction
      Caption = 'Ano'
      ImageIndex = 5
      OnExecute = actvisualizaranoExecute
    end
    object actvisualizarirparadata: TAction
      Caption = 'Ir para Data'
      OnExecute = actvisualizarirparadataExecute
    end
    object actvisualizarcalendario: TAction
      Caption = 'Calend'#225'rio'
      OnExecute = actvisualizarcalendarioExecute
    end
    object actvisualizarposicaoesquerda: TAction
      Caption = 'Esquerda'
      OnExecute = actvisualizarposicaoesquerdaExecute
    end
    object actvisualizarposicaodireita: TAction
      Caption = 'Direita'
      OnExecute = actvisualizarposicaodireitaExecute
    end
    object actvisualizar: TAction
      Caption = 'Visualizar'
      ImageIndex = 6
      OnExecute = actvisualizarExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      ImageIndex = 7
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actequipamento: TAction
      Caption = 'Equipamento'
      ImageIndex = 8
      OnExecute = actequipamentoExecute
    end
    object actnovo: TAction
      Caption = 'Novo'
      ImageIndex = 9
      OnExecute = actnovoExecute
    end
    object actexcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 36
      OnExecute = actexcluirExecute
    end
    object actatualizar: TAction
      Caption = 'Atualizar'
      ImageIndex = 11
      OnExecute = actatualizarExecute
    end
    object actlocalizar: TAction
      Caption = 'Localizar'
      ImageIndex = 29
      OnExecute = actlocalizarExecute
    end
  end
  object dts: TDataSource
    Left = 312
    Top = 56
  end
  object pumevento: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end>
    UseOwnFont = False
    Left = 376
    Top = 104
  end
  object pumevento2: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end>
    UseOwnFont = False
    Left = 376
    Top = 144
  end
end

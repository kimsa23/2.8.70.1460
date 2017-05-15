object frmdlgarquivo: Tfrmdlgarquivo
  Left = 575
  Top = 197
  BorderStyle = bsDialog
  Caption = 'Arquivo'
  ClientHeight = 600
  ClientWidth = 874
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnok: TcxButton
    Left = 351
    Top = 570
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object btncancelar: TcxButton
    Left = 447
    Top = 570
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 1
  end
  object lsvarquivo: TcxListView
    Left = 0
    Top = 24
    Width = 874
    Height = 540
    Align = alTop
    Columns = <
      item
        Caption = 'Arquivo'
        Width = 200
      end
      item
        Caption = 'Item'
        Width = 100
      end
      item
        Caption = 'Observa'#231#227'o'
        Width = 570
      end>
    ReadOnly = True
    RowSelect = True
    SmallImages = dtmmain.imlMain
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 6
    ViewStyle = vsReport
    OnClick = lsvarquivoClick
    OnDblClick = lsvarquivoDblClick
    OnExit = lsvarquivoExit
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
    ImageOptions.Images = dtmmain.imlMain
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 80
    Top = 64
    DockControlHeights = (
      0
      0
      24
      0)
    object dxBarManager1Bar1: TdxBar
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = 'arquivo'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 525
      FloatTop = 197
      FloatClientWidth = 0
      FloatClientHeight = 0
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
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = actnovo
      Category = 0
      PaintStyle = psCaptionInMenu
    end
    object dxBarButton2: TdxBarButton
      Action = actexportar
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actexcluir
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actvisualizar
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actobservacao
      Category = 0
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    Left = 112
    Top = 64
    object actnovo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      OnExecute = actnovoExecute
    end
    object actexportar: TAction
      Caption = 'Exportar'
      ImageIndex = 22
      OnExecute = actexportarExecute
    end
    object actexcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 5
      OnExecute = actexcluirExecute
    end
    object actvisualizar: TAction
      Caption = 'Visualizar'
      ImageIndex = 63
      OnExecute = actvisualizarExecute
    end
    object actobservacao: TAction
      Caption = 'Observa'#231#227'o'
      ImageIndex = 62
      OnExecute = actobservacaoExecute
    end
  end
end

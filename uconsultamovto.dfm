object frmConsultaMovto: TfrmConsultaMovto
  Left = 434
  Top = 194
  BorderStyle = bsSingle
  ClientHeight = 668
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl: TPanel
    Left = 0
    Top = 38
    Width = 903
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Consulta Movimenta'#231#227'o de Estoque'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object ntb: TNotebook
    Left = 260
    Top = 57
    Width = 643
    Height = 611
    Align = alClient
    TabOrder = 1
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 643
        Height = 88
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel6: TBevel
          Left = 0
          Top = 0
          Width = 643
          Height = 88
          Align = alClient
        end
        object lblinicial: TLabel
          Left = 7
          Top = 5
          Width = 27
          Height = 13
          Caption = 'Inicial'
          Transparent = True
        end
        object lblfinal: TLabel
          Left = 103
          Top = 5
          Width = 22
          Height = 13
          Caption = 'Final'
          Transparent = True
        end
        object edtdtf: TcxDateEdit
          Left = 101
          Top = 20
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 88
        end
        object edtdti: TcxDateEdit
          Left = 5
          Top = 20
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 88
        end
      end
      object pgc: TcxPageControl
        Left = 0
        Top = 88
        Width = 643
        Height = 523
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = tbsproduto
        Properties.CustomButtons.Buttons = <>
        Properties.Images = dtmmain.imlMain
        ClientRectBottom = 519
        ClientRectLeft = 4
        ClientRectRight = 639
        ClientRectTop = 25
        object tbsproduto: TcxTabSheet
          Caption = '&Produto'
          ImageIndex = 24
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel4: TBevel
            Left = 0
            Top = 25
            Width = 635
            Height = 41
            Align = alTop
            ExplicitWidth = 643
          end
          object Label5: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label6: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar7: TToolBar
            Left = 0
            Top = 0
            Width = 635
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton21: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton21Click
            end
            object ToolButton22: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton22Click
            end
            object ToolButton24: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton24Click
            end
          end
          object edtnmproduto: TEdit
            Left = 106
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmprodutoChange
            OnKeyDown = edtnmprodutoKeyDown
          end
          object edtcdproduto: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdprodutoKeyPress
          end
          object lsvproduto: TcxListView
            Left = 0
            Top = 66
            Width = 635
            Height = 428
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
              end
              item
                Caption = 'Nome'
                Width = 400
              end>
            MultiSelect = True
            RowSelect = True
            TabOrder = 3
            ViewStyle = vsReport
          end
        end
        object tbsgrupo: TcxTabSheet
          Caption = '&Grupo'
          ImageIndex = 69
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel2: TBevel
            Left = 0
            Top = 25
            Width = 643
            Height = 41
            Align = alTop
          end
          object Label2: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Label1: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object ToolBar1: TToolBar
            Left = 0
            Top = 0
            Width = 643
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton1Click
            end
            object ToolButton2: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton2Click
            end
            object ToolButton4: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton4Click
            end
          end
          object edtcdgrupo: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdgrupoKeyPress
          end
          object edtnmgrupo: TEdit
            Left = 106
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmgrupoChange
            OnKeyDown = edtnmgrupoKeyDown
          end
          object lsvgrupo: TcxListView
            Left = 0
            Top = 66
            Width = 635
            Height = 428
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
              end
              item
                Caption = 'Nome'
                Width = 400
              end>
            MultiSelect = True
            RowSelect = True
            TabOrder = 3
            ViewStyle = vsReport
          end
        end
        object tbscntcusto: TcxTabSheet
          Caption = '&Centro Custo'
          ImageIndex = 71
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel3: TBevel
            Left = 0
            Top = 25
            Width = 643
            Height = 41
            Align = alTop
          end
          object Label3: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label4: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar4: TToolBar
            Left = 0
            Top = 0
            Width = 643
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton9: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton9Click
            end
            object ToolButton10: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton10Click
            end
            object ToolButton12: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton12Click
            end
          end
          object edtnmcntcusto: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmcntcustoChange
            OnKeyDown = edtnmcntcustoKeyDown
          end
          object edtcdcntcusto: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdcntcustoKeyPress
          end
          object lsvcntcusto: TcxListView
            Left = 0
            Top = 66
            Width = 635
            Height = 428
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
              end
              item
                Caption = 'Nome'
                Width = 400
              end>
            MultiSelect = True
            RowSelect = True
            TabOrder = 3
            ViewStyle = vsReport
          end
        end
        object tbstpmovto: TcxTabSheet
          Caption = '&Tipo'
          ImageIndex = 45
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel5: TBevel
            Left = 0
            Top = 25
            Width = 643
            Height = 41
            Align = alTop
          end
          object Label7: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label8: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 643
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton5: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton5Click
            end
            object ToolButton6: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton6Click
            end
            object ToolButton8: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton8Click
            end
          end
          object edtnmtpmovto: TEdit
            Left = 106
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmtpmovtoChange
            OnKeyDown = edtnmtpmovtoKeyDown
          end
          object edtcdtpmovto: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdtpmovtoKeyPress
          end
          object lsvtpmovto: TcxListView
            Left = 0
            Top = 66
            Width = 635
            Height = 428
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
              end
              item
                Caption = 'Nome'
                Width = 400
              end>
            MultiSelect = True
            RowSelect = True
            TabOrder = 3
            ViewStyle = vsReport
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'texto'
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object spl1: TcxSplitter
    Left = 252
    Top = 57
    Width = 8
    Height = 611
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 57
    Width = 252
    Height = 611
    Align = alLeft
    AutoExpand = True
    HideSelection = False
    Indent = 19
    ReadOnly = True
    RowSelect = True
    SortType = stData
    TabOrder = 7
    OnChange = trvChange
  end
  object ActionList1: TActionList
    Images = dtmmain.imlMain
    Left = 344
    object actGerar: TAction
      Caption = 'Gerar'
      Enabled = False
      Hint = 'Gerar'
      ImageIndex = 12
      OnExecute = actGerarExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
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
      38
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'cmovto'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 392
      FloatTop = 299
      FloatClientWidth = 62
      FloatClientHeight = 494
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actGerar
      Category = 0
    end
  end
end

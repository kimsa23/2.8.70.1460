object frmConsultaRepresentante: TfrmConsultaRepresentante
  Left = 348
  Top = 158
  BorderStyle = bsSingle
  ClientHeight = 482
  ClientWidth = 992
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spl1: TcxSplitter
    Left = 228
    Top = 61
    Width = 8
    Height = 421
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 61
    Width = 228
    Height = 421
    Align = alLeft
    AutoExpand = True
    HideSelection = False
    Indent = 19
    ReadOnly = True
    RowSelect = True
    SortType = stData
    TabOrder = 2
    OnChange = trvChange
  end
  object pnl: TcxLabel
    Left = 0
    Top = 38
    Align = alTop
    Caption = 'Consulta Representante'
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
  object pnlcliente: TPanel
    Left = 236
    Top = 61
    Width = 756
    Height = 421
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 7
    object pgc: TcxPageControl
      Left = 0
      Top = 88
      Width = 756
      Height = 333
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tbsrepresentante
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dtmmain.imlMain
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 333
      ClientRectRight = 756
      ClientRectTop = 25
      object tbsrepresentante: TcxTabSheet
        Caption = 'Representante'
        ImageIndex = 42
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Bevel4: TBevel
          Left = 0
          Top = 25
          Width = 756
          Height = 41
          Align = alTop
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
          Width = 756
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
        object lsvrepresentante: TcxListView
          Left = 0
          Top = 66
          Width = 756
          Height = 242
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
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          ViewStyle = vsReport
        end
        object edtcdrepresentante: TEdit
          Left = 3
          Top = 41
          Width = 102
          Height = 21
          TabOrder = 2
          OnKeyPress = edtcdrepresentanteKeyPress
        end
        object edtnmrepresentante: TEdit
          Left = 106
          Top = 41
          Width = 335
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnChange = edtnmrepresentanteChange
          OnKeyDown = edtnmrepresentanteKeyDown
        end
      end
      object tbsstcliente: TcxTabSheet
        Caption = 'Status Cliente'
        ImageIndex = 35
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Bevel3: TBevel
          Left = 0
          Top = 25
          Width = 756
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
        object edtnmstcliente: TEdit
          Left = 106
          Top = 41
          Width = 334
          Height = 21
          TabOrder = 3
          OnChange = edtnmstclienteChange
          OnKeyDown = edtnmstclienteKeyDown
        end
        object edtcdstcliente: TEdit
          Left = 3
          Top = 41
          Width = 102
          Height = 21
          TabOrder = 2
          OnKeyPress = edtcdstclienteKeyPress
        end
        object ToolBar4: TToolBar
          Left = 0
          Top = 0
          Width = 756
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
        object lsvstcliente: TcxListView
          Left = 0
          Top = 66
          Width = 756
          Height = 242
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
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          ViewStyle = vsReport
        end
      end
      object tbstppedido: TcxTabSheet
        Caption = 'Tipo Pedido'
        ImageIndex = 25
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Bevel2: TBevel
          Left = 0
          Top = 25
          Width = 756
          Height = 41
          Align = alTop
        end
        object Label1: TLabel
          Left = 4
          Top = 27
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object Label2: TLabel
          Left = 108
          Top = 27
          Width = 28
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object edtcdtppedido: TEdit
          Left = 0
          Top = 41
          Width = 102
          Height = 21
          TabOrder = 2
          OnKeyPress = edtcdtppedidoKeyPress
        end
        object edtnmtppedido: TEdit
          Left = 106
          Top = 41
          Width = 334
          Height = 21
          TabOrder = 3
          OnChange = edtnmtppedidoChange
          OnKeyDown = edtnmtppedidoKeyDown
        end
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 756
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
        object lsvtppedido: TcxListView
          Left = 0
          Top = 66
          Width = 756
          Height = 242
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
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          ViewStyle = vsReport
        end
      end
      object tbsmunicipio: TcxTabSheet
        Caption = 'Municipio'
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Bevel5: TBevel
          Left = 0
          Top = 25
          Width = 756
          Height = 41
          Align = alTop
        end
        object Label8: TLabel
          Left = 107
          Top = 27
          Width = 28
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object Label9: TLabel
          Left = 4
          Top = 27
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object edtcdmunicipio: TEdit
          Left = 3
          Top = 41
          Width = 102
          Height = 21
          TabOrder = 2
          OnKeyPress = edtcdmunicipioKeyPress
        end
        object edtnmmunicipio: TEdit
          Left = 106
          Top = 41
          Width = 334
          Height = 21
          TabOrder = 3
          OnChange = edtnmmunicipioChange
          OnKeyDown = edtnmmunicipioKeyDown
        end
        object ToolBar2: TToolBar
          Left = 0
          Top = 0
          Width = 756
          Height = 25
          AutoSize = True
          ButtonHeight = 21
          ButtonWidth = 71
          Caption = 'ToolBar2'
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          ShowCaptions = True
          TabOrder = 0
          Transparent = True
          object ToolButton15: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = 'Adicionar'
            ImageIndex = 4
            OnClick = ToolButton15Click
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
        object lsvmunicipio: TcxListView
          Left = 0
          Top = 66
          Width = 756
          Height = 242
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
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          ViewStyle = vsReport
        end
      end
      object tbsbairro: TcxTabSheet
        Caption = 'Bairro'
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Bevel6: TBevel
          Left = 0
          Top = 25
          Width = 756
          Height = 41
          Align = alTop
        end
        object Label7: TLabel
          Left = 4
          Top = 27
          Width = 28
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object edtnmbairro: TEdit
          Left = 3
          Top = 41
          Width = 334
          Height = 21
          TabOrder = 2
          OnKeyDown = edtnmbairroKeyDown
        end
        object ToolBar3: TToolBar
          Left = 0
          Top = 0
          Width = 756
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
            Caption = 'Excluir'
            ImageIndex = 1
            OnClick = ToolButton5Click
          end
          object ToolButton7: TToolButton
            Left = 42
            Top = 0
            AutoSize = True
            Caption = 'Excluir Todas'
            ImageIndex = 3
            OnClick = ToolButton7Click
          end
        end
        object lsvnmbairro: TcxListView
          Left = 0
          Top = 66
          Width = 756
          Height = 242
          Align = alClient
          Columns = <
            item
              Caption = 'Nome'
              Width = 400
            end>
          MultiSelect = True
          RowSelect = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          ViewStyle = vsReport
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 756
      Height = 88
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Bevel7: TBevel
        Left = 0
        Top = 0
        Width = 756
        Height = 88
        Align = alClient
      end
      object Bevel8: TBevel
        Left = 0
        Top = 0
        Width = 756
        Height = 88
        Align = alClient
      end
      object lblinicial: TLabel
        Left = 6
        Top = 8
        Width = 27
        Height = 13
        Caption = 'Inicial'
        Transparent = True
      end
      object lblfinal: TLabel
        Left = 95
        Top = 8
        Width = 22
        Height = 13
        Caption = 'Final'
        Transparent = True
      end
      object lblclassificacao: TLabel
        Left = 438
        Top = 8
        Width = 62
        Height = 13
        Caption = 'Classifica'#231#227'o'
        Transparent = True
        Visible = False
      end
      object lblbaixa: TLabel
        Left = 8
        Top = 47
        Width = 26
        Height = 13
        Caption = 'Baixa'
        FocusControl = edtdtib
        Transparent = True
        Visible = False
      end
      object lblatebaixa: TLabel
        Left = 109
        Top = 68
        Width = 16
        Height = 13
        Caption = '&At'#233
        FocusControl = edtdtfb
        Transparent = True
        Visible = False
      end
      object edtdtf: TcxDateEdit
        Left = 93
        Top = 24
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 88
      end
      object edtdti: TcxDateEdit
        Left = 4
        Top = 24
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 88
      end
      object cbxclassificacao: TComboBox
        Left = 438
        Top = 23
        Width = 135
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'N'#250'mero da Nota Fiscal'
        Visible = False
        Items.Strings = (
          'N'#250'mero da Nota Fiscal'
          'Raz'#227'o Social Cliente')
      end
      object edtdtib: TDateTimePicker
        Left = 8
        Top = 63
        Width = 97
        Height = 21
        Date = 0.705061805601872000
        Time = 0.705061805601872000
        ShowCheckbox = True
        Checked = False
        TabOrder = 3
        Visible = False
      end
      object edtdtfb: TDateTimePicker
        Left = 131
        Top = 63
        Width = 97
        Height = 21
        Date = 37480.705824884300000000
        Time = 37480.705824884300000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 4
        Visible = False
      end
    end
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
      Caption = 'crepresentante'
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

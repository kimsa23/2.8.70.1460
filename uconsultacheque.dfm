object frmConsultaCheque: TfrmConsultaCheque
  Left = 278
  Top = 144
  BorderStyle = bsDialog
  ClientHeight = 461
  ClientWidth = 848
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
    Width = 848
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Consulta Cheque'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object ntb: TNotebook
    Left = 318
    Top = 57
    Width = 530
    Height = 404
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
        Width = 530
        Height = 87
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel5: TBevel
          Left = 0
          Top = 0
          Width = 530
          Height = 87
          Align = alClient
        end
        object lblemissao: TLabel
          Left = 8
          Top = 7
          Width = 39
          Height = 13
          Caption = 'Emiss'#227'o'
          Transparent = True
          Visible = False
        end
        object lblateentrada: TLabel
          Left = 109
          Top = 28
          Width = 16
          Height = 13
          Caption = '&At'#233
          Visible = False
        end
        object lblvencimento: TLabel
          Left = 228
          Top = 7
          Width = 56
          Height = 13
          Caption = 'Vencimento'
          Transparent = True
          Visible = False
        end
        object lblatevencimento: TLabel
          Left = 329
          Top = 28
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lblEntrada: TLabel
          Left = 8
          Top = 47
          Width = 37
          Height = 13
          Caption = 'Entrada'
          Transparent = True
          Visible = False
        end
        object lblatebaixa: TLabel
          Left = 109
          Top = 68
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lblprorrog: TLabel
          Left = 228
          Top = 47
          Width = 58
          Height = 13
          Caption = 'Prorroga'#231#227'o'
          Transparent = True
          Visible = False
        end
        object lblateprorrog: TLabel
          Left = 329
          Top = 68
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object edt15: TcxDateEdit
          Left = 228
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          Visible = False
          Width = 97
        end
        object edtdtip: TcxDateEdit
          Left = 228
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Visible = False
          Width = 97
        end
        object edt13: TcxDateEdit
          Left = 8
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Visible = False
          Width = 97
        end
        object edt14: TcxDateEdit
          Left = 131
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Visible = False
          Width = 97
        end
        object edt16: TcxDateEdit
          Left = 351
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 15
          Visible = False
          Width = 97
        end
        object edt12: TcxDateEdit
          Left = 351
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Visible = False
          Width = 97
        end
        object edt11: TcxDateEdit
          Left = 228
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Visible = False
          Width = 97
        end
        object edt10: TcxDateEdit
          Left = 131
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Visible = False
          Width = 97
        end
        object edt9: TcxDateEdit
          Left = 8
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Visible = False
          Width = 97
        end
        object edtdtib: TcxDateEdit
          Left = 8
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Visible = False
          Width = 97
        end
        object edtdtfb: TcxDateEdit
          Left = 131
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Visible = False
          Width = 97
        end
        object edtdtfp: TcxDateEdit
          Left = 351
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Visible = False
          Width = 97
        end
        object edtdtfv: TcxDateEdit
          Left = 351
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Visible = False
          Width = 97
        end
        object edtdtiv: TcxDateEdit
          Left = 228
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Visible = False
          Width = 97
        end
        object edtdtfE: TcxDateEdit
          Left = 131
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Visible = False
          Width = 97
        end
        object edtdtiE: TcxDateEdit
          Left = 8
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Visible = False
          Width = 97
        end
      end
      object pgc: TcxPageControl
        Left = 0
        Top = 87
        Width = 530
        Height = 317
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = tbscliente
        Properties.CustomButtons.Buttons = <>
        Properties.Images = dtmmain.imlMain
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 317
        ClientRectRight = 530
        ClientRectTop = 25
        object tbscliente: TcxTabSheet
          Caption = '&Cliente'
          ImageIndex = 35
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel2: TBevel
            Left = 0
            Top = 25
            Width = 530
            Height = 40
            Align = alTop
          end
          object lblcdcliente: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object lblnmcliente: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object edtnucnpjcpf: TMaskEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            CharCase = ecUpperCase
            Enabled = False
            EditMask = '999.999.999-99;1;_'
            MaxLength = 14
            TabOrder = 3
            Text = '   .   .   -  '
            Visible = False
            OnKeyDown = edtnucnpjcpfKeyDown
            OnKeyPress = edtnucnpjcpfKeyPress
          end
          object edtnmcliente: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            OnChange = edtnmclienteChange
            OnKeyDown = edtnmclienteKeyDown
          end
          object edtcdcliente: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyDown = edtnucnpjcpfKeyDown
            OnKeyPress = edtnucnpjcpfKeyPress
          end
          object ToolBar3: TToolBar
            Left = 0
            Top = 0
            Width = 530
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 2
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
            object ToolButton8: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton8Click
            end
          end
          object lsvcliente: TcxListView
            Left = 0
            Top = 65
            Width = 530
            Height = 227
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
            TabOrder = 4
            ViewStyle = vsReport
          end
        end
        object tbsstcheque: TcxTabSheet
          Caption = '&Status'
          ImageIndex = 101
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel3: TBevel
            Left = 0
            Top = 25
            Width = 530
            Height = 41
            Align = alTop
          end
          object Label4: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Label3: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object ToolBar4: TToolBar
            Left = 0
            Top = 0
            Width = 530
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
          object edtcdstcheque: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdstchequeKeyPress
          end
          object edtnmstcheque: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmstchequeChange
            OnKeyDown = edtnmstchequeKeyDown
          end
          object lsvstcheque: TcxListView
            Left = 0
            Top = 66
            Width = 530
            Height = 226
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
            TabOrder = 3
            ViewStyle = vsReport
          end
        end
        object tbsbanco: TcxTabSheet
          Caption = '&Banco'
          ImageIndex = 49
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel4: TBevel
            Left = 0
            Top = 25
            Width = 530
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
            Width = 530
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
          object edtcdbanco: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdbancoKeyPress
          end
          object edtnmbanco: TEdit
            Left = 106
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmbancoChange
            OnKeyDown = edtnmbancoKeyDown
          end
          object lsvbanco: TcxListView
            Left = 0
            Top = 66
            Width = 530
            Height = 226
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
    Left = 310
    Top = 57
    Width = 8
    Height = 404
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 57
    Width = 310
    Height = 404
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
    Left = 349
    Top = 1
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
      Caption = 'ccheque'
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
    object dxbrlrgbtnsalvar: TdxBarLargeButton
      Caption = 'Salvar'
      Category = 0
      Hint = 'Salvar'
      Visible = ivNever
      LargeImageIndex = 2
      AutoGrayScale = False
    end
    object dxbrlrgbtnimprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivNever
      LargeImageIndex = 3
      AutoGrayScale = False
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

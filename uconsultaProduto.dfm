object frmConsultaProduto: TfrmConsultaProduto
  Left = -8
  Top = -8
  BorderStyle = bsSingle
  ClientHeight = 1017
  ClientWidth = 1920
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl: TPanel
    Left = 0
    Top = 38
    Width = 1920
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Consulta Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object ntb: TNotebook
    Left = 408
    Top = 57
    Width = 1512
    Height = 960
    Align = alClient
    TabOrder = 1
    OnPageChanged = ntbPageChanged
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1512
        Height = 88
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel2: TBevel
          Left = 0
          Top = 0
          Width = 1512
          Height = 88
          Align = alClient
        end
        object lblinicial: TLabel
          Left = 5
          Top = 6
          Width = 27
          Height = 13
          Caption = 'Inicial'
          Transparent = True
        end
        object lblfinal: TLabel
          Left = 95
          Top = 6
          Width = 22
          Height = 13
          Caption = 'Final'
          Transparent = True
        end
        object lblcodigo: TLabel
          Left = 5
          Top = 42
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Transparent = True
          Visible = False
        end
        object lblsituacao: TLabel
          Left = 185
          Top = 42
          Width = 42
          Height = 13
          Caption = 'Situa'#231#227'o'
          Transparent = True
          Visible = False
        end
        object lbldtsaida: TLabel
          Left = 185
          Top = 6
          Width = 137
          Height = 13
          Caption = 'Considerar nota fiscal a data '
          Transparent = True
          Visible = False
        end
        object ckbbofichanegativa: TcxCheckBox
          Left = 442
          Top = 70
          Caption = 'Saldo Ficha'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Transparent = True
        end
        object ckbboalternativo: TcxCheckBox
          Left = 565
          Top = 56
          Caption = 'Exibir C'#243'digo Altenativo'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Transparent = True
        end
        object ckbbosuprimirzerado: TcxCheckBox
          Left = 442
          Top = 56
          Caption = 'Suprimir ficha zerada'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Transparent = True
        end
        object ckbbogrupo: TcxCheckBox
          Left = 334
          Top = 56
          Caption = 'Quebrar por grupo'
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Transparent = True
        end
        object ckbmesames: TcxCheckBox
          Left = 442
          Top = 24
          Caption = 'M'#234's a M'#234's'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Transparent = True
        end
        object ckbtrigger: TcxCheckBox
          Left = 334
          Top = 24
          Caption = 'Desativar Gatilhos'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Transparent = True
        end
        object cbxsituacao: TcxComboBox
          Left = 185
          Top = 55
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Estoque'
            'Negativo'
            'Completo'
            'M'#237'nimo'
            'Zerado')
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Text = 'Estoque'
          Width = 145
        end
        object cbxcodigo: TcxComboBox
          Left = 5
          Top = 55
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'C'#243'digo Reduzido'
            'Grupo+Item'
            'C'#243'digo Alternativo')
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Text = 'C'#243'digo Reduzido'
          Width = 178
        end
        object cbxdtsaida: TcxComboBox
          Left = 185
          Top = 21
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Sa'#237'da'
            'Emiss'#227'o'
            'Refer'#234'ncia')
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Text = 'Sa'#237'da'
          Width = 145
        end
        object edtdtfinal: TcxDateEdit
          Left = 95
          Top = 21
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 88
        end
        object edtdtinicial: TcxDateEdit
          Left = 5
          Top = 21
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 88
        end
        object ckbbonflivro: TcxCheckBox
          Left = 565
          Top = 24
          Caption = 'Nota Fiscal Livro Produ'#231#227'o'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Transparent = True
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 88
        Width = 1512
        Height = 872
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pgc: TcxPageControl
          Left = 0
          Top = 0
          Width = 1512
          Height = 872
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tbsproduto
          Properties.CustomButtons.Buttons = <>
          Properties.Images = dtmmain.imlMain
          LookAndFeel.NativeStyle = False
          ClientRectBottom = 872
          ClientRectRight = 1512
          ClientRectTop = 25
          object tbsproduto: TcxTabSheet
            Caption = 'Produto'
            ImageIndex = 24
            object Bevel3: TBevel
              Left = 0
              Top = 25
              Width = 1512
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
            object edtnmproduto: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnChange = edtnmprodutoChange
              OnKeyDown = edtnmprodutoKeyDown
            end
            object edtcdproduto: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdprodutoKeyPress
            end
            object ToolBar4: TToolBar
              Left = 0
              Top = 0
              Width = 1512
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
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
            object lsvproduto: TcxListView
              Left = 0
              Top = 66
              Width = 1512
              Height = 781
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
              ExplicitLeft = -2
              ExplicitTop = 46
            end
          end
          object tbsgrupo: TcxTabSheet
            Caption = 'Grupo'
            ImageIndex = 69
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
            object Bevel4: TBevel
              Left = 0
              Top = 25
              Width = 1512
              Height = 41
              Align = alTop
            end
            object edtnmgrupo: TEdit
              Left = 106
              Top = 41
              Width = 335
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnChange = edtnmgrupoChange
              OnKeyDown = edtnmgrupoKeyDown
            end
            object edtcdgrupo: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdgrupoKeyPress
            end
            object ToolBar7: TToolBar
              Left = 0
              Top = 0
              Width = 1512
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
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
            object lsvgrupo: TcxListView
              Left = 0
              Top = 66
              Width = 1512
              Height = 781
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
          object tbsfornecedor: TcxTabSheet
            Caption = 'Fornecedor'
            ImageIndex = 36
            object lblcdfornecedor: TLabel
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
            object Bevel5: TBevel
              Left = 0
              Top = 25
              Width = 1512
              Height = 41
              Align = alTop
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
              OnKeyDown = edtcdfornecedorKeyDown
              OnKeyPress = edtcdfornecedorKeyPress
            end
            object edtnmfornecedor: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnChange = edtnmfornecedorChange
              OnKeyDown = edtnmfornecedorKeyDown
            end
            object edtcdfornecedor: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyDown = edtcdfornecedorKeyDown
              OnKeyPress = edtcdfornecedorKeyPress
            end
            object ToolBar3: TToolBar
              Left = 0
              Top = 0
              Width = 1512
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
            object lsvfornecedor: TcxListView
              Left = 0
              Top = 66
              Width = 1512
              Height = 781
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
          object tbscliente: TcxTabSheet
            Caption = 'Cliente'
            ImageIndex = 35
            OnClick = actfecharExecute
            object Label7: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object lblcdcliente: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Bevel1: TBevel
              Left = 0
              Top = 25
              Width = 1512
              Height = 41
              Align = alTop
            end
            object lsvcliente: TcxListView
              Left = 0
              Top = 66
              Width = 1512
              Height = 781
              Align = alClient
              Columns = <
                item
                  Caption = 'C'#243'digo'
                  Width = 100
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
              TabOrder = 0
              ViewStyle = vsReport
            end
            object edtcdcliente: TEdit
              Left = 4
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
            end
            object edtnmcliente: TEdit
              Left = 108
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
            end
            object ToolBar2: TToolBar
              Left = 0
              Top = 0
              Width = 1512
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 3
              Transparent = True
              object ToolButton3: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton3Click
              end
              object ToolButton6: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton6Click
              end
              object ToolButton11: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton11Click
              end
            end
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'texto'
      object mem: TRichEdit
        Left = 0
        Top = 0
        Width = 1512
        Height = 960
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        PlainText = True
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
        Zoom = 100
      end
    end
  end
  object spl1: TcxSplitter
    Left = 400
    Top = 57
    Width = 8
    Height = 960
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 57
    Width = 400
    Height = 960
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
    object actsalvar: TAction
      Caption = 'Salvar'
      Hint = 'Salvar'
      ImageIndex = 2
      Visible = False
      OnExecute = actsalvarExecute
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
      Caption = 'cproduto'
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
          ItemName = 'dxbrlrgbtnsalvar'
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
      Action = actsalvar
      Category = 0
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

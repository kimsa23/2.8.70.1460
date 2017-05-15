object frmConsultaSaida: TfrmConsultaSaida
  Left = 175
  Top = 169
  BorderStyle = bsSingle
  ClientHeight = 653
  ClientWidth = 1117
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ntb: TNotebook
    Left = 377
    Top = 61
    Width = 740
    Height = 592
    Align = alClient
    TabOrder = 0
    OnPageChanged = ntbPageChanged
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 740
        Height = 592
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object lblinicial: TLabel
          Left = 5
          Top = 33
          Width = 27
          Height = 13
          Caption = 'Inicial'
          Transparent = True
          Visible = False
        end
        object lblfinal: TLabel
          Left = 97
          Top = 33
          Width = 22
          Height = 13
          Caption = 'Final'
          Transparent = True
          Visible = False
        end
        object lblpeso: TLabel
          Left = 7
          Top = 69
          Width = 67
          Height = 13
          Caption = 'Faixa de Peso'
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 0
          Top = 19
          Width = 740
          Height = 96
          Align = alTop
        end
        object pgc: TcxPageControl
          Left = 0
          Top = 115
          Width = 740
          Height = 477
          Align = alClient
          TabOrder = 4
          Properties.ActivePage = tbscliente
          Properties.CustomButtons.Buttons = <>
          Properties.Images = dtmmain.imlMain
          LookAndFeel.NativeStyle = False
          ClientRectBottom = 477
          ClientRectRight = 740
          ClientRectTop = 25
          object tbscliente: TcxTabSheet
            Caption = 'Cliente'
            ImageIndex = 35
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel2: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object lblnmcliente: TLabel
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
            object edtcdcliente: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdclienteKeyPress
            end
            object edtnmcliente: TEdit
              Left = 108
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmclienteChange
              OnKeyDown = edtnmclienteKeyDown
            end
            object ToolBar3: TToolBar
              Left = 0
              Top = 0
              Width = 740
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
              Top = 66
              Width = 740
              Height = 386
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
              TabOrder = 3
              ViewStyle = vsReport
            end
          end
          object tbsrepresentante: TcxTabSheet
            Caption = 'Representante'
            ImageIndex = 42
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel4: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object Label6: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Label5: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object edtcdrepresentante: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdrepresentanteKeyPress
            end
            object edtnmrepresentante: TEdit
              Left = 108
              Top = 41
              Width = 335
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmrepresentanteChange
              OnKeyDown = edtnmrepresentanteKeyDown
            end
            object ToolBar7: TToolBar
              Left = 0
              Top = 0
              Width = 740
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
            object lsvrepresentante: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
              TabOrder = 3
              ViewStyle = vsReport
            end
          end
          object tbsuf: TcxTabSheet
            Caption = 'Unidade Federativa'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel3: TBevel
              Left = 0
              Top = 25
              Width = 740
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
            object edtnmuf: TEdit
              Left = 108
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnChange = edtnmufChange
              OnKeyDown = edtnmufKeyDown
            end
            object edtcduf: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdufKeyPress
            end
            object ToolBar4: TToolBar
              Left = 0
              Top = 0
              Width = 740
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
            object lsvuf: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
          object tbsproduto: TcxTabSheet
            Caption = 'Produto'
            ImageIndex = 24
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel7: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object Label9: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label10: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object ckbprodutoacabado: TcxCheckBox
              Left = 548
              Top = 39
              Caption = 'Produto Acabado'
              TabOrder = 3
              Transparent = True
            end
            object ckbprodutoinversa: TcxCheckBox
              Left = 444
              Top = 39
              Caption = 'Sele'#231#227'o inversa'
              TabOrder = 2
              Transparent = True
            end
            object ToolBar5: TToolBar
              Left = 0
              Top = 0
              Width = 740
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 4
              Transparent = True
              object ToolButton17: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton17Click
              end
              object ToolButton18: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton18Click
              end
              object ToolButton20: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton20Click
              end
            end
            object edtnmproduto: TEdit
              Left = 108
              Top = 41
              Width = 334
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
              TabOrder = 0
              OnKeyPress = edtcdprodutoKeyPress
            end
            object lsvproduto: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
              TabOrder = 5
              ViewStyle = vsReport
            end
          end
          object tbstpsaida: TcxTabSheet
            Caption = 'Tipo Nota Fiscal'
            ImageIndex = 19
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel8: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object Label11: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label12: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object ToolBar6: TToolBar
              Left = 0
              Top = 0
              Width = 740
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
              Transparent = True
              object ToolButton28: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton28Click
              end
              object ToolButton29: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton29Click
              end
              object ToolButton31: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton31Click
              end
            end
            object edtnmtpsaida: TEdit
              Left = 108
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmtpsaidaChange
              OnKeyDown = edtnmtpsaidaKeyDown
            end
            object edtcdtpsaida: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 2
              OnKeyPress = edtcdtpsaidaKeyPress
            end
            object lsvtpsaida: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
          object tbsgrupo: TcxTabSheet
            Caption = 'Grupo'
            ImageIndex = 69
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel9: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object Label14: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Label13: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object ToolBar9: TToolBar
              Left = 0
              Top = 0
              Width = 740
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
              Transparent = True
              object ToolButton32: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton32Click
              end
              object ToolButton33: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton33Click
              end
              object ToolButton35: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton35Click
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
              Left = 108
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmgrupoChange
              OnKeyDown = edtnmgrupoKeyDown
            end
            object lsvgrupo: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
          object tbsrota: TcxTabSheet
            Caption = 'Rota'
            ImageIndex = 38
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel10: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object Label16: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Label15: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object edtcdrota: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdrotaKeyPress
            end
            object edtnmrota: TEdit
              Left = 108
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmrotaChange
              OnKeyDown = edtnmrotaKeyDown
            end
            object ToolBar10: TToolBar
              Left = 0
              Top = 0
              Width = 740
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              object ToolButton36: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton36Click
              end
              object ToolButton37: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton37Click
              end
              object ToolButton39: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton39Click
              end
            end
            object lsvrota: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel11: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object Label17: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object lblcdfornecedor: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object edtcdfornecedor: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdfornecedorKeyPress
            end
            object edtnmfornecedor: TEdit
              Left = 108
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmfornecedorChange
              OnKeyDown = edtnmfornecedorKeyDown
            end
            object ToolBar11: TToolBar
              Left = 0
              Top = 0
              Width = 740
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              object ToolButton40: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton40Click
              end
              object ToolButton41: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton41Click
              end
              object ToolButton43: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton43Click
              end
            end
            object lsvfornecedor: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
          object tbscondpagto: TcxTabSheet
            Caption = 'Condi'#231#227'o Pagamento'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label18: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Label19: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Bevel12: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object ToolBar8: TToolBar
              Left = 0
              Top = 0
              Width = 740
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
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
            object edtcdcondpagto: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdcondpagtoKeyPress
            end
            object edtnmcondpagto: TEdit
              Left = 108
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmcondpagtoChange
              OnKeyDown = edtnmcondpagtoKeyDown
            end
            object lsvcondpagto: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
          object tbstpcobranca: TcxTabSheet
            Caption = 'Tipo Cobran'#231'a'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel13: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object Label20: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label21: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object ToolBar12: TToolBar
              Left = 0
              Top = 0
              Width = 740
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
                ImageIndex = 0
                OnClick = ToolButton15Click
              end
              object ToolButton19: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton19Click
              end
              object ToolButton23: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton23Click
              end
            end
            object edtnmtpcobranca: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmtpcobrancaChange
              OnKeyDown = edtnmtpcobrancaKeyDown
            end
            object edtcdtpcobranca: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 2
              OnKeyPress = edtcdtpcobrancaKeyPress
            end
            object lsvtpcobranca: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
          object tbsmunicipio: TcxTabSheet
            Caption = 'Munic'#237'pio'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel5: TBevel
              Left = 0
              Top = 25
              Width = 740
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
            object ToolBar1: TToolBar
              Left = 0
              Top = 0
              Width = 740
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
              Transparent = True
              object ToolButton4: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton4Click
              end
              object ToolButton5: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton5Click
              end
              object ToolButton38: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton38Click
              end
            end
            object edtnmmunicipio: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmmunicipioChange
              OnKeyDown = edtnmmunicipioKeyDown
            end
            object edtcdmunicipio: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 2
              OnKeyPress = edtcdmunicipioKeyPress
            end
            object lsvmunicipio: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
          object tbscfop: TcxTabSheet
            Caption = 'CFOP'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel6: TBevel
              Left = 0
              Top = 25
              Width = 740
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
              Width = 740
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
              Transparent = True
              object ToolButton7: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton7Click
              end
              object ToolButton13: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton13Click
              end
              object ToolButton14: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton14Click
              end
            end
            object edtcdcfop: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdcfopKeyPress
            end
            object edtnmcfop: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmcfopChange
              OnKeyDown = edtnmcfopKeyDown
            end
            object lsvcfop: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
          object tbsstdocumento: TcxTabSheet
            Caption = 'Situa'#231#227'o Documento'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label22: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label23: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Bevel14: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object edtnmstdocumento: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnChange = edtnmstdocumentoChange
              OnKeyDown = edtnmstdocumentoKeyDown
            end
            object edtnustdocumento: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtnustdocumentoKeyPress
            end
            object ToolBar13: TToolBar
              Left = 0
              Top = 0
              Width = 740
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              object ToolButton16: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton16Click
              end
              object ToolButton25: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton25Click
              end
              object ToolButton26: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton26Click
              end
            end
            object lsvstdocumento: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
          object tbsserie: TcxTabSheet
            Caption = 'S'#233'rie'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel15: TBevel
              Left = 0
              Top = 25
              Width = 740
              Height = 41
              Align = alTop
            end
            object Label24: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label25: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object ToolBar14: TToolBar
              Left = 0
              Top = 0
              Width = 740
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              object ToolButton27: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton27Click
              end
              object ToolButton30: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton30Click
              end
              object ToolButton34: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton34Click
              end
            end
            object edtnmserie: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmserieChange
              OnKeyDown = edtnmserieKeyDown
            end
            object edtcdserie: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdserieKeyPress
            end
            object lsvserie: TcxListView
              Left = 0
              Top = 66
              Width = 740
              Height = 386
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
        object edtdtf: TcxDateEdit
          Left = 95
          Top = 48
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 88
        end
        object edtdti: TcxDateEdit
          Left = 3
          Top = 48
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 88
        end
        object edtpesof: TcxCalcEdit
          Left = 95
          Top = 83
          EditValue = 0.000000000000000000
          Properties.Alignment.Horz = taRightJustify
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Width = 88
        end
        object edtpesoi: TcxCalcEdit
          Left = 3
          Top = 83
          EditValue = 0.000000000000000000
          Properties.Alignment.Horz = taRightJustify
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Width = 88
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 740
          Height = 19
          Align = alTop
          Alignment = taLeftJustify
          BevelInner = bvLowered
          BevelOuter = bvNone
          Caption = 'Configure as op'#231#245'es do relat'#243'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 5
        end
        object ckbnrecebido: TcxCheckBox
          Left = 535
          Top = 78
          Caption = 'Somente N'#227'o Recebido'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Visible = False
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'texto'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mem: TRichEdit
        Left = 0
        Top = 0
        Width = 740
        Height = 592
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
    Left = 369
    Top = 61
    Width = 8
    Height = 592
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 61
    Width = 369
    Height = 592
    Align = alLeft
    AutoExpand = True
    HideSelection = False
    Indent = 19
    ReadOnly = True
    RowSelect = True
    SortType = stData
    TabOrder = 6
    OnChange = trvChange
  end
  object pnl: TcxLabel
    Left = 0
    Top = 38
    Align = alTop
    Caption = 'Consulta Nota Fiscal'
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
  object ActionList1: TActionList
    Images = dtmmain.imlMain
    Left = 309
    Top = 65535
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
      Caption = 'csaida'
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

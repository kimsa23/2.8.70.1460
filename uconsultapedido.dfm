object frmConsultaPedido: TfrmConsultaPedido
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
  object ntb: TNotebook
    Left = 283
    Top = 61
    Width = 1637
    Height = 956
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
        Width = 1637
        Height = 956
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object bvl: TBevel
          Left = 0
          Top = 0
          Width = 1637
          Height = 85
          Align = alTop
        end
        object lbldsdesenho: TLabel
          Left = 5
          Top = 43
          Width = 43
          Height = 13
          Caption = 'Desenho'
          Transparent = True
          Visible = False
        end
        object lblemissao: TLabel
          Left = 5
          Top = 6
          Width = 39
          Height = 13
          Caption = 'Emiss'#227'o'
          Transparent = True
        end
        object lblateemissao: TLabel
          Left = 106
          Top = 27
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
        end
        object lblentrega: TLabel
          Left = 225
          Top = 6
          Width = 81
          Height = 13
          Caption = 'Previs'#227'o Entrega'
          Transparent = True
        end
        object lblateentrega: TLabel
          Left = 326
          Top = 27
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
        end
        object lblfechamento: TLabel
          Left = 445
          Top = 6
          Width = 59
          Height = 13
          Caption = 'Fechamento'
          Transparent = True
        end
        object lblatefechamento: TLabel
          Left = 546
          Top = 27
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
        end
        object edtdtfechamentoi: TcxDateEdit
          Left = 445
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Width = 97
        end
        object edtdtemissaoi: TcxDateEdit
          Left = 5
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Width = 97
        end
        object edtdtemissaof: TcxDateEdit
          Left = 128
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Width = 97
        end
        object edtdtentregai: TcxDateEdit
          Left = 225
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Width = 97
        end
        object edtdtentregaf: TcxDateEdit
          Left = 348
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Width = 97
        end
        object edtdtfechamentof: TcxDateEdit
          Left = 568
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Width = 97
        end
        object pgc: TcxPageControl
          Left = 0
          Top = 85
          Width = 1637
          Height = 871
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tbscliente
          Properties.CustomButtons.Buttons = <>
          Properties.Images = dtmmain.imlMain
          LookAndFeel.NativeStyle = False
          ClientRectBottom = 871
          ClientRectRight = 1637
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
              Width = 1637
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
            object ToolBar3: TToolBar
              Left = 0
              Top = 0
              Width = 1637
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
              object ToolButton8: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton8Click
              end
            end
            object edtcdcliente: TEdit
              Left = 4
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdclienteKeyPress
            end
            object edtnmcliente: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmclienteChange
              OnKeyDown = edtnmclienteKeyDown
            end
            object lsvcliente: TcxListView
              Left = 0
              Top = 66
              Width = 1637
              Height = 780
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
          object tbsstpedido: TcxTabSheet
            Caption = '&Status'
            ImageIndex = 25
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
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
            object Bevel3: TBevel
              Left = 0
              Top = 25
              Width = 1637
              Height = 41
              Align = alTop
            end
            object ToolBar4: TToolBar
              Left = 0
              Top = 0
              Width = 1637
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
            object edtnmstpedido: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmstpedidoChange
              OnKeyDown = edtnmstpedidoKeyDown
            end
            object edtcdstpedido: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 2
              OnKeyPress = edtcdstpedidoKeyPress
            end
            object lsvstpedido: TcxListView
              Left = 0
              Top = 66
              Width = 1637
              Height = 780
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
          object tbsrepresentante: TcxTabSheet
            Caption = '&Representante'
            ImageIndex = 42
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel4: TBevel
              Left = 0
              Top = 25
              Width = 1637
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
            object ToolBar7: TToolBar
              Left = 0
              Top = 0
              Width = 1637
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
            object edtcdrepresentante: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdrepresentanteKeyPress
            end
            object edtnmrepresentante: TEdit
              Left = 106
              Top = 41
              Width = 335
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmrepresentanteChange
              OnKeyDown = edtnmrepresentanteKeyDown
            end
            object lsvrepresentante: TcxListView
              Left = 0
              Top = 66
              Width = 1637
              Height = 780
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
            Caption = '&Grupo'
            ImageIndex = 69
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
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
            object Bevel5: TBevel
              Left = 0
              Top = 25
              Width = 1637
              Height = 41
              Align = alTop
            end
            object ToolBar1: TToolBar
              Left = 0
              Top = 0
              Width = 1637
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
              object ToolButton7: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton7Click
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
              Width = 1637
              Height = 780
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
            Caption = 'C&ondi'#231#227'o Pagamento'
            ImageIndex = 47
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel7: TBevel
              Left = 0
              Top = 25
              Width = 1637
              Height = 41
              Align = alTop
            end
            object Label10: TLabel
              Left = 108
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
            object ToolBar5: TToolBar
              Left = 0
              Top = 0
              Width = 1637
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
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
            object edtcdcondpagto: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdcondpagtoKeyPress
            end
            object edtnmcondpagto: TEdit
              Left = 106
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
              Width = 1637
              Height = 780
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
            object Label13: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label14: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Bevel9: TBevel
              Left = 0
              Top = 25
              Width = 1637
              Height = 41
              Align = alTop
            end
            object ToolBar9: TToolBar
              Left = 0
              Top = 0
              Width = 1637
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
              Width = 1637
              Height = 780
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
          object tbstppedido: TcxTabSheet
            Caption = 'Tipo'
            ImageIndex = 25
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel11: TBevel
              Left = 0
              Top = 25
              Width = 1637
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
            object Label16: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object edtcdtppedido: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdtppedidoKeyPress
            end
            object edtnmtppedido: TEdit
              Left = 108
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmtppedidoChange
              OnKeyDown = edtnmtppedidoKeyDown
            end
            object ToolBar10: TToolBar
              Left = 0
              Top = 0
              Width = 1637
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              object ToolButton41: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton41Click
              end
              object ToolButton42: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton42Click
              end
              object ToolButton44: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton44Click
              end
            end
            object lsvtppedido: TcxListView
              Left = 0
              Top = 66
              Width = 1637
              Height = 780
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
          object tbspaciente: TcxTabSheet
            Caption = 'Paciente'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
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
            object Bevel1: TBevel
              Left = 0
              Top = 25
              Width = 1637
              Height = 41
              Align = alTop
            end
            object ToolBar2: TToolBar
              Left = 0
              Top = 0
              Width = 1637
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
            object edtcdpaciente: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdpacienteKeyPress
            end
            object edtnmpaciente: TEdit
              Left = 106
              Top = 41
              Width = 335
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmpacienteChange
              OnKeyDown = edtnmpacienteKeyDown
            end
            object lsvpaciente: TcxListView
              Left = 0
              Top = 66
              Width = 1637
              Height = 780
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
          object tbssfornecedor: TcxTabSheet
            Caption = 'Fornecedor'
            ImageIndex = 42
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          object tbsproduto: TcxTabSheet
            Caption = 'Produto'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel6: TBevel
              Left = 0
              Top = 25
              Width = 1637
              Height = 41
              Align = alTop
              ExplicitTop = 33
            end
            object Label11: TLabel
              Left = 116
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Label12: TLabel
              Left = 12
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object ToolBar6: TToolBar
              Left = 0
              Top = 0
              Width = 1637
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
              Transparent = True
              ExplicitTop = 8
              object ToolButton13: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton13Click
              end
              object ToolButton14: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton14Click
              end
              object ToolButton15: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton15Click
              end
            end
            object edtnmproduto: TEdit
              Left = 114
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmprodutoChange
              OnKeyDown = edtnmprodutoKeyDown
            end
            object edtcdproduto: TEdit
              Left = 11
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 2
              OnKeyPress = edtcdprodutoKeyPress
            end
            object lsvproduto: TcxListView
              Left = 0
              Top = 66
              Width = 1637
              Height = 780
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
        object edtdsdesenho: TcxTextEdit
          Left = 5
          Top = 60
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Visible = False
          Width = 402
        end
      end
    end
  end
  object spl1: TcxSplitter
    Left = 275
    Top = 61
    Width = 8
    Height = 956
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 61
    Width = 275
    Height = 956
    Align = alLeft
    AutoExpand = True
    HideSelection = False
    Indent = 19
    ReadOnly = True
    RowSelect = True
    SortType = stData
    TabOrder = 6
    OnChange = trvChange
    OnClick = trvClick
  end
  object pnl: TcxLabel
    Left = 0
    Top = 38
    Align = alTop
    Caption = 'Consulta Pedido'
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
    Left = 320
    Top = 8
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
      Caption = 'cpedido'
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

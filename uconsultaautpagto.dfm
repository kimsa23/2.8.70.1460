object frmConsultaAutpagto: TfrmConsultaAutpagto
  Left = 309
  Top = 123
  Hint = 'Fechar'
  BorderStyle = bsSingle
  ClientHeight = 512
  ClientWidth = 1000
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
  object ntb: TNotebook
    Left = 292
    Top = 61
    Width = 708
    Height = 451
    Align = alClient
    TabOrder = 1
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 708
        Height = 451
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel8: TBevel
          Left = 0
          Top = 0
          Width = 708
          Height = 129
          Align = alTop
          ExplicitWidth = 947
        end
        object Bevel4: TBevel
          Left = 0
          Top = 129
          Width = 708
          Height = 322
          Align = alClient
          ExplicitWidth = 947
          ExplicitHeight = 381
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
        object lblateemissao: TLabel
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
        object lblbaixa: TLabel
          Left = 8
          Top = 47
          Width = 26
          Height = 13
          Caption = 'Baixa'
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
        object lblinicial: TLabel
          Left = 96
          Top = 8
          Width = 27
          Height = 13
          Caption = 'Inicial'
          Transparent = True
          Visible = False
        end
        object lblfinal: TLabel
          Left = 192
          Top = 8
          Width = 22
          Height = 13
          Caption = 'Final'
          Transparent = True
          Visible = False
        end
        object lbldshistorico: TLabel
          Left = 8
          Top = 88
          Width = 41
          Height = 13
          Caption = 'Hist'#243'rico'
          Transparent = True
          Visible = False
        end
        object lblentrada: TLabel
          Left = 230
          Top = 47
          Width = 37
          Height = 13
          Caption = 'Entrada'
          Transparent = True
          Visible = False
        end
        object lblateentrada: TLabel
          Left = 331
          Top = 68
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lblorder: TLabel
          Left = 451
          Top = 8
          Width = 47
          Height = 13
          Caption = 'Classificar'
          Transparent = True
          Visible = False
        end
        object cbxtpdata: TComboBox
          Left = 8
          Top = 23
          Width = 82
          Height = 21
          ItemIndex = 0
          TabOrder = 3
          Text = 'Emiss'#227'o'
          Visible = False
          Items.Strings = (
            'Emiss'#227'o'
            'Vencimento'
            'Baixa'
            'Entrada')
        end
        object edtdtfE: TcxDateEdit
          Left = 131
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Visible = False
          Width = 97
        end
        object edtdtf: TcxDateEdit
          Left = 190
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 15
          Visible = False
          Width = 88
        end
        object edtdti: TcxDateEdit
          Left = 94
          Top = 23
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          Visible = False
          Width = 88
        end
        object edtdtfn: TcxDateEdit
          Left = 353
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Visible = False
          Width = 97
        end
        object edtdtin: TcxDateEdit
          Left = 230
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
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
          TabOrder = 9
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
          TabOrder = 11
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
          TabOrder = 10
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
          TabOrder = 6
          Visible = False
          Width = 97
        end
        object pgc: TcxPageControl
          Left = 0
          Top = 129
          Width = 708
          Height = 322
          Align = alClient
          TabOrder = 0
          Visible = False
          Properties.ActivePage = tbsfornecedor
          Properties.CustomButtons.Buttons = <>
          Properties.Images = dtmmain.imlMain
          LookAndFeel.NativeStyle = False
          ClientRectBottom = 322
          ClientRectRight = 708
          ClientRectTop = 25
          object tbsfornecedor: TcxTabSheet
            Caption = 'Fornecedor'
            ImageIndex = 36
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel2: TBevel
              Left = 0
              Top = 25
              Width = 708
              Height = 41
              Align = alTop
              ExplicitWidth = 947
            end
            object lblnmfornecedor: TLabel
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
            object ckbfornecedorinversa: TcxCheckBox
              Left = 444
              Top = 39
              Caption = 'Sele'#231#227'o inversa'
              TabOrder = 5
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
              TabOrder = 0
              Text = '   .   .   -  '
              Visible = False
            end
            object edtcdfornecedor: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdfornecedorKeyPress
            end
            object edtnmfornecedor: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmfornecedorChange
              OnKeyDown = edtnmfornecedorKeyDown
            end
            object ToolBar3: TToolBar
              Left = 0
              Top = 0
              Width = 708
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 3
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
              Width = 708
              Height = 231
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
          object tbsstautpagto: TcxTabSheet
            Caption = 'Status'
            ImageIndex = 31
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel3: TBevel
              Left = 0
              Top = 25
              Width = 708
              Height = 41
              Align = alTop
              ExplicitWidth = 947
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
            object edtcdstautpagto: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdstautpagtoKeyPress
            end
            object edtnmstautpagto: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmstautpagtoChange
              OnKeyDown = edtnmstautpagtoKeyDown
            end
            object ToolBar4: TToolBar
              Left = 0
              Top = 0
              Width = 708
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              ExplicitWidth = 947
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
            object lsvstautpagto: TcxListView
              Left = 0
              Top = 66
              Width = 708
              Height = 231
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
          object tbsstaprovacao: TcxTabSheet
            Caption = 'Status Encontro de Contas'
            ImageIndex = 21
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel5: TBevel
              Left = 0
              Top = 25
              Width = 708
              Height = 41
              Align = alTop
              ExplicitWidth = 947
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
              Width = 708
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
              Transparent = True
              ExplicitWidth = 947
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
            object edtcdstencontrocontas: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdstencontrocontasKeyPress
            end
            object edtnmstencontrocontas: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmstencontrocontasChange
              OnKeyDown = edtnmstencontrocontasKeyDown
            end
            object lsvstaprovacao: TcxListView
              Left = 0
              Top = 66
              Width = 708
              Height = 231
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
          object tbscntcusto: TcxTabSheet
            Caption = 'Centro Custo'
            ImageIndex = 71
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel6: TBevel
              Left = 0
              Top = 25
              Width = 708
              Height = 41
              Align = alTop
              ExplicitWidth = 947
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
            object edtcdcntcusto: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdcntcustoKeyPress
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
            object ToolBar2: TToolBar
              Left = 0
              Top = 0
              Width = 708
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              ExplicitWidth = 947
              object ToolButton15: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton15Click
              end
              object ToolButton16: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton16Click
              end
              object ToolButton18: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton18Click
              end
            end
            object lsvcntcusto: TcxListView
              Left = 0
              Top = 66
              Width = 708
              Height = 231
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
          object tbsplconta: TcxTabSheet
            Caption = 'Plano Contas'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel7: TBevel
              Left = 0
              Top = 25
              Width = 708
              Height = 41
              Align = alTop
              ExplicitWidth = 947
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
            object edtnmplconta: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnChange = edtnmplcontaChange
              OnKeyDown = edtnmplcontaKeyDown
            end
            object edtcdplconta: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdplcontaKeyPress
            end
            object ToolBar5: TToolBar
              Left = 0
              Top = 0
              Width = 708
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              ExplicitWidth = 947
              object ToolButton19: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton19Click
              end
              object ToolButton20: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton20Click
              end
              object ToolButton22: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton22Click
              end
            end
            object lsvplconta: TcxListView
              Left = 0
              Top = 66
              Width = 708
              Height = 231
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
          object tbstpentrada: TcxTabSheet
            Caption = 'Tipo Compra'
            ImageIndex = 27
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel1: TBevel
              Left = 0
              Top = 25
              Width = 708
              Height = 41
              Align = alTop
              ExplicitWidth = 947
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
            object edtcdtpentrada: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdtpentradaKeyPress
            end
            object edtnmtpentrada: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmtpentradaChange
              OnKeyDown = edtnmtpentradaKeyDown
            end
            object ToolBar6: TToolBar
              Left = 0
              Top = 0
              Width = 708
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              ExplicitWidth = 947
              object ToolButton23: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton23Click
              end
              object ToolButton24: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton24Click
              end
              object ToolButton29: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton29Click
              end
            end
            object lsvtpentrada: TcxListView
              Left = 0
              Top = 66
              Width = 708
              Height = 231
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
            object Bevel9: TBevel
              Left = 0
              Top = 25
              Width = 708
              Height = 41
              Align = alTop
              ExplicitWidth = 947
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
            object ToolBar7: TToolBar
              Left = 0
              Top = 0
              Width = 708
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
              Transparent = True
              ExplicitWidth = 947
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
              Width = 708
              Height = 231
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
          object tbsempresa: TcxTabSheet
            Caption = 'Empresa'
            ImageIndex = 74
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel14: TBevel
              Left = 0
              Top = 25
              Width = 708
              Height = 41
              Align = alTop
              ExplicitWidth = 947
            end
            object Label21: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label22: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object ToolBar10: TToolBar
              Left = 0
              Top = 0
              Width = 708
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
              Transparent = True
              ExplicitWidth = 947
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
              object ToolButton17: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton17Click
              end
            end
            object edtnmempresa: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmempresaChange
              OnKeyDown = edtnmempresaKeyDown
            end
            object edtcdempresa: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 2
              OnKeyPress = edtcdempresaKeyPress
            end
            object lsvempresa: TcxListView
              Left = 0
              Top = 66
              Width = 708
              Height = 231
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
        end
        object ckbsentrada: TcxCheckBox
          Left = 456
          Top = 64
          Caption = 's/ Nota Fiscal Compra'
          TabOrder = 1
          Transparent = True
          Visible = False
        end
        object edtdshistorico: TcxTextEdit
          Left = 8
          Top = 102
          TabOrder = 2
          Visible = False
          Width = 402
        end
        object cbxorder: TComboBox
          Left = 449
          Top = 22
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Text = 'C'#243'digo'
          Visible = False
          Items.Strings = (
            'C'#243'digo'
            'Data Emiss'#227'o'
            'Data Vencimento'
            'Data Prorroga'#231#227'o'
            'Data Baixa'
            'Valor'
            'C'#243'digo Fornecedor'
            'Nome Fornecedor')
        end
        object rdgorder: TRadioGroup
          Left = 595
          Top = 16
          Width = 94
          Height = 28
          Caption = 'Ordem'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Asc'
            'Desc')
          TabOrder = 5
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
    end
  end
  object spl1: TcxSplitter
    Left = 284
    Top = 61
    Width = 8
    Height = 451
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 61
    Width = 284
    Height = 451
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
    Caption = 'Consulta Contas a Pagar'
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
      Caption = 'cautpagto'
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

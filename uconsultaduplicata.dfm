object frmConsultaDuplicata: TfrmConsultaDuplicata
  Left = 293
  Top = 187
  ClientHeight = 660
  ClientWidth = 1300
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
  object pnl: TPanel
    Left = 0
    Top = 38
    Width = 1300
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Consulta Contas a Receber'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object ntb: TNotebook
    Left = 313
    Top = 57
    Width = 987
    Height = 603
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
        Width = 987
        Height = 603
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 987
          Height = 89
          Align = alTop
          ExplicitWidth = 992
        end
        object Bevel6: TBevel
          Left = 0
          Top = 89
          Width = 987
          Height = 514
          Align = alClient
          ExplicitWidth = 992
          ExplicitHeight = 500
        end
        object lble: TLabel
          Left = 276
          Top = 7
          Width = 39
          Height = 13
          Caption = 'Emiss'#227'o'
          Transparent = True
          Visible = False
        end
        object lblatee: TLabel
          Left = 374
          Top = 28
          Width = 16
          Height = 13
          Caption = '&At'#233
          Visible = False
        end
        object lblv: TLabel
          Left = 6
          Top = 47
          Width = 56
          Height = 13
          Caption = 'Vencimento'
          Transparent = True
          Visible = False
        end
        object lblatev: TLabel
          Left = 107
          Top = 68
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lblb: TLabel
          Left = 225
          Top = 47
          Width = 26
          Height = 13
          Caption = 'Baixa'
          Transparent = True
          Visible = False
        end
        object lblateb: TLabel
          Left = 326
          Top = 68
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lbli: TLabel
          Left = 96
          Top = 7
          Width = 27
          Height = 13
          Caption = 'Inicial'
          Transparent = True
          Visible = False
        end
        object lblf: TLabel
          Left = 192
          Top = 7
          Width = 22
          Height = 13
          Caption = 'Final'
          Transparent = True
          Visible = False
        end
        object lblorder: TLabel
          Left = 644
          Top = 7
          Width = 47
          Height = 13
          Caption = 'Classificar'
          Transparent = True
          Visible = False
        end
        object cbxtpdata: TcxComboBox
          Left = 8
          Top = 21
          Properties.Items.Strings = (
            'Emiss'#227'o'
            'Vencimento'
            'Baixa')
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Text = 'Emiss'#227'o'
          Width = 82
        end
        object cbxclassificar: TcxComboBox
          Left = 642
          Top = 21
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            'C'#243'digo'
            'Data Emiss'#227'o'
            'Data Vencimento'
            'Data Prorroga'#231#227'o'
            'Data Baixa'
            'Valor'
            'C'#243'digo Cliente'
            'Nome Cliente'
            'Raz'#227'o Social')
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Text = 'C'#243'digo'
          Visible = False
          OnEnter = colorenter
          OnExit = colorexit
          Width = 145
        end
        object edtdtfE: TcxDateEdit
          Left = 394
          Top = 21
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Visible = False
          OnEnter = colorenter
          OnExit = colorexit
          Width = 97
        end
        object edtdtiE: TcxDateEdit
          Left = 276
          Top = 21
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Visible = False
          OnEnter = colorenter
          OnExit = colorexit
          Width = 97
        end
        object edtdtf: TcxDateEdit
          Left = 186
          Top = 21
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Visible = False
          OnEnter = colorenter
          OnExit = colorexit
          Width = 88
        end
        object edtdti: TcxDateEdit
          Left = 94
          Top = 21
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Visible = False
          OnEnter = colorenter
          OnExit = colorexit
          Width = 88
        end
        object edtdtiv: TcxDateEdit
          Left = 5
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Visible = False
          OnEnter = colorenter
          OnExit = colorexit
          Width = 97
        end
        object edtdtfv: TcxDateEdit
          Left = 127
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Visible = False
          OnEnter = colorenter
          OnExit = colorexit
          Width = 97
        end
        object edtdtib: TcxDateEdit
          Left = 225
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Visible = False
          OnEnter = colorenter
          OnExit = colorexit
          Width = 97
        end
        object edtdtfb: TcxDateEdit
          Left = 348
          Top = 63
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          Visible = False
          OnEnter = colorenter
          OnExit = colorexit
          Width = 97
        end
        object pgc: TcxPageControl
          Left = 0
          Top = 89
          Width = 987
          Height = 514
          Align = alClient
          TabOrder = 1
          Visible = False
          Properties.ActivePage = tbscliente
          Properties.CustomButtons.Buttons = <>
          Properties.Images = dtmmain.imlMain
          LookAndFeel.NativeStyle = False
          ClientRectBottom = 514
          ClientRectRight = 987
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
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
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
            object edtcdcliente: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyDown = edtnucnpjcpfKeyDown
              OnKeyPress = edtnucnpjcpfKeyPress
            end
            object edtnmcliente: TEdit
              Left = 106
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
              Width = 987
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
              Width = 987
              Height = 423
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
              TabOrder = 4
              ViewStyle = vsReport
            end
          end
          object tbsstduplicata: TcxTabSheet
            Caption = '&Status'
            ImageIndex = 32
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel3: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
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
              Width = 987
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
            object edtnmstduplicata: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmstduplicataChange
              OnKeyDown = edtnmstduplicataKeyDown
            end
            object edtcdstduplicata: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 2
              OnKeyPress = edtcdstduplicataKeyPress
            end
            object lsvstduplicata: TcxListView
              Left = 0
              Top = 66
              Width = 987
              Height = 423
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
            Caption = '&Representante'
            ImageIndex = 42
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel4: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
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
              Width = 987
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
              Width = 987
              Height = 423
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
          object tbstpcobranca: TcxTabSheet
            Caption = 'Tipo Cobran'#231'a'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel5: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
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
            object edtcdtpcobranca: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdtpcobrancaKeyPress
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
            object ToolBar1: TToolBar
              Left = 0
              Top = 0
              Width = 987
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
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
            object lsvtpcobranca: TcxListView
              Left = 0
              Top = 66
              Width = 987
              Height = 423
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
            object Bevel8: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
            end
            object Label12: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Label11: TLabel
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
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmrotaChange
              OnKeyDown = edtnmrotaKeyDown
            end
            object ToolBar6: TToolBar
              Left = 0
              Top = 0
              Width = 987
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
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
            object lsvrota: TcxListView
              Left = 0
              Top = 66
              Width = 987
              Height = 423
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
            Caption = 'Status Encontro Contas'
            ImageIndex = 21
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel7: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
            end
            object Label7: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Label8: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object edtcdstaprovacao: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdstaprovacaoKeyPress
            end
            object edtnmstaprovacao: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmstaprovacaoChange
              OnKeyDown = edtnmstaprovacaoKeyDown
            end
            object ToolBar2: TToolBar
              Left = 0
              Top = 0
              Width = 987
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
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
              object ToolButton16: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton16Click
              end
            end
            object lsvstaprovacao: TcxListView
              Left = 0
              Top = 66
              Width = 987
              Height = 423
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
          object tbsuf: TcxTabSheet
            Caption = '&Unidade Federativa'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel9: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
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
            object edtcduf: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
            end
            object edtnmuf: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
            end
            object ToolBar5: TToolBar
              Left = 0
              Top = 0
              Width = 987
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
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
            object lsvuf: TcxListView
              Left = 0
              Top = 66
              Width = 987
              Height = 423
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
          object tbsstcliente: TcxTabSheet
            Caption = 'Status Cliente'
            ImageIndex = 35
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel10: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
            end
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
            object edtnmstcliente: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnChange = edtnmstclienteChange
              OnKeyDown = edtnmstclienteKeyDown
            end
            object edtcdstcliente: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdstclienteKeyPress
            end
            object ToolBar9: TToolBar
              Left = 0
              Top = 0
              Width = 987
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              object ToolButton34: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton34Click
              end
              object ToolButton35: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton35Click
              end
              object ToolButton37: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton37Click
              end
            end
            object lsvstcliente: TcxListView
              Left = 0
              Top = 66
              Width = 987
              Height = 423
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
            object Bevel12: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
            end
            object Label17: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label18: TLabel
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
            object ToolBar11: TToolBar
              Left = 0
              Top = 0
              Width = 987
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              object ToolButton42: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton42Click
              end
              object ToolButton43: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton43Click
              end
              object ToolButton45: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton45Click
              end
            end
            object lsvplconta: TcxListView
              Left = 0
              Top = 66
              Width = 987
              Height = 423
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
          object tbstpcliente: TcxTabSheet
            Caption = 'Tipo Cliente'
            ImageIndex = 35
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel13: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
            end
            object Label20: TLabel
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
            object edtcdtpcliente: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdtpclienteKeyPress
            end
            object edtnmtpcliente: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmtpclienteChange
              OnKeyDown = edtnmtpclienteKeyDown
            end
            object ToolBar12: TToolBar
              Left = 0
              Top = 0
              Width = 987
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
              Transparent = True
              object ToolButton46: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton46Click
              end
              object ToolButton47: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton47Click
              end
              object ToolButton49: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton49Click
              end
            end
            object lsvtpcliente: TcxListView
              Left = 0
              Top = 66
              Width = 987
              Height = 423
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
          object tbstpfaturamento: TcxTabSheet
            Caption = 'Tipo Faturamento'
            ImageIndex = 128
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label15: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label16: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Bevel11: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
            end
            object ToolBar8: TToolBar
              Left = 0
              Top = 0
              Width = 987
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
            object edtcdtpfaturamento: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdtpfaturamentoKeyPress
            end
            object edtnmtpfaturamento: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmtpfaturamentoChange
              OnKeyDown = edtnmtpfaturamentoKeyDown
            end
            object lsvtpfaturamento: TcxListView
              Left = 0
              Top = 66
              Width = 987
              Height = 423
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
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
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
              Width = 987
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
              Width = 987
              Height = 423
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
          object tbsproduto: TcxTabSheet
            Caption = 'Produto'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label23: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label24: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Bevel15: TBevel
              Left = 0
              Top = 25
              Width = 987
              Height = 41
              Align = alTop
              ExplicitWidth = 992
            end
            object ToolBar13: TToolBar
              Left = 0
              Top = 0
              Width = 987
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 0
              Transparent = True
              object ToolButton25: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = 'Adicionar'
                ImageIndex = 0
                OnClick = ToolButton25Click
              end
              object ToolButton26: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton26Click
              end
              object ToolButton27: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton27Click
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
              TabOrder = 2
              OnKeyPress = edtcdprodutoKeyPress
            end
            object lsvproduto: TcxListView
              Left = 0
              Top = 66
              Width = 987
              Height = 423
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
        object ckbrepresentante: TCheckBox
          Left = 447
          Top = 63
          Width = 131
          Height = 17
          Caption = 'Quebra Representante'
          TabOrder = 2
          Visible = False
        end
        object ckbmunicipio: TCheckBox
          Left = 578
          Top = 63
          Width = 106
          Height = 17
          Caption = 'Quebra Munic'#237'pio'
          TabOrder = 3
          Visible = False
        end
        object ckbjuros: TCheckBox
          Left = 688
          Top = 63
          Width = 55
          Height = 17
          Caption = 'Juros'
          TabOrder = 4
          Visible = False
        end
        object rdgorder: TRadioGroup
          Left = 788
          Top = 15
          Width = 94
          Height = 28
          Caption = 'Ordem'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Asc'
            'Desc')
          TabOrder = 6
          Visible = False
        end
      end
    end
  end
  object spl1: TcxSplitter
    Left = 309
    Top = 57
    Width = 4
    Height = 603
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 57
    Width = 309
    Height = 603
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
    Left = 341
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
      Caption = 'consultaduplicata'
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

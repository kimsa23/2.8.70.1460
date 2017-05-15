object frmConsultaMovBancario: TfrmConsultaMovBancario
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
    Caption = 'Consulta Movimento Banc'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object ntb: TNotebook
    Left = 413
    Top = 57
    Width = 1507
    Height = 960
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
        Width = 1507
        Height = 88
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel5: TBevel
          Left = 0
          Top = 0
          Width = 1507
          Height = 88
          Align = alClient
          Shape = bsTopLine
        end
        object lbldata: TLabel
          Left = 8
          Top = 7
          Width = 23
          Height = 13
          Caption = 'Data'
          Transparent = True
          Visible = False
        end
        object lblatedata: TLabel
          Left = 104
          Top = 27
          Width = 16
          Height = 13
          Caption = '&At'#233
          Visible = False
        end
        object edtdataf: TcxDateEdit
          Left = 123
          Top = 21
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Visible = False
          Width = 88
        end
        object edtdatai: TcxDateEdit
          Left = 8
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Visible = False
          Width = 93
        end
        object ckbconciliado: TCheckBox
          Left = 212
          Top = 22
          Width = 97
          Height = 17
          Caption = 'Conciliado'
          TabOrder = 0
          Visible = False
        end
        object rdgtpvalor: TRadioGroup
          Left = 8
          Top = 44
          Width = 367
          Height = 33
          Caption = 'Tipo de Valor'
          Columns = 4
          ItemIndex = 3
          Items.Strings = (
            'Baixa'
            'Saldo'
            'Original Venc.'
            'Original Emis.')
          TabOrder = 1
          Visible = False
        end
      end
      object pgc: TcxPageControl
        Left = 0
        Top = 88
        Width = 1507
        Height = 872
        Align = alClient
        TabOrder = 1
        Visible = False
        Properties.ActivePage = tbsconta
        Properties.CustomButtons.Buttons = <>
        Properties.Images = dtmmain.imlMain
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 872
        ClientRectRight = 1507
        ClientRectTop = 25
        object tbsconta: TcxTabSheet
          Caption = 'Conta'
          ImageIndex = 46
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel3: TBevel
            Left = 0
            Top = 25
            Width = 1507
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
            Width = 1507
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
          object edtnmconta: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmcontaChange
            OnKeyDown = edtnmcontaKeyDown
          end
          object edtcdconta: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdcontaKeyPress
          end
          object lsvconta: TcxListView
            Left = 0
            Top = 66
            Width = 1507
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
        object tbsmovimentacao: TcxTabSheet
          Caption = 'Movimenta'#231#227'o'
          ImageIndex = 18
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel2: TBevel
            Left = 0
            Top = 25
            Width = 1507
            Height = 41
            Align = alTop
          end
          object Label1: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Label2: TLabel
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
            Width = 1507
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
          object edtcdmovimentacao: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdmovimentacaoKeyPress
          end
          object edtnmmovimentacao: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmmovimentacaoChange
            OnKeyDown = edtnmmovimentacaoKeyDown
          end
          object lsvmovimentacao: TcxListView
            Left = 0
            Top = 66
            Width = 1507
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
        object tbsplconta: TcxTabSheet
          Caption = 'Plano Contas'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel6: TBevel
            Left = 0
            Top = 25
            Width = 1507
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
          object ToolBar7: TToolBar
            Left = 0
            Top = 0
            Width = 1507
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
          object edtcdplconta: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdplcontaKeyPress
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
          object lsvplconta: TcxListView
            Left = 0
            Top = 66
            Width = 1507
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
        object tbscliente: TcxTabSheet
          Caption = 'Cliente'
          ImageIndex = 35
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel7: TBevel
            Left = 0
            Top = 25
            Width = 1507
            Height = 41
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
          object edtcdcliente: TEdit
            Left = 3
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
            TabOrder = 0
            OnChange = edtnmclienteChange
            OnKeyDown = edtnmclienteKeyDown
          end
          object ckbclienteinversa: TCheckBox
            Left = 444
            Top = 39
            Width = 97
            Height = 24
            Caption = 'Sele'#231#227'o inversa'
            TabOrder = 2
          end
          object ToolBar3: TToolBar
            Left = 0
            Top = 0
            Width = 1507
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 3
            Transparent = True
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
          object lsvcliente: TcxListView
            Left = 0
            Top = 66
            Width = 1507
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
        object tbsstadntcliente: TcxTabSheet
          Caption = 'Status Adnt Cliente'
          ImageIndex = 20
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel8: TBevel
            Left = 0
            Top = 25
            Width = 1507
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
            Width = 1507
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
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
            object ToolButton29: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton29Click
            end
          end
          object edtcdstadntcliente: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdstadntclienteKeyPress
          end
          object edtnmstadntcliente: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmstadntclienteChange
            OnKeyDown = edtnmstadntclienteKeyDown
          end
          object lsvstadntcliente: TcxListView
            Left = 0
            Top = 66
            Width = 1507
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
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel9: TBevel
            Left = 0
            Top = 25
            Width = 1507
            Height = 41
            Align = alTop
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
          object edtcdfornecedor: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 0
            OnKeyPress = edtcdfornecedorKeyPress
          end
          object edtnmfornecedor: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmfornecedorChange
            OnKeyDown = edtnmfornecedorKeyDown
          end
          object ckbfornecedorinversa: TCheckBox
            Left = 444
            Top = 39
            Width = 97
            Height = 24
            Caption = 'Sele'#231#227'o inversa'
            TabOrder = 2
          end
          object ToolBar6: TToolBar
            Left = 0
            Top = 0
            Width = 1507
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 3
            Transparent = True
            object ToolButton30: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton30Click
            end
            object ToolButton31: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton31Click
            end
            object ToolButton33: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton33Click
            end
          end
          object lsvfornecedor: TcxListView
            Left = 0
            Top = 66
            Width = 1507
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
        object tbsstadntfornecedor: TcxTabSheet
          Caption = 'Status Adnt Fornecedor'
          ImageIndex = 20
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel10: TBevel
            Left = 0
            Top = 25
            Width = 1507
            Height = 41
            Align = alTop
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
          object edtcdstadntfornecedor: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 0
            OnKeyPress = edtcdstadntfornecedorKeyPress
          end
          object edtnmstadntfornecedor: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmstadntfornecedorChange
            OnKeyDown = edtnmstadntfornecedorKeyDown
          end
          object ToolBar9: TToolBar
            Left = 0
            Top = 0
            Width = 1507
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
          object lsvstadntfornecedor: TcxListView
            Left = 0
            Top = 66
            Width = 1507
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
        object tbscntcusto: TcxTabSheet
          Caption = 'Centro Custo'
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
          object Bevel1: TBevel
            Left = 0
            Top = 25
            Width = 1507
            Height = 41
            Align = alTop
          end
          object ToolBar8: TToolBar
            Left = 0
            Top = 0
            Width = 1507
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
            object ToolButton7: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton7Click
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
          object edtcdcntcusto: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdcntcustoKeyPress
          end
          object edtnmcntcusto: TEdit
            Left = 106
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmcntcustoChange
            OnKeyDown = edtnmcntcustoKeyDown
          end
          object lsvcntcusto: TcxListView
            Left = 0
            Top = 66
            Width = 1507
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
        object tbsempresa: TcxTabSheet
          Caption = 'Empresa'
          ImageIndex = 74
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel11: TBevel
            Left = 0
            Top = 25
            Width = 1507
            Height = 41
            Align = alTop
          end
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
          object ToolBar10: TToolBar
            Left = 0
            Top = 0
            Width = 1507
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
            TabOrder = 0
            OnKeyPress = edtcdempresaKeyPress
          end
          object lsvempresa: TcxListView
            Left = 0
            Top = 66
            Width = 1507
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
    Left = 405
    Top = 57
    Width = 8
    Height = 960
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 57
    Width = 405
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
      Caption = 'cmovbancario'
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

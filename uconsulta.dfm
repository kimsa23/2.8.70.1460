object frmconsulta: Tfrmconsulta
  Left = 342
  Top = 131
  BorderStyle = bsSingle
  ClientHeight = 550
  ClientWidth = 1374
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
    Width = 1374
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Consulta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object ntb: TNotebook
    Left = 358
    Top = 57
    Width = 1016
    Height = 493
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
        Width = 1016
        Height = 124
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblemissao: TLabel
          Left = 177
          Top = 4
          Width = 39
          Height = 13
          Caption = 'Emiss'#227'o'
          Transparent = True
          Visible = False
        end
        object lblvencimento: TLabel
          Left = 397
          Top = 4
          Width = 56
          Height = 13
          Caption = 'Vencimento'
          Transparent = True
          Visible = False
        end
        object lblatevencimento: TLabel
          Left = 498
          Top = 24
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lbltabela: TLabel
          Left = 449
          Top = 43
          Width = 33
          Height = 13
          Caption = 'Tabela'
          Transparent = True
          Visible = False
        end
        object lblateemissao: TLabel
          Left = 278
          Top = 24
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lblprventrega: TLabel
          Left = 7
          Top = 43
          Width = 41
          Height = 13
          Caption = 'Previs'#227'o'
          Transparent = True
          Visible = False
        end
        object lblateprventrega: TLabel
          Left = 108
          Top = 64
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lblentrega: TLabel
          Left = 228
          Top = 43
          Width = 37
          Height = 13
          Caption = 'Entrega'
          Transparent = True
          Visible = False
        end
        object lblateentrega: TLabel
          Left = 329
          Top = 64
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lbli: TLabel
          Left = 5
          Top = 4
          Width = 27
          Height = 13
          Caption = 'Inicial'
          Transparent = True
          Visible = False
        end
        object lblf: TLabel
          Left = 91
          Top = 4
          Width = 22
          Height = 13
          Caption = 'Final'
          Transparent = True
          Visible = False
        end
        object lblentrada: TLabel
          Left = 9
          Top = 81
          Width = 37
          Height = 13
          Caption = '&Entrada'
          Transparent = True
          Visible = False
        end
        object lblateentrada: TLabel
          Left = 108
          Top = 102
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lblsaida: TLabel
          Left = 228
          Top = 81
          Width = 29
          Height = 13
          Caption = '&Sa'#237'da'
          Transparent = True
          Visible = False
        end
        object lblatesaida: TLabel
          Left = 329
          Top = 102
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object lblorder: TLabel
          Left = 590
          Top = 81
          Width = 47
          Height = 13
          Caption = 'Classificar'
          Transparent = True
          Visible = False
        end
        object lblquebra: TLabel
          Left = 449
          Top = 81
          Width = 35
          Height = 13
          Caption = 'Quebra'
          Transparent = True
          Visible = False
        end
        object lbldttermino: TLabel
          Left = 617
          Top = 4
          Width = 38
          Height = 13
          Caption = 'T'#233'rmino'
          Transparent = True
          Visible = False
        end
        object lblatetermino: TLabel
          Left = 718
          Top = 24
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
          Visible = False
        end
        object edtdtvencimentof: TcxDateEdit
          Left = 520
          Top = 19
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Visible = False
          Width = 97
        end
        object edtdtvencimentoi: TcxDateEdit
          Left = 397
          Top = 19
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Visible = False
          Width = 97
        end
        object edtdtemissaof: TcxDateEdit
          Left = 300
          Top = 19
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Visible = False
          Width = 97
        end
        object edtdtemissaoi: TcxDateEdit
          Left = 177
          Top = 19
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Visible = False
          Width = 97
        end
        object edtdtprventregai: TcxDateEdit
          Left = 7
          Top = 59
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Visible = False
          Width = 97
        end
        object edtdtprventregaf: TcxDateEdit
          Left = 130
          Top = 59
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Visible = False
          Width = 97
        end
        object edtdtentregai: TcxDateEdit
          Left = 228
          Top = 59
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Visible = False
          Width = 97
        end
        object edtdtentregaf: TcxDateEdit
          Left = 351
          Top = 59
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Visible = False
          Width = 97
        end
        object cbxtabela: TComboBox
          Left = 449
          Top = 58
          Width = 139
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          Visible = False
          OnChange = cbxtabelaChange
          Items.Strings = (
            'Compra'
            'Movimenta'#231#227'o Estoque'
            'Nota Fiscal'
            'Ordem Servi'#231'o'
            'Pedido'
            'Movimento Banc'#225'rio')
        end
        object rdgtpcurvaabc: TRadioGroup
          Left = 590
          Top = 45
          Width = 104
          Height = 35
          Caption = 'Tipo Curva ABC'
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            'Qtd'
            'Valor')
          TabOrder = 1
          Visible = False
        end
        object rdgorientacao: TRadioGroup
          Left = 696
          Top = 45
          Width = 233
          Height = 35
          Caption = 'Orienta'#231#227'o'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Produto'
            'Cliente/Fornecedor')
          TabOrder = 2
          Visible = False
        end
        object edtdti: TcxDateEdit
          Left = 5
          Top = 19
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Visible = False
          Width = 84
        end
        object edtdtf: TcxDateEdit
          Left = 91
          Top = 19
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Visible = False
          Width = 84
        end
        object edtdtei: TcxDateEdit
          Left = 9
          Top = 97
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Visible = False
          Width = 97
        end
        object edtdtef: TcxDateEdit
          Left = 130
          Top = 97
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          Visible = False
          Width = 97
        end
        object edtdtsi: TcxDateEdit
          Left = 228
          Top = 97
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 15
          Visible = False
          Width = 97
        end
        object edtdtsf: TcxDateEdit
          Left = 351
          Top = 97
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 16
          Visible = False
          Width = 97
        end
        object cbxorder: TComboBox
          Left = 590
          Top = 97
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 17
          Text = 'Nome Cliente'
          Visible = False
          Items.Strings = (
            'C'#243'digo Cliente'
            'Nome Cliente'
            'N'#186'  O.S.'
            'Data Entrada'
            'N'#186' Serie')
        end
        object rdgorder: TRadioGroup
          Left = 830
          Top = 89
          Width = 99
          Height = 29
          Caption = 'Ordem'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Asc'
            'Desc')
          TabOrder = 18
          Visible = False
        end
        object cbxquebra: TComboBox
          Left = 449
          Top = 97
          Width = 105
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 19
          Text = 'Cliente'
          Visible = False
          Items.Strings = (
            'Cliente'
            'Etapa'
            'Status')
        end
        object edtdtterminoi: TcxDateEdit
          Left = 617
          Top = 19
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 20
          Visible = False
          Width = 97
        end
        object edtdtterminof: TcxDateEdit
          Left = 740
          Top = 19
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 21
          Visible = False
          Width = 97
        end
      end
      object pgc: TcxPageControl
        Left = 0
        Top = 124
        Width = 1016
        Height = 369
        Align = alClient
        TabOrder = 1
        Visible = False
        Properties.ActivePage = tbscliente
        Properties.CustomButtons.Buttons = <>
        Properties.Images = dtmmain.imlMain
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 369
        ClientRectRight = 1016
        ClientRectTop = 25
        object tbscliente: TcxTabSheet
          Caption = '&Cliente'
          ImageIndex = 35
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl4: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 40
            Align = alTop
            ExplicitTop = 27
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
            TabOrder = 2
            OnKeyPress = edtcdclienteKeyPress
          end
          object ToolBar6: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
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
          object lsvcliente: TcxListView
            Left = 0
            Top = 65
            Width = 1016
            Height = 279
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtnmcliente: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            OnChange = edtnmclienteChange
            OnKeyDown = edtnmclienteKeyDown
          end
          object ckbclienteinversa: TcxCheckBox
            Left = 444
            Top = 39
            Caption = 'Sele'#231#227'o inversa'
            TabOrder = 4
            Transparent = True
          end
        end
        object tbsremetente: TcxTabSheet
          Caption = 'Remetente'
          ImageIndex = 35
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel15: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label62: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label63: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar32: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton87: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton87Click
            end
            object ToolButton88: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton88Click
            end
            object ToolButton89: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton89Click
            end
          end
          object edtnmremetente: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmremetenteChange
            OnKeyDown = edtnmremetenteKeyDown
          end
          object edtcdremetente: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdremetenteKeyPress
          end
          object lsvremetente: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
        object tbsdestinatario: TcxTabSheet
          Caption = 'Destinat'#225'rio'
          ImageIndex = 35
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel16: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label64: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label65: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar33: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton90: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton90Click
            end
            object ToolButton91: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton91Click
            end
            object ToolButton92: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton92Click
            end
          end
          object edtnmdestinatario: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmdestinatarioChange
            OnKeyDown = edtnmdestinatarioKeyDown
          end
          object edtcddestinatario: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcddestinatarioKeyPress
          end
          object lsvdestinatario: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          Caption = '&Status Pedido'
          ImageIndex = 25
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label33: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Label34: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Bevel17: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object ToolBar17: TToolBar
            Left = 0
            Top = 0
            Width = 1016
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
              OnClick = ToolButton9Click
            end
            object ToolButton19: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton10Click
            end
            object ToolButton21: TToolButton
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
            Width = 1016
            Height = 278
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
          object Label35: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Label36: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Bevel18: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object ToolBar18: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton22: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton22Click
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
            Width = 1016
            Height = 278
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
          object bvl5: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
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
          object ToolBar9: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
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
          object lsvgrupo: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtcdgrupo: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 3
            OnKeyPress = edtcdgrupoKeyPress
          end
        end
        object tbscondpagto: TcxTabSheet
          Caption = 'C&ondi'#231#227'o Pagamento'
          ImageIndex = 47
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel21: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label41: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Label42: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object ToolBar21: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton48: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton48Click
            end
            object ToolButton52: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton52Click
            end
            object ToolButton56: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton56Click
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
            Width = 1016
            Height = 278
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
          object Label43: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label44: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Bevel22: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object ToolBar22: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton60: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton60Click
            end
            object ToolButton64: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton64Click
            end
            object ToolButton66: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton66Click
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
            Width = 1016
            Height = 278
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
          object Bevel23: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label45: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Label46: TLabel
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
          object ToolBar23: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 2
            Transparent = True
            object ToolButton67: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton41Click
            end
            object ToolButton68: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton42Click
            end
            object ToolButton69: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
            end
          end
          object lsvtppedido: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
        object tbsfuncionario: TcxTabSheet
          Caption = 'Funcion'#225'rio'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl1: TBevel
            Left = 0
            Top = 25
            Width = 1016
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
            Width = 1016
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
          object lsvfuncionario: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtnmfuncionario: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmfuncionarioChange
            OnKeyDown = edtnmfuncionarioKeyDown
          end
          object edtcdfuncionario: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 3
            OnKeyPress = edtcdfuncionarioKeyPress
          end
        end
        object tbsstordcompra: TcxTabSheet
          Caption = 'Status Ord Compra'
          ImageIndex = 77
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl2: TBevel
            Left = 0
            Top = 25
            Width = 1016
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
            Width = 1016
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
          object lsvstordcompra: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtnmstordcompra: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmstordcompraChange
            OnKeyDown = edtnmstordcompraKeyDown
          end
          object edtcdstordcompra: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 3
            OnKeyPress = edtcdstordcompraKeyPress
          end
        end
        object tbstpordcompra: TcxTabSheet
          Caption = 'Tipo Ord Compra'
          ImageIndex = 77
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel5: TBevel
            Left = 0
            Top = 25
            Width = 1016
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
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 1016
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
          object lsvtpordcompra: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtnmtpordcompra: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtpordcompraChange
            OnKeyDown = edtnmtpordcompraKeyDown
          end
          object edtcdtpordcompra: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 3
            OnKeyPress = edtcdtpordcompraKeyPress
          end
        end
        object tbsfornecedor: TcxTabSheet
          Caption = 'Fornecedor'
          ImageIndex = 36
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel6: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
            ExplicitTop = 27
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
          object ToolBar3: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton13: TToolButton
              Left = 0
              Top = 0
              Hint = 'Fechar'
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 133
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
          object lsvfornecedor: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtcdfornecedor: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 3
            OnKeyPress = edtcdfornecedorKeyPress
          end
        end
        object tbsTransportadora: TcxTabSheet
          Caption = 'Transportadora'
          ImageIndex = 16
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl3: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label9: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Label10: TLabel
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
            Width = 1016
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
          object lsvtransportadora: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtcdtransportadora: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdtransportadoraKeyPress
          end
          object edtnmtransportadora: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            OnChange = edtnmtransportadoraChange
            OnKeyDown = edtnmtransportadoraKeyDown
          end
        end
        object tbstpsaida: TcxTabSheet
          Caption = 'Tipo Nota Fiscal'
          ImageIndex = 19
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl6: TBevel
            Left = 0
            Top = 25
            Width = 1016
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
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton38: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton38Click
            end
            object ToolButton39: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton39Click
            end
            object ToolButton41: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton41Click
            end
          end
          object lsvtpsaida: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtnmtpsaida: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtpsaidaChange
            OnKeyDown = edtnmtpsaidaKeyDown
          end
          object edtcdtpsaida: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 3
            OnKeyPress = edtcdtpsaidaKeyPress
          end
        end
        object tbstpordserv: TcxTabSheet
          Caption = 'Tipo Ord Serv'
          ImageIndex = 64
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl7: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
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
          object ToolBar11: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
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
          object lsvtpordserv: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtcdtpordserv: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdtpordservKeyPress
          end
          object edtnmtpordserv: TEdit
            Left = 106
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            OnChange = edtnmtpordservChange
            OnKeyDown = edtnmtpordservKeyDown
          end
        end
        object tbstpentrada: TcxTabSheet
          Caption = 'Tipo Compra'
          ImageIndex = 27
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl8: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label19: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label20: TLabel
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
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
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
          object lsvtpentrada: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtcdtpentrada: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdtpentradaKeyPress
          end
          object edtnmtpentrada: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            OnChange = edtnmtpentradaChange
            OnKeyDown = edtnmtpentradaKeyDown
          end
        end
        object tbstpmovto: TcxTabSheet
          Caption = 'Tipo Movto'
          ImageIndex = 45
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl9: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label21: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Label22: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object ToolBar13: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton50: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton50Click
            end
            object ToolButton51: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton51Click
            end
            object ToolButton53: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton53Click
            end
          end
          object lsvtpmovto: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtcdtpmovto: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdtpmovtoKeyPress
          end
          object edtnmtpmovto: TEdit
            Left = 106
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            OnChange = edtnmtpmovtoChange
            OnKeyDown = edtnmtpmovtoKeyDown
          end
        end
        object tbsconta: TcxTabSheet
          Caption = 'Conta'
          ImageIndex = 46
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl10: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
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
          object ToolBar14: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton54: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton54Click
            end
            object ToolButton55: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton55Click
            end
            object ToolButton57: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton57Click
            end
          end
          object lsvconta: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtcdconta: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdcontaKeyPress
          end
          object edtnmconta: TEdit
            Left = 106
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            OnChange = edtnmcontaChange
            OnKeyDown = edtnmcontaKeyDown
          end
        end
        object tbsmovimentacao: TcxTabSheet
          Caption = 'Movimentacao'
          ImageIndex = 18
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl11: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label25: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label26: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar15: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton58: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton58Click
            end
            object ToolButton59: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton59Click
            end
            object ToolButton61: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton61Click
            end
          end
          object lsvmovimentacao: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtnmmovimentacao: TEdit
            Left = 106
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmmovimentacaoChange
            OnKeyDown = edtnmmovimentacaoKeyDown
          end
          object edtcdmovimentacao: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 3
            OnKeyPress = edtcdmovimentacaoKeyPress
          end
        end
        object tbsproduto: TcxTabSheet
          Caption = 'Produto'
          ImageIndex = 45
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel8: TBevel
            Left = 0
            Top = 25
            Width = 1016
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
          object ToolBar7: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
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
          object lsvproduto: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtcdproduto: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdprodutoKeyPress
          end
          object edtnmproduto: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            OnChange = edtnmprodutoChange
            OnKeyDown = edtnmprodutoKeyDown
          end
          object ckbprodutoinversa: TCheckBox
            Left = 444
            Top = 39
            Width = 97
            Height = 24
            Caption = 'Sele'#231#227'o inversa'
            TabOrder = 4
          end
        end
        object tbsstorcamento: TcxTabSheet
          Caption = 'Status Orcamento'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl13: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label31: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label32: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar8: TToolBar
            Left = 0
            Top = 0
            Width = 1016
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
          object lsvstorcamento: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtcdstorcamento: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdstorcamentoKeyPress
          end
          object edtnmstorcamento: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            OnChange = edtnmstorcamentoChange
            OnKeyDown = edtnmstorcamentoKeyDown
          end
        end
        object tbsstordproducao: TcxTabSheet
          Caption = 'Status Ordem Produ'#231#227'o'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel1: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label29: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label30: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar19: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton27: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton27Click
            end
            object ToolButton28: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton28Click
            end
            object ToolButton32: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton32Click
            end
          end
          object edtcdstordproducao: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdstordproducaoKeyPress
          end
          object edtnmstordproducao: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmstordproducaoChange
            OnKeyDown = edtnmstordproducaoKeyDown
          end
          object lsvstordproducao: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
        object tbstpordproducao: TcxTabSheet
          Caption = 'Tipo Ordem de Produ'#231#227'o'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel30: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label80: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Label81: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object lsvtpordproducao: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object edtcdtpordproducao: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdtpordproducaoKeyPress
          end
          object edtnmtpordproducao: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtpordproducaoChange
            OnKeyDown = edtnmtpordproducaoKeyDown
          end
          object ToolBar41: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 3
            Transparent = True
            object ToolButton112: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton112Click
            end
            object ToolButton113: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton113Click
            end
            object ToolButton114: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton114Click
            end
          end
        end
        object tbsstfornecedor: TcxTabSheet
          Caption = 'Status Fornecedor'
          ImageIndex = 36
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel3: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label37: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label38: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar24: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton70: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton70Click
            end
            object ToolButton71: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton71Click
            end
            object ToolButton72: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton72Click
            end
          end
          object edtnmstfornecedor: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmstfornecedorChange
            OnKeyDown = edtnmstfornecedorKeyDown
          end
          object edtcdstfornecedor: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdstfornecedorKeyPress
          end
          object lsvstfornecedor: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
          Caption = 'Unidade Federativa'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel4: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label47: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label48: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object tlb1: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object btn1: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = btn1Click
            end
            object btn2: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = btn2Click
            end
            object btn3: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = btn3Click
            end
          end
          object edtnmuf: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmufChange
            OnKeyDown = edtnmufKeyDown
          end
          object edtcduf: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdufKeyPress
          end
          object lsvuf: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbsstrim: TcxTabSheet
          Caption = 'Status Requisi'#231#227'o Material'
          ImageIndex = 50
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel2: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label49: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label50: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar25: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object btnadicionarrim: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = btnadicionarrimClick
            end
            object btnexcluirstrim: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = btnexcluirstrimClick
            end
            object btnexcluirtodasstrim: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = btnexcluirtodasstrimClick
            end
          end
          object edtcdrim: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdrimKeyPress
          end
          object edtnmstrim: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmstrimChange
            OnKeyDown = edtnmstrimKeyDown
          end
          object lsvstrim: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
          object Bevel7: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label51: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label52: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar26: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object btnadicionarcntcusto: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = btnadicionarcntcustoClick
            end
            object btnexcluircntcusto: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = btnexcluircntcustoClick
            end
            object btnexcluirtodascntcusto: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = btnexcluirtodascntcustoClick
            end
          end
          object edtnmcntcusto: TEdit
            Left = 108
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
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
        object tbsitcontcliente: TcxTabSheet
          Caption = 'Contato Cliente'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel9: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label53: TLabel
            Left = 4
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object edtnmitcontcliente: TEdit
            Left = 3
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnKeyDown = edtnmitcontclienteKeyDown
          end
          object ToolBar27: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton73: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton73Click
            end
            object ToolButton74: TToolButton
              Left = 42
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton74Click
            end
          end
          object lsvnmitcontcliente: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbsclfornecedor: TcxTabSheet
          Caption = 'Classifica'#231#227'o IQF'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label39: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label40: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Bevel10: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object ToolBar20: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton36: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton36Click
            end
            object ToolButton40: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton40Click
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
          object edtnmclfornecedor: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmclfornecedorChange
            OnKeyDown = edtnmclfornecedorKeyDown
          end
          object edtclfornecedor: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtclfornecedorKeyPress
          end
          object lsvclfornecedor: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
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
        object tbsufinicio: TcxTabSheet
          Caption = 'UF In'#237'cio'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label54: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label55: TLabel
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
            Width = 1016
            Height = 41
            Align = alTop
          end
          object ToolBar28: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton75: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton75Click
            end
            object ToolButton76: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton76Click
            end
            object ToolButton77: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton77Click
            end
          end
          object edtnmufinicio: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmufinicioChange
            OnKeyDown = edtnmufinicioKeyDown
          end
          object edtcdufinicio: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdufinicioKeyPress
          end
          object lsvufinicio: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbsuftermino: TcxTabSheet
          Caption = 'UF T'#233'rmino'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label56: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label57: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Bevel12: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object ToolBar29: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton78: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton78Click
            end
            object ToolButton79: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton79Click
            end
            object ToolButton80: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton80Click
            end
          end
          object edtnmuftermino: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmufterminoChange
            OnKeyDown = edtnmufterminoKeyDown
          end
          object edtcduftermino: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdufterminoKeyPress
          end
          object lsvuftermino: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbsmunicipioinicio: TcxTabSheet
          Caption = 'Munic'#237'pio In'#237'cio'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label58: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label59: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Bevel13: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object ToolBar30: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton81: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton81Click
            end
            object ToolButton82: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton82Click
            end
            object ToolButton83: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton83Click
            end
          end
          object edtnmmunicipioinicio: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmmunicipioinicioChange
            OnKeyDown = edtnmmunicipioinicioKeyDown
          end
          object edtcdmunicipioinicio: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdmunicipioinicioKeyPress
          end
          object lsvmunicipioinicio: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbsmunicipiotermino: TcxTabSheet
          Caption = 'Munic'#237'pio T'#233'rmino'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label60: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label61: TLabel
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
            Width = 1016
            Height = 41
            Align = alTop
          end
          object ToolBar31: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton84: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton84Click
            end
            object ToolButton85: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton85Click
            end
            object ToolButton86: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton86Click
            end
          end
          object edtnmmunicipiotermino: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmmunicipioterminoChange
            OnKeyDown = edtnmmunicipioterminoKeyDown
          end
          object edtcdmunicipiotermino: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdmunicipioterminoKeyPress
          end
          object lsvmunicipiotermino: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbssttarefa: TcxTabSheet
          Caption = 'Status Tarefa'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel19: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label27: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label28: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar16: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton62: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton62Click
            end
            object ToolButton63: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton63Click
            end
            object ToolButton65: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton65Click
            end
          end
          object edtnmsttarefa: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmsttarefaChange
            OnKeyDown = edtnmsttarefaKeyDown
          end
          object edtcdsttarefa: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdsttarefaKeyPress
          end
          object lsvsttarefa: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbstptarefa: TcxTabSheet
          Caption = 'Tipo Tarefa'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel20: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label66: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label67: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar34: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton93: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton93Click
            end
            object ToolButton94: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton94Click
            end
            object ToolButton95: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton95Click
            end
          end
          object edtnmtptarefa: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmtptarefaChange
            OnKeyDown = edtnmtptarefaKeyDown
          end
          object edtcdtptarefa: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdtptarefaKeyPress
          end
          object lsvtptarefa: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbstptarefa1: TcxTabSheet
          Caption = 'Tipo 1 Tarefa'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel24: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label68: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label69: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar35: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton96: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton96Click
            end
            object ToolButton97: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton97Click
            end
            object ToolButton98: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton98Click
            end
          end
          object edtnmtptarefa1: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmtptarefa1Change
            OnKeyDown = edtnmtptarefa1KeyDown
          end
          object edtcdtptarefa1: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdtptarefa1KeyPress
          end
          object lsvtptarefa1: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbsprioridade: TcxTabSheet
          Caption = 'Prioridade'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel25: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label70: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label71: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar36: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar1'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object btnPrioridadeAdicionar: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = btnPrioridadeAdicionarClick
            end
            object btnPrioridadeExcluir: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = btnPrioridadeExcluirClick
            end
            object ToolButton99: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton99Click
            end
          end
          object edtnmprioridade: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmprioridadeChange
            OnKeyDown = edtnmprioridadeKeyDown
          end
          object edtcdprioridade: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdprioridadeKeyPress
          end
          object lsvprioridade: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbsatendente: TcxTabSheet
          Caption = 'Atendente'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel26: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label72: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label73: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar37: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton100: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton100Click
            end
            object ToolButton101: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton101Click
            end
            object ToolButton102: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton102Click
            end
          end
          object edtnmatendente: TEdit
            Left = 108
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmatendenteChange
            OnKeyDown = edtnmatendenteKeyDown
          end
          object edtcdatendente: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdatendenteKeyPress
          end
          object lsvatendente: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbstecnico: TcxTabSheet
          Caption = 'T'#233'cnico'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label87: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label88: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Bevel34: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object ToolBar45: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton129: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton129Click
            end
            object ToolButton130: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton130Click
            end
            object ToolButton131: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton131Click
            end
          end
          object edtcdtecnico: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdtecnicoKeyPress
          end
          object edtnmtecnico: TEdit
            Left = 108
            Top = 41
            Width = 335
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtecnicoChange
            OnKeyDown = edtnmtecnicoKeyDown
          end
          object lsvtecnico: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbsequipamento: TcxTabSheet
          Caption = 'Equipamento'
          ImageIndex = 95
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label76: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label77: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Bevel28: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object edtcdequipamento: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 0
            OnKeyPress = edtcdequipamentoKeyPress
          end
          object edtnmequipamento: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmequipamentoChange
            OnKeyDown = edtnmequipamentoKeyDown
          end
          object ToolBar39: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar1'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 2
            Transparent = True
            object ToolButton106: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton106Click
            end
            object ToolButton107: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton107Click
            end
            object ToolButton108: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton108Click
            end
          end
          object lsvequipamento: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbsetapa: TcxTabSheet
          Caption = 'Etapa'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel29: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label78: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label79: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar40: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar1'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton109: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton109Click
            end
            object ToolButton110: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton110Click
            end
            object ToolButton111: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton111Click
            end
          end
          object edtnmetapa: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = edtnmetapaChange
            OnKeyDown = edtnmetapaKeyDown
          end
          object edtcdetapa: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
            OnKeyPress = edtcdetapaKeyPress
          end
          object lsvetapa: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvltpcliente: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object lbl1: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object lbl2: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object lsvtpcliente: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
            TabOrder = 0
            ViewStyle = vsReport
          end
          object edtcdtpcliente: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdtpclienteKeyPress
          end
          object edtnmtpcliente: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtpclienteChange
            OnKeyDown = edtnmtpclienteKeyDown
          end
          object tlb2: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar1'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 3
            Transparent = True
            object ToolButton115: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton115Click
            end
            object ToolButton116: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton116Click
            end
            object ToolButton117: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton117Click
            end
          end
        end
        object tbsstordserv: TcxTabSheet
          Caption = 'Status Ord Servi'#231'o'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl12: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object lbl3: TLabel
            Left = 109
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object lbl4: TLabel
            Left = 5
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object lsvstordserv: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
            TabOrder = 0
            ViewStyle = vsReport
          end
          object edtcdstordserv: TEdit
            Left = 3
            Top = 39
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdstordservKeyPress
          end
          object edtnmstordserv: TEdit
            Left = 107
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmstordservChange
            OnKeyDown = edtnmstordservKeyDown
          end
          object tlb3: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar1'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 3
            Transparent = True
            object ToolButton118: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton118Click
            end
            object ToolButton119: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton119Click
            end
            object ToolButton120: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton120Click
            end
          end
        end
        object tbstprpa: TcxTabSheet
          Caption = 'Tipo RPA'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel31: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label82: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label83: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar43: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton124: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton124Click
            end
            object ToolButton125: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton125Click
            end
            object ToolButton126: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton126Click
            end
          end
          object edtcdtprpa: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdtprpaKeyPress
          end
          object edtnmtprpa: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtprpaChange
            OnKeyDown = edtnmtprpaKeyDown
          end
          object lsvtprpa: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbstpparada: TcxTabSheet
          Caption = 'Tipo Parada'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel32: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label84: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label85: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar42: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton121: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton121Click
            end
            object ToolButton122: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton122Click
            end
            object ToolButton123: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton123Click
            end
          end
          object edtcdtpparada: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdtpparadaKeyPress
          end
          object edtnmtpparada: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtpparadaChange
            OnKeyDown = edtnmtpparadaKeyDown
          end
          object lsvtpparada: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbstag: TcxTabSheet
          Caption = 'Tag'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel33: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object Label86: TLabel
            Left = 4
            Top = 27
            Width = 19
            Height = 13
            Caption = 'Tag'
            Transparent = True
          end
          object ToolBar44: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton127: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton127Click
            end
            object ToolButton128: TToolButton
              Left = 42
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton128Click
            end
          end
          object edtdstag: TEdit
            Left = 3
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnKeyDown = edtdstagKeyDown
          end
          object lsvdstag: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
            Align = alClient
            Columns = <
              item
                Caption = 'Tag'
                Width = 400
              end>
            MultiSelect = True
            RowSelect = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            ViewStyle = vsReport
          end
        end
        object tbsstitordproducaorecurso: TcxTabSheet
          Caption = 'Status Recurso'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label74: TLabel
            Left = 5
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label75: TLabel
            Left = 109
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Bevel27: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object ToolBar38: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar1'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton103: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton103Click
            end
            object ToolButton104: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton104Click
            end
            object ToolButton105: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton105Click
            end
          end
          object edtcdstitordproducaorecurso: TEdit
            Left = 3
            Top = 39
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdstitordproducaorecursoKeyPress
          end
          object edtnmstitordproducaorecurso: TEdit
            Left = 107
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmstitordproducaorecursoChange
            OnKeyDown = edtnmstitordproducaorecursoKeyDown
          end
          object lsvstitordproducaorecurso: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbstpequipamento: TcxTabSheet
          Caption = 'Tipo Equipamento'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lbl5: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object lbl6: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object bvl14: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
          end
          object tlb4: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object btn4: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = btn4Click
            end
            object btn5: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = btn5Click
            end
            object btn6: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = btn6Click
            end
          end
          object edtcdtpequipamento: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdtpequipamentoKeyPress
          end
          object edtnmtpequipamento: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtpequipamentoChange
            OnKeyDown = edtnmtpequipamentoKeyDown
          end
          object lsvtpequipamento: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbstporcamento: TcxTabSheet
          Caption = 'Tipo Or'#231'amento'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label89: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label90: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Bevel35: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
            ExplicitTop = 27
          end
          object ToolBar46: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton132: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton132Click
            end
            object ToolButton133: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton133Click
            end
            object ToolButton134: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton134Click
            end
          end
          object edtcdtporcamento: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdtporcamentoKeyPress
          end
          object edtnmtporcamento: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtporcamentoChange
            OnKeyDown = edtnmtporcamentoKeyDown
          end
          object lsvtporcamento: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbstpfornecedor: TcxTabSheet
          Caption = 'Tipo Fornecedor'
          ImageIndex = 36
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label91: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label92: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object Bevel36: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
            ExplicitTop = 27
          end
          object ToolBar47: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton135: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton135Click
            end
            object ToolButton136: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton136Click
            end
            object ToolButton137: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton137Click
            end
          end
          object edtcdtpfornecedor: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdtpfornecedorKeyPress
          end
          object edtnmtpfornecedor: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtpfornecedorChange
            OnKeyDown = edtnmtpfornecedorKeyDown
          end
          object lsvtpfornecedor: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
        object tbstptreinamento: TcxTabSheet
          Caption = 'Tipo de Treinamento'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel37: TBevel
            Left = 0
            Top = 27
            Width = 1016
            Height = 41
            Align = alTop
            ExplicitTop = 33
          end
          object Label93: TLabel
            Left = 12
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label94: TLabel
            Left = 116
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar48: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 27
            AutoSize = True
            ButtonHeight = 23
            ButtonWidth = 75
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton138: TToolButton
              Left = 0
              Top = 0
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton138Click
            end
            object ToolButton139: TToolButton
              Left = 75
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton139Click
            end
            object ToolButton140: TToolButton
              Left = 120
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton140Click
            end
          end
          object edtcdtptreinamento: TEdit
            Left = 11
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdtptreinamentoKeyPress
          end
          object edtnmtptreinamento: TEdit
            Left = 116
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtptreinamentoChange
            OnKeyDown = edtnmtptreinamentoKeyDown
          end
          object lsvtptreinamento: TcxListView
            Left = 0
            Top = 68
            Width = 1016
            Height = 276
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
        object tbstpexameperiodico: TcxTabSheet
          Caption = 'Tipo de Exame Peri'#243'dico'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel38: TBevel
            Left = 0
            Top = 25
            Width = 1016
            Height = 41
            Align = alTop
            ExplicitTop = 33
          end
          object Label95: TLabel
            Left = 12
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label96: TLabel
            Left = 116
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar49: TToolBar
            Left = 0
            Top = 0
            Width = 1016
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
            object ToolButton141: TToolButton
              Left = 0
              Top = 0
              Caption = 'Adicionar'
              ImageIndex = 0
              OnClick = ToolButton141Click
            end
            object ToolButton142: TToolButton
              Left = 71
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
              OnClick = ToolButton142Click
            end
            object ToolButton143: TToolButton
              Left = 113
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
              OnClick = ToolButton143Click
            end
          end
          object edtcdtpexameperiodico: TEdit
            Left = 11
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 1
            OnKeyPress = edtcdtpexameperiodicoKeyPress
          end
          object edtnmtpexameperiodico: TEdit
            Left = 116
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = edtnmtpexameperiodicoChange
            OnKeyDown = edtnmtpexameperiodicoKeyDown
          end
          object lsvtpexameperiodico: TcxListView
            Left = 0
            Top = 66
            Width = 1016
            Height = 278
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
  end
  object spl1: TcxSplitter
    Left = 350
    Top = 57
    Width = 8
    Height = 493
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 57
    Width = 350
    Height = 493
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
      Caption = 'consulta'
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

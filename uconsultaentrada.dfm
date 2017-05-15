object frmConsultaEntrada: TfrmConsultaEntrada
  Left = 667
  Top = 149
  BorderStyle = bsSingle
  Caption = #39
  ClientHeight = 683
  ClientWidth = 1265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl: TPanel
    Left = 0
    Top = 38
    Width = 1265
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Consulta Compra'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object ntb: TNotebook
    Left = 301
    Top = 57
    Width = 964
    Height = 626
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
        Width = 964
        Height = 88
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblorder: TLabel
          Left = 9
          Top = 48
          Width = 16
          Height = 13
          Caption = 'Por'
          Transparent = True
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
        object lblentrada: TLabel
          Left = 225
          Top = 6
          Width = 37
          Height = 13
          Caption = 'Entrada'
          Transparent = True
        end
        object lblateentrada: TLabel
          Left = 326
          Top = 27
          Width = 16
          Height = 13
          Caption = '&At'#233
          Transparent = True
        end
        object edtdtentradaf: TcxDateEdit
          Left = 348
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Width = 97
        end
        object edtdtentradai: TcxDateEdit
          Left = 225
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Width = 97
        end
        object edtdtemissaof: TcxDateEdit
          Left = 128
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Width = 97
        end
        object edtdtemissaoi: TcxDateEdit
          Left = 5
          Top = 22
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Width = 97
        end
        object ckbresumo: TcxCheckBox
          Left = 522
          Top = 18
          Caption = 'Resumo'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Transparent = True
          Visible = False
        end
        object cbxpor: TcxComboBox
          Left = 9
          Top = 62
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Fornecedor/Produto'
            'Produto/Fornecedor')
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = 'Fornecedor/Produto'
          Width = 121
        end
        object rdgPeriodicidade: TcxRadioGroup
          Left = 136
          Top = 45
          Caption = 'Periodicidade'
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Semestral'
            end
            item
              Caption = 'Quadrimestral'
            end
            item
              Caption = 'Trimestral'
            end>
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 37
          Width = 269
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 88
        Width = 964
        Height = 538
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pgc: TcxPageControl
          Left = 0
          Top = 0
          Width = 964
          Height = 538
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tbsfornecedor
          Properties.CustomButtons.Buttons = <>
          Properties.Images = dtmmain.imlMain
          Properties.NavigatorPosition = npLeftTop
          LookAndFeel.NativeStyle = False
          ClientRectBottom = 538
          ClientRectRight = 964
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
              Width = 964
              Height = 41
              Align = alTop
            end
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
              OnKeyPress = edtcdfornecedorKeyPress
            end
            object ToolBar3: TToolBar
              Left = 0
              Top = 0
              Width = 964
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
              Width = 964
              Height = 447
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
              Width = 964
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
            object Label9: TLabel
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
            object ToolBar5: TToolBar
              Left = 0
              Top = 0
              Width = 964
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
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
            object lsvcliente: TcxListView
              Left = 0
              Top = 66
              Width = 964
              Height = 447
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
            object Bevel3: TBevel
              Left = 0
              Top = 25
              Width = 964
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
            object ToolBar4: TToolBar
              Left = 0
              Top = 0
              Width = 964
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
            object lsvtpentrada: TcxListView
              Left = 0
              Top = 66
              Width = 964
              Height = 447
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
            object Bevel4: TBevel
              Left = 0
              Top = 25
              Width = 964
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
            object ckbprodutoinversa: TcxCheckBox
              Left = 444
              Top = 39
              Caption = 'Sele'#231#227'o inversa'
              TabOrder = 4
              Transparent = True
            end
            object ToolBar7: TToolBar
              Left = 0
              Top = 0
              Width = 964
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
            object edtcdproduto: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdprodutoKeyPress
            end
            object edtnmproduto: TEdit
              Left = 106
              Top = 41
              Width = 335
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmprodutoChange
              OnKeyDown = edtnmprodutoKeyDown
            end
            object lsvproduto: TcxListView
              Left = 0
              Top = 66
              Width = 964
              Height = 447
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
            object Bevel5: TBevel
              Left = 0
              Top = 25
              Width = 964
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
              Width = 964
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
              Width = 964
              Height = 447
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
          object tbscfop: TcxTabSheet
            Caption = 'CFOP'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel6: TBevel
              Left = 0
              Top = 25
              Width = 964
              Height = 41
              Align = alTop
            end
            object Label8: TLabel
              Left = 108
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Nome'
              Transparent = True
            end
            object Label7: TLabel
              Left = 4
              Top = 27
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              Transparent = True
            end
            object ToolBar2: TToolBar
              Left = 0
              Top = 0
              Width = 964
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
              Width = 335
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmcfopChange
              OnKeyDown = edtnmcfopKeyDown
            end
            object lsvcfop: TcxListView
              Left = 0
              Top = 66
              Width = 964
              Height = 447
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
          object tbstpproduto: TcxTabSheet
            Caption = 'Tipo Produto'
            ImageIndex = 24
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel8: TBevel
              Left = 0
              Top = 25
              Width = 964
              Height = 41
              Align = alTop
            end
            object Label11: TLabel
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
            object edtcdtpproduto: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 0
              OnKeyPress = edtcdtpprodutoKeyPress
            end
            object edtnmtpproduto: TEdit
              Left = 106
              Top = 41
              Width = 335
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtnmtpprodutoChange
              OnKeyDown = edtnmtpprodutoKeyDown
            end
            object ToolBar6: TToolBar
              Left = 0
              Top = 0
              Width = 964
              Height = 25
              AutoSize = True
              ButtonHeight = 21
              ButtonWidth = 71
              Caption = 'ToolBar2'
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ShowCaptions = True
              TabOrder = 2
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
            object lsvtpproduto: TcxListView
              Left = 0
              Top = 66
              Width = 964
              Height = 447
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
            object Label12: TLabel
              Left = 4
              Top = 27
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label13: TLabel
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
              Width = 964
              Height = 41
              Align = alTop
            end
            object edtcdcntcusto: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdcntcustoKeyPress
            end
            object ToolBar8: TToolBar
              Left = 0
              Top = 0
              Width = 964
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
              object ToolButton26: TToolButton
                Left = 97
                Top = 0
                AutoSize = True
                Caption = 'Excluir Todas'
                ImageIndex = 3
                OnClick = ToolButton26Click
              end
            end
            object edtnmcntcusto: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmcntcustoChange
              OnKeyDown = edtnmcntcustoKeyDown
            end
            object lsvcntcusto: TcxListView
              Left = 0
              Top = 66
              Width = 964
              Height = 447
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
            object Bevel14: TBevel
              Left = 0
              Top = 25
              Width = 964
              Height = 41
              Align = alTop
            end
            object ToolBar10: TToolBar
              Left = 0
              Top = 0
              Width = 964
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
              object ToolButton3: TToolButton
                Left = 55
                Top = 0
                AutoSize = True
                Caption = 'Excluir'
                ImageIndex = 1
                OnClick = ToolButton3Click
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
            object edtcdempresa: TEdit
              Left = 3
              Top = 41
              Width = 102
              Height = 21
              TabOrder = 1
              OnKeyPress = edtcdempresaKeyPress
            end
            object edtnmempresa: TEdit
              Left = 106
              Top = 41
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = edtnmempresaChange
              OnKeyDown = edtnmempresaKeyDown
            end
            object lsvempresa: TcxListView
              Left = 0
              Top = 66
              Width = 964
              Height = 447
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
    Left = 293
    Top = 57
    Width = 8
    Height = 626
    Control = trv
  end
  object trv: TTreeView
    Left = 0
    Top = 57
    Width = 293
    Height = 626
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
      Caption = 'centrada'
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

object frmtpordserv: Tfrmtpordserv
  Left = 641
  Top = 139
  ClientHeight = 619
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 129
    Width = 883
    Height = 490
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 490
    ClientRectRight = 883
    ClientRectTop = 25
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 40
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 883
        Height = 465
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet5
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 465
        ClientRectRight = 883
        ClientRectTop = 24
        object cxTabSheet5: TcxTabSheet
          Caption = 'Guias'
          ImageIndex = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ckbboproduto: TcxDBCheckBox
            Left = 6
            Top = 3
            Caption = 'Produto'
            DataBinding.DataField = 'boproduto'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
          object ckbBODEFAPR: TcxDBCheckBox
            Left = 6
            Top = 39
            Caption = 'Defeito Reclamado'
            DataBinding.DataField = 'BODEFAPR'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Transparent = True
          end
          object ckbbodefenc: TcxDBCheckBox
            Left = 6
            Top = 57
            Caption = 'Defeito Encontrado'
            DataBinding.DataField = 'bodefenc'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Transparent = True
          end
          object ckbBOOBSERVACAO: TcxDBCheckBox
            Left = 6
            Top = 75
            Caption = 'Observa'#231#227'o'
            DataBinding.DataField = 'BOOBSERVACAO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Transparent = True
          end
          object ckbbosolucao: TcxDBCheckBox
            Left = 6
            Top = 93
            Caption = 'Solu'#231#227'o'
            DataBinding.DataField = 'bosolucao'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            Transparent = True
          end
          object ckbboobsinterna: TcxDBCheckBox
            Left = 6
            Top = 111
            Caption = 'Observa'#231#227'o Interna'
            DataBinding.DataField = 'boobsinterna'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Transparent = True
          end
          object ckbbosolinterna: TcxDBCheckBox
            Left = 6
            Top = 129
            Caption = 'Solu'#231#227'o Interna'
            DataBinding.DataField = 'bosolinterna'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Transparent = True
          end
          object ckbboosanterior: TcxDBCheckBox
            Left = 6
            Top = 147
            Caption = 'Ordem Servi'#231'o Anterior'
            DataBinding.DataField = 'boosanterior'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            Transparent = True
          end
          object ckbboservico: TcxDBCheckBox
            Left = 156
            Top = 3
            Caption = 'Servi'#231'o'
            DataBinding.DataField = 'boservico'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Transparent = True
          end
          object ckbbopeca: TcxDBCheckBox
            Left = 156
            Top = 21
            Caption = 'Pe'#231'a'
            DataBinding.DataField = 'bopeca'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            Transparent = True
          end
          object ckbbofoto: TcxDBCheckBox
            Left = 156
            Top = 39
            Caption = 'Foto'
            DataBinding.DataField = 'bofoto'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 11
            Transparent = True
          end
          object ckbboacessorio: TcxDBCheckBox
            Left = 6
            Top = 21
            Caption = 'Acess'#243'rio'
            DataBinding.DataField = 'boacessorio'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Transparent = True
          end
          object ckbbodesenho: TcxDBCheckBox
            Left = 156
            Top = 57
            Caption = 'Desenho'
            DataBinding.DataField = 'bodesenho'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 12
            Transparent = True
          end
          object ckbbogeral: TcxDBCheckBox
            Left = 156
            Top = 75
            Caption = 'Geral'
            DataBinding.DataField = 'bogeral'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            Transparent = True
          end
          object ckbbopintura: TcxDBCheckBox
            Left = 156
            Top = 93
            Caption = 'Pintura'
            DataBinding.DataField = 'bopintura'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 14
            Transparent = True
          end
          object ckbboteste: TcxDBCheckBox
            Left = 156
            Top = 111
            Caption = 'Teste'
            DataBinding.DataField = 'boteste'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 15
            Transparent = True
          end
          object ckbboservicoexterno: TcxDBCheckBox
            Left = 156
            Top = 130
            Caption = 'Servi'#231'o Terceiro'
            DataBinding.DataField = 'boservicoexterno'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 16
            Transparent = True
          end
          object ckbbodevolucaosemconserto: TcxDBCheckBox
            Left = 156
            Top = 149
            Caption = 'Devolu'#231#227'o sem Conserto'
            DataBinding.DataField = 'bodevolucaosemconserto'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 17
            Transparent = True
          end
          object ckbbogarantia: TcxDBCheckBox
            Left = 307
            Top = 3
            Caption = 'Garantia'
            DataBinding.DataField = 'bogarantia'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 18
            Transparent = True
          end
          object chkboequipamentoguia: TcxDBCheckBox
            Left = 307
            Top = 21
            Caption = 'Equipamento'
            DataBinding.DataField = 'BOEQUIPAMENTOGUIA'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 19
            Transparent = True
          end
          object ckbbodefeito: TcxDBCheckBox
            Left = 307
            Top = 39
            Caption = 'Defeito'
            DataBinding.DataField = 'BODEFEITO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 20
            Transparent = True
          end
          object ckbboavaliacaotecnica: TcxDBCheckBox
            Left = 307
            Top = 57
            Caption = 'Avalia'#231#227'o T'#233'cnica'
            DataBinding.DataField = 'BOAVALIACAOTECNICA'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 21
            Transparent = True
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = 'Configura'#231#227'o'
          ImageIndex = 1
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object cxPageControl3: TcxPageControl
            Left = 0
            Top = 0
            Width = 883
            Height = 441
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = cxTabSheet12
            Properties.CustomButtons.Buttons = <>
            LookAndFeel.NativeStyle = False
            ClientRectBottom = 441
            ClientRectRight = 883
            ClientRectTop = 24
            object cxTabSheet12: TcxTabSheet
              Caption = 'Campos'
              ImageIndex = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Bevel2: TBevel
                Left = 0
                Top = 0
                Width = 883
                Height = 143
                Align = alTop
              end
              object Label11: TLabel
                Left = 9
                Top = 82
                Width = 62
                Height = 13
                Caption = 'Or'#231'amentista'
                Transparent = True
              end
              object cxGroupBox1: TcxGroupBox
                Left = 0
                Top = 143
                Align = alTop
                Caption = 'Previs'#227'o de Entrega'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 21
                Height = 41
                Width = 883
                object ckbboDTPREVENTREGA: TcxDBCheckBox
                  Left = 4
                  Top = 16
                  Caption = 'Data'
                  DataBinding.DataField = 'BODTPREVENTREGA'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Transparent = True
                end
                object ckbbohrPREVENTREGA: TcxDBCheckBox
                  Left = 127
                  Top = 16
                  Caption = 'Hora'
                  DataBinding.DataField = 'bohrPREVENTREGA'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 1
                  Transparent = True
                end
                object ckbpreventregaobrigatorio: TcxDBCheckBox
                  Left = 252
                  Top = 16
                  Caption = 'Obrigat'#243'rio'
                  DataBinding.DataField = 'bopreventregaobrigatorio'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 2
                  Transparent = True
                end
              end
              object cxGroupBox9: TcxGroupBox
                Left = 0
                Top = 225
                Align = alClient
                Caption = 'Previs'#227'o de Or'#231'amento'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 23
                Height = 192
                Width = 883
                object ckb4: TcxDBCheckBox
                  Left = 4
                  Top = 16
                  Caption = 'Data'
                  DataBinding.DataField = 'boDTPREVORCAMENTO'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Transparent = True
                end
                object ckb5: TcxDBCheckBox
                  Left = 127
                  Top = 16
                  Caption = 'Hora'
                  DataBinding.DataField = 'bohrPREVORCAMENTO'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 1
                  Transparent = True
                end
                object ckb7: TcxDBCheckBox
                  Left = 252
                  Top = 16
                  Caption = 'Obrigat'#243'rio'
                  DataBinding.DataField = 'boprevorcamentoobrigatorio'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 2
                  Transparent = True
                end
              end
              object ckbocliente: TcxDBCheckBox
                Left = 5
                Top = 5
                Caption = 'Cliente'
                DataBinding.DataField = 'bocliente'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                Transparent = True
              end
              object ckbboatendente: TcxDBCheckBox
                Left = 5
                Top = 24
                Caption = 'Atendente'
                DataBinding.DataField = 'boatendente'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 2
                Transparent = True
              end
              object ckbbotecnico: TcxDBCheckBox
                Left = 5
                Top = 43
                Caption = 'T'#233'cnico'
                DataBinding.DataField = 'botecnico'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 7
                Transparent = True
              end
              object ckbbovendedor: TcxDBCheckBox
                Left = 5
                Top = 64
                Caption = 'Vendedor'
                DataBinding.DataField = 'bovendedor'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 12
                Transparent = True
              end
              object ckbborepresentante: TcxDBCheckBox
                Left = 104
                Top = 5
                Caption = 'Representante'
                DataBinding.DataField = 'BOREPRESENTANTE'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                Transparent = True
              end
              object ckb6: TcxDBCheckBox
                Left = 104
                Top = 24
                Caption = 'Obrigat'#243'rio'
                DataBinding.DataField = 'boatendenteobrigatorio'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 3
                Transparent = True
              end
              object ckbbotecnicoobrigatorio: TcxDBCheckBox
                Left = 104
                Top = 43
                Caption = 'Obrigat'#243'rio'
                DataBinding.DataField = 'botecnicoobrigatorio'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 8
                Transparent = True
              end
              object ckb8: TcxDBCheckBox
                Left = 104
                Top = 64
                Caption = 'Obrigat'#243'rio'
                DataBinding.DataField = 'bovendedorobrigatorio'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 13
                Transparent = True
              end
              object ckb9: TcxDBCheckBox
                Left = 188
                Top = 24
                Caption = 'Comiss'#227'o'
                DataBinding.DataField = 'bocomissaoatendente'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 4
                Transparent = True
              end
              object ckb10: TcxDBCheckBox
                Left = 188
                Top = 43
                Caption = 'Comiss'#227'o'
                DataBinding.DataField = 'bocomissaotecnico'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 9
                Transparent = True
              end
              object ckb11: TcxDBCheckBox
                Left = 188
                Top = 64
                Caption = 'Comiss'#227'o'
                DataBinding.DataField = 'bocomissaovendedor'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 14
                Transparent = True
              end
              object ckb12: TcxDBCheckBox
                Left = 188
                Top = 82
                Caption = 'Comiss'#227'o'
                DataBinding.DataField = 'bocomissaoorcado'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 17
                Transparent = True
              end
              object ckbbocomissaoatendenteproduto: TcxDBCheckBox
                Left = 265
                Top = 24
                Caption = 'Comiss'#227'o Produto'
                DataBinding.DataField = 'bocomissaoatendenteproduto'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 5
                Transparent = True
              end
              object ckbbocomissaotecnicoproduto: TcxDBCheckBox
                Left = 265
                Top = 43
                Caption = 'Comiss'#227'o Produto'
                DataBinding.DataField = 'bocomissaotecnicoproduto'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 10
                Transparent = True
              end
              object ckbbocomissaovendedorproduto: TcxDBCheckBox
                Left = 265
                Top = 64
                Caption = 'Comiss'#227'o Produto'
                DataBinding.DataField = 'bocomissaovendedorproduto'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 15
                Transparent = True
              end
              object bocomissaoorcadoproduto: TcxDBCheckBox
                Left = 265
                Top = 82
                Caption = 'Comiss'#227'o Produto'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 18
                Transparent = True
              end
              object ckbbocomissaoatendenteservico: TcxDBCheckBox
                Left = 377
                Top = 24
                Caption = 'Comiss'#227'o Servi'#231'o'
                DataBinding.DataField = 'bocomissaoatendenteservico'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 6
                Transparent = True
              end
              object ckbbocomissaotecnicoservico: TcxDBCheckBox
                Left = 377
                Top = 43
                Caption = 'Comiss'#227'o Servi'#231'o'
                DataBinding.DataField = 'bocomissaotecnicoservico'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 11
                Transparent = True
              end
              object ckbbocomissaovendedorservico: TcxDBCheckBox
                Left = 377
                Top = 64
                Caption = 'Comiss'#227'o Servi'#231'o'
                DataBinding.DataField = 'bocomissaovendedorservico'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 16
                Transparent = True
              end
              object ckb20: TcxDBCheckBox
                Left = 377
                Top = 82
                Caption = 'Comiss'#227'o Servi'#231'o'
                DataBinding.DataField = 'bocomissaoorcadoservico'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 19
                Transparent = True
              end
              object ckb21: TcxDBCheckBox
                Left = 5
                Top = 103
                Caption = 'Calcular comiss'#227'o somente sobre produtos comissionados'
                DataBinding.DataField = 'BOIDENTIFICADORCOMISSAOPRODUTO'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 20
                Transparent = True
              end
              object gbxaprovacao: TcxGroupBox
                Left = 0
                Top = 184
                Align = alTop
                Caption = 'Aprova'#231#227'o'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 22
                Height = 41
                Width = 883
                object chk1: TcxDBCheckBox
                  Left = 4
                  Top = 16
                  Caption = 'Data'
                  DataBinding.DataField = 'BODTAPROVACAO'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Transparent = True
                end
                object chk2: TcxDBCheckBox
                  Left = 127
                  Top = 16
                  Caption = 'Hora'
                  DataBinding.DataField = 'BOHRAPROVACAO'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 1
                  Transparent = True
                end
              end
              object ckbbolocalservico: TcxDBCheckBox
                Left = 5
                Top = 120
                Caption = 'Local do Servi'#231'o'
                DataBinding.DataField = 'BOLOCALSERVICO'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 24
                Transparent = True
              end
            end
            object cxTabSheet13: TcxTabSheet
              Caption = 'Outras'
              ImageIndex = 1
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object cxGroupBox2: TcxGroupBox
                Left = 0
                Top = 0
                Align = alTop
                Caption = 'Digitar'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                Height = 41
                Width = 883
                object ckb1: TcxDBCheckBox
                  Left = 3
                  Top = 16
                  Caption = 'Digitar a data entrada'
                  DataBinding.DataField = 'bodtentradadigitar'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Transparent = True
                end
                object ckb2: TcxDBCheckBox
                  Left = 135
                  Top = 16
                  Caption = 'Digitar a hora entrada'
                  DataBinding.DataField = 'bohrentradadigitar'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 1
                  Transparent = True
                end
                object ckb3: TcxDBCheckBox
                  Left = 266
                  Top = 16
                  Caption = 'Digitar a data sa'#237'da'
                  DataBinding.DataField = 'bodtsaidadigitar'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 2
                  Transparent = True
                end
              end
              object cxGroupBox3: TcxGroupBox
                Left = 0
                Top = 41
                Align = alTop
                Caption = 'Observa'#231#227'o'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                Height = 42
                Width = 883
                object ckbboobservacaoanterior: TcxDBCheckBox
                  Left = 3
                  Top = 18
                  Caption = 'Adicionar da OS Anterior'
                  DataBinding.DataField = 'boobservacaoanterior'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Transparent = True
                end
                object ckbboobservacaotpordserv: TcxDBCheckBox
                  Left = 144
                  Top = 18
                  Caption = 'Adicionar do Tipo'
                  DataBinding.DataField = 'boobservacaotpordserv'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 1
                  Transparent = True
                end
              end
              object cxGroupBox4: TcxGroupBox
                Left = 0
                Top = 83
                Align = alTop
                Caption = 'Gerar n'#250'mero na sequ'#234'ncia de:'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 2
                Height = 41
                Width = 883
                object edt1: TcxDBTextEdit
                  Left = 8
                  Top = 15
                  DataBinding.DataField = 'nugerarcodigo'
                  DataBinding.DataSource = dts
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Width = 121
                end
              end
              object cxGroupBox5: TcxGroupBox
                Left = 0
                Top = 124
                Align = alTop
                Caption = 'Outras'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 3
                Height = 62
                Width = 883
                object lblstcliente: TLabel
                  Left = 6
                  Top = 37
                  Width = 58
                  Height = 13
                  Caption = 'Etapa Inicial'
                  Transparent = True
                end
                object ckbboacessoriolista: TcxDBCheckBox
                  Left = 9
                  Top = 15
                  Caption = 'Lista Acess'#243'rios'
                  DataBinding.DataField = 'boacessoriolista'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 0
                  Transparent = True
                end
                object ckb18: TcxDBCheckBox
                  Left = 272
                  Top = 15
                  Caption = 'Gerar OS de Revis'#227'o'
                  DataBinding.DataField = 'borevisao'
                  DataBinding.DataSource = dts
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 1
                  Transparent = True
                end
                object cbxcdetapa: TcxDBLookupComboBox
                  Left = 68
                  Top = 34
                  DataBinding.DataField = 'CDETAPA'
                  DataBinding.DataSource = dts
                  Properties.KeyFieldNames = 'CDETAPA'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NMETAPA'
                    end>
                  Properties.ListOptions.ShowHeader = False
                  Style.BorderStyle = ebsOffice11
                  Style.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.NativeStyle = False
                  TabOrder = 2
                  Width = 261
                end
              end
              object chkboassinaturadesconto: TcxDBCheckBox
                Left = 3
                Top = 205
                Caption = 'Assinatura Desconto'
                DataBinding.DataField = 'BOASSINATURADESCONTO'
                DataBinding.DataSource = dts
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 4
                Transparent = True
              end
            end
          end
        end
        object cxTabSheet9: TcxTabSheet
          Caption = 'Produto'
          ImageIndex = 2
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label6: TLabel
            Left = 184
            Top = 9
            Width = 96
            Height = 13
            Caption = 'Quantidade de '#205'tens'
            Transparent = True
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 284
            Top = 7
            DataBinding.DataField = 'qtitem'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            Width = 121
          end
          object ckb16: TcxDBCheckBox
            Left = 3
            Top = 7
            Caption = 'Grade Valor'
            DataBinding.DataField = 'BOTPGRADE'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
          object ckb17: TcxDBCheckBox
            Left = 3
            Top = 26
            Caption = 'Localiza'#231#227'o do produto'
            DataBinding.DataField = 'bogradeprodutolocalizacao'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Transparent = True
          end
          object ckb19: TcxDBCheckBox
            Left = 3
            Top = 45
            Caption = 'C'#243'digo do Produto obrigat'#243'rio'
            DataBinding.DataField = 'boprodutoobrigatorio'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Transparent = True
          end
          object ckb22: TcxDBCheckBox
            Left = 3
            Top = 63
            Caption = 'Obrigat'#243'rio inser'#231#227'o de produto'
            DataBinding.DataField = 'boprodutoinsercaoobrigatorio'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Transparent = True
          end
          object ckb23: TcxDBCheckBox
            Left = 3
            Top = 82
            Caption = 'Guia produto na inser'#231#227'o'
            DataBinding.DataField = 'boprodutoinsercao'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Transparent = True
          end
          object ckb28: TcxDBCheckBox
            Left = 3
            Top = 101
            Caption = 'Alterar Valor de Venda'
            DataBinding.DataField = 'boalterarvalor'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            Transparent = True
          end
          object ckb29: TcxDBCheckBox
            Left = 3
            Top = 120
            Caption = 'Digitar o nome do produto'
            DataBinding.DataField = 'bodigitarproduto'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Transparent = True
          end
          object ckb30: TcxDBCheckBox
            Left = 3
            Top = 139
            Caption = 'Exibir o C'#243'digo Alternativo'
            DataBinding.DataField = 'boprodutoexibircdalternativo'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Transparent = True
          end
        end
        object cxTabSheet10: TcxTabSheet
          Caption = 'Estoque'
          ImageIndex = 3
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl1: TBevel
            Left = 0
            Top = 0
            Width = 883
            Height = 28
            Align = alTop
            Shape = bsTopLine
            ExplicitWidth = 1079
          end
          object cxGroupBox7: TcxGroupBox
            Left = 0
            Top = 96
            Align = alClient
            Caption = 'Entrada'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 345
            Width = 883
            object Label4: TLabel
              Left = 5
              Top = 20
              Width = 94
              Height = 13
              Caption = 'Tipo Movimenta'#231#227'o'
              Transparent = True
            end
            object Label7: TLabel
              Left = 5
              Top = 39
              Width = 126
              Height = 13
              Caption = 'Status Item Ordem Servi'#231'o'
              Transparent = True
            end
            object cbxcdstitordserventrada: TcxDBLookupComboBox
              Left = 133
              Top = 37
              DataBinding.DataField = 'CDSTITORDSERVENTRADA'
              DataBinding.DataSource = dts
              Properties.KeyFieldNames = 'CDSTITORDSERV'
              Properties.ListColumns = <
                item
                  FieldName = 'NMSTITORDSERV'
                end>
              Properties.ListOptions.ShowHeader = False
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 261
            end
            object cbxCDTPMOVTOENTRADA: TcxDBLookupComboBox
              Left = 133
              Top = 15
              DataBinding.DataField = 'CDTPMOVTOENTRADA'
              DataBinding.DataSource = dts
              Properties.KeyFieldNames = 'CDTPMOVTO'
              Properties.ListColumns = <
                item
                  FieldName = 'NMTPMOVTO'
                end>
              Properties.ListOptions.ShowHeader = False
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Width = 261
            end
          end
          object cxGroupBox6: TcxGroupBox
            Left = 0
            Top = 28
            Align = alTop
            Caption = 'Baixa'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 68
            Width = 883
            object Label2: TLabel
              Left = 5
              Top = 22
              Width = 94
              Height = 13
              Caption = 'Tipo Movimenta'#231#227'o'
              Transparent = True
            end
            object Label5: TLabel
              Left = 5
              Top = 41
              Width = 126
              Height = 13
              Caption = 'Status Item Ordem Servi'#231'o'
              Transparent = True
            end
            object cbxcdstitordservbaixa: TcxDBLookupComboBox
              Left = 133
              Top = 38
              DataBinding.DataField = 'CDSTITORDSERVBAIXA'
              DataBinding.DataSource = dts
              Properties.KeyFieldNames = 'CDSTITORDSERV'
              Properties.ListColumns = <
                item
                  FieldName = 'NMSTITORDSERV'
                end>
              Properties.ListOptions.ShowHeader = False
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 261
            end
            object cbxCDTPMOVTOBAIXA: TcxDBLookupComboBox
              Left = 133
              Top = 15
              DataBinding.DataField = 'CDTPMOVTOBAIXA'
              DataBinding.DataSource = dts
              Properties.KeyFieldNames = 'CDTPMOVTO'
              Properties.ListColumns = <
                item
                  FieldName = 'NMTPMOVTO'
                end>
              Properties.ListOptions.ShowHeader = False
              Style.BorderStyle = ebsOffice11
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Width = 261
            end
          end
          object ckbbobaixaestoque: TcxDBCheckBox
            Left = 3
            Top = 7
            Caption = 'Baixa Estoque'
            DataBinding.DataField = 'BOBAIXAESTOQUE'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
        end
        object cxTabSheet11: TcxTabSheet
          Caption = 'Equipamento'
          ImageIndex = 4
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ckb14: TcxDBCheckBox
            Left = 5
            Top = 5
            Caption = 'Equipamento'
            DataBinding.DataField = 'boequipamento'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Transparent = True
          end
          object ckb15: TcxDBCheckBox
            Left = 5
            Top = 24
            Caption = 'N'#186' Sequ'#234'ncia equipamento'
            DataBinding.DataField = 'boqtdequipamento'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Transparent = True
          end
          object ckb31: TcxDBCheckBox
            Left = 5
            Top = 43
            Caption = 'Local'
            DataBinding.DataField = 'boequipamentolocal'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Transparent = True
          end
          object ckbboequipamentoobrigatorio: TcxDBCheckBox
            Left = 5
            Top = 62
            Caption = 'Equipamento obrigat'#243'rio'
            DataBinding.DataField = 'boequipamentoobrigatorio'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Transparent = True
          end
          object ckbbonupatrimonio: TcxDBCheckBox
            Left = 5
            Top = 81
            Caption = 'Patrim'#244'nio'
            DataBinding.DataField = 'BONUPATRIMONIO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Transparent = True
          end
          object ckbboentrada: TcxDBCheckBox
            Left = 5
            Top = 101
            Caption = 'Check List de Entrada'
            DataBinding.DataField = 'BOENTRADA'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            Transparent = True
          end
          object ckbbosaida: TcxDBCheckBox
            Left = 5
            Top = 120
            Caption = 'Check List Sa'#237'da'
            DataBinding.DataField = 'BOSAIDA'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Transparent = True
          end
          object ckbbotpvoltagem: TcxDBCheckBox
            Left = 5
            Top = 140
            Caption = 'Tipo Voltagem'
            DataBinding.DataField = 'BOTPVOLTAGEM'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Transparent = True
          end
          object ckbbotpvoltagemobrigatorio: TcxDBCheckBox
            Left = 102
            Top = 140
            Caption = 'Obrigat'#243'rio'
            DataBinding.DataField = 'BOTPVOLTAGEMOBRIGATORIO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            Transparent = True
          end
          object ckbbonukm: TcxDBCheckBox
            Left = 5
            Top = 158
            Caption = 'N'#186' Km'
            DataBinding.DataField = 'bonukm'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            Transparent = True
          end
          object ckbbokmobrigatorio: TcxDBCheckBox
            Left = 59
            Top = 158
            Caption = 'N'#186' Km Obrigat'#243'rio'
            DataBinding.DataField = 'bonukmobrigatorio'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            Transparent = True
          end
          object ckbbocor: TcxDBCheckBox
            Left = 5
            Top = 177
            Caption = 'Cor'
            DataBinding.DataField = 'BOCOR'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 11
            Transparent = True
          end
          object ckbbonuano: TcxDBCheckBox
            Left = 5
            Top = 197
            Caption = 'Ano'
            DataBinding.DataField = 'BONUANO'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 12
            Transparent = True
          end
          object ckbboselobalanca: TcxDBCheckBox
            Left = 5
            Top = 235
            Caption = 'Selo Balan'#231'a'
            DataBinding.DataField = 'BOSELOBALANCA'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            Transparent = True
          end
          object ckbbolacrebalanca: TcxDBCheckBox
            Left = 5
            Top = 215
            Caption = 'Lacre Balan'#231'a'
            DataBinding.DataField = 'BOLACREBALANCA'
            DataBinding.DataSource = dts
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 14
            Transparent = True
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 6
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memdsobservacao: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 465
        Width = 883
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Observa'#231#227'o da Impress'#227'o'
      ImageIndex = 6
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memDSOBSIMPRESSAO: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSOBSIMPRESSAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 465
        Width = 883
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'Relat'#243'rios'
      ImageIndex = 3
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblcdstordserventrega: TLabel
        Left = 76
        Top = 53
        Width = 246
        Height = 13
        Caption = 'Liberar este relat'#243'rio somente se estiver neste status'
        Transparent = True
      end
      object ckbBOREPORTORDSERV: TcxDBCheckBox
        Left = 3
        Top = 2
        Caption = 'Ordem Servi'#231'o'
        DataBinding.DataField = 'BOREPORTORDSERV'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Transparent = True
      end
      object ckbBOREPORTABERTURA: TcxDBCheckBox
        Left = 3
        Top = 21
        Caption = 'Abertura'
        DataBinding.DataField = 'BOREPORTABERTURA'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Transparent = True
      end
      object ckbBOREPORTENTREGA: TcxDBCheckBox
        Left = 3
        Top = 50
        Caption = 'Entrega'
        DataBinding.DataField = 'BOREPORTENTREGA'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Transparent = True
      end
      object ckbBOREPORTACOMPANHAMENTO: TcxDBCheckBox
        Left = 3
        Top = 74
        Caption = 'Acompanhamento'
        DataBinding.DataField = 'BOREPORTACOMPANHAMENTO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Transparent = True
      end
      object ckbBOREPORTORCAMENTOCONTRATO: TcxDBCheckBox
        Left = 3
        Top = 93
        Caption = 'Or'#231'amento contrato'
        DataBinding.DataField = 'BOREPORTORCAMENTOCONTRATO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Transparent = True
      end
      object ckbBOREPORTORCAMENTOAVULSO: TcxDBCheckBox
        Left = 3
        Top = 112
        Caption = 'Or'#231'amento avulso'
        DataBinding.DataField = 'BOREPORTORCAMENTOAVULSO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Transparent = True
      end
      object ckb26: TcxDBCheckBox
        Left = 3
        Top = 131
        Caption = 'Or'#231'amento'
        DataBinding.DataField = 'boreportorcamento'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Transparent = True
      end
      object ckb27: TcxDBCheckBox
        Left = 3
        Top = 149
        Caption = 'Entrega sem comprovante'
        DataBinding.DataField = 'boreportentregasemcomprovante'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Transparent = True
      end
      object ckb13: TcxDBCheckBox
        Left = 3
        Top = 168
        Caption = 'Imprimir a data de aprova'#231#227'o'
        DataBinding.DataField = 'BOREPORTORDSERVDTAPROVACAO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Transparent = True
      end
      object cbxcdstordserventrega: TcxDBLookupComboBox
        Left = 327
        Top = 45
        DataBinding.DataField = 'CDSTORDSERVENTREGA'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDSTORDSERV'
        Properties.ListColumns = <
          item
            FieldName = 'NMSTORDSERV'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Width = 261
      end
      object ckbboreportaberturasalvar: TcxDBCheckBox
        Left = 76
        Top = 21
        Caption = 'Imprimir ao salvar o registro ap'#243's a inser'#231#227'o'
        DataBinding.DataField = 'BOREPORTABERTURASALVAR'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Transparent = True
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'Layout Equipamento'
      ImageIndex = 6
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memDSLAYOUTEQUIPAMENTO: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSLAYOUTEQUIPAMENTO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 465
        Width = 883
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 63
    Width = 883
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object lbl4: TLabel
      Left = 5
      Top = 25
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lbl5: TLabel
      Left = 72
      Top = 25
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
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
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 39
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 58
    end
    object edtnome: TcxDBTextEdit
      Left = 72
      Top = 39
      DataBinding.DataField = 'NMTPORDSERV'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 291
    end
    object ckb32: TcxDBCheckBox
      Left = 366
      Top = 39
      Caption = 'Ativar'
      DataBinding.DataField = 'BOATIVAR'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Transparent = True
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 38
    object actNovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actNovoExecute
    end
    object actAbrir: TAction
      Caption = 'Abrir'
      Hint = 'Abrir'
      ImageIndex = 1
      ShortCut = 16449
      OnExecute = actAbrirExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      Enabled = False
      Hint = 'Editar'
      ImageIndex = 7
      ShortCut = 16453
      OnExecute = actEditarExecute
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      Enabled = False
      Hint = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvarExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      Enabled = False
      Hint = 'Imprimir'
      ImageIndex = 3
      ShortCut = 16457
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      Enabled = False
      Hint = 'Excluir'
      ImageIndex = 5
      ShortCut = 16472
      OnExecute = actExcluirExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelarExecute
    end
    object actPrimeiro: TAction
      Caption = 'Primeiro'
      Hint = 'Primeiro'
      ImageIndex = 8
      ShortCut = 16454
      OnExecute = actPrimeiroExecute
    end
    object actAnterior: TAction
      Caption = 'Anterior'
      Enabled = False
      Hint = 'Anterior'
      ImageIndex = 9
      ShortCut = 16468
      OnExecute = actAnteriorExecute
    end
    object actProximo: TAction
      Caption = 'Pr'#243'ximo'
      Enabled = False
      Hint = 'Pr'#243'ximo'
      ImageIndex = 10
      ShortCut = 16464
      OnExecute = actProximoExecute
    end
    object actUltimo: TAction
      Caption = #218'ltimo'
      Hint = #218'ltimo'
      ImageIndex = 11
      ShortCut = 16469
      OnExecute = actUltimoExecute
    end
    object actabriretapa: TAction
      Caption = 'Abrir Etapa'
      Hint = 'Etapa'
      OnExecute = actabriretapaExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actcomprovanteentrega: TAction
      Caption = 'Observa'#231#227'o Comprovante Entrega'
    end
    object actcomprovanteentregaverso: TAction
      Caption = 'Observa'#231#227'o Comprovante Entrega Verso'
    end
  end
  object dts: TDataSource
    OnStateChange = dtsStateChange
    Left = 236
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
    Left = 124
    DockControlHeights = (
      0
      0
      63
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'tpordserv'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 342
      FloatTop = 205
      FloatClientWidth = 62
      FloatClientHeight = 456
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnAbrir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnsalvar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtncancelar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnexcluir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnprimeiro'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnanterior'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnproximo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnultimo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrManager1Bar1: TdxBar
      Caption = 'menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 547
      FloatTop = 288
      FloatClientWidth = 55
      FloatClientHeight = 21
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrsbtmRegistro'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxbrsbtmRegistro: TdxBarSubItem
      Caption = '&Registro'
      Category = 0
      MergeOrder = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnAbrir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnsalvar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtncancelar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnexcluir'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnprimeiro'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnanterior'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnproximo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnultimo'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr2'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
    end
    object dxbrlrgbtnNovo: TdxBarLargeButton
      Action = actNovo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnEditar: TdxBarLargeButton
      Action = actEditar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnAbrir: TdxBarLargeButton
      Action = actAbrir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnsalvar: TdxBarLargeButton
      Action = actSalvar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtncancelar: TdxBarLargeButton
      Action = actCancelar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnexcluir: TdxBarLargeButton
      Action = actExcluir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnprimeiro: TdxBarLargeButton
      Action = actPrimeiro
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnanterior: TdxBarLargeButton
      Action = actAnterior
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnproximo: TdxBarLargeButton
      Action = actProximo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnultimo: TdxBarLargeButton
      Action = actUltimo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr2: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
  end
end

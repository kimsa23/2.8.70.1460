object frmtpordproducao: Tfrmtpordproducao
  Left = 482
  Top = 56
  ClientHeight = 701
  ClientWidth = 1101
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
  object Panel1: TPanel
    Left = 0
    Top = 63
    Width = 1101
    Height = 638
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1101
      Height = 41
      Align = alTop
      ExplicitWidth = 982
    end
    object Label1: TLabel
      Left = 3
      Top = 25
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 70
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
    object edtnome: TcxDBTextEdit
      Left = 70
      Top = 39
      DataBinding.DataField = 'NMTPORDPRODUCAO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 467
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 39
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 66
    end
    object vtg: TcxDBVerticalGrid
      Left = 0
      Top = 64
      Width = 1101
      Height = 574
      Align = alClient
      LayoutStyle = lsBandsView
      LookAndFeel.NativeStyle = False
      OptionsView.RowHeaderWidth = 523
      OptionsBehavior.GoToNextCellOnEnter = True
      Navigator.Buttons.CustomButtons = <>
      TabOrder = 3
      DataController.DataSource = dts
      Version = 1
      object vtgGeral: TcxCategoryRow
        Properties.Caption = 'Geral'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object vtgBODTENTREGA: TcxDBEditorRow
        Properties.Caption = 'Data de Entrega'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODTENTREGA'
        ID = 1
        ParentID = 0
        Index = 0
        Version = 1
      end
      object vtgBODTPREVISAO: TcxDBEditorRow
        Properties.Caption = 'Data de Previs'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODTPREVISAO'
        ID = 2
        ParentID = 0
        Index = 1
        Version = 1
      end
      object vtgenviaremail: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Enviar email quando mudar o status da Ordem de Produ'#231#227'o'
        ID = 3
        ParentID = 0
        Index = 2
        Version = 1
      end
      object vtgCDSTORDPRODUCAOEVENTOEMAIL: TcxDBEditorRow
        Properties.Caption = 'Status'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDSTORDPRODUCAO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTORDPRODUCAO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDSTORDPRODUCAOEVENTOEMAIL'
        ID = 4
        ParentID = 3
        Index = 0
        Version = 1
      end
      object vtgCDEVENTOEMAILSTORDPRODUCAO: TcxDBEditorRow
        Properties.Caption = 'Evento Email'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDEVENTOEMAIL'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMEVENTOEMAIL'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDEVENTOEMAILSTORDPRODUCAO'
        ID = 5
        ParentID = 3
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow61: TcxDBEditorRow
        Properties.Caption = 'Formula'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFORMULACAO'
        ID = 6
        ParentID = 0
        Index = 3
        Version = 1
      end
      object vtgBOPRODUTO: TcxDBEditorRow
        Properties.Caption = 'Produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTO'
        ID = 7
        ParentID = 0
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow84: TcxDBEditorRow
        Properties.Caption = 'Buscar a quantidade em estoque do produto da ordem de produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOBUSCARESTOQUE'
        ID = 8
        ParentID = 7
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow25: TcxDBEditorRow
        Properties.Caption = 'Desenho'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSDESENHO'
        ID = 9
        ParentID = 7
        Index = 1
        Version = 1
      end
      object vtgCDSTORDPRODUCAOGERARESTOQUE: TcxDBEditorRow
        Properties.Caption = 'Gerar estoque ao mudar para o status'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDSTORDPRODUCAO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTORDPRODUCAO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDSTORDPRODUCAOGERARESTOQUE'
        ID = 10
        ParentID = 7
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow24: TcxDBEditorRow
        Properties.Caption = 'N'#186' Estrutural'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUESTRUTURAL'
        ID = 11
        ParentID = 7
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow83: TcxDBEditorRow
        Properties.Caption = 'Quantidade de Pe'#231'a'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOQTPECA'
        ID = 12
        ParentID = 7
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow76: TcxDBEditorRow
        Properties.Caption = 'Tag'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTAG'
        ID = 13
        ParentID = 7
        Index = 5
        Version = 1
      end
      object vtgAbas: TcxCategoryRow
        Properties.Caption = 'Abas'
        ID = 14
        ParentID = -1
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow37: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Apontamento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTO'
        ID = 15
        ParentID = 14
        Index = 0
        Version = 1
      end
      object vtgCategoryRow9: TcxCategoryRow
        Properties.Caption = 'Campos'
        ID = 16
        ParentID = 15
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow46: TcxDBEditorRow
        Properties.Caption = 'Data igual a data de emiss'#227'o da Ordem de Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTODTEMISSAO'
        ID = 17
        ParentID = 15
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow45: TcxDBEditorRow
        Properties.Caption = 'Digitar data e hora de in'#237'cio e fim juntos'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTODATAHORA'
        ID = 18
        ParentID = 15
        Index = 2
        Version = 1
      end
      object vtgCDEQUIPAMENTO: TcxDBEditorRow
        Properties.Caption = 'Equipamento padr'#227'o'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDEQUIPAMENTO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMEQUIPAMENTO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDEQUIPAMENTO'
        ID = 19
        ParentID = 15
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow60: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Funcion'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOFUNCIONARIO'
        ID = 20
        ParentID = 15
        Index = 4
        Version = 1
      end
      object vtgCDFUNCIONARIO: TcxDBEditorRow
        Properties.Caption = 'Funcion'#225'rio padr'#227'o'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDFUNCIONARIO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMFUNCIONARIO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDFUNCIONARIO'
        ID = 21
        ParentID = 20
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow71: TcxDBEditorRow
        Properties.Caption = 'Gerar apontamento de Produto Acabado'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOPRODUTOACABADO'
        ID = 22
        ParentID = 15
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow79: TcxDBEditorRow
        Properties.Caption = 'Grade de Lan'#231'a'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOLANCA'
        ID = 23
        ParentID = 15
        Index = 6
        Version = 1
      end
      object vtgDBEditorRow78: TcxDBEditorRow
        Properties.Caption = 'Grade de Moldagem'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOMOLDAGEM'
        ID = 24
        ParentID = 15
        Index = 7
        Version = 1
      end
      object vtgDBEditorRow44: TcxDBEditorRow
        Properties.Caption = 'Hor'#237'metro'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOHORIMETRO'
        ID = 25
        ParentID = 15
        Index = 8
        Version = 1
      end
      object vtgDBEditorRow42: TcxDBEditorRow
        Properties.Caption = 'N'#186' Estrutural'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTONUESTRUTURAL'
        ID = 26
        ParentID = 15
        Index = 9
        Version = 1
      end
      object vtgDBEditorRow43: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOOBSERVACAO'
        ID = 27
        ParentID = 15
        Index = 10
        Version = 1
      end
      object vtgDBEditorRow41: TcxDBEditorRow
        Properties.Caption = 'Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOPRODUCAO'
        ID = 28
        ParentID = 15
        Index = 11
        Version = 1
      end
      object vtgDBEditorRow38: TcxDBEditorRow
        Properties.Caption = 'Tipo de Hora'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOTPHORAEXTRA'
        ID = 29
        ParentID = 15
        Index = 12
        Version = 1
      end
      object vtgDBEditorRow40: TcxDBEditorRow
        Properties.Caption = 'Valor Total'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOVLTOTAL'
        ID = 30
        ParentID = 15
        Index = 13
        Version = 1
      end
      object vtgDBEditorRow39: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Valor Unit'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOVLUNITARIO'
        ID = 31
        ParentID = 15
        Index = 14
        Version = 1
      end
      object vtgDBEditorRow1: TcxDBEditorRow
        Properties.Caption = 'Permitir alterar o valor unit'#225'rio do apontamento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOALTERARVLUNITARIO'
        ID = 32
        ParentID = 31
        Index = 0
        Version = 1
      end
      object vtgCategoryRow7: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Cadastro'
        ID = 33
        ParentID = 14
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow28: TcxDBEditorRow
        Properties.Caption = 'Pedido'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPEDIDO'
        ID = 34
        ParentID = 33
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow72: TcxDBEditorRow
        Properties.Caption = 'Nota Fiscal de Compra'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOENTRADA'
        ID = 35
        ParentID = 33
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow36: TcxDBEditorRow
        Properties.Caption = 'Consulta'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCONSULTA'
        ID = 36
        ParentID = 14
        Index = 2
        Version = 1
      end
      object vtgCategoryRow3: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Hist'#243'rico do Status'
        ID = 37
        ParentID = 14
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow2: TcxDBEditorRow
        Properties.Caption = 'Adicionar o hist'#243'rico do status manualmente'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOHISTORICOSTATUSMANUAL'
        ID = 38
        ParentID = 37
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow68: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Mat'#233'ria-Prima'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIAL'
        ID = 39
        ParentID = 14
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow91: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Gerar Movimenta'#231#227'o de Estoque'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALBAIXARESTOQUE'
        ID = 40
        ParentID = 39
        Index = 0
        Version = 1
      end
      object vtgCDSTORDPRODUCAOITORDPRODUCAOMAT: TcxDBEditorRow
        Properties.Caption = 'Mudar para o Status'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDSTORDPRODUCAO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTORDPRODUCAO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDSTORDPRODUCAOITORDPRODUCAOMAT'
        ID = 41
        ParentID = 40
        Index = 0
        Version = 1
      end
      object vtgCategoryRow5: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Campos'
        ID = 42
        ParentID = 39
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow32: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Bag'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALBAG'
        ID = 43
        ParentID = 42
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow66: TcxDBEditorRow
        Properties.Caption = 'Lote'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALLOTE'
        ID = 44
        ParentID = 43
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow35: TcxDBEditorRow
        Properties.Caption = 'Data de Previsao'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALPREVISAO'
        ID = 45
        ParentID = 42
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow21: TcxDBEditorRow
        Properties.Caption = 'Faixa'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.DataBinding.FieldName = 'BOMATERIALFAIXA'
        ID = 46
        ParentID = 42
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow3: TcxDBEditorRow
        Properties.Caption = 'Formula'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALFORMULACAO'
        ID = 47
        ParentID = 42
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow14: TcxDBEditorRow
        Properties.Caption = 'Frete'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALFRETE'
        ID = 48
        ParentID = 42
        Index = 4
        Version = 1
      end
      object vtgCategoryRow4: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Imposto'
        ID = 49
        ParentID = 42
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow12: TcxDBEditorRow
        Properties.Caption = 'COFINS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALCOFINS'
        ID = 50
        ParentID = 49
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow9: TcxDBEditorRow
        Properties.Caption = 'ICMS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALICMS'
        ID = 51
        ParentID = 49
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow8: TcxDBEditorRow
        Properties.Caption = 'IPI'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALIPI'
        ID = 52
        ParentID = 49
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow13: TcxDBEditorRow
        Properties.Caption = 'PIS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALPIS'
        ID = 53
        ParentID = 49
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow18: TcxDBEditorRow
        Properties.Caption = 'NCM'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALNUCLFISCAL'
        ID = 54
        ParentID = 42
        Index = 6
        Version = 1
      end
      object vtgDBEditorRow89: TcxDBEditorRow
        Properties.Caption = 'N'#186' Estrutural'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALNUESTRUTURAL'
        ID = 55
        ParentID = 42
        Index = 7
        Version = 1
      end
      object vtgDBEditorRow34: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALOBSERVACAO'
        ID = 56
        ParentID = 42
        Index = 8
        Version = 1
      end
      object vtgDBEditorRow16: TcxDBEditorRow
        Properties.Caption = 'Peso Unit'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALPSUNITARIO'
        ID = 57
        ParentID = 42
        Index = 9
        Version = 1
      end
      object vtgDBEditorRow17: TcxDBEditorRow
        Properties.Caption = 'Posi'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALPOSICAO'
        ID = 58
        ParentID = 42
        Index = 10
        Version = 1
      end
      object vtgDBEditorRow15: TcxDBEditorRow
        Properties.Caption = 'Medida'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALMEDIDA'
        ID = 59
        ParentID = 42
        Index = 11
        Version = 1
      end
      object vtgDBEditorRow82: TcxDBEditorRow
        Properties.Caption = 'N'#186' Mistura'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALNUMISTURA'
        ID = 60
        ParentID = 42
        Index = 12
        Version = 1
      end
      object vtgDBEditorRow50: TcxDBEditorRow
        Properties.Caption = 'Quantidade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALQTITEM'
        ID = 61
        ParentID = 42
        Index = 13
        Version = 1
      end
      object vtgDBEditorRow62: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Quantidade de Consumo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALQTCONSUMO'
        ID = 62
        ParentID = 42
        Index = 14
        Version = 1
      end
      object vtgDBEditorRow63: TcxDBEditorRow
        Properties.Caption = 'Digitar quantidade de consumo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALQTCONSUMODIGITAR'
        ID = 63
        ParentID = 62
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow65: TcxDBEditorRow
        Properties.Caption = 'Quantidade de Estoque'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALQTESTOQUE'
        ID = 64
        ParentID = 42
        Index = 15
        Version = 1
      end
      object vtgDBEditorRow11: TcxDBEditorRow
        Properties.Caption = 'Quantidade de Pe'#231'a'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALQTPECA'
        ID = 65
        ParentID = 42
        Index = 16
        Version = 1
      end
      object vtgDBEditorRow4: TcxDBEditorRow
        Properties.Caption = 'Tipo Equipamento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPEQUIPAMENTO'
        ID = 66
        ParentID = 42
        Index = 17
        Version = 1
      end
      object vtgDBEditorRow20: TcxDBEditorRow
        Properties.Caption = 'Valor'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALVALOR'
        ID = 67
        ParentID = 42
        Index = 18
        Version = 1
      end
      object vtgDBEditorRow19: TcxDBEditorRow
        Properties.Caption = 'Valor Final'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMATERIALVLFINAL'
        ID = 68
        ParentID = 42
        Index = 19
        Version = 1
      end
      object vtgDBEditorRow88: TcxDBEditorRow
        Properties.Caption = 'Gerar Cota'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOGERARCOTACAO'
        ID = 69
        ParentID = 39
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow64: TcxDBEditorRow
        Properties.Caption = 'Gerar Requisi'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOGERARRIM'
        ID = 70
        ParentID = 39
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow5: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Outros'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOOUTROS'
        ID = 71
        ParentID = 14
        Index = 5
        Version = 1
      end
      object vtgBOEQUIPAMENTO: TcxDBEditorRow
        Properties.Caption = 'Equipamento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOEQUIPAMENTO'
        ID = 72
        ParentID = 71
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow81: TcxDBEditorRow
        Properties.Caption = 'Equipamento 2'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOEQUIPAMENTO2'
        ID = 73
        ParentID = 71
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow70: TcxDBEditorRow
        Properties.Caption = 'Munic'#237'pio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMUNICIPIO'
        ID = 74
        ParentID = 71
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow69: TcxDBEditorRow
        Properties.Caption = 'Previs'#227'o de Instala'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRVINSTALACAO'
        ID = 75
        ParentID = 71
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow10: TcxDBEditorRow
        Properties.Caption = 'Tipo Motivo Revis'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPMOTIVOREVISAO'
        ID = 76
        ParentID = 71
        Index = 4
        Version = 1
      end
      object vtgCDFUNCIONARIORESPONSAVEL: TcxDBEditorRow
        Properties.Caption = 'Respons'#225'vel'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDFUNCIONARIO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMFUNCIONARIO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDFUNCIONARIORESPONSAVEL'
        ID = 77
        ParentID = 71
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow33: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Produto Acabado'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOACABADO'
        ID = 78
        ParentID = 14
        Index = 6
        Version = 1
      end
      object vtgDBEditorRow57: TcxDBEditorRow
        Properties.Caption = 'Adicionar a quantidade de produ'#231#227'o a quantidade de consumo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOADDQTPRODUCAOQTCONSUMO'
        ID = 79
        ParentID = 78
        Index = 0
        Version = 1
      end
      object vtgCategoryRow1: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Campos'
        ID = 80
        ParentID = 78
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow73: TcxDBEditorRow
        Properties.Caption = 'Bag'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOBAG'
        ID = 81
        ParentID = 80
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow75: TcxDBEditorRow
        Properties.Caption = 'Dimens'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTODIMENSAO'
        ID = 82
        ParentID = 80
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow47: TcxDBEditorRow
        Properties.Caption = 'Hor'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOHORA'
        ID = 83
        ParentID = 80
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow48: TcxDBEditorRow
        Properties.Caption = 'Lote'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOLOTE'
        ID = 84
        ParentID = 80
        Index = 3
        Version = 1
      end
      object vtgboprodutomateriaprima: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Mat'#233'ria-Prima'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOMATERIAPRIMA'
        ID = 85
        ParentID = 80
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow80: TcxDBEditorRow
        Properties.Caption = 'Inserir produto similar na mat'#233'ria-prima'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOSIMILARMATERIA'
        ID = 86
        ParentID = 85
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow58: TcxDBEditorRow
        Properties.Caption = 'NCM'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTONCM'
        ID = 87
        ParentID = 80
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow54: TcxDBEditorRow
        Properties.Caption = 'Quantidade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOQTITEM'
        ID = 88
        ParentID = 80
        Index = 6
        Version = 1
      end
      object vtgDBEditorRow86: TcxDBEditorRow
        Properties.Caption = 'Quantidade de Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOQTPRODUCAO'
        ID = 89
        ParentID = 80
        Index = 7
        Version = 1
      end
      object vtgDBEditorRow49: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOOBSERVACAO'
        ID = 90
        ParentID = 80
        Index = 8
        Version = 1
      end
      object vtgDBEditorRow51: TcxDBEditorRow
        Properties.Caption = 'Status'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOSTATUS'
        ID = 91
        ParentID = 80
        Index = 9
        Version = 1
      end
      object vtgDBEditorRow59: TcxDBEditorRow
        Properties.Caption = 'Unidade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOCDUNIDADE'
        ID = 92
        ParentID = 80
        Index = 10
        Version = 1
      end
      object vtgDBEditorRow74: TcxDBEditorRow
        Properties.Caption = 'C'#243'digo do Produto obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOOBRIGATORIO'
        ID = 93
        ParentID = 78
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow85: TcxDBEditorRow
        Properties.Caption = 'Copiar dimensional do produto da Ordem de Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOCOPIARDIMENSIONAL'
        ID = 94
        ParentID = 78
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow53: TcxDBEditorRow
        Properties.Caption = 'Copiar produto da mat'#233'ria-prima para produto acabado'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOCOPIARMATERIAPRIMA'
        ID = 95
        ParentID = 78
        Index = 4
        Version = 1
      end
      object vtgCategoryRow2: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Copiar na inser'#231#227'o do registro anterior'
        ID = 96
        ParentID = 78
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow55: TcxDBEditorRow
        Properties.Caption = 'C'#243'digo do produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOCOPIARCDDIGITADO'
        ID = 97
        ParentID = 96
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow56: TcxDBEditorRow
        Properties.Caption = 'N'#186' do lote'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOCOPIARLOTE'
        ID = 98
        ParentID = 96
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow52: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Gerar Movimenta'#231#227'o de estoque'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITORDPRODUCAOGERARMOVTO'
        ID = 99
        ParentID = 78
        Index = 6
        Version = 1
      end
      object vtgCDSTORDPRODUCAOITORDPRODUCAO: TcxDBEditorRow
        Properties.Caption = 'Mudar para o status'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDSTORDPRODUCAO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTORDPRODUCAO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDSTORDPRODUCAOITORDPRODUCAO'
        ID = 100
        ParentID = 99
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow30: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Recurso'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BORECURSO'
        ID = 101
        ParentID = 14
        Index = 7
        Version = 1
      end
      object vtgDBEditorRow22: TcxDBEditorRow
        Properties.Caption = 'Formula'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BORECURSOFORMULACAO'
        ID = 102
        ParentID = 101
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow7: TcxDBEditorRow
        Properties.Caption = 'Prepara'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPREPARACAO'
        ID = 103
        ParentID = 101
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow29: TcxDBEditorRow
        Properties.Caption = 'Tempo Libera'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BORECURSOLIBERACAO'
        ID = 104
        ParentID = 101
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow6: TcxDBEditorRow
        Properties.Caption = 'Tipo de Dura'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPDURACAO'
        ID = 105
        ParentID = 101
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow26: TcxDBEditorRow
        Properties.Caption = 'T'#233'rmino Prevista'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BORECURSOTERMINOPREVISTA'
        ID = 106
        ParentID = 101
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow27: TcxDBEditorRow
        Properties.Caption = 'In'#237'cio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BORECURSOINICIO'
        ID = 107
        ParentID = 101
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow31: TcxDBEditorRow
        Properties.Caption = 'Servi'#231'o Terceiro'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCUSTO'
        ID = 108
        ParentID = 14
        Index = 8
        Version = 1
      end
      object vtgCDSTORDPRODUCAOMAPAPRODUCAO: TcxDBEditorRow
        Properties.Caption = 'Status para Mapa de Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDSTORDPRODUCAO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTORDPRODUCAO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDSTORDPRODUCAOMAPAPRODUCAO'
        ID = 109
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vtgOpcoes: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Op'#231#245'es'
        ID = 110
        ParentID = -1
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow23: TcxDBEditorRow
        Properties.Caption = 'Armazenar arquivos?'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOARQUIVO'
        ID = 111
        ParentID = 110
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow90: TcxDBEditorRow
        Properties.Caption = 'Entrada de estoque de Produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOENTRADAESTOQUE'
        ID = 112
        ParentID = 110
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow87: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Gerar Corte'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOGERARCORTE'
        ID = 113
        ParentID = 110
        Index = 2
        Version = 1
      end
      object vtgCDPRODUTOCORTE: TcxDBEditorRow
        Properties.Caption = 'Produto do resto do corte'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDPRODUTO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMPRODUTO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDPRODUTOCORTE'
        ID = 114
        ParentID = 113
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow77: TcxDBEditorRow
        Properties.Caption = 'Tela para Pesagem (Op'#231#245'es)'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFORMPESAGEM'
        ID = 115
        ParentID = 110
        Index = 3
        Version = 1
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 44
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
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actmeta: TAction
      Caption = 'Meta'
      OnExecute = actmetaExecute
    end
  end
  object dts: TDataSource
    OnStateChange = dtsStateChange
    Left = 156
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
    Left = 16
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
      Caption = 'tpordproducao'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 369
      FloatTop = 161
      FloatClientWidth = 62
      FloatClientHeight = 498
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
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'btnopcoes'
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
      FloatLeft = 27
      FloatTop = 131
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
          ItemName = 'dxbrsprtr3'
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
    object dxbrlrgbtncopiar: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
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
    object dxbrsprtr3: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton1: TdxBarButton
      Action = actmeta
      Category = 0
    end
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 600
    Top = 87
  end
end

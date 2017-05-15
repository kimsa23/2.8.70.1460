object frmtpproduto: Tfrmtpproduto
  Left = 511
  Top = 25
  ClientHeight = 726
  ClientWidth = 1091
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
  object pnl1: TPanel
    Left = 0
    Top = 63
    Width = 1091
    Height = 62
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 70
      Top = 24
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
      Style.Font.Height = -16
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 38
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 66
    end
    object edtnome: TcxDBTextEdit
      Left = 70
      Top = 38
      DataBinding.DataField = 'nmtpproduto'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 291
    end
  end
  object cxDBVerticalGrid1: TcxDBVerticalGrid
    Left = 0
    Top = 125
    Width = 1091
    Height = 601
    Align = alClient
    LookAndFeel.NativeStyle = False
    OptionsView.RowHeaderWidth = 317
    Navigator.Buttons.CustomButtons = <>
    TabOrder = 5
    DataController.DataSource = dts
    Version = 1
    object cxDBVerticalGrid1CategoryRow1: TcxCategoryRow
      Properties.Caption = 'Geral'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow7: TcxDBEditorRow
      Properties.Caption = 'Caracteristicas'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCARACTERISTICAS'
      ID = 1
      ParentID = 0
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow10: TcxDBEditorRow
      Properties.Caption = 'Comiss'#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCOMISSAO'
      ID = 2
      ParentID = 0
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow53: TcxDBEditorRow
      Properties.Caption = 'Composi'#231#227'o Qu'#237'mica'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCOMPOSICAOQUIMICA'
      ID = 3
      ParentID = 0
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow23: TcxDBEditorRow
      Properties.Caption = 'Consistir preenchimento de quantidade atrav'#233's de M'#250'ltiplo'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMULTIPLO'
      ID = 4
      ParentID = 0
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow
      Properties.Caption = 'Controlar Estoque'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOESTOQUE'
      ID = 5
      ParentID = 0
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow8: TcxDBEditorRow
      Properties.Caption = 'Dias de Garantia'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BODIASGARANTIA'
      ID = 6
      ParentID = 0
      Index = 5
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Dimensional'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BODIMENSIONAL'
      ID = 7
      ParentID = 0
      Index = 6
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow42: TcxDBEditorRow
      Properties.Caption = 'Gerar nome automaticamente'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOGERARNOMEAUTOMATICO'
      ID = 8
      ParentID = 7
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow4: TcxDBEditorRow
      Properties.Caption = 'Fabricante'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'bofabricante'
      ID = 9
      ParentID = 0
      Index = 7
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow6: TcxDBEditorRow
      Properties.Caption = 'Fornecedor Exclusivo'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'bofornecedorexclusivo'
      ID = 10
      ParentID = 0
      Index = 8
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow25: TcxDBEditorRow
      Properties.Caption = 'Im'#243'vel'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOIMOVEL'
      ID = 11
      ParentID = 0
      Index = 9
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow9: TcxDBEditorRow
      Properties.Caption = 'Localiza'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOLOCALIZACAO'
      ID = 12
      ParentID = 0
      Index = 10
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow54: TcxDBEditorRow
      Properties.Caption = 'Propriedade F'#237'sica'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPROPRIEDADEFISICA'
      ID = 13
      ParentID = 0
      Index = 11
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow5: TcxDBEditorRow
      Properties.Caption = 'Servi'#231'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'boservico'
      ID = 14
      ParentID = 0
      Index = 12
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow3: TcxDBEditorRow
      Properties.Caption = 'Situa'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOST'
      ID = 15
      ParentID = 0
      Index = 13
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow27: TcxDBEditorRow
      Properties.Caption = 'Tributa'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOTRIBUTACAO'
      ID = 16
      ParentID = 0
      Index = 14
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow21: TcxDBEditorRow
      Properties.Caption = 'Unidade 2'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOUNIDADE2'
      ID = 17
      ParentID = 0
      Index = 15
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow28: TcxDBEditorRow
      Properties.Caption = 'Valores'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOVALOR'
      ID = 18
      ParentID = 0
      Index = 16
      Version = 1
    end
    object cxDBVerticalGrid1CategoryRow2: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'Produ'#231#227'o'
      ID = 19
      ParentID = -1
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow13: TcxDBEditorRow
      Properties.Caption = 'Baixa subproduto na produ'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOBAIXASUBPRODUTOPRODUCAO'
      ID = 20
      ParentID = 19
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow14: TcxDBEditorRow
      Properties.Caption = 'Baixa subproduto na venda'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOBAIXASUBPRODUTOVENDA'
      ID = 21
      ParentID = 19
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow15: TcxDBEditorRow
      Properties.Caption = 'Composto'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'bocomposto'
      ID = 22
      ParentID = 19
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow18: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'M'#233'todo Processo'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSO'
      ID = 23
      ParentID = 19
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow50: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Embalagem'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOEMBALAGEM'
      ID = 24
      ParentID = 23
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow52: TcxDBEditorRow
      Properties.Caption = 'Formula'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOEMBALAGEMFORMULACAO'
      ID = 25
      ParentID = 24
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow51: TcxDBEditorRow
      Properties.Caption = 'Recurso que ser'#225' usado a embalagem'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOEMBALAGEMTPEQUIPAMENTO'
      ID = 26
      ParentID = 24
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow39: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Formula'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOFORMULACAO'
      ID = 27
      ParentID = 23
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow49: TcxDBEditorRow
      Properties.Caption = 'Calcular o quociente de Produ'#231#227'o de acordo com a formula'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOQUOCIENTE'
      ID = 28
      ParentID = 27
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1CategoryRow5: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'Mat'#233'ria-Prima'
      ID = 29
      ParentID = 23
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow47: TcxDBEditorRow
      Properties.Caption = 'Faixa de Quantidade'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOFAIXA'
      ID = 30
      ParentID = 29
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow46: TcxDBEditorRow
      Properties.Caption = 'Formula'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOFORMULACAO'
      ID = 31
      ParentID = 29
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1CategoryRow6: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'Imposto'
      ID = 32
      ParentID = 29
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow44: TcxDBEditorRow
      Properties.Caption = 'COFINS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOCOFINS'
      ID = 33
      ParentID = 32
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow31: TcxDBEditorRow
      Properties.Caption = 'ICMS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOICMS'
      ID = 34
      ParentID = 32
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow36: TcxDBEditorRow
      Properties.Caption = 'IPI'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOIPI'
      ID = 35
      ParentID = 32
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow43: TcxDBEditorRow
      Properties.Caption = 'PIS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOPIS'
      ID = 36
      ParentID = 32
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow32: TcxDBEditorRow
      Properties.Caption = 'Medida'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOMEDIDA'
      ID = 37
      ParentID = 29
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow30: TcxDBEditorRow
      Properties.Caption = 'NCM'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSONUCLFISCAL'
      ID = 38
      ParentID = 29
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow33: TcxDBEditorRow
      Properties.Caption = 'Peso Unit'#225'rio'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOPSUNITARIO'
      ID = 39
      ParentID = 29
      Index = 5
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow35: TcxDBEditorRow
      Properties.Caption = 'Posi'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOPOSICAO'
      ID = 40
      ParentID = 29
      Index = 6
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow34: TcxDBEditorRow
      Properties.Caption = 'Quantidad de Pe'#231'a'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOQTPECA'
      ID = 41
      ParentID = 29
      Index = 7
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow40: TcxDBEditorRow
      Properties.Caption = 'Recurso que ser'#225' consumida a mat'#233'ria-prima'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOTPEQUIPAMENTO'
      ID = 42
      ParentID = 29
      Index = 8
      Version = 1
    end
    object cxDBVerticalGrid1CategoryRow4: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'Recurso'
      ID = 43
      ParentID = 23
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow41: TcxDBEditorRow
      Properties.Caption = 'Exibir Tipo de Dura'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOTPDURACAO'
      ID = 44
      ParentID = 43
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow48: TcxDBEditorRow
      Properties.Caption = 'Formula'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORECURSOFORMULACAO'
      ID = 45
      ParentID = 43
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow37: TcxDBEditorRow
      Properties.Caption = 'Prepara'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMETODOPROCESSOPREPARACAO'
      ID = 46
      ParentID = 43
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow11: TcxDBEditorRow
      Properties.Caption = 'Produto Acabado'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPRODUTOACABADO'
      ID = 47
      ParentID = 19
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow12: TcxDBEditorRow
      Properties.Caption = 'Valor Custo M'#233'dio de subproduto'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCUSTOMEDIOSUBPRODUTO'
      ID = 48
      ParentID = 19
      Index = 5
      Version = 1
    end
    object cxDBVerticalGrid1CategoryRow3: TcxCategoryRow
      Properties.Caption = 'Outros'
      ID = 49
      ParentID = -1
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow38: TcxDBEditorRow
      Properties.Caption = 'Armazenar Arquivos'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOARQUIVO'
      ID = 50
      ParentID = 49
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow24: TcxDBEditorRow
      Properties.Caption = 'C'#243'digo do fornecedor'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCODIGOFORNECEDOR'
      ID = 51
      ParentID = 49
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow19: TcxDBEditorRow
      Properties.Caption = 'Combust'#237'vel'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCOMBUSTIVEL'
      ID = 52
      ParentID = 49
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow16: TcxDBEditorRow
      Properties.Caption = 'Contabilidade'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCONTABILIDADE'
      ID = 53
      ParentID = 49
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow20: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Controle de Lote'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOLOTE'
      ID = 54
      ParentID = 49
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow45: TcxDBEditorRow
      Properties.Caption = 'N'#250'mero IMEI'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOLOTEIMEI'
      ID = 55
      ParentID = 54
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow29: TcxDBEditorRow
      Properties.Caption = 'Cr'#237'tico'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCRITICO'
      ID = 56
      ParentID = 49
      Index = 5
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow26: TcxDBEditorRow
      Properties.Caption = 'Custo Produ'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPRODUCAO'
      ID = 57
      ParentID = 49
      Index = 6
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow17: TcxDBEditorRow
      Properties.Caption = 'Grade Valor'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOGRADEVALOR'
      ID = 58
      ParentID = 49
      Index = 7
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow22: TcxDBEditorRow
      Properties.Caption = 'Tabela de Pre'#231'o por Tipo de Cliente'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOTPCLIENTE'
      ID = 59
      ParentID = 49
      Index = 8
      Version = 1
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
      Caption = 'tpproduto'
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
  end
end

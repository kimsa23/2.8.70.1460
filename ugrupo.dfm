object frmgrupo: Tfrmgrupo
  Left = 541
  Top = 69
  BorderStyle = bsDialog
  Caption = 'Grupo'
  ClientHeight = 566
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btnok: TcxButton
    Left = 316
    Top = 536
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 0
    OnClick = btnokClick
  end
  object btncancelar: TcxButton
    Left = 452
    Top = 536
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 1
  end
  object vgr: TcxDBVerticalGrid
    Left = 0
    Top = 0
    Width = 844
    Height = 529
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LookAndFeel.NativeStyle = False
    OptionsView.RowHeaderWidth = 298
    Navigator.Buttons.CustomButtons = <>
    ParentFont = False
    TabOrder = 2
    DataController.DataSource = dts
    Version = 1
    object vgrCatProduto: TcxCategoryRow
      Properties.Caption = 'Produto'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object vgrDBEditorRow11: TcxDBEditorRow
      Properties.Caption = 'Aviso para dias de vencimento de validade'
      Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
      Properties.DataBinding.FieldName = 'NUDIASVENCIMENTO'
      ID = 1
      ParentID = 0
      Index = 0
      Version = 1
    end
    object vgrBOCOMISSAO: TcxDBEditorRow
      Expanded = False
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
    object vgrCDTPCOMISSAOPRODUTO: TcxDBEditorRow
      Properties.Caption = 'Tipo'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDTPCOMISSAOPRODUTO'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMTPCOMISSAOPRODUTO'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDTPCOMISSAOPRODUTO'
      ID = 3
      ParentID = 2
      Index = 0
      Version = 1
    end
    object vgrPRCOMISSAO: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'PRCOMISSAO'
      ID = 4
      ParentID = 2
      Index = 1
      Version = 1
    end
    object vgrDBEditorRow12: TcxDBEditorRow
      Properties.Caption = 'Desativar o produto quando o estoque estiver zerado'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BODESATIVARPRODUTOZERADO'
      ID = 5
      ParentID = 0
      Index = 2
      Version = 1
    end
    object vgrBOPDV: TcxDBEditorRow
      Properties.Caption = 'Exportar PDV'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPDV'
      ID = 6
      ParentID = 0
      Index = 3
      Version = 1
    end
    object vgrDBEditorRow2: TcxDBEditorRow
      Properties.Caption = 'N'#186' Itens'
      Properties.DataBinding.FieldName = 'CDITEM'
      ID = 7
      ParentID = 0
      Index = 4
      Version = 1
    end
    object vgrNUCLFISCAL: TcxDBEditorRow
      Properties.Caption = 'NCM'
      Properties.DataBinding.FieldName = 'NUCLFISCAL'
      ID = 8
      ParentID = 0
      Index = 5
      Version = 1
    end
    object vgrCDORIGEM: TcxDBEditorRow
      Properties.Caption = 'Origem'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDORIGEM'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMORIGEM'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDORIGEM'
      ID = 9
      ParentID = 0
      Index = 6
      Version = 1
    end
    object vgrDBEditorRow1: TcxDBEditorRow
      Properties.Caption = 'Pode inserir produto neste grupo'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPRODUTO'
      ID = 10
      ParentID = 0
      Index = 7
      Version = 1
    end
    object vgrCDTPITEM: TcxDBEditorRow
      Properties.Caption = 'Tipo Item'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDTPITEM'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMTPITEM'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDTPITEM'
      ID = 11
      ParentID = 0
      Index = 8
      Version = 1
    end
    object vgrCDTPPRODUTO: TcxDBEditorRow
      Properties.Caption = 'Tipo Produto'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDTPPRODUTO'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMTPPRODUTO'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDTPPRODUTO'
      ID = 12
      ParentID = 0
      Index = 9
      Version = 1
    end
    object vgrCDUNIDADE: TcxDBEditorRow
      Properties.Caption = 'Unidade'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDUNIDADE'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMUNIDADE'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDUNIDADE'
      ID = 13
      ParentID = 0
      Index = 10
      Version = 1
    end
    object vgrCatImposto: TcxCategoryRow
      Properties.Caption = 'Imposto'
      ID = 14
      ParentID = -1
      Index = 1
      Version = 1
    end
    object vgrBOIPI: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'IPI'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOIPI'
      ID = 15
      ParentID = 14
      Index = 0
      Version = 1
    end
    object vgrALIPI: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'ALIPI'
      ID = 16
      ParentID = 15
      Index = 0
      Version = 1
    end
    object vgrBORECUPERAIPI: TcxDBEditorRow
      Properties.Caption = 'Recupera'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORECUPERAIPI'
      ID = 17
      ParentID = 15
      Index = 1
      Version = 1
    end
    object vgrBOICMS: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'ICMS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOICMS'
      ID = 18
      ParentID = 14
      Index = 1
      Version = 1
    end
    object vgrALICMS: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'ALICMS'
      ID = 19
      ParentID = 18
      Index = 0
      Version = 1
    end
    object vgrNUSTICMS: TcxDBEditorRow
      Properties.Caption = 'Situa'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'NUSTICMS'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMSTICMS'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'NUSTICMS'
      ID = 20
      ParentID = 18
      Index = 1
      Version = 1
    end
    object vgrBORECUPERAICMS: TcxDBEditorRow
      Properties.Caption = 'Recupera'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORECUPERAICMS'
      ID = 21
      ParentID = 18
      Index = 2
      Version = 1
    end
    object vgrBOPIS: TcxDBEditorRow
      Properties.Caption = 'PIS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPIS'
      ID = 22
      ParentID = 14
      Index = 2
      Version = 1
    end
    object vgrALPIS: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'ALPIS'
      ID = 23
      ParentID = 22
      Index = 0
      Version = 1
    end
    object vgrBORECUPERAPIS: TcxDBEditorRow
      Properties.Caption = 'Recupera'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORECUPERAPIS'
      ID = 24
      ParentID = 22
      Index = 1
      Version = 1
    end
    object vgrNUSTPIS: TcxDBEditorRow
      Properties.Caption = 'Situa'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'NUSTPIS'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMSTPIS'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'NUSTPIS'
      ID = 25
      ParentID = 22
      Index = 2
      Version = 1
    end
    object vgrBOCOFINS: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'COFINS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCOFINS'
      ID = 26
      ParentID = 14
      Index = 3
      Version = 1
    end
    object vgrALCOFINS: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'ALCOFINS'
      ID = 27
      ParentID = 26
      Index = 0
      Version = 1
    end
    object vgrBORECUPERACOFINS: TcxDBEditorRow
      Properties.Caption = 'Recupera'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORECUPERACOFINS'
      ID = 28
      ParentID = 26
      Index = 1
      Version = 1
    end
    object vgrNUSTCOFINS: TcxDBEditorRow
      Properties.Caption = 'Situa'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'NUSTCOFINS'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMSTCOFINS'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'NUSTCOFINS'
      ID = 29
      ParentID = 26
      Index = 2
      Version = 1
    end
    object vgrCDBCCALCULOCREDITO: TcxDBEditorRow
      Properties.Caption = 'Base de C'#225'lculo de Cr'#233'dito'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDBCCALCULOCREDITO'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMBCCALCULOCREDITO'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDBCCALCULOCREDITO'
      ID = 30
      ParentID = 14
      Index = 4
      Version = 1
    end
    object vgrNUCONTAESTOQUE: TcxDBEditorRow
      Properties.Caption = 'Conta da Contabilidade para Estoque'
      Properties.DataBinding.FieldName = 'NUCONTAESTOQUE'
      ID = 31
      ParentID = 14
      Index = 5
      Version = 1
    end
    object vgrBOGERARLIVROPRODUCAO: TcxDBEditorRow
      Properties.Caption = 'Gerar Livro Produ'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOGERARLIVROPRODUCAO'
      ID = 32
      ParentID = 14
      Index = 6
      Version = 1
    end
    object vgBOMPDOBEM: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'MP do Bem'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMPDOBEM'
      ID = 33
      ParentID = 14
      Index = 7
      Version = 1
    end
    object vgrVLMPDOBEM: TcxDBEditorRow
      Properties.Caption = 'Valor'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Properties.DataBinding.FieldName = 'VLMPDOBEM'
      ID = 34
      ParentID = 33
      Index = 0
      Version = 1
    end
    object vgrCDREGRAST: TcxDBEditorRow
      Properties.Caption = 'Regra Situa'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDREGRAST'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMREGRAST'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDREGRAST'
      ID = 35
      ParentID = 14
      Index = 8
      Version = 1
    end
    object vgrCatdimensionavel: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'Dimension'#225'vel'
      ID = 36
      ParentID = -1
      Index = 2
      Version = 1
    end
    object vgrCDFORMA: TcxDBEditorRow
      Properties.Caption = 'Forma'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDFORMA'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMFORMA'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDFORMA'
      ID = 37
      ParentID = 36
      Index = 0
      Version = 1
    end
    object vgrCDMATERIAL: TcxDBEditorRow
      Properties.Caption = 'Material'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDMATERIAL'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMMATERIAL'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDMATERIAL'
      ID = 38
      ParentID = 36
      Index = 1
      Version = 1
    end
    object vgrCDNORMA: TcxDBEditorRow
      Properties.Caption = 'Norma'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDNORMA'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMNORMA'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDNORMA'
      ID = 39
      ParentID = 36
      Index = 2
      Version = 1
    end
    object vgrCatAtivo: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'Ativo Imobilizado'
      ID = 40
      ParentID = -1
      Index = 3
      Version = 1
    end
    object vgrCDCONTAATIVO: TcxDBEditorRow
      Properties.Caption = 'C'#243'digo Conta'
      Properties.DataBinding.FieldName = 'CDCONTAATIVO'
      ID = 41
      ParentID = 40
      Index = 0
      Version = 1
    end
    object vgrNUCONTAATIVO: TcxDBEditorRow
      Properties.Caption = 'N'#237'vel Conta'
      Properties.DataBinding.FieldName = 'NUCONTAATIVO'
      ID = 42
      ParentID = 40
      Index = 1
      Version = 1
    end
    object vgrNMCONTAATIVO: TcxDBEditorRow
      Properties.Caption = 'Nome Conta'
      Properties.DataBinding.FieldName = 'NMCONTAATIVO'
      ID = 43
      ParentID = 40
      Index = 2
      Version = 1
    end
    object vgrCDNATUREZACONTA: TcxDBEditorRow
      Properties.Caption = 'Natureza Conta'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDNATUREZACONTA'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMNATUREZACONTA'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDNATUREZACONTA'
      ID = 44
      ParentID = 40
      Index = 3
      Version = 1
    end
    object vgrCDINDICADORTPCONTA: TcxDBEditorRow
      Properties.Caption = 'Indicador Conta'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDINDICADORTPCONTA'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMINDICADORTPCONTA'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDINDICADORTPCONTA'
      ID = 45
      ParentID = 40
      Index = 4
      Version = 1
    end
    object vgrCategoryRow4: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'Usar Produto Em '
      ID = 46
      ParentID = -1
      Index = 4
      Version = 1
    end
    object vgrDBEditorRow3: TcxDBEditorRow
      Properties.Caption = 'Nota Fiscal'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOSAIDA'
      ID = 47
      ParentID = 46
      Index = 0
      Version = 1
    end
    object vgrDBEditorRow4: TcxDBEditorRow
      Properties.Caption = 'Compra'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOENTRADA'
      ID = 48
      ParentID = 46
      Index = 1
      Version = 1
    end
    object vgrDBEditorRow5: TcxDBEditorRow
      Properties.Caption = 'Ordem de Servi'#231'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOORDSERV'
      ID = 49
      ParentID = 46
      Index = 2
      Version = 1
    end
    object vgrDBEditorRow6: TcxDBEditorRow
      Properties.Caption = 'Pedido'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPEDIDO'
      ID = 50
      ParentID = 46
      Index = 3
      Version = 1
    end
    object vgrDBEditorRow7: TcxDBEditorRow
      Properties.Caption = 'Ordem de Compra'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOORDCOMPRA'
      ID = 51
      ParentID = 46
      Index = 4
      Version = 1
    end
    object vgrDBEditorRow8: TcxDBEditorRow
      Properties.Caption = 'Cota'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPEDIDOMATERIAL'
      ID = 52
      ParentID = 46
      Index = 5
      Version = 1
    end
    object vgrDBEditorRow10: TcxDBEditorRow
      Properties.Caption = 'Or'#231'amento'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOORCAMENTO'
      ID = 53
      ParentID = 46
      Index = 6
      Version = 1
    end
    object vgrDBEditorRow9: TcxDBEditorRow
      Properties.Caption = 'Movimenta'#231#227'o de Estoque'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOMOVTO'
      ID = 54
      ParentID = 46
      Index = 7
      Version = 1
    end
  end
  object dts: TDataSource
    Left = 768
    Top = 87
  end
end

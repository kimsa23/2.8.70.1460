object frmdlgaplicarconfiguracaogrupo: Tfrmdlgaplicarconfiguracaogrupo
  Left = 448
  Top = 51
  BorderStyle = bsDialog
  Caption = 'Aplicar Configura'#231#227'o do Grupo'
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
  PixelsPerInch = 96
  TextHeight = 13
  object grv1: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 844
    Height = 529
    Align = alTop
    LayoutStyle = ulsBandsView
    LookAndFeel.NativeStyle = False
    OptionsView.RowHeaderWidth = 367
    TabOrder = 0
    Version = 1
    object grv1CategoryRow1: TcxCategoryRow
      Properties.Caption = 'Produto'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object grv1bodesativar: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          EditProperties.ValueChecked = 'S'
          EditProperties.ValueUnchecked = 'N'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'N'
        end
        item
          Caption = 'Ativar'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          EditProperties.ValueChecked = 'S'
          EditProperties.ValueUnchecked = 'N'
          DataBinding.ValueType = 'String'
          Value = 'N'
        end>
      ID = 1
      ParentID = 0
      Index = 0
      Version = 1
    end
    object grv1nuclfiscal: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'Boolean'
          Value = False
        end
        item
          Caption = 'NCM'
          EditPropertiesClassName = 'TcxTextEditProperties'
          DataBinding.ValueType = 'String'
          Value = ''
        end>
      ID = 2
      ParentID = 0
      Index = 1
      Version = 1
    end
    object grv1cdorigem: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'Boolean'
          Value = False
        end
        item
          Caption = 'Origem'
          EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          EditProperties.KeyFieldNames = 'CDORIGEM'
          EditProperties.ListColumns = <
            item
              FieldName = 'NMORIGEM'
            end>
          EditProperties.ListOptions.ShowHeader = False
          DataBinding.ValueType = 'Integer'
          Value = 0
        end>
      ID = 3
      ParentID = 0
      Index = 2
      Version = 1
    end
    object grv1cdtpproduto: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'Boolean'
          Value = False
        end
        item
          Caption = 'Tipo Produto'
          EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          EditProperties.KeyFieldNames = 'CDTPPRODUTO'
          EditProperties.ListColumns = <
            item
              FieldName = 'NMTPPRODUTO'
            end>
          EditProperties.ListOptions.ShowHeader = False
          DataBinding.ValueType = 'Integer'
          Value = 0
        end>
      ID = 4
      ParentID = 0
      Index = 3
      Version = 1
    end
    object grv1cdtpitem: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'Boolean'
          Value = False
        end
        item
          Caption = 'Tipo Item'
          EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          EditProperties.KeyFieldNames = 'CDTPITEM'
          EditProperties.ListColumns = <
            item
              FieldName = 'NMTPITEM'
            end>
          EditProperties.ListOptions.ShowHeader = False
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 5
      ParentID = 0
      Index = 4
      Version = 1
    end
    object grv1cdunidade: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'Boolean'
          Value = False
        end
        item
          Caption = 'Unidade'
          EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          EditProperties.KeyFieldNames = 'CDUNIDADE'
          EditProperties.ListColumns = <
            item
              FieldName = 'NMUNIDADE'
            end>
          EditProperties.ListOptions.ShowHeader = False
          DataBinding.ValueType = 'Integer'
          Value = 0
        end>
      ID = 6
      ParentID = 0
      Index = 5
      Version = 1
    end
    object grv1CategoryRow3: TcxCategoryRow
      Properties.Caption = 'Imposto'
      ID = 7
      ParentID = -1
      Index = 1
      Version = 1
    end
    object grv1boicms: TcxMultiEditorRow
      Expanded = False
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'ICMS'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          DataBinding.ValueType = 'String'
          Value = 'False'
        end>
      ID = 8
      ParentID = 7
      Index = 0
      Version = 1
    end
    object grv1borecuperaicms: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Recupera'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 9
      ParentID = 8
      Index = 0
      Version = 1
    end
    object grv1alicms: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Al'#237'quota'
          EditPropertiesClassName = 'TcxCalcEditProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 10
      ParentID = 8
      Index = 1
      Version = 1
    end
    object grv1nusticms: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Situa'#231#227'o Tribut'#225'ria'
          EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          EditProperties.KeyFieldNames = 'NUSTICMS'
          EditProperties.ListColumns = <
            item
              FieldName = 'NMSTICMS'
            end>
          EditProperties.ListOptions.ShowHeader = False
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 11
      ParentID = 8
      Index = 2
      Version = 1
    end
    object grv1boipi: TcxMultiEditorRow
      Expanded = False
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'IPI'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          EditProperties.ValueChecked = 'S'
          EditProperties.ValueUnchecked = 'N'
          DataBinding.ValueType = 'String'
          Value = 'False'
        end>
      ID = 12
      ParentID = 7
      Index = 1
      Version = 1
    end
    object grv1borecuperaipi: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Recupera'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 13
      ParentID = 12
      Index = 0
      Version = 1
    end
    object grv1alipi: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Al'#237'quota'
          EditPropertiesClassName = 'TcxCalcEditProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 14
      ParentID = 12
      Index = 1
      Version = 1
    end
    object grv1bopis: TcxMultiEditorRow
      Expanded = False
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'PIS'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 15
      ParentID = 7
      Index = 2
      Version = 1
    end
    object grv1alpis: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Al'#237'quota'
          EditPropertiesClassName = 'TcxCalcEditProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 16
      ParentID = 15
      Index = 0
      Version = 1
    end
    object grv1borecuperapis: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Recupera'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 17
      ParentID = 15
      Index = 1
      Version = 1
    end
    object grv1NUSTPIS: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Situa'#231#227'o Tribut'#225'ria'
          EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          EditProperties.KeyFieldNames = 'NUSTPIS'
          EditProperties.ListColumns = <
            item
              FieldName = 'NMSTPIS'
            end>
          EditProperties.ListOptions.RowSelect = False
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 18
      ParentID = 15
      Index = 2
      Version = 1
    end
    object grv1bocofins: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'COFINS'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 19
      ParentID = 7
      Index = 3
      Version = 1
    end
    object grv1alcofins: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Al'#237'quota'
          EditPropertiesClassName = 'TcxCalcEditProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 20
      ParentID = 19
      Index = 0
      Version = 1
    end
    object grv1borecuperacofins: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Recupera'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 21
      ParentID = 19
      Index = 1
      Version = 1
    end
    object grv1NUSTCOFINS: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Situa'#231#227'o Tribut'#225'ria'
          EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          EditProperties.KeyFieldNames = 'NUSTCOFINS'
          EditProperties.ListColumns = <
            item
              FieldName = 'NMSTCOFINS'
            end>
          EditProperties.ListOptions.ShowHeader = False
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 22
      ParentID = 19
      Index = 2
      Version = 1
    end
    object grv1CDBCCALCULOCREDITO: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Base de C'#225'lculo de Cr'#233'dito'
          EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          EditProperties.KeyFieldNames = 'CDBCCALCULOCREDITO'
          EditProperties.ListColumns = <
            item
              FieldName = 'NMBCCALCULOCREDITO'
            end>
          EditProperties.ListOptions.ShowHeader = False
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 23
      ParentID = 7
      Index = 4
      Version = 1
    end
    object grv1bogerarlivroproducao: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Gerar Livro Produ'#231#227'o'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 24
      ParentID = 7
      Index = 5
      Version = 1
    end
    object grv1nucontaestoque: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Conta Estoque'
          EditPropertiesClassName = 'TcxTextEditProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 25
      ParentID = 7
      Index = 6
      Version = 1
    end
    object grv1bopdv: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Exportar PDV'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 26
      ParentID = 7
      Index = 7
      Version = 1
    end
    object grv1CategoryRow2: TcxCategoryRow
      Properties.Caption = 'Comiss'#227'o'
      ID = 27
      ParentID = -1
      Index = 2
      Version = 1
    end
    object grv1bocomissao: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Comissionado'
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          DataBinding.ValueType = 'String'
          Value = Null
        end>
      ID = 28
      ParentID = 27
      Index = 0
      Version = 1
    end
    object grv1prcomissao: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'String'
          Value = 'False'
        end
        item
          Caption = 'Porcentagem'
          EditPropertiesClassName = 'TcxCalcEditProperties'
          DataBinding.ValueType = 'Float'
          Value = Null
        end>
      ID = 29
      ParentID = 27
      Index = 1
      Version = 1
    end
    object grv1CategoryRow8: TcxCategoryRow
      Properties.Caption = 'Pre'#231'o'
      ID = 30
      ParentID = -1
      Index = 3
      Version = 1
    end
    object grv1vlvenda: TcxEditorRow
      Properties.Caption = 'Venda'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Properties.DataBinding.ValueType = 'Currency'
      Properties.Value = Null
      ID = 31
      ParentID = 30
      Index = 0
      Version = 1
    end
    object grv1vlatacado: TcxEditorRow
      Properties.Caption = 'Atacado'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Properties.DataBinding.ValueType = 'Currency'
      Properties.Value = Null
      ID = 32
      ParentID = 30
      Index = 1
      Version = 1
    end
    object grv1vlespecial: TcxEditorRow
      Properties.Caption = 'Especial'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Properties.DataBinding.ValueType = 'Currency'
      Properties.Value = Null
      ID = 33
      ParentID = 30
      Index = 2
      Version = 1
    end
    object grv1vlcusto: TcxEditorRow
      Properties.Caption = 'Custo'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Properties.DataBinding.ValueType = 'Currency'
      Properties.Value = Null
      ID = 34
      ParentID = 30
      Index = 3
      Version = 1
    end
    object grv1dimensional: TcxCategoryRow
      Properties.Caption = 'Dimension'#225'vel'
      ID = 35
      ParentID = -1
      Index = 4
      Version = 1
    end
    object grv1cdforma: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'Boolean'
          Value = False
        end
        item
          Caption = 'Forma'
          EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          EditProperties.KeyFieldNames = 'CDforma'
          EditProperties.ListColumns = <
            item
              FieldName = 'NMforma'
            end>
          EditProperties.ListOptions.ShowHeader = False
          DataBinding.ValueType = 'Integer'
          Value = 0
        end>
      ID = 36
      ParentID = 35
      Index = 0
      Version = 1
    end
    object grv1cdmaterial: TcxMultiEditorRow
      Properties.Editors = <
        item
          EditPropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          DataBinding.ValueType = 'Boolean'
          Value = False
        end
        item
          Caption = 'Material'
          EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          EditProperties.KeyFieldNames = 'CDMATERIAL'
          EditProperties.ListColumns = <
            item
              FieldName = 'NMMATERIAL'
            end>
          EditProperties.ListOptions.ShowHeader = False
          DataBinding.ValueType = 'Integer'
          Value = 0
        end>
      ID = 37
      ParentID = 35
      Index = 1
      Version = 1
    end
  end
  object btnok: TcxButton
    Left = 316
    Top = 536
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 1
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
    TabOrder = 2
  end
end

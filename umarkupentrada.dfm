object frmmarkupentrada: Tfrmmarkupentrada
  Left = 361
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Markup Pre'#231'o'
  ClientHeight = 607
  ClientWidth = 839
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grd: TcxDBVerticalGrid
    Left = 8
    Top = 23
    Width = 409
    Height = 382
    LookAndFeel.NativeStyle = False
    OptionsView.ScrollBars = ssVertical
    OptionsView.RowHeaderWidth = 169
    Navigator.Buttons.CustomButtons = <>
    TabOrder = 0
    DataController.DataSource = dts
    Version = 1
    object grdDBEditorRow8: TcxDBEditorRow
      Properties.Caption = 'Custo Bruto Produto'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLCUSTOBRUTO'
      Styles.Header = cxStyle1
      Styles.Content = cxStyle1
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object grdDBEditorRow1: TcxDBEditorRow
      Properties.Caption = 'Valor Unit'#225'rio'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLUNITARIO'
      Properties.Options.Editing = False
      ID = 1
      ParentID = 0
      Index = 0
      Version = 1
    end
    object grdDBEditorRow44: TcxDBEditorRow
      Properties.Caption = 'Diferencial Al'#237'quota'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLICMSDIFALIQUOTAITEM'
      Properties.Options.Editing = False
      ID = 2
      ParentID = 0
      Index = 1
      Version = 1
    end
    object grdDBEditorRow2: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'IPI'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLIPIITEM'
      Properties.Options.Editing = False
      ID = 3
      ParentID = 0
      Index = 2
      Version = 1
    end
    object grdDBEditorRow22: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.DataBinding.FieldName = 'ALIPI'
      Properties.Options.Editing = False
      ID = 4
      ParentID = 3
      Index = 0
      Version = 1
    end
    object grdDBEditorRow3: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Frete'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Properties.DataBinding.FieldName = 'VLFRETEITEM'
      Properties.Options.Editing = False
      ID = 5
      ParentID = 0
      Index = 3
      Version = 1
    end
    object grdDBEditorRow23: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'PRFRETE'
      ID = 6
      ParentID = 5
      Index = 0
      Version = 1
    end
    object grdDBEditorRow41: TcxDBEditorRow
      Properties.Caption = 'Outras Despesas'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLOUTDESPESAITEM'
      Properties.Options.Editing = False
      ID = 7
      ParentID = 0
      Index = 4
      Version = 1
    end
    object grdDBEditorRow4: TcxDBEditorRow
      Properties.Caption = 'Sub Trib'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLICMSSUBTRIBITEM'
      Properties.Options.Editing = False
      ID = 8
      ParentID = 0
      Index = 5
      Version = 1
    end
    object grdDBEditorRow5: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Desp Operacionais'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Visible = False
      ID = 9
      ParentID = 0
      Index = 6
      Version = 1
    end
    object grdDBEditorRow25: TcxDBEditorRow
      Properties.Caption = '%'
      ID = 10
      ParentID = 9
      Index = 0
      Version = 1
    end
    object grdDBEditorRow6: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'DAE Estadual'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Visible = False
      ID = 11
      ParentID = 0
      Index = 7
      Version = 1
    end
    object grdDBEditorRow26: TcxDBEditorRow
      Properties.Caption = '%'
      ID = 12
      ParentID = 11
      Index = 0
      Version = 1
    end
    object grdDBEditorRow7: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Lucro sobre Custo'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Visible = False
      ID = 13
      ParentID = 0
      Index = 8
      Version = 1
    end
    object grdDBEditorRow27: TcxDBEditorRow
      Properties.Caption = '%'
      ID = 14
      ParentID = 13
      Index = 0
      Version = 1
    end
    object grdDBEditorRow13: TcxDBEditorRow
      Properties.Caption = 'Custo L'#237'quido Produto'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLCUSTOLIQUIDO'
      Properties.Options.Editing = False
      Styles.Header = cxStyle1
      Styles.Content = cxStyle1
      ID = 15
      ParentID = -1
      Index = 1
      Version = 1
    end
    object grdDBEditorRow12: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'ICMS Entrada'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLICMS'
      Visible = False
      ID = 16
      ParentID = 15
      Index = 0
      Version = 1
    end
    object grdDBEditorRow31: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.DataBinding.FieldName = 'ALICMS'
      ID = 17
      ParentID = 16
      Index = 0
      Version = 1
    end
    object grdDBEditorRow9: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Desconto'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLDESCONTOITEM'
      Properties.Options.Editing = False
      ID = 18
      ParentID = 15
      Index = 1
      Version = 1
    end
    object grdDBEditorRow28: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'PRDESCONTO'
      Properties.Options.Editing = False
      ID = 19
      ParentID = 18
      Index = 0
      Version = 1
    end
    object grdDBEditorRow11: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Cofins'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLCOFINS'
      Visible = False
      ID = 20
      ParentID = 15
      Index = 2
      Version = 1
    end
    object grdDBEditorRow29: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.DataBinding.FieldName = 'ALCOFINS'
      ID = 21
      ParentID = 20
      Index = 0
      Version = 1
    end
    object grdDBEditorRow10: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'PIS'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLPIS'
      Visible = False
      ID = 22
      ParentID = 15
      Index = 3
      Version = 1
    end
    object grdDBEditorRow30: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.DataBinding.FieldName = 'ALPIS'
      ID = 23
      ParentID = 22
      Index = 0
      Version = 1
    end
    object grdDBEditorRow21: TcxDBEditorRow
      Properties.Caption = 'Custo Total Produto'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLCUSTOTOTAL'
      Styles.Header = cxStyle1
      Styles.Content = cxStyle1
      ID = 24
      ParentID = -1
      Index = 2
      Version = 1
    end
    object grdDBEditorRow14: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'ICMS Sa'#237'da'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Visible = False
      ID = 25
      ParentID = 24
      Index = 0
      Version = 1
    end
    object grdDBEditorRow36: TcxDBEditorRow
      Properties.Caption = '%'
      ID = 26
      ParentID = 25
      Index = 0
      Version = 1
    end
    object grdDBEditorRow15: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'PIS'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Visible = False
      ID = 27
      ParentID = 24
      Index = 1
      Version = 1
    end
    object grdDBEditorRow32: TcxDBEditorRow
      Properties.Caption = '%'
      ID = 28
      ParentID = 27
      Index = 0
      Version = 1
    end
    object grdDBEditorRow18: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Super Simples'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLSUPERSIMPLES'
      Properties.Options.Editing = False
      ID = 29
      ParentID = 24
      Index = 2
      Version = 1
    end
    object grdDBEditorRow34: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'ALSUPERSIMPLES'
      ID = 30
      ParentID = 29
      Index = 0
      Version = 1
    end
    object grdDBEditorRow19: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Comiss'#227'o'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLCOMISSAO'
      Properties.Options.Editing = False
      ID = 31
      ParentID = 24
      Index = 3
      Version = 1
    end
    object grdDBEditorRow37: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'PRCOMISSAO'
      ID = 32
      ParentID = 31
      Index = 0
      Version = 1
    end
    object grdDBEditorRow45: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Despesa'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLDESPESAITEM'
      ID = 33
      ParentID = 24
      Index = 4
      Version = 1
    end
    object grdDBEditorRow46: TcxDBEditorRow
      Properties.Caption = '%'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'PRDESPESAITEM'
      ID = 34
      ParentID = 33
      Index = 0
      Version = 1
    end
    object grdDBEditorRow16: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Cofins'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Visible = False
      ID = 35
      ParentID = 24
      Index = 5
      Version = 1
    end
    object grdDBEditorRow35: TcxDBEditorRow
      Properties.Caption = '%'
      ID = 36
      ParentID = 35
      Index = 0
      Version = 1
    end
    object grdDBEditorRow17: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'DARF Federal'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Visible = False
      ID = 37
      ParentID = 24
      Index = 6
      Version = 1
    end
    object grdDBEditorRow33: TcxDBEditorRow
      Properties.Caption = '%'
      ID = 38
      ParentID = 37
      Index = 0
      Version = 1
    end
    object grdDBEditorRow20: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Custos Operacionais'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Visible = False
      ID = 39
      ParentID = 24
      Index = 7
      Version = 1
    end
    object grdDBEditorRow38: TcxDBEditorRow
      Properties.Caption = '%'
      ID = 40
      ParentID = 39
      Index = 0
      Version = 1
    end
    object grdDBEditorRow39: TcxDBEditorRow
      Properties.Caption = 'Pre'#231'o de Venda sugerido'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Properties.DataBinding.FieldName = 'VLPRECOVENDA'
      Styles.Header = dtmmain.cxStyle4
      Styles.Content = dtmmain.cxStyle4
      ID = 41
      ParentID = -1
      Index = 3
      Version = 1
    end
    object grdDBEditorRow40: TcxDBEditorRow
      Properties.Caption = 'Margem Lucro '
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'PRLUCRO'
      ID = 42
      ParentID = 41
      Index = 0
      Version = 1
    end
    object grdDBEditorRow47: TcxDBEditorRow
      Properties.Caption = 'Valor Lucro'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLLUCRO'
      Properties.Options.Editing = False
      ID = 43
      ParentID = 41
      Index = 1
      Version = 1
    end
    object grdDBEditorRow42: TcxDBEditorRow
      Properties.Caption = 'Pre'#231'o Venda Anterior'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLPRECOANTERIOR'
      Properties.Options.Editing = False
      ID = 44
      ParentID = 41
      Index = 2
      Version = 1
    end
    object grdDBEditorRow24: TcxDBEditorRow
      Properties.Caption = 'Pre'#231'o a Prazo sugerido'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Properties.DataBinding.FieldName = 'VLPRECOPRAZO'
      Styles.Header = dtmmain.cxStyle4
      Styles.Content = dtmmain.cxStyle4
      ID = 45
      ParentID = -1
      Index = 4
      Version = 1
    end
    object grdDBEditorRow43: TcxDBEditorRow
      Properties.Caption = 'Margem Lucro'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'PRLUCROPRAZO'
      ID = 46
      ParentID = 45
      Index = 0
      Version = 1
    end
    object grdDBEditorRow48: TcxDBEditorRow
      Properties.Caption = 'Valor Lucro'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLLUCROPRAZO'
      ID = 47
      ParentID = 45
      Index = 1
      Version = 1
    end
    object grdDBEditorRow49: TcxDBEditorRow
      Properties.Caption = 'Pre'#231'o a Prazo Anterior'
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DataBinding.FieldName = 'VLPRECOPRAZOANTERIOR'
      ID = 48
      ParentID = 45
      Index = 2
      Version = 1
    end
  end
  object btnok: TcxButton
    Left = 342
    Top = 576
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btncancelar: TcxButton
    Left = 422
    Top = 576
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object txtcdproduto: TcxDBLabel
    Left = 7
    Top = 5
    DataBinding.DataField = 'CDDIGITADO'
    DataBinding.DataSource = dts
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.TextColor = clBlue
    Style.IsFontAssigned = True
    Height = 21
    Width = 121
  end
  object txtnmproduto: TcxDBLabel
    Left = 127
    Top = 5
    DataBinding.DataField = 'NMPRODUTO'
    DataBinding.DataSource = dts
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.TextColor = clBlue
    Style.IsFontAssigned = True
    Height = 21
    Width = 290
  end
  object cxGrid3: TcxGrid
    Left = 422
    Top = 23
    Width = 409
    Height = 382
    TabOrder = 5
    LookAndFeel.NativeStyle = False
    object cxGrid3DBChartView1: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'nome'
      DataController.DataSource = dtspizzapeca
      DiagramPie.Active = True
      DiagramPie.SeriesCaptions = False
      DiagramPie.Styles.ValueCaptions = cxStyle3
      DiagramPie.Values.AngleOfFirstSlice = 1
      DiagramPie.Values.CaptionPosition = pdvcpOutsideEnd
      DiagramPie.Values.CaptionItems = [pdvciPercentage]
      Title.Text = 'Composi'#231#227'o do Pre'#231'o'
      ToolBox.Border = tbNone
      object cxGrid3DBChartView1DataGroup1: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'nome'
        SortOrder = soNone
        Visible = False
      end
      object cxGrid3DBChartView1Series1: TcxGridDBChartSeries
        DataBinding.FieldName = 'valor'
      end
    end
    object cxGrid3Level1: TcxGridLevel
      GridView = cxGrid3DBChartView1
    end
  end
  object cxGrid1: TcxGrid
    Left = 6
    Top = 408
    Width = 827
    Height = 162
    TabOrder = 6
    LookAndFeel.NativeStyle = False
    object cxGrid1DBChartView1: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'DTEMISSAO'
      DataController.DataSource = dtsevolucao
      DiagramColumn.Active = True
      DiagramColumn.Legend.Position = cppNone
      DiagramColumn.AxisCategory.GridLines = False
      DiagramColumn.AxisValue.GridLines = False
      DiagramColumn.Styles.ValueCaptions = cxStyle3
      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
      DiagramLine.Legend.Position = cppNone
      DiagramPie.SeriesCaptions = False
      Legend.Position = cppTop
      Title.Text = 'Evolu'#231#227'o Pre'#231'o Venda'
      ToolBox.Border = tbNone
      ToolBox.Visible = tvNever
      object cxGrid1DBChartView1DataGroup1: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'DTEMISSAO'
      end
      object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
        DataBinding.FieldName = 'VLPRECOVENDA'
        DisplayText = 'Pre'#231'o Venda'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGrid1DBChartView1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 640
    Top = 4
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
  end
  object sds: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT P.PRCOMISSAO PRCOMISSAO1,P.PRLUCRO PRLUCRO1,P.PRLUCROPRAZ' +
      'O PRLUCROPRAZO1,P.NMPRODUTO,P.VLVENDA VLVENDA1,P.vlprazo VLPRAZO' +
      '1,I.* FROM ITENTRADA I LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPR' +
      'ODUTO AND I.CDEMPRESA=P.CDEMPRESA WHERE I.CDEMPRESA=:CDEMPRESA A' +
      'ND I.CDITENTRADA=:CDITENTRADA'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDITENTRADA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 528
    Top = 4
    object sdsPRCOMISSAO1: TFloatField
      FieldName = 'PRCOMISSAO1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRLUCRO1: TFloatField
      FieldName = 'PRLUCRO1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRLUCROPRAZO1: TFloatField
      FieldName = 'PRLUCROPRAZO1'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object sdsVLVENDA1: TFMTBCDField
      FieldName = 'VLVENDA1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPRAZO1: TFMTBCDField
      FieldName = 'VLPRAZO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsDSITENTRADA: TStringField
      FieldName = 'DSITENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsBOALTERACUSTOMEDIO: TStringField
      FieldName = 'BOALTERACUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object sdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALICMSRED: TFloatField
      FieldName = 'ALICMSRED'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLBASEICMSRED: TFMTBCDField
      FieldName = 'VLBASEICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEIPI: TFMTBCDField
      FieldName = 'VLBASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsPRCUSTO: TFMTBCDField
      FieldName = 'PRCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRVIGOR: TFMTBCDField
      FieldName = 'PRVIGOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLOUTDESPESA: TFMTBCDField
      FieldName = 'VLOUTDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCUSTOMEDIO: TFMTBCDField
      FieldName = 'VLCUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDTFABRICACAO: TDateField
      FieldName = 'DTFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLSALDOVALOR: TFMTBCDField
      FieldName = 'VLSALDOVALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRLUCRO: TFloatField
      FieldName = 'PRLUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLICMSRED: TFMTBCDField
      FieldName = 'VLICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLVENDA: TFMTBCDField
      FieldName = 'VLVENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsPRLUCROATACADO: TFloatField
      FieldName = 'PRLUCROATACADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRLUCROESPECIAL: TFloatField
      FieldName = 'PRLUCROESPECIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLATACADO: TFMTBCDField
      FieldName = 'VLATACADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsVLESPECIAL: TFMTBCDField
      FieldName = 'VLESPECIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsCDMODBCICMS: TIntegerField
      FieldName = 'CDMODBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMODBCSTICMS: TIntegerField
      FieldName = 'CDMODBCSTICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRMRGVLADICIONADOICMSSUBTRIB: TFloatField
      FieldName = 'PRMRGVLADICIONADOICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRREDBCICMS: TFloatField
      FieldName = 'PRREDBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdsNUSTIPI: TStringField
      FieldName = 'NUSTIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsBORECUPERAAJUSTEICMS: TStringField
      FieldName = 'BORECUPERAAJUSTEICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOICMSAJUSTE: TStringField
      FieldName = 'BOICMSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOBASEIPIAJUSTE: TStringField
      FieldName = 'BOBASEIPIAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOAJUSTETOTAL: TStringField
      FieldName = 'BOAJUSTETOTAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOBASEICMSAJUSTE: TStringField
      FieldName = 'BOBASEICMSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBONDIFERENCIALALIQUOTA: TStringField
      FieldName = 'BONDIFERENCIALALIQUOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsVLICMSDIFALIQUOTA: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsBODIFERENCIALALIQUOTA: TStringField
      FieldName = 'BODIFERENCIALALIQUOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsBORECUPERAIPIESPECIAL: TStringField
      FieldName = 'BORECUPERAIPIESPECIAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDITORDCOMPRA: TIntegerField
      FieldName = 'CDITORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOBASEPISAJUSTE: TStringField
      FieldName = 'BOBASEPISAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOBASECOFINSAJUSTE: TStringField
      FieldName = 'BOBASECOFINSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsVLCUSTOBRUTO: TFMTBCDField
      FieldName = 'VLCUSTOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsVLCUSTOLIQUIDO: TFMTBCDField
      FieldName = 'VLCUSTOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsALSUPERSIMPLES: TFloatField
      FieldName = 'ALSUPERSIMPLES'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLSUPERSIMPLES: TFMTBCDField
      FieldName = 'VLSUPERSIMPLES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCUSTOTOTAL: TFMTBCDField
      FieldName = 'VLCUSTOTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPRECOVENDA: TFMTBCDField
      FieldName = 'VLPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPRECOANTERIOR: TFMTBCDField
      FieldName = 'VLPRECOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRFRETE: TFloatField
      FieldName = 'PRFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLIPIITEM: TFMTBCDField
      FieldName = 'VLIPIITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLFRETEITEM: TFMTBCDField
      FieldName = 'VLFRETEITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLICMSSUBTRIBITEM: TFMTBCDField
      FieldName = 'VLICMSSUBTRIBITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDESCONTOITEM: TFMTBCDField
      FieldName = 'VLDESCONTOITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLOUTDESPESAITEM: TFMTBCDField
      FieldName = 'VLOUTDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLICMSDIFALIQUOTAITEM: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDBCCALCULOCREDITO: TStringField
      FieldName = 'CDBCCALCULOCREDITO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsPRDESPESAITEM: TFloatField
      FieldName = 'PRDESPESAITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLDESPESAITEM: TFMTBCDField
      FieldName = 'VLDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDSINFADICIONAL: TBlobField
      FieldName = 'DSINFADICIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLPRECOPRAZO: TFMTBCDField
      FieldName = 'VLPRECOPRAZO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRLUCROPRAZO: TFloatField
      FieldName = 'PRLUCROPRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLPRECOPRAZOANTERIOR: TFMTBCDField
      FieldName = 'VLPRECOPRAZOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLLUCROPRAZO: TFMTBCDField
      FieldName = 'VLLUCROPRAZO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsBOAJUSTEIPI: TStringField
      FieldName = 'BOAJUSTEIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLRETENCAO: TFMTBCDField
      FieldName = 'VLRETENCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsVLBASEICMSNTRIBUTAVEL: TFMTBCDField
      FieldName = 'VLBASEICMSNTRIBUTAVEL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsVLBASEICMSORIGINAL: TFMTBCDField
      FieldName = 'VLBASEICMSORIGINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsVLTOTALCOMPLETO: TFMTBCDField
      FieldName = 'VLTOTALCOMPLETO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    UpdateMode = upWhereKeyOnly
    Left = 556
    Top = 4
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 584
    Top = 4
    object cdsVLFRETEITEM: TFMTBCDField
      FieldName = 'VLFRETEITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLFRETEITEMValidate
      Precision = 15
      Size = 2
    end
    object cdsPRFRETE: TFloatField
      FieldName = 'PRFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsPRFRETEValidate
    end
    object cdsVLSUPERSIMPLES: TFMTBCDField
      FieldName = 'VLSUPERSIMPLES'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvlcustototal
      Precision = 15
      Size = 2
    end
    object cdsALSUPERSIMPLES: TFloatField
      FieldName = 'ALSUPERSIMPLES'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsALSUPERSIMPLESValidate
    end
    object cdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvlcustototal
      Precision = 15
      Size = 2
    end
    object cdsPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsPRCOMISSAOValidate
    end
    object cdsVLPRECOVENDA: TFMTBCDField
      FieldName = 'VLPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLPRECOVENDAValidate
      Precision = 15
      Size = 2
    end
    object cdsPRLUCRO: TFloatField
      FieldName = 'PRLUCRO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsPRLUCROValidate
    end
    object cdsPRDESPESAITEM: TFloatField
      FieldName = 'PRDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsPRDESPESAITEMValidate
    end
    object cdsVLDESPESAITEM: TFMTBCDField
      FieldName = 'VLDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvlcustototal
      Precision = 15
      Size = 2
    end
    object cdsVLPRECOPRAZO: TFMTBCDField
      FieldName = 'VLPRECOPRAZO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLPRECOPRAZOValidate
      Precision = 15
      Size = 2
    end
    object cdsPRLUCROPRAZO: TFloatField
      FieldName = 'PRLUCROPRAZO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsPRLUCROPRAZOValidate
    end
    object cdsPRCOMISSAO1: TFloatField
      FieldName = 'PRCOMISSAO1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRLUCRO1: TFloatField
      FieldName = 'PRLUCRO1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRLUCROPRAZO1: TFloatField
      FieldName = 'PRLUCROPRAZO1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsVLVENDA1: TFMTBCDField
      FieldName = 'VLVENDA1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLPRAZO1: TFMTBCDField
      FieldName = 'VLPRAZO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsDSITENTRADA: TStringField
      FieldName = 'DSITENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsBOALTERACUSTOMEDIO: TStringField
      FieldName = 'BOALTERACUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object cdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALICMSRED: TFloatField
      FieldName = 'ALICMSRED'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLBASEICMSRED: TFMTBCDField
      FieldName = 'VLBASEICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEIPI: TFMTBCDField
      FieldName = 'VLBASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsPRCUSTO: TFMTBCDField
      FieldName = 'PRCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRVIGOR: TFMTBCDField
      FieldName = 'PRVIGOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLOUTDESPESA: TFMTBCDField
      FieldName = 'VLOUTDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCUSTOMEDIO: TFMTBCDField
      FieldName = 'VLCUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDTFABRICACAO: TDateField
      FieldName = 'DTFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLSALDOVALOR: TFMTBCDField
      FieldName = 'VLSALDOVALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLICMSRED: TFMTBCDField
      FieldName = 'VLICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLVENDA: TFMTBCDField
      FieldName = 'VLVENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsPRLUCROATACADO: TFloatField
      FieldName = 'PRLUCROATACADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRLUCROESPECIAL: TFloatField
      FieldName = 'PRLUCROESPECIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLATACADO: TFMTBCDField
      FieldName = 'VLATACADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsVLESPECIAL: TFMTBCDField
      FieldName = 'VLESPECIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsCDMODBCICMS: TIntegerField
      FieldName = 'CDMODBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMODBCSTICMS: TIntegerField
      FieldName = 'CDMODBCSTICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRMRGVLADICIONADOICMSSUBTRIB: TFloatField
      FieldName = 'PRMRGVLADICIONADOICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRREDBCICMS: TFloatField
      FieldName = 'PRREDBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsNUSTIPI: TStringField
      FieldName = 'NUSTIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsBORECUPERAAJUSTEICMS: TStringField
      FieldName = 'BORECUPERAAJUSTEICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOICMSAJUSTE: TStringField
      FieldName = 'BOICMSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOBASEIPIAJUSTE: TStringField
      FieldName = 'BOBASEIPIAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOAJUSTETOTAL: TStringField
      FieldName = 'BOAJUSTETOTAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOBASEICMSAJUSTE: TStringField
      FieldName = 'BOBASEICMSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBONDIFERENCIALALIQUOTA: TStringField
      FieldName = 'BONDIFERENCIALALIQUOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVLICMSDIFALIQUOTA: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsBODIFERENCIALALIQUOTA: TStringField
      FieldName = 'BODIFERENCIALALIQUOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsBORECUPERAIPIESPECIAL: TStringField
      FieldName = 'BORECUPERAIPIESPECIAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDITORDCOMPRA: TIntegerField
      FieldName = 'CDITORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOBASEPISAJUSTE: TStringField
      FieldName = 'BOBASEPISAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOBASECOFINSAJUSTE: TStringField
      FieldName = 'BOBASECOFINSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVLCUSTOBRUTO: TFMTBCDField
      FieldName = 'VLCUSTOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsVLCUSTOLIQUIDO: TFMTBCDField
      FieldName = 'VLCUSTOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsVLCUSTOTOTAL: TFMTBCDField
      FieldName = 'VLCUSTOTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLPRECOANTERIOR: TFMTBCDField
      FieldName = 'VLPRECOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLIPIITEM: TFMTBCDField
      FieldName = 'VLIPIITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLICMSSUBTRIBITEM: TFMTBCDField
      FieldName = 'VLICMSSUBTRIBITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLDESCONTOITEM: TFMTBCDField
      FieldName = 'VLDESCONTOITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLOUTDESPESAITEM: TFMTBCDField
      FieldName = 'VLOUTDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLICMSDIFALIQUOTAITEM: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsCDBCCALCULOCREDITO: TStringField
      FieldName = 'CDBCCALCULOCREDITO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDSINFADICIONAL: TBlobField
      FieldName = 'DSINFADICIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVLPRECOPRAZOANTERIOR: TFMTBCDField
      FieldName = 'VLPRECOPRAZOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLLUCROPRAZO: TFMTBCDField
      FieldName = 'VLLUCROPRAZO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsBOAJUSTEIPI: TStringField
      FieldName = 'BOAJUSTEIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVLRETENCAO: TFMTBCDField
      FieldName = 'VLRETENCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsVLBASEICMSNTRIBUTAVEL: TFMTBCDField
      FieldName = 'VLBASEICMSNTRIBUTAVEL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsVLBASEICMSORIGINAL: TFMTBCDField
      FieldName = 'VLBASEICMSORIGINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsVLTOTALCOMPLETO: TFMTBCDField
      FieldName = 'VLTOTALCOMPLETO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dts: TDataSource
    DataSet = cds
    Left = 612
    Top = 4
  end
  object cdspizzapeca: TClientDataSet
    PersistDataPacket.Data = {
      550000009619E0BD0100000018000000020000000000030000005500046E6F6D
      6501004900000001000557494454480200020064000576616C6F720800040000
      00010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'valor'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 472
    Top = 4
    object cdspizzapecanome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdspizzapecavalor: TCurrencyField
      FieldName = 'valor'
    end
  end
  object dtspizzapeca: TDataSource
    DataSet = cdspizzapeca
    Left = 500
    Top = 4
  end
  object sdsevolucao: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT E.DTEMISSAO,I.VLPRECOVENDA FROM ENTRADA E INNER JOIN ITEN' +
      'TRADA I ON e.cdempresa=i.cdempresa and E.CDENTRADA=I.CDENTRADA W' +
      'HERE I.VLPRECOVENDA IS NOT NULL AND I.VLPRECOVENDA>0 AND i.CDEMP' +
      'RESA=:CDEMPRESA AND I.CDPRODUTO=:CDPRODUTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CDPRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 360
    Top = 4
  end
  object cdsevolucao: TClientDataSet
    PersistDataPacket.Data = {
      550000009619E0BD010000001800000002000000000003000000550009445445
      4D495353414F04000600000000000C564C505245434F56454E44410800040000
      00010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DTEMISSAO'
        DataType = ftDate
      end
      item
        Name = 'VLPRECOVENDA'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 416
    Top = 4
    object cdsevolucaoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsevolucaoVLPRECOVENDA: TCurrencyField
      FieldName = 'VLPRECOVENDA'
    end
  end
  object dtsevolucao: TDataSource
    DataSet = cdsevolucao
    Left = 444
    Top = 4
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clWindowText
    end
  end
end

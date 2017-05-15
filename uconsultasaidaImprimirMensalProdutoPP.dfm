object frmconsultasaidaImprimirMensalProdutoPP: TfrmconsultasaidaImprimirMensalProdutoPP
  Left = 634
  Top = 414
  ClientHeight = 629
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbd1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 43
    Top = 72
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42577.356318564800000000
    ReportOptions.Name = 'Report'
    ReportOptions.LastChange = 42577.356347719900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  lbltitulo.text := <vtitulo>;'
      '  if copy(lbltitulo.text, 1, 6) = '#39'Di'#225'rio'#39' then'
      '  begin'
      '    lblano.Visible := False;'
      '    txtano.text := '#39#39';'
      '    lblmes.text := '#39'Data'#39';'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 75
    Top = 72
    Datasets = <
      item
        DataSet = dbd1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' quipos'
        Value = Null
      end
      item
        Name = 'vtitulo'
        Value = #39#39
      end>
    Style = <>
    object DataPage1: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 6.350000000000000000
      RightMargin = 6.350000000000000000
      TopMargin = 6.350000000000000000
      BottomMargin = 6.350000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.999697310000000000
        Top = 181.417440000000000000
        Width = 745.701269000000000000
        DataSet = dbd1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object DBText2: TfrxMemoView
          Left = 296.001451010000000000
          Width = 28.641278340000000000
          Height = 15.201269660000000000
          DataSetName = 'pip'
          Memo.UTF8W = (
            '[frxDBDataset1."MES"]')
        end
        object DBText6: TfrxMemoView
          Left = 652.002940770000000000
          Width = 94.000690630000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VLTOTAL"]')
        end
        object DBText8: TfrxMemoView
          Left = 498.002211390000000000
          Width = 111.998812490000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VLUNITARIO"]')
        end
        object txtano: TfrxMemoView
          Left = 248.001420010000000000
          Width = 28.800018600000000000
          Height = 15.201269660000000000
          DataSetName = 'pip'
          Memo.UTF8W = (
            '[frxDBDataset1."ANO"]')
        end
        object DBText14: TfrxMemoView
          Left = 397.999627120000000000
          Width = 75.000993320000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTITEM"]')
        end
        object Line8: TfrxLineView
          Top = 17.000325940000000000
          Width = 746.003631400000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Foreground: TfrxReportSummary
        FillType = ftBrush
        Height = 18.001901390000000000
        Top = 298.582870000000000000
        Width = 745.701269000000000000
        object Label31: TfrxMemoView
          Left = 1.001575450000000000
          Width = 70.998471050000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Geral')
          ParentFont = False
        end
        object DBCalc5: TfrxMemoView
          Left = 636.000410750000000000
          Width = 110.003220650000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VLTOTAL">,MasterData1,2)]')
          ParentFont = False
        end
        object DBCalc2: TfrxMemoView
          Left = 397.999627120000000000
          Width = 75.000993320000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTITEM">,MasterData1,2)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.001901390000000000
        Top = 139.842610000000000000
        Width = 745.701269000000000000
        Condition = 'frxDBDataset1."CDPRODUTO"'
        object Shape7: TfrxShapeView
          Width = 745.701269000000000000
          Height = 18.001901390000000000
        end
        object DBText1: TfrxMemoView
          Left = 78.999736060000000000
          Width = 104.001327010000000000
          Height = 15.201269660000000000
          DataSetName = 'pip'
          Memo.UTF8W = (
            '[frxDBDataset1."CDPRODUTO"]')
        end
        object Label2: TfrxMemoView
          Left = 5.000318190000000000
          Width = 49.999402370000000000
          Height = 15.000954570000000000
          Memo.UTF8W = (
            'Produto:')
        end
        object Label3: TfrxMemoView
          Left = 185.000434440000000000
          Width = 10.998432300000000000
          Height = 15.000954570000000000
          Memo.UTF8W = (
            ' - ')
        end
        object DBText3: TfrxMemoView
          Left = 198.999813560000000000
          Width = 87.001001070000000000
          Height = 15.000954570000000000
          DataSetName = 'pip'
          Memo.UTF8W = (
            '[frxDBDataset1."NMPRODUTO"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.998750490000000000
        Top = 222.992270000000000000
        Width = 745.701269000000000000
        object Shape1: TfrxShapeView
          Width = 745.701269000000000000
          Height = 15.998750490000000000
        end
        object Label21: TfrxMemoView
          Width = 32.001280510000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object DBCalc7: TfrxMemoView
          Left = 636.000410750000000000
          Width = 110.003220650000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VLTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object DBCalc1: TfrxMemoView
          Left = 397.999627120000000000
          Top = 1.001575450000000000
          Width = 75.000993320000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTITEM">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 61.001614200000000000
        Top = 18.897650000000000000
        Width = 745.701269000000000000
        object Shape10: TfrxShapeView
          Top = 44.001288260000000000
          Width = 745.701269000000000000
          Height = 17.000325940000000000
        end
        object Shape44: TfrxShapeView
          Width = 745.701269000000000000
          Height = 41.000341440000000000
        end
        object lblnmempresacadcliente: TfrxMemoView
          Left = 1.920001240000000000
          Top = 3.000946820000000000
          Width = 87.001001070000000000
          Height = 22.998440050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbltitulo: TfrxMemoView
          Left = 284.481443570000000000
          Top = 9.002840460000000000
          Width = 189.418705010000000000
          Height = 22.080014260000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mensal Produto Q/P')
          ParentFont = False
        end
        object Label61: TfrxMemoView
          Left = 632.001668010000000000
          Top = 8.001265010000000000
          Width = 29.000333690000000000
          Height = 15.000954570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Label62: TfrxMemoView
          Left = 632.001668010000000000
          Top = 25.001590950000000000
          Width = 30.001909140000000000
          Height = 15.000954570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object SystemVariable101: TfrxMemoView
          Left = 668.001691260000000000
          Top = 8.001265010000000000
          Width = 65.000356940000000000
          Height = 15.000954570000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object SystemVariable14: TfrxMemoView
          Left = 668.001691260000000000
          Top = 25.001590950000000000
          Width = 65.000356940000000000
          Height = 15.000954570000000000
          Memo.UTF8W = (
            '[Time]')
        end
        object lblmes: TfrxMemoView
          Left = 294.999875560000000000
          Top = 44.001288260000000000
          Width = 29.858287000000000000
          Height = 15.840010230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Mes')
          ParentFont = False
        end
        object Label82: TfrxMemoView
          Left = 667.442320820000000000
          Top = 44.001288260000000000
          Width = 77.559735130000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object lblano: TfrxMemoView
          Left = 253.001738200000000000
          Top = 44.001288260000000000
          Width = 29.219546430000000000
          Height = 15.840010230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
        end
        object Label92: TfrxMemoView
          Left = 512.103637820000000000
          Top = 44.001288260000000000
          Width = 93.618958100000000000
          Height = 15.840010230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dia Valor')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 399.001202570000000000
          Top = 44.001288260000000000
          Width = 78.780523320000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 24.779545500000000000
        Top = 340.157700000000000000
        Width = 745.701269000000000000
        object Shape22: TfrxShapeView
          Top = 0.779530000000000000
          Width = 745.701269000000000000
          Height = 24.000015500000000000
        end
        object Label64: TfrxMemoView
          Left = 529.001916450000000000
          Top = 5.779848190000000000
          Width = 112.800072850000000000
          Height = 15.681269970000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            'Quipos Tecnologia - ')
          ParentFont = False
        end
        object SystemVariable15: TfrxMemoView
          Left = 646.001047130000000000
          Top = 4.778272740000000000
          Width = 87.001001070000000000
          Height = 15.000954570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            'Page [Page#] of [TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object frxlsxprt: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = True
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 295
    Top = 22
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = True
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 303
    Top = 102
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 295
    Top = 246
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 287
    Top = 350
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 287
    Top = 294
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 295
    Top = 196
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 292
    Top = 150
  end
end

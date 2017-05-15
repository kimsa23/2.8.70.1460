object frmconsultaProdutoImprimirMovimentoAnalitico: TfrmconsultaProdutoImprimirMovimentoAnalitico
  Left = 343
  Top = 281
  ClientHeight = 138
  ClientWidth = 421
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
    Left = 59
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42577.355636956000000000
    ReportOptions.Name = 'Report'
    ReportOptions.LastChange = 42577.355661979200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 91
    Top = 56
    Datasets = <
      item
        DataSet = dbd1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.999697310000000000
        Top = 219.212740000000000000
        Width = 745.701269000000000000
        DataSet = dbd1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object DBText70: TfrxMemoView
          Left = 264.000170500000000000
          Width = 60.000038750000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."UNIDADE"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 17.000325940000000000
          Width = 746.003631400000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object DBText709: TfrxMemoView
          Left = 325.999580620000000000
          Width = 60.000038750000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DOC"]')
          ParentFont = False
        end
        object DBText118: TfrxMemoView
          Left = 428.001536260000000000
          Width = 58.998463300000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMISSAO"]')
          ParentFont = False
        end
        object DBText119: TfrxMemoView
          Left = 521.000651440000000000
          Width = 46.000659630000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QUANT"]')
          ParentFont = False
        end
        object DBText120: TfrxMemoView
          Left = 597.003220210000000000
          Width = 49.001606450000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VLUNIT"]')
          ParentFont = False
        end
        object DBText1201: TfrxMemoView
          Left = 669.003266710000000000
          Width = 78.999736060000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VLTOTPROD"]')
          ParentFont = False
        end
        object DBText122: TfrxMemoView
          Left = 389.000566190000000000
          Width = 34.998447800000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NUTP"]')
          ParentFont = False
        end
      end
      object Group31: TfrxReportSummary
        FillType = ftBrush
        Height = 15.998750490000000000
        Top = 298.582870000000000000
        Width = 745.701269000000000000
        object Label31: TfrxMemoView
          Left = 361.001807950000000000
          Width = 66.999728310000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Geral')
          ParentFont = False
        end
        object DBCalc33: TfrxMemoView
          Left = 477.003142710000000000
          Width = 89.998168360000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QUANT">,MasterData1,2)]')
        end
        object DBCalc34: TfrxMemoView
          Left = 625.001978450000000000
          Width = 123.001024320000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VLTOTPROD">,MasterData1,2)]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 34.000651880000000000
        Top = 120.944960000000000000
        Width = 745.701269000000000000
        Condition = 'frxDBDataset1."NUNIVEL"'
        object Shape1: TfrxShapeView
          Width = 745.701269000000000000
          Height = 15.998750490000000000
        end
        object DBText1: TfrxMemoView
          Left = 3.000946820000000000
          Width = 69.758785210000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NUNIVEL"]')
          ParentFont = False
        end
        object DBText2: TfrxMemoView
          Left = 104.999122930000000000
          Width = 72.638787070000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NMGRUPO"]')
          ParentFont = False
        end
        object Shape10: TfrxShapeView
          Top = 17.000325940000000000
          Width = 745.701269000000000000
          Height = 17.000325940000000000
        end
        object Label80: TfrxMemoView
          Top = 17.000325940000000000
          Width = 43.778295990000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Label81: TfrxMemoView
          Left = 126.999767060000000000
          Top = 17.000325940000000000
          Width = 59.780826010000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Label82: TfrxMemoView
          Left = 264.000170500000000000
          Top = 17.000325940000000000
          Width = 60.000038750000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Uni')
          ParentFont = False
        end
        object Label132: TfrxMemoView
          Left = 325.999580620000000000
          Top = 17.000325940000000000
          Width = 54.001924640000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Doc')
          ParentFont = False
        end
        object Label133: TfrxMemoView
          Left = 428.001536260000000000
          Top = 17.000325940000000000
          Width = 58.998463300000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Label134: TfrxMemoView
          Left = 504.000325500000000000
          Top = 17.000325940000000000
          Width = 63.000985570000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Label135: TfrxMemoView
          Left = 575.002576080000000000
          Top = 17.000325940000000000
          Width = 70.998471050000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vlr Unit'#225'rio')
          ParentFont = False
        end
        object Label136: TfrxMemoView
          Left = 674.003584900000000000
          Top = 17.000325940000000000
          Width = 73.999417870000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vlr Tot Prod')
          ParentFont = False
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Height = 17.000325940000000000
        Top = 177.637910000000000000
        Width = 745.701269000000000000
        Condition = 'frxDBDataset1."CODIGO"'
        object DBText68: TfrxMemoView
          Top = 1.001575450000000000
          Width = 51.998773740000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CODIGO"]')
          ParentFont = False
        end
        object DBText69: TfrxMemoView
          Left = 126.999767060000000000
          Width = 389.699779240000000000
          Height = 15.998750490000000000
          DataSetName = 'pip'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRICAO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 41.219554180000000000
        Top = 18.897650000000000000
        Width = 745.701269000000000000
        object Shape44: TfrxShapeView
          Top = 0.219212740000000000
          Width = 745.701269000000000000
          Height = 41.000341440000000000
        end
        object lblnmempresacadcliente: TfrxMemoView
          Left = 1.920001240000000000
          Top = 3.220159560000000000
          Width = 102.999751560000000000
          Height = 20.160013020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label240: TfrxMemoView
          Left = 197.000442190000000000
          Top = 10.219849120000000000
          Width = 321.755168430000000000
          Height = 20.160013020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            'Movimenta'#231#227'o Anal'#237'tico de Entrada')
          ParentFont = False
        end
        object Label61: TfrxMemoView
          Left = 611.002599330000000000
          Top = 5.219530930000000000
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
          Left = 610.001023880000000000
          Top = 22.219856870000000000
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
          Left = 647.002622580000000000
          Top = 5.219530930000000000
          Width = 65.000356940000000000
          Height = 15.000954570000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object SystemVariable14: TfrxMemoView
          Left = 647.002622580000000000
          Top = 22.219856870000000000
          Width = 65.000356940000000000
          Height = 15.000954570000000000
          Memo.UTF8W = (
            '[Time]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 24.000015500000000000
        Top = 336.378170000000000000
        Width = 745.701269000000000000
        object Shape22: TfrxShapeView
          Width = 745.701269000000000000
          Height = 24.000015500000000000
        end
        object Label64: TfrxMemoView
          Left = 508.002847770000000000
          Top = 5.000318190000000000
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
          Left = 625.001978450000000000
          Top = 5.000318190000000000
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
end

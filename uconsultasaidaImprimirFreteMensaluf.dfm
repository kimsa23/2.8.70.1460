object frmconsultasaidaImprimirFreteMensaluf: TfrmconsultasaidaImprimirFreteMensaluf
  Left = 447
  Top = 286
  ClientHeight = 130
  ClientWidth = 268
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
    ReportOptions.CreateDate = 42577.356044236100000000
    ReportOptions.Name = 'Report'
    ReportOptions.LastChange = 42577.356067812500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 107
    Top = 72
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
        Height = 17.000325940000000000
        Top = 207.874150000000000000
        Width = 745.701269000000000000
        DataSet = dbd1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Line163: TfrxLineView
          Top = 15.998750490000000000
          Width = 744.000480500000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line164: TfrxLineView
          Height = 17.000325940000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line165: TfrxLineView
          Left = 736.002995020000000000
          Height = 17.000325940000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line167: TfrxLineView
          Left = 63.998781490000000000
          Height = 17.000325940000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object DBText272: TfrxMemoView
          Left = 78.001940140000000000
          Top = 1.000318190000000000
          Width = 97.001637450000000000
          Height = 12.000007750000000000
          DataSetName = 'pip'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."vlfrete"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 5.000318190000000000
          Top = 1.000318190000000000
          Width = 51.998773740000000000
          Height = 12.000007750000000000
          DataSetName = 'pip'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."uf"]')
          ParentFont = False
        end
        object DBText43: TfrxMemoView
          Left = 179.002320330000000000
          Top = 1.000318190000000000
          Width = 97.001637450000000000
          Height = 12.000007750000000000
          DataSetName = 'pip'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."psbruto"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 46.998455550000000000
        Top = 139.842610000000000000
        Width = 745.701269000000000000
        Condition = 'frxDBDataset1."MES"'
        object Shape66: TfrxShapeView
          Top = 0.997795920000000000
          Width = 745.701269000000000000
          Height = 46.000659630000000000
        end
        object Label477: TfrxMemoView
          Left = 17.000325940000000000
          Top = 8.001265010000000000
          Width = 49.001606450000000000
          Height = 15.000954570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'M'#234's/Ano')
          ParentFont = False
        end
        object Line159: TfrxLineView
          Left = 66.001932390000000000
          Top = 24.997811420000000000
          Height = 22.000644130000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label478: TfrxMemoView
          Left = 87.998796990000000000
          Top = 32.999076430000000000
          Width = 36.559393690000000000
          Height = 13.999379120000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Frete')
          ParentFont = False
        end
        object DBText271: TfrxMemoView
          Left = 75.000993320000000000
          Top = 10.000636380000000000
          Width = 65.000356940000000000
          Height = 12.000007750000000000
          DataSetName = 'pip'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."mes"]')
          ParentFont = False
        end
        object Label9: TfrxMemoView
          Left = 6.999689560000000000
          Top = 32.999076430000000000
          Width = 51.998773740000000000
          Height = 13.999379120000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.999371370000000000
          Top = 25.001590950000000000
          Width = 744.000480500000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label68: TfrxMemoView
          Left = 188.999177180000000000
          Top = 32.999076430000000000
          Width = 36.359078600000000000
          Height = 14.400009300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Peso')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.001590950000000000
        Top = 249.448980000000000000
        Width = 745.701269000000000000
        object Shape4: TfrxShapeView
          Width = 749.480799000000000000
          Height = 25.001590950000000000
        end
        object Label1: TfrxMemoView
          Left = 11.405046090000000000
          Top = 2.999371370000000000
          Width = 39.337348240000000000
          Height = 13.999379120000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object DBCalc1: TfrxMemoView
          Left = 78.001940140000000000
          Top = 3.000946820000000000
          Width = 97.001637450000000000
          Height = 13.999379120000000000
          DataSetName = 'pip'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."vlfrete"]')
          ParentFont = False
        end
        object DBCalc11: TfrxMemoView
          Left = 179.002320330000000000
          Top = 3.000946820000000000
          Width = 97.001637450000000000
          Height = 13.999379120000000000
          DataSetName = 'pip'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."psbruto"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 60.000038750000000000
        Top = 18.897650000000000000
        Width = 745.701269000000000000
        object Shape65: TfrxShapeView
          Width = 745.701269000000000000
          Height = 60.000038750000000000
        end
        object Label468: TfrxMemoView
          Left = 5.000318190000000000
          Top = 5.000318190000000000
          Width = 84.000054250000000000
          Height = 18.999697310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Label469: TfrxMemoView
          Left = 628.002925270000000000
          Top = 3.998742740000000000
          Width = 25.999386870000000000
          Height = 13.999379120000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Label470: TfrxMemoView
          Left = 627.001349820000000000
          Top = 20.001272760000000000
          Width = 27.000962320000000000
          Height = 13.999379120000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
        end
        object SystemVariable48: TfrxMemoView
          Left = 660.000426250000000000
          Top = 5.000318190000000000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object SystemVariable49: TfrxMemoView
          Left = 660.000426250000000000
          Top = 20.999068680000000000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Label471: TfrxMemoView
          Left = 145.999464370000000000
          Top = 39.000970070000000000
          Width = 452.999347680000000000
          Height = 20.999068680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Frete Mensal por Unidade Federativa')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.001909140000000000
        Top = 336.378170000000000000
        Width = 745.701269000000000000
        object Shape67: TfrxShapeView
          Width = 745.701269000000000000
          Height = 30.001909140000000000
        end
        object SystemVariable50: TfrxMemoView
          Left = 636.000410750000000000
          Top = 8.001265010000000000
          Width = 96.000062000000000000
          Height = 13.999379120000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pagina [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Label483: TfrxMemoView
          Left = 492.427404640000000000
          Top = 8.001265010000000000
          Width = 143.576785640000000000
          Height = 13.999379120000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quipos Tecnologia - ')
          ParentFont = False
        end
      end
    end
  end
end

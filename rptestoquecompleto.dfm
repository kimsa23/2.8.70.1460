object frmestoquecompleto: Tfrmestoquecompleto
  Left = 406
  Top = 297
  ClientHeight = 592
  ClientWidth = 1015
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object rpt: TfrxReport
    Tag = 1
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.500000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42830.630962557880000000
    ReportOptions.LastChange = 42830.630962557880000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 147
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
      end
      object Memo1: TfrxMemoView
        Left = 642.520100000000000000
        Top = 185.196970000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        HAlign = haRight
        Memo.UTF8W = (
          '[Page#]')
      end
    end
  end
  object dbd1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 47
    Top = 8
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
  object dbd2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 47
    Top = 55
  end
  object fdb1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 193
    Top = 58
  end
  object frp1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmManyPages
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40910.493529189800000000
    ReportOptions.LastChange = 42367.806698969910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo31OnBeforePrint(Sender: TfrxComponent);'
      '  function get_text:string;'
      '  begin'
      
        '    result := <frxDBDataset3."nmproduto">;                      ' +
        '                        '
      '    if <frxDBDataset3."alicms"> > 0 then'
      '    begin'
      
        '      result := result + '#39' (ICMS '#39'+ floattostr(<frxDBDataset3."a' +
        'licms">);'
      '      if <frxDBDataset3."borecuperaicms"> = '#39'S'#39' then'
      '      begin'
      
        '        result := result + '#39' recupera'#39';                         ' +
        '                                                                ' +
        '                 '
      '      end;                  '
      '      if <frxDBDataset3."alipi"> > 0 then'
      '      begin'
      
        '        result := result +'#39'/IPI '#39'+ floattostr(<frxDBDataset3."al' +
        'ipi">);'
      '        if <frxDBDataset3."borecuperaipi"> = '#39'S'#39' then'
      '        begin'
      
        '          result := result + '#39' recupera'#39';                       ' +
        '                                                                ' +
        '                   '
      '        end;'
      '      end;'
      
        '      result := result + '#39')'#39';                                   ' +
        '                            '
      '    end;      '
      '  end;            '
      'begin'
      
        '  //Memo31.Text := get_text;                                    ' +
        '            '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 222
    Top = 58
    Datasets = <
      item
        DataSet = fdb1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = fdb2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = fdb3
        DataSetName = 'frxDBDataset3'
      end
      item
        DataSet = fdb4
        DataSetName = 'frxDBDataset4'
      end
      item
        DataSet = fdb5
        DataSetName = 'frxDBDataset5'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio Anal'#237'tico de Or'#231'amento')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.874015750000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = fdb1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 36.118120000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 468.992270000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UM')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 500.039580000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desenho')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 602.866420000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Posi'#231#227'o')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 660.929500000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Revis'#227'o')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 15.118110240000000000
          Width = 18.897650000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#176)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo22: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo23: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 36.574815350000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        Child = frp1.Child1
        DataSet = fdb2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo24: TfrxMemoView
          Left = 36.118120000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          Memo.UTF8W = (
            '[frxDBDataset2."CDDIGITADO"]')
        end
        object Memo25: TfrxMemoView
          Left = 134.165430000000000000
          Width = 332.598640000000000000
          Height = 15.118110240000000000
          Memo.UTF8W = (
            '[frxDBDataset2."NMPRODUTO"]')
        end
        object Memo26: TfrxMemoView
          Left = 468.992270000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Memo.UTF8W = (
            '[frxDBDataset2."NMUNIDADE"]')
        end
        object Memo27: TfrxMemoView
          Left = 500.039580000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          Memo.UTF8W = (
            '[frxDBDataset2."DSDESENHO"]')
        end
        object Memo28: TfrxMemoView
          Left = 602.866420000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Memo.UTF8W = (
            '[frxDBDataset2."DSDESENHOPOSICAO"]')
        end
        object Memo29: TfrxMemoView
          Left = 660.929500000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Memo.UTF8W = (
            '[frxDBDataset2."DSDESENHOREVISAO"]')
        end
        object Line4: TfrxLineView
          Left = 15.118110240000000000
          Top = 15.897650000000000000
          Width = 702.992125980000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Subreport1: TfrxSubreport
          Top = 17.677165350000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = frp1.Page2
        end
        object Line2: TfrxLineView
          Left = 15.118110240000000000
          Width = 702.992125980000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo88: TfrxMemoView
          Left = 15.118110240000000000
          Width = 18.897650000000000000
          Height = 15.118110240000000000
          Memo.UTF8W = (
            '[frxDBDataset2."NUSEQUENCIA"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."CDORCAMENTO"'
        StartNewPage = True
        object Memo52: TfrxMemoView
          Left = 529.134200000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Prorroga'#231#227'o:')
        end
        object Memo53: TfrxMemoView
          Left = 609.945270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBDataset1."DTPRORROGACAO"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 1.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Or'#231'amento:')
        end
        object Memo3: TfrxMemoView
          Left = 79.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."CDORCAMENTO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 177.417440000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Emiss'#227'o:')
        end
        object Memo49: TfrxMemoView
          Left = 255.228510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."DTEMISSAO"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 353.275820000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Validade:')
        end
        object Memo51: TfrxMemoView
          Left = 431.086890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."DTPRVENTREGA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 1.559060000000000000
          Top = 18.897650000000010000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cliente:')
        end
        object Memo5: TfrxMemoView
          Left = 54.370130000000000000
          Top = 18.897650000000010000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."CDCLIENTE"] - [frxDBDataset1."NMCLIENTE"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 438.425480000000000000
          Top = 18.897650000000010000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cota'#231#227'o do Cliente:')
        end
        object Memo7: TfrxMemoView
          Left = 562.811380000000000000
          Top = 18.897650000000010000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."NUCOTACAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 1.559060000000000000
          Top = 38.574830000000010000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Or'#231'amentista:')
        end
        object Memo9: TfrxMemoView
          Left = 88.708720000000000000
          Top = 38.574830000000010000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."NMFUNCIONARIO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 438.425480000000000000
          Top = 37.795300000000010000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Pagto:')
        end
        object Memo11: TfrxMemoView
          Left = 562.811380000000000000
          Top = 37.795300000000010000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."NMCONDPAGTO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692913385826800000
          Width = 718.110236220471900000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 20.031496060000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        Child = frp1.Child2
        Stretched = True
        object Subreport2: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = frp1.Page3
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Height = 20.031496062992100000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        Child = frp1.Child3
        Stretched = True
        object Subreport3: TfrxSubreport
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = frp1.Page4
        end
      end
      object Child3: TfrxChild
        FillType = ftBrush
        Height = 30.236220470000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo63: TfrxMemoView
          Left = 260.000000000000000000
          Top = 0.377952760000027800
          Width = 56.692950000000000000
          Height = 12.850393700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 320.267780000000000000
          Top = 0.377952760000027800
          Width = 41.574830000000000000
          Height = 12.850393700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 366.315090000000000000
          Top = 0.377952760000027800
          Width = 41.574830000000000000
          Height = 12.850393700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 414.362400000000000000
          Top = 0.377952760000027800
          Width = 49.133890000000000000
          Height = 12.850393700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 465.929500000000000000
          Top = 0.377952760000027800
          Width = 90.708720000000000000
          Height = 12.850393700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 260.000000000000000000
          Top = 13.677180000000020000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."VLCUSTOP"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 320.267780000000000000
          Top = 13.677180000000020000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBDataset2."ALICMS"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 366.315090000000000000
          Top = 13.677180000000020000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBDataset2."ALIPI"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 414.362400000000000000
          Top = 13.677180000000020000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBDataset2."QTITEM"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 465.929500000000000000
          Top = 13.677180000000020000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."VLUNITARIO"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 561.480520000000000000
          Top = 0.377952760000027800
          Width = 60.472480000000000000
          Height = 12.850393700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Margem %')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 561.480520000000000000
          Top = 13.677180000000020000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PRLUCRO"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 626.732530000000000000
          Top = 0.377952760000027800
          Width = 90.708720000000000000
          Height = 12.850393700000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 626.732530000000000000
          Top = 13.677180000000020000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."VLTOTALCIPI"]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 226.771653540000000000
          Width = 491.338582680000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        object Memo89: TfrxMemoView
          Left = 305.937230000000000000
          Width = 56.692950000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 377.748031500000000000
          Width = 113.385826770000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VLTOTAL"]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 495.118088270000000000
          Width = 109.606321180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total com IPI')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 604.724409450000000000
          Width = 113.385826770000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VLTOTAL"]')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Width = 718.110236220472400000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 13.984251970000000000
        Top = 56.692950000000000000
        Width = 718.110700000000000000
        DataSet = fdb3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        Stretched = True
        object Memo30: TfrxMemoView
          Left = 26.456710000000000000
          Width = 75.590551181102400000
          Height = 13.606299210000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset3."CDDIGITADO"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 103.724490000000000000
          Width = 196.535433070000000000
          Height = 13.606299210000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset3."NMPRODUTO"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 304.212740000000000000
          Width = 117.165430000000000000
          Height = 13.606299212598400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset3."DSFORMULA"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 424.260050000000000000
          Width = 60.472480000000000000
          Height = 13.606299212598400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."QTPECA"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 487.086890000000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."QTITEM"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 566.149970000000000000
          Width = 75.590600000000000000
          Height = 13.606299212598400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."VLUNITARIO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 646.299630000000000000
          Width = 75.590600000000000000
          Height = 13.606299210000000000
          StretchMode = smMaxHeight
          DataField = 'VLFINAL'
          DataSet = fdb3
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset3."VLFINAL"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 14.740157480000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Left = 26.456710000000000000
          Width = 75.590551181102400000
          Height = 13.606299210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 304.212740000000000000
          Width = 117.165430000000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Medidas')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 424.260050000000000000
          Width = 60.472480000000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd Pe'#231'a')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 487.086890000000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd por UM')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 566.149970000000000000
          Width = 75.590600000000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vl Unit'#225'rio')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 103.724490000000000000
          Width = 196.535433070866000000
          Height = 13.606299210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Mat'#233'ria-Prima')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 646.299630000000000000
          Width = 75.590600000000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vl Total')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 26.456692910000000000
          Top = 13.897637800000000000
          Width = 691.653543310000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 13.606299210000000000
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        object Line8: TfrxLineView
          Left = 566.929133858268000000
          Width = 151.181102362205000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo64: TfrxMemoView
          Left = 566.929133860000000000
          Width = 30.236220470000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 646.299630000000000000
          Width = 75.590600000000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset3."VLFINAL">,MasterData2)]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 13.984251970000000000
        Top = 56.692950000000000000
        Width = 718.110700000000000000
        DataSet = fdb4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Memo36: TfrxMemoView
          Left = 26.456692910000000000
          Width = 294.803340000000000000
          Height = 13.606299210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset4."NMTPEQUIPAMENTO"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 326.842610000000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."QTPREPARACAO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 406.228510000000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."VLPREPARACAO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 485.953000000000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."QTOPERACAO"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 566.173228350000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset4."VLOPERACAO"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 646.299212600000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxDBDataset4."VLTOTALPREPARACAO">+<frxDBDataset4."VLTOTALOPER' +
              'ACAO">]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 14.740157480315000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo56: TfrxMemoView
          Left = 26.456692910000000000
          Width = 294.803340000000000000
          Height = 13.606299210000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Recurso')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 326.842610000000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd Prep')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 406.228510000000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Prep')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 485.953000000000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd Oper')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 566.173228350000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Oper')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 646.299212600000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vl Total')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 26.456692910000000000
          Top = 13.984251968503900000
          Width = 691.653543310000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Left = 26.456692910000000000
          Width = 691.653543310000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 13.606299212598400000
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        object Memo62: TfrxMemoView
          Left = 566.929133860000000000
          Width = 30.236220470000000000
          Height = 13.228346456692900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 566.929133860000000000
          Width = 151.181102360000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo73: TfrxMemoView
          Left = 646.299212600000000000
          Width = 75.590551180000000000
          Height = 13.228346456692900000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset4."VLTOTALPREPARACAO">+<frxDBDataset4."VLTOTAL' +
              'OPERACAO">,MasterData3)]')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 14.740157480315000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo65: TfrxMemoView
          Left = 26.456692910000000000
          Width = 234.330860000000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 488.622157090000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 566.173228350000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vl Unit'#225'rio')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 646.299212600000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vl Total')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 26.456692910000000000
          Top = 13.984251968503900000
          Width = 691.653543310000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Line10: TfrxLineView
          Left = 26.456692910000000000
          Width = 691.653543310000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 13.984251970000000000
        Top = 56.692950000000000000
        Width = 718.110700000000000000
        DataSet = fdb5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object Memo43: TfrxMemoView
          Left = 26.456692910000000000
          Width = 75.590600000000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset5."CDDIGITADO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 105.842610000000000000
          Width = 377.953000000000000000
          Height = 13.606299212598400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset5."NMPRODUTO"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 488.622157090000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          DataField = 'QTITEM'
          DataSet = fdb5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."QTITEM"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 566.173228350000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          DataField = 'VLUNITARIO'
          DataSet = fdb5
          DataSetName = 'frxDBDataset5'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."VLUNITARIO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 646.299212600000000000
          Width = 75.590551180000000000
          Height = 13.606299212598400000
          DataField = 'VLTOTAL'
          DataSet = fdb5
          DataSetName = 'frxDBDataset5'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset5."VLTOTAL"]')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        FillType = ftBrush
        Height = 13.606299212598400000
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        object Memo71: TfrxMemoView
          Left = 566.929133860000000000
          Width = 30.236240000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 646.299212600000000000
          Width = 75.590551180000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset5."VLTOTAL">,MasterData4)]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = 566.929133858268000000
          Width = 151.181102362205000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object fdb2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 193
    Top = 106
  end
  object fdb3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 193
    Top = 154
  end
  object fdb4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 193
    Top = 202
  end
  object fdb5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 193
    Top = 250
  end
  object dbd3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 47
    Top = 103
  end
  object dbd4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 47
    Top = 151
  end
  object dbd5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 47
    Top = 197
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 440
    Top = 108
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 432
    Top = 252
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 109
    Top = 6
  end
  object frxRichObject1: TfrxRichObject
    Left = 428
    Top = 350
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 449
    Top = 14
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 437
    Top = 206
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
  object frxDialogControls1: TfrxDialogControls
    Left = 439
    Top = 60
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 292
    Top = 150
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 432
    Top = 160
  end
  object frxChartObject1: TfrxChartObject
    Left = 428
    Top = 301
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Left = 63
    Top = 373
  end
  object fsScript1: TfsScript
    SyntaxType = 'PascalScript'
    Left = 700
    Top = 143
  end
  object fsPascal1: TfsPascal
    Left = 695
    Top = 191
  end
  object fsClassesRTTI1: TfsClassesRTTI
    Left = 548
    Top = 295
  end
  object fsGraphicsRTTI1: TfsGraphicsRTTI
    Left = 548
    Top = 439
  end
  object fsFormsRTTI1: TfsFormsRTTI
    Left = 551
    Top = 391
  end
  object fsExtCtrlsRTTI1: TfsExtCtrlsRTTI
    Left = 548
    Top = 343
  end
  object fsDialogsRTTI1: TfsDialogsRTTI
    Left = 555
    Top = 55
  end
  object fsMenusRTTI1: TfsMenusRTTI
    Left = 555
    Top = 103
  end
  object fsIniRTTI1: TfsIniRTTI
    Left = 552
    Top = 247
  end
  object fsDBRTTI1: TfsDBRTTI
    Left = 552
    Top = 151
  end
  object fsDBCtrlsRTTI1: TfsDBCtrlsRTTI
    Left = 555
    Top = 199
  end
  object fsChartRTTI1: TfsChartRTTI
    Left = 563
    Top = 7
  end
  object frxDBXComponents1: TfrxDBXComponents
    DefaultDatabase = dtmmain.sqlc
    Left = 67
    Top = 271
  end
  object dts101: TDataSource
    Left = 99
    Top = 58
  end
  object dts201: TDataSource
    Left = 99
    Top = 102
  end
  object dts1: TDataSource
    Left = 17
    Top = 8
  end
  object frxFDComponents1: TfrxFDComponents
    DefaultDatabase = dtmmain.confire
    Left = 64
    Top = 320
  end
  object frxOLEObject2: TfrxOLEObject
    Left = 424
    Top = 400
  end
end

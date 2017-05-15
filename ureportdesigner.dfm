object frmreportdesigner: Tfrmreportdesigner
  Left = 459
  Top = 200
  Caption = 'frmreportdesigner'
  ClientHeight = 616
  ClientWidth = 1189
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
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
    Left = 430
    Top = 8
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
    Left = 430
    Top = 64
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 430
    Top = 112
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 432
    Top = 160
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 432
    Top = 208
  end
  object frxDBXComponents1: TfrxDBXComponents
    DefaultDatabase = dtmmain.sqlc
    Left = 252
    Top = 310
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 571
    Top = 246
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 568
    Top = 54
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
    Left = 430
    Top = 256
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 570
    Top = 104
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 565
    Top = 152
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 566
    Top = 200
  end
  object frxRichObject1: TfrxRichObject
    Left = 563
    Top = 344
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 560
    Top = 392
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 571
    Top = 8
  end
  object dsg: TfrxDesigner
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
    Left = 325
    Top = 104
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Left = 246
    Top = 360
  end
  object frxChartObject1: TfrxChartObject
    Left = 569
    Top = 296
  end
  object rpt: TfrxReport
    Version = '5.4.6'
    DataSet = dbd
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40672.319682187500000000
    ReportOptions.LastChange = 40672.319682187500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 325
    Top = 48
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
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
        end
      end
    end
  end
  object fsChartRTTI1: TfsChartRTTI
    Left = 674
    Top = 6
  end
  object fsDBCtrlsRTTI1: TfsDBCtrlsRTTI
    Left = 663
    Top = 198
  end
  object fsDBRTTI1: TfsDBRTTI
    Left = 667
    Top = 150
  end
  object fsIniRTTI1: TfsIniRTTI
    Left = 672
    Top = 246
  end
  object fsMenusRTTI1: TfsMenusRTTI
    Left = 665
    Top = 102
  end
  object fsDialogsRTTI1: TfsDialogsRTTI
    Left = 668
    Top = 54
  end
  object fsExtCtrlsRTTI1: TfsExtCtrlsRTTI
    Left = 669
    Top = 350
  end
  object fsFormsRTTI1: TfsFormsRTTI
    Left = 664
    Top = 398
  end
  object fsGraphicsRTTI1: TfsGraphicsRTTI
    Left = 663
    Top = 454
  end
  object fsClassesRTTI1: TfsClassesRTTI
    Left = 671
    Top = 302
  end
  object fsPascal1: TfsPascal
    Left = 779
    Top = 70
  end
  object fsScript1: TfsScript
    SyntaxType = 'PascalScript'
    Left = 777
    Top = 22
  end
  object dbd: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = cds1
    BCDToCurrency = False
    Left = 122
    Top = 2
  end
  object dts1: TDataSource
    DataSet = cds1
    Left = 93
    Top = 3
  end
  object cds1: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dsp1'
    StoreDefs = True
    Left = 65
    Top = 3
  end
  object dsp1: TDataSetProvider
    DataSet = sds1
    Left = 37
    Top = 3
  end
  object sds1: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 9
    Top = 3
  end
  object sds2: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 9
    Top = 46
  end
  object dsp2: TDataSetProvider
    DataSet = sds2
    Left = 37
    Top = 46
  end
  object cds2: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp2'
    StoreDefs = True
    Left = 65
    Top = 46
  end
  object dts2: TDataSource
    DataSet = cds2
    Left = 93
    Top = 46
  end
  object dbd2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = cds2
    BCDToCurrency = False
    Left = 122
    Top = 47
  end
  object dbd3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSet = cds3
    BCDToCurrency = False
    Left = 122
    Top = 92
  end
  object dts3: TDataSource
    DataSet = cds3
    Left = 93
    Top = 91
  end
  object cds3: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp3'
    StoreDefs = True
    Left = 65
    Top = 91
  end
  object dsp3: TDataSetProvider
    DataSet = sds3
    Left = 37
    Top = 91
  end
  object sds3: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 9
    Top = 91
  end
  object sds4: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 9
    Top = 135
  end
  object dsp4: TDataSetProvider
    DataSet = sds4
    Left = 37
    Top = 135
  end
  object cds4: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp4'
    StoreDefs = True
    Left = 65
    Top = 135
  end
  object dts4: TDataSource
    DataSet = cds4
    Left = 94
    Top = 135
  end
  object dbd4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    DataSet = cds4
    BCDToCurrency = False
    Left = 122
    Top = 136
  end
  object dbd5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    DataSet = cds5
    BCDToCurrency = False
    Left = 122
    Top = 180
  end
  object dts5: TDataSource
    DataSet = cds5
    Left = 94
    Top = 179
  end
  object cds5: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsp5'
    StoreDefs = True
    Left = 65
    Top = 179
  end
  object dsp5: TDataSetProvider
    DataSet = sds5
    Left = 37
    Top = 179
  end
  object sds5: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 9
    Top = 179
  end
  object frxFDComponents1: TfrxFDComponents
    DefaultDatabase = dtmmain.confire
    Left = 248
    Top = 408
  end
end

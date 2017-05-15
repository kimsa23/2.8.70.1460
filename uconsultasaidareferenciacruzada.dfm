object frmconsultasaidareferenciacruzada: Tfrmconsultasaidareferenciacruzada
  Left = 413
  Top = 283
  ClientHeight = 614
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cds: TClientDataSet
    PersistDataPacket.Data = {
      740200009619E0BD010000001800000013000000000003000000740202636404
      00010000000000026E6D01004900000001000557494454480200020064000971
      746A616E6569726F080004000000010007535542545950450200490006004D6F
      6E6579000B717466657665726569726F08000400000001000753554254595045
      0200490006004D6F6E6579000771746D6172636F080004000000010007535542
      545950450200490006004D6F6E657900077174616272696C0800040000000100
      07535542545950450200490006004D6F6E6579000671746D61696F0800040000
      00010007535542545950450200490006004D6F6E6579000771746A756E686F08
      0004000000010007535542545950450200490006004D6F6E6579000771746A75
      6C686F080004000000010007535542545950450200490006004D6F6E65790008
      717461676F73746F080004000000010007535542545950450200490006004D6F
      6E6579000A7174736574656D62726F0800040000000100075355425459504502
      00490006004D6F6E6579000971746F75747562726F0800040000000100075355
      42545950450200490006004D6F6E6579000A71746E6F76656D62726F08000400
      0000010007535542545950450200490006004D6F6E6579000A717464657A656D
      62726F080004000000010007535542545950450200490006004D6F6E65790007
      766C746F74616C080004000000010007535542545950450200490006004D6F6E
      657900096E6D656D707265736101004900000001000557494454480200020064
      00086E6D746974756C6F010049000000010005574944544802000200C8000364
      746904000600000000000364746604000600000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cd'
        DataType = ftInteger
      end
      item
        Name = 'nm'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'qtjaneiro'
        DataType = ftCurrency
      end
      item
        Name = 'qtfevereiro'
        DataType = ftCurrency
      end
      item
        Name = 'qtmarco'
        DataType = ftCurrency
      end
      item
        Name = 'qtabril'
        DataType = ftCurrency
      end
      item
        Name = 'qtmaio'
        DataType = ftCurrency
      end
      item
        Name = 'qtjunho'
        DataType = ftCurrency
      end
      item
        Name = 'qtjulho'
        DataType = ftCurrency
      end
      item
        Name = 'qtagosto'
        DataType = ftCurrency
      end
      item
        Name = 'qtsetembro'
        DataType = ftCurrency
      end
      item
        Name = 'qtoutubro'
        DataType = ftCurrency
      end
      item
        Name = 'qtnovembro'
        DataType = ftCurrency
      end
      item
        Name = 'qtdezembro'
        DataType = ftCurrency
      end
      item
        Name = 'vltotal'
        DataType = ftCurrency
      end
      item
        Name = 'nmempresa'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nmtitulo'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'dti'
        DataType = ftDate
      end
      item
        Name = 'dtf'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 8
    Top = 8
    object cdscd: TIntegerField
      FieldName = 'cd'
    end
    object cdsnm: TStringField
      FieldName = 'nm'
      Size = 100
    end
    object cdsqtjaneiro: TCurrencyField
      FieldName = 'qtjaneiro'
    end
    object cdsqtfevereiro: TCurrencyField
      FieldName = 'qtfevereiro'
    end
    object cdsqtmarco: TCurrencyField
      FieldName = 'qtmarco'
    end
    object cdsqtabril: TCurrencyField
      FieldName = 'qtabril'
    end
    object cdsqtmaio: TCurrencyField
      FieldName = 'qtmaio'
    end
    object cdsqtjunho: TCurrencyField
      FieldName = 'qtjunho'
    end
    object cdsqtjulho: TCurrencyField
      FieldName = 'qtjulho'
    end
    object cdsqtagosto: TCurrencyField
      FieldName = 'qtagosto'
    end
    object cdsqtsetembro: TCurrencyField
      FieldName = 'qtsetembro'
    end
    object cdsqtoutubro: TCurrencyField
      FieldName = 'qtoutubro'
    end
    object cdsqtnovembro: TCurrencyField
      FieldName = 'qtnovembro'
    end
    object cdsqtdezembro: TCurrencyField
      FieldName = 'qtdezembro'
    end
    object cdsvltotal: TCurrencyField
      FieldName = 'vltotal'
    end
    object cdsnmempresa: TStringField
      FieldName = 'nmempresa'
      Size = 100
    end
    object cdsnmtitulo: TStringField
      FieldName = 'nmtitulo'
      Size = 200
    end
    object cdsdti: TDateField
      FieldName = 'dti'
    end
    object cdsdtf: TDateField
      FieldName = 'dtf'
    end
  end
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
    ReportOptions.CreateDate = 42577.690942743100000000
    ReportOptions.Name = 'Report'
    ReportOptions.LastChange = 42577.690980879600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  exit;'
      '  lblnmporqual.text := <vporqual>;'
      '  pipnmporqual.text := '#39'[frxDBDataset1."'#39'+<vnm>+'#39'"]'#39';'
      '  pipcdporqual.text := '#39'[frxDBDataset1."'#39'+<vcd>+'#39'"]'#39';'
      '  pipjan.DisplayFormat.formatSTR :=  <vporqual>;    '
      '  pipfev.DisplayFormat.formatSTR :=  <vmascara>;'
      '  pipmar.DisplayFormat.formatSTR :=  <vmascara>;'
      '  pipabr.DisplayFormat.formatSTR :=  <vmascara>;'
      '  pipmai.DisplayFormat.formatSTR :=  <vmascara>;'
      '  pipjun.DisplayFormat.formatSTR :=  <vmascara>;'
      '  pipjul.DisplayFormat.formatSTR :=  <vmascara>;'
      '  pipago.DisplayFormat.formatSTR :=  <vmascara>;'
      '  pipset.DisplayFormat.formatSTR :=  <vmascara>;'
      '  pipout.DisplayFormat.formatSTR :=  <vmascara>;'
      '  pipnov.DisplayFormat.formatSTR :=  <vmascara>;'
      '  pipdez.DisplayFormat.formatSTR :=  <vmascara>;'
      '  piptot.DisplayFormat.formatSTR :=  <vmascara>;'
      ''
      '  pipjantot.DisplayFormat.formatSTR := <vmascara>;'
      '  pipfevtot.DisplayFormat.formatSTR := <vmascara>;  '
      '  pipmartot.DisplayFormat.formatSTR := <vmascara>;'
      '  pipabrtot.DisplayFormat.formatSTR := <vmascara>;'
      '  pipmaitot.DisplayFormat.formatSTR := <vmascara>;'
      '  pipjuntot.DisplayFormat.formatSTR := <vmascara>;'
      '  pipjultot.DisplayFormat.formatSTR := <vmascara>;'
      '  pipagotot.DisplayFormat.formatSTR := <vmascara>;'
      '  pipsettot.DisplayFormat.formatSTR := <vmascara>;'
      '  pipouttot.DisplayFormat.formatSTR := <vmascara>;'
      '  pipnovtot.DisplayFormat.formatSTR := <vmascara>;'
      '  pipdeztot.DisplayFormat.formatSTR := <vmascara>;'
      '  piptottot.DisplayFormat.formatSTR := <vmascara>;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 163
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
        Name = 'vdti'
        Value = #39#39
      end
      item
        Name = 'vdtf'
        Value = #39#39
      end
      item
        Name = 'vnmempresa'
        Value = #39#39
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 6.350000000000000000
      RightMargin = 6.350000000000000000
      TopMargin = 6.350000000000000000
      BottomMargin = 6.350000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 139.842610000000000000
        Width = 1074.520379000000000000
        DataSet = dbd1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object pipjan: TfrxMemoView
          Left = 133.001660700000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTJANEIRO"]')
          ParentFont = False
        end
        object pipcdporqual: TfrxMemoView
          Width = 22.998440050000000000
          Height = 12.321267800000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."CD"]')
          ParentFont = False
        end
        object pipdez: TfrxMemoView
          Left = 925.002172200000000000
          Width = 70.000675130000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTDEZEMBRO"]')
          ParentFont = False
        end
        object piptot: TfrxMemoView
          Left = 998.003794150000000000
          Width = 75.998789240000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VLTOTAL"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 24.000015500000000000
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object pipnov: TfrxMemoView
          Left = 853.002125700000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTNOVEMBRO"]')
          ParentFont = False
        end
        object pipout: TfrxMemoView
          Left = 781.002079200000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTOUTUBRO"]')
          ParentFont = False
        end
        object Line29: TfrxLineView
          Left = 851.002754330000000000
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          Left = 779.002707830000000000
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object pipset: TfrxMemoView
          Left = 709.002032700000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTSETEMBRO"]')
          ParentFont = False
        end
        object Line31: TfrxLineView
          Left = 707.002661330000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object pipago: TfrxMemoView
          Left = 637.001986200000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTAGOSTO"]')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 635.002614830000000000
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object pipjul: TfrxMemoView
          Left = 565.001939700000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTJULHO"]')
          ParentFont = False
        end
        object Line26: TfrxLineView
          Left = 563.002568330000000000
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object pipjun: TfrxMemoView
          Left = 493.001893200000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTJUNHO"]')
          ParentFont = False
        end
        object Line25: TfrxLineView
          Left = 491.002521830000000000
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 347.002428830000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 130.998509800000000000
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line202: TfrxLineView
          Left = 923.002800830000000000
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object pipmai: TfrxMemoView
          Left = 421.001846700000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTMAIO"]')
          ParentFont = False
        end
        object pipabr: TfrxMemoView
          Left = 349.001800200000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTABRIL"]')
          ParentFont = False
        end
        object Line48: TfrxLineView
          Left = 419.002475330000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object pipmar: TfrxMemoView
          Left = 277.001753700000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTMARCO"]')
          ParentFont = False
        end
        object pipfev: TfrxMemoView
          Left = 205.001707200000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QTFEVEREIRO"]')
          ParentFont = False
        end
        object Line50: TfrxLineView
          Left = 275.002382330000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line51: TfrxLineView
          Left = 203.002335830000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Top = 13.999379120000000000
          Width = 1075.004158840000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line101: TfrxLineView
          Left = 1074.002583390000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 996.004422780000000000
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object pipnmporqual: TfrxMemoView
          Left = 25.999386870000000000
          Width = 104.001327010000000000
          Height = 12.000007750000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 30.999705060000000000
        Top = 215.433210000000000000
        Width = 1074.520379000000000000
        object Label31: TfrxMemoView
          Left = 36.000023250000000000
          Width = 55.838776220000000000
          Height = 12.000007750000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Geral')
          ParentFont = False
        end
        object pipjantot: TfrxMemoView
          Left = 133.001660700000000000
          Top = 1.001575450000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTJANEIRO">,MasterData1,2)]')
          ParentFont = False
        end
        object piptottot: TfrxMemoView
          Left = 998.003794150000000000
          Top = 1.001575450000000000
          Width = 75.998789240000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VLTOTAL">,MasterData1,2)]')
          ParentFont = False
        end
        object pipdeztot: TfrxMemoView
          Left = 925.002172200000000000
          Top = 1.001575450000000000
          Width = 70.000675130000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTDEZEMBRO">,MasterData1,2)]')
          ParentFont = False
        end
        object pipnovtot: TfrxMemoView
          Left = 853.002125700000000000
          Top = 1.001575450000000000
          Width = 66.999728310000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTNOVEMBRO">,MasterData1,2)]')
          ParentFont = False
        end
        object pipouttot: TfrxMemoView
          Left = 781.002079200000000000
          Top = 1.001575450000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTOUTUBRO">,MasterData1,2)]')
          ParentFont = False
        end
        object pipagotot: TfrxMemoView
          Left = 637.001986200000000000
          Top = 1.001575450000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTAGOSTO">,MasterData1,2)]')
          ParentFont = False
        end
        object pipjultot: TfrxMemoView
          Left = 565.001939700000000000
          Top = 1.001575450000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTJULHO">,MasterData1,2)]')
          ParentFont = False
        end
        object pipjuntot: TfrxMemoView
          Left = 493.001893200000000000
          Top = 1.001575450000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTJUNHO">,MasterData1,2)]')
          ParentFont = False
        end
        object pipmaitot: TfrxMemoView
          Left = 421.001846700000000000
          Top = 1.001575450000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTMAIO">,MasterData1,2)]')
          ParentFont = False
        end
        object pipabrtot: TfrxMemoView
          Left = 349.001800200000000000
          Top = 1.001575450000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTABRIL">,MasterData1,2)]')
          ParentFont = False
        end
        object pipsettot: TfrxMemoView
          Left = 709.002032700000000000
          Top = 1.001575450000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTSETEMBRO">,MasterData1,2)]')
          ParentFont = False
        end
        object pipmartot: TfrxMemoView
          Left = 277.001753700000000000
          Top = 1.001575450000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTMARCO">,MasterData1,2)]')
          ParentFont = False
        end
        object pipfevtot: TfrxMemoView
          Left = 205.001707200000000000
          Top = 1.001575450000000000
          Width = 68.999099680000000000
          Height = 10.998432300000000000
          DataSetName = 'pipMensal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."QTFEVEREIRO">,MasterData1,2)]')
          ParentFont = False
        end
        object Line33: TfrxLineView
          Left = 203.002335830000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 275.002382330000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          Left = 347.002428830000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 419.002475330000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          Left = 491.002521830000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 563.002568330000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Left = 635.002614830000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line41: TfrxLineView
          Left = 707.002661330000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 779.002707830000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          Left = 851.002754330000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          Left = 996.004422780000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line45: TfrxLineView
          Left = 1074.002583390000000000
          Height = 13.001583200000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line46: TfrxLineView
          Left = 130.998509800000000000
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Top = 13.001583200000000000
          Width = 1075.004158840000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line55: TfrxLineView
          Height = 13.999379120000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 923.002800830000000000
          Top = 1.001575450000000000
          Height = 13.001583200000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 60.000038750000000000
        Top = 18.897650000000000000
        Width = 1074.520379000000000000
        object Label39: TfrxMemoView
          Left = 997.002218700000000000
          Top = 44.001288260000000000
          Width = 75.998789240000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 925.002172200000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Dez')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 853.002125700000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nov')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 781.002079200000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Out')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 709.002032700000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Set')
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 637.001986200000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ago')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 565.001939700000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jul')
          ParentFont = False
        end
        object Label7: TfrxMemoView
          Left = 493.001893200000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jun')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 421.001846700000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mai')
          ParentFont = False
        end
        object Label9: TfrxMemoView
          Left = 349.001800200000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Abr')
          ParentFont = False
        end
        object Label10: TfrxMemoView
          Left = 277.001753700000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mar')
          ParentFont = False
        end
        object lblnmporqual: TfrxMemoView
          Left = 25.999386870000000000
          Top = 44.001288260000000000
          Width = 104.001327010000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Label11: TfrxMemoView
          Left = 205.001707200000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fev')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 133.001660700000000000
          Top = 44.001288260000000000
          Width = 68.999099680000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jan')
          ParentFont = False
        end
        object Shape44: TfrxShapeView
          Width = 1074.520379000000000000
          Height = 41.000341440000000000
        end
        object lbltitulo: TfrxMemoView
          Left = 1.999371370000000000
          Top = 6.999689560000000000
          Width = 846.002436140000000000
          Height = 22.000644130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[vtitulo]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 24.000015500000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 130.998509800000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 275.002382330000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 347.002428830000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 419.002475330000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 491.002521830000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 563.002568330000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 635.002614830000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 707.002661330000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          Left = 779.002707830000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 203.002335830000000000
          Top = 44.999084180000000000
          Height = 15.000954570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 923.002800830000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line201: TfrxLineView
          Left = 995.002847330000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line203: TfrxLineView
          Left = 851.002754330000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label14: TfrxMemoView
          Left = -2.000000000000000000
          Top = 44.001288260000000000
          Width = 26.777970050000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd')
          ParentFont = False
        end
        object Lbldti: TfrxMemoView
          Left = 908.001846260000000000
          Top = 10.998432300000000000
          Width = 66.001932390000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[vdti]')
          ParentFont = False
        end
        object Lbldtf: TfrxMemoView
          Left = 1004.001908260000000000
          Top = 10.998432300000000000
          Width = 66.001932390000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[vdtf]')
          ParentFont = False
        end
        object Label17: TfrxMemoView
          Left = 978.001892760000000000
          Top = 10.998432300000000000
          Width = 22.779227310000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'at'#233)
          ParentFont = False
        end
        object Label18: TfrxMemoView
          Left = 852.000550250000000000
          Top = 10.998432300000000000
          Width = 54.001924640000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Per'#237'odo:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 44.001288260000000000
          Width = 1074.002583390000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line21: TfrxLineView
          Top = 58.998463300000000000
          Width = 1073.001007940000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line118: TfrxLineView
          Left = 1073.001007940000000000
          Top = 44.001288260000000000
          Height = 15.998750490000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 287.244280000000000000
        Top = 268.346630000000000000
        Width = 1074.520379000000000000
        object Shape45: TfrxShapeView
          Width = 1074.520379000000000000
          Height = 25.001590950000000000
        end
        object Label53: TfrxMemoView
          Left = 856.003072520000000000
          Top = 5.000318190000000000
          Width = 123.001024320000000000
          Height = 15.998750490000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            'QUIPOS Tecnologia - ')
          ParentFont = False
        end
        object SystemVariable12: TfrxMemoView
          Left = 984.004415030000000000
          Top = 6.001893640000000000
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
        object lblnmempresacadcliente: TfrxMemoView
          Left = 1.889765000000000000
          Top = 1.001575450000000000
          Width = 87.001001070000000000
          Height = 22.998440050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label51: TfrxMemoView
          Left = 611.002599330000000000
          Top = 3.998742740000000000
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
        object SystemVariable10: TfrxMemoView
          Left = 646.001047130000000000
          Top = 3.998742740000000000
          Width = 65.000356940000000000
          Height = 15.000954570000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object Label52: TfrxMemoView
          Left = 719.002669080000000000
          Top = 3.998742740000000000
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
        object SystemVariable11: TfrxMemoView
          Left = 755.002692330000000000
          Top = 3.998742740000000000
          Width = 65.000356940000000000
          Height = 15.000954570000000000
          Memo.UTF8W = (
            '[Time]')
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

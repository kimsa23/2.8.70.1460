object frmdlgaprovarconciliado: Tfrmdlgaprovarconciliado
  Left = 430
  Top = 97
  BorderStyle = bsDialog
  Caption = 'Aprovar Pr'#195#169'-Conciliado'
  ClientHeight = 423
  ClientWidth = 888
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TButton
    Left = 366
    Top = 391
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 446
    Top = 391
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object grd: TcxGrid
    Left = 16
    Top = 8
    Width = 865
    Height = 377
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    object grdDBTableView1: TcxGridDBTableView
      OnKeyDown = grdDBTableView1KeyDown
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dts1
      DataController.KeyFieldNames = 'CDMOVBANCARIO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object grdDBTableView1BOCONCILIADO: TcxGridDBColumn
        Caption = 'Conciliado'
        DataBinding.FieldName = 'BOCONCILIADO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 55
      end
      object grdDBTableView1CDMOVBANCARIO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CDMOVBANCARIO'
        Options.Editing = False
      end
      object grdDBTableView1DTEMISSAO: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'DTEMISSAO'
        Options.Editing = False
      end
      object grdDBTableView1NUMOVBANCARIO: TcxGridDBColumn
        Caption = 'N'#250'mero'
        DataBinding.FieldName = 'NUMOVBANCARIO'
        Options.Editing = False
      end
      object grdDBTableView1NMMOVIMENTACAO: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'NMMOVIMENTACAO'
        Options.Editing = False
        Width = 200
      end
      object grdDBTableView1DSHISTORICO: TcxGridDBColumn
        Caption = 'Hist'#243'rico'
        DataBinding.FieldName = 'DSHISTORICO'
        Options.Editing = False
        Width = 98
      end
      object grdDBTableView1VLPAGAMENTO: TcxGridDBColumn
        Caption = 'Pagamento'
        DataBinding.FieldName = 'VLPAGAMENTO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
      end
      object grdDBTableView1VLDEPOSITO: TcxGridDBColumn
        Caption = 'Dep'#243'sito'
        DataBinding.FieldName = 'VLDEPOSITO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
      end
    end
    object grdDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dtsextrato
      DataController.DetailKeyFieldNames = 'CDMOVBANCARIO'
      DataController.KeyFieldNames = 'CDEXTRATO'
      DataController.MasterKeyFieldNames = 'CDMOVBANCARIO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object grdDBTableView2CDEXTRATO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CDEXTRATO'
        Options.Editing = False
        Width = 118
      end
      object grdDBTableView2DTEMISSAO: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'DTEMISSAO'
        Options.Editing = False
      end
      object grdDBTableView2NUEXTRATO: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'NUEXTRATO'
        Options.Editing = False
        Width = 64
      end
      object grdDBTableView2NMTPEXTRATO: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'NMTPEXTRATO'
        Options.Editing = False
        Width = 200
      end
      object grdDBTableView2NMCATEXTRATO: TcxGridDBColumn
        Caption = 'Categoria'
        DataBinding.FieldName = 'NMCATEXTRATO'
        Options.Editing = False
        Width = 98
      end
      object grdDBTableView2VLPAGAMENTO: TcxGridDBColumn
        Caption = 'Pagamento'
        DataBinding.FieldName = 'VLPAGAMENTO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
      end
      object grdDBTableView2VLDEPOSITO: TcxGridDBColumn
        Caption = 'Dep'#243'sito'
        DataBinding.FieldName = 'VLDEPOSITO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = grdDBTableView1
      object grdLevel2: TcxGridLevel
        GridView = grdDBTableView2
      end
    end
  end
  object dts1: TDataSource
    DataSet = cds
    Left = 43
    Top = 389
  end
  object dtsextrato: TDataSource
    DataSet = cdsextrato
    Left = 99
    Top = 389
  end
  object cds: TClientDataSet
    PersistDataPacket.Data = {
      C70100009619E0BD02000000180000000D000000000003000000C70109445445
      4D495353414F04000600040000000D43444D4F5642414E434152494F04000100
      040000000E4E4D4D4F56494D454E544143414F01004900000001000557494454
      480200020064000B4453484953544F5249434F01004900000001000557494454
      480200020064000B564C504147414D454E544F0A001200000002000844454349
      4D414C53020002000200055749445448020002000F0007564C53414C444F0A00
      12000000020008444543494D414C53020002000200055749445448020002000F
      000A564C4445504F5349544F0A0012000000020008444543494D414C53020002
      000200055749445448020002000F000C424F434F4E43494C4941444F01004900
      000001000557494454480200020001000D4E554D4F5642414E434152494F0100
      490000000100055749445448020002000A000A43444E41545552455A41010049
      00000001000557494454480200020001000F43445450444F4342414E43415249
      4F04000100000000000E43444D4F56494D454E544143414F0400010000000000
      0C564C4C414E43414D454E544F08000400000001000753554254595045020049
      0006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DTEMISSAO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'CDMOVBANCARIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NMMOVIMENTACAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DSHISTORICO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VLPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'VLSALDO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'VLDEPOSITO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'BOCONCILIADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NUMOVBANCARIO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CDNATUREZA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CDTPDOCBANCARIO'
        DataType = ftInteger
      end
      item
        Name = 'CDMOVIMENTACAO'
        DataType = ftInteger
      end
      item
        Name = 'VLLANCAMENTO'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 15
    Top = 389
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Required = True
    end
    object cdsCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      Required = True
    end
    object cdsNMMOVIMENTACAO: TStringField
      FieldName = 'NMMOVIMENTACAO'
      Size = 100
    end
    object cdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      Size = 100
    end
    object cdsVLPAGAMENTO: TFMTBCDField
      FieldName = 'VLPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object cdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      Precision = 15
      Size = 2
    end
    object cdsVLDEPOSITO: TFMTBCDField
      FieldName = 'VLDEPOSITO'
      Precision = 15
      Size = 2
    end
    object cdsBOCONCILIADO: TStringField
      FieldName = 'BOCONCILIADO'
      Size = 1
    end
    object cdsNUMOVBANCARIO: TStringField
      FieldName = 'NUMOVBANCARIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCDNATUREZA: TStringField
      FieldName = 'CDNATUREZA'
      Size = 1
    end
    object cdsCDMOVIMENTACAO: TIntegerField
      FieldName = 'CDMOVIMENTACAO'
    end
    object cdsVLLANCAMENTO: TCurrencyField
      FieldName = 'VLLANCAMENTO'
    end
  end
  object cdsextrato: TClientDataSet
    PersistDataPacket.Data = {
      780200009619E0BD020000001800000016000000000003000000780209434445
      58545241544F0400010004000000074344434F4E544104000100040000000944
      54454D495353414F04000600040000000B4E4D54504558545241544F01004900
      000001000557494454480200020064000C4E4D4341544558545241544F010049
      00000001000557494454480200020064000B564C504147414D454E544F0A0012
      000000020008444543494D414C53020002000200055749445448020002000F00
      0A564C4445504F5349544F0A0012000000020008444543494D414C5302000200
      0200055749445448020002000F0009564C4558545241544F0A00120000000200
      08444543494D414C53020002000200055749445448020002000F0007564C5341
      4C444F0A0012000000020008444543494D414C53020002000200055749445448
      020002000F000C424F434F4E43494C4941444F01004900000001000557494454
      480200020001000A43444E41545552455A410100490004000100055749445448
      020002000100094E554558545241544F01004900000001000557494454480200
      020014000B434454504558545241544F04000100000000000C43444341544558
      545241544F04000100000000000D43444D4F5642414E434152494F0400010000
      000000094344454D505245534112001200000001000557494454480200020020
      000A43445553554152494F4904000100000000000A43445553554152494F4104
      000100000000000D4344434F4D50555441444F524904000100000000000D4344
      434F4D50555441444F524104000100000000000A5453494E434C5553414F0800
      0800000000000B5453414C5445524143414F08000800000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CDEXTRATO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CDCONTA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DTEMISSAO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'NMTPEXTRATO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NMCATEXTRATO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VLPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'VLDEPOSITO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'VLEXTRATO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'VLSALDO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'BOCONCILIADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CDNATUREZA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NUEXTRATO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CDTPEXTRATO'
        DataType = ftInteger
      end
      item
        Name = 'CDCATEXTRATO'
        DataType = ftInteger
      end
      item
        Name = 'CDMOVBANCARIO'
        DataType = ftInteger
      end
      item
        Name = 'CDEMPRESA'
        DataType = ftFMTBcd
        Precision = 32
      end
      item
        Name = 'CDUSUARIOI'
        DataType = ftInteger
      end
      item
        Name = 'CDUSUARIOA'
        DataType = ftInteger
      end
      item
        Name = 'CDCOMPUTADORI'
        DataType = ftInteger
      end
      item
        Name = 'CDCOMPUTADORA'
        DataType = ftInteger
      end
      item
        Name = 'TSINCLUSAO'
        DataType = ftDateTime
      end
      item
        Name = 'TSALTERACAO'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    MasterSource = dts1
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 71
    Top = 390
    object cdsextratoCDEXTRATO: TIntegerField
      FieldName = 'CDEXTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsextratoCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsextratoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsextratoNMTPEXTRATO: TStringField
      FieldName = 'NMTPEXTRATO'
      ProviderFlags = []
      Size = 100
    end
    object cdsextratoNMCATEXTRATO: TStringField
      FieldName = 'NMCATEXTRATO'
      ProviderFlags = []
      Size = 100
    end
    object cdsextratoVLPAGAMENTO: TFMTBCDField
      FieldName = 'VLPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsextratoVLDEPOSITO: TFMTBCDField
      FieldName = 'VLDEPOSITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsextratoVLEXTRATO: TFMTBCDField
      FieldName = 'VLEXTRATO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsextratoVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsextratoBOCONCILIADO: TStringField
      FieldName = 'BOCONCILIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsextratoCDNATUREZA: TStringField
      FieldName = 'CDNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsextratoNUEXTRATO: TStringField
      FieldName = 'NUEXTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsextratoCDTPEXTRATO: TIntegerField
      FieldName = 'CDTPEXTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsextratoCDCATEXTRATO: TIntegerField
      FieldName = 'CDCATEXTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsextratoCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
    end
    object cdsextratoCDEMPRESA: TFMTBCDField
      FieldName = 'CDEMPRESA'
      Precision = 15
      Size = 0
    end
    object cdsextratoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
    end
    object cdsextratoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
    end
    object cdsextratoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
    end
    object cdsextratoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
    end
    object cdsextratoTSINCLUSAO: TDateTimeField
      FieldName = 'TSINCLUSAO'
    end
    object cdsextratoTSALTERACAO: TDateTimeField
      FieldName = 'TSALTERACAO'
    end
  end
end

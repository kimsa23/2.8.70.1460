unit umarkupentrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxEdit, Menus, cxContainer, cxLabel, cxDBLabel, StdCtrls,
  cxButtons, cxVGrid, cxDBVGrid, cxInplaceContainer, FMTBcd, DB, DBClient,
  Provider, SqlExpr, cxCurrencyEdit,
  classeempresa, classeexecutasql, classeregistro,
  uRegistro, ustrings, uConstantes, cxCalc, cxClasses,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridChartView,
  cxGridDBChartView, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  Tfrmmarkupentrada = class(TForm)
    grd: TcxDBVerticalGrid;
    grdDBEditorRow1: TcxDBEditorRow;
    grdDBEditorRow2: TcxDBEditorRow;
    grdDBEditorRow3: TcxDBEditorRow;
    grdDBEditorRow4: TcxDBEditorRow;
    grdDBEditorRow5: TcxDBEditorRow;
    grdDBEditorRow6: TcxDBEditorRow;
    grdDBEditorRow7: TcxDBEditorRow;
    grdDBEditorRow8: TcxDBEditorRow;
    grdDBEditorRow9: TcxDBEditorRow;
    grdDBEditorRow10: TcxDBEditorRow;
    grdDBEditorRow11: TcxDBEditorRow;
    grdDBEditorRow12: TcxDBEditorRow;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grdDBEditorRow13: TcxDBEditorRow;
    grdDBEditorRow14: TcxDBEditorRow;
    grdDBEditorRow15: TcxDBEditorRow;
    grdDBEditorRow16: TcxDBEditorRow;
    grdDBEditorRow17: TcxDBEditorRow;
    grdDBEditorRow18: TcxDBEditorRow;
    grdDBEditorRow19: TcxDBEditorRow;
    grdDBEditorRow20: TcxDBEditorRow;
    grdDBEditorRow21: TcxDBEditorRow;
    grdDBEditorRow22: TcxDBEditorRow;
    grdDBEditorRow25: TcxDBEditorRow;
    grdDBEditorRow26: TcxDBEditorRow;
    grdDBEditorRow27: TcxDBEditorRow;
    grdDBEditorRow28: TcxDBEditorRow;
    grdDBEditorRow29: TcxDBEditorRow;
    grdDBEditorRow30: TcxDBEditorRow;
    grdDBEditorRow31: TcxDBEditorRow;
    grdDBEditorRow32: TcxDBEditorRow;
    grdDBEditorRow33: TcxDBEditorRow;
    grdDBEditorRow34: TcxDBEditorRow;
    grdDBEditorRow35: TcxDBEditorRow;
    grdDBEditorRow36: TcxDBEditorRow;
    grdDBEditorRow37: TcxDBEditorRow;
    grdDBEditorRow38: TcxDBEditorRow;
    grdDBEditorRow39: TcxDBEditorRow;
    grdDBEditorRow40: TcxDBEditorRow;
    grdDBEditorRow42: TcxDBEditorRow;
    cxStyle2: TcxStyle;
    btnok: TcxButton;
    btncancelar: TcxButton;
    txtcdproduto: TcxDBLabel;
    txtnmproduto: TcxDBLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    grdDBEditorRow23: TcxDBEditorRow;
    grdDBEditorRow41: TcxDBEditorRow;
    grdDBEditorRow44: TcxDBEditorRow;
    cdsVLFRETEITEM: TFMTBCDField;
    cdsPRFRETE: TFloatField;
    cdsVLSUPERSIMPLES: TFMTBCDField;
    cdsALSUPERSIMPLES: TFloatField;
    cdsVLCOMISSAO: TFMTBCDField;
    cdsPRCOMISSAO: TFloatField;
    cdsVLPRECOVENDA: TFMTBCDField;
    cdsPRLUCRO: TFloatField;
    cdsPRDESPESAITEM: TFloatField;
    cdsVLDESPESAITEM: TFMTBCDField;
    grdDBEditorRow45: TcxDBEditorRow;
    grdDBEditorRow46: TcxDBEditorRow;
    cdspizzapeca: TClientDataSet;
    cdspizzapecanome: TStringField;
    dtspizzapeca: TDataSource;
    grdDBEditorRow47: TcxDBEditorRow;
    cxGrid3: TcxGrid;
    cxGrid3DBChartView1: TcxGridDBChartView;
    cxGrid3DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    cxGrid3DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid3Level1: TcxGridLevel;
    cdspizzapecavalor: TCurrencyField;
    sdsevolucao: TSQLDataSet;
    cdsevolucao: TClientDataSet;
    dtsevolucao: TDataSource;
    cxGrid1: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    cdsevolucaoDTEMISSAO: TDateField;
    cdsevolucaoVLPRECOVENDA: TCurrencyField;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cdsVLPRECOPRAZO: TFMTBCDField;
    cdsPRLUCROPRAZO: TFloatField;
    grdDBEditorRow24: TcxDBEditorRow;
    grdDBEditorRow43: TcxDBEditorRow;
    grdDBEditorRow48: TcxDBEditorRow;
    grdDBEditorRow49: TcxDBEditorRow;
    sdsPRCOMISSAO1: TFloatField;
    sdsPRLUCRO1: TFloatField;
    sdsPRLUCROPRAZO1: TFloatField;
    sdsNMPRODUTO: TStringField;
    sdsVLVENDA1: TFMTBCDField;
    sdsVLPRAZO1: TFMTBCDField;
    sdsCDENTRADA: TIntegerField;
    sdsCDPRODUTO: TIntegerField;
    sdsCDCNTCUSTO: TIntegerField;
    sdsCDCFOP: TIntegerField;
    sdsCDDIGITADO: TStringField;
    sdsDSITENTRADA: TStringField;
    sdsBOALTERACUSTOMEDIO: TStringField;
    sdsQTITEM: TFloatField;
    sdsVLUNITARIO: TFMTBCDField;
    sdsVLTOTAL: TFMTBCDField;
    sdsPRDESCONTO: TFloatField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsVLBASEICMS: TFMTBCDField;
    sdsALICMS: TFloatField;
    sdsVLICMS: TFMTBCDField;
    sdsALICMSRED: TFloatField;
    sdsVLBASEICMSRED: TFMTBCDField;
    sdsVLBASEIPI: TFMTBCDField;
    sdsALIPI: TFloatField;
    sdsVLIPI: TFMTBCDField;
    sdsVLFRETE: TFMTBCDField;
    sdsVLSEGURO: TFMTBCDField;
    sdsPSLIQUIDO: TFloatField;
    sdsPSBRUTO: TFloatField;
    sdsBORECUPERAICMS: TStringField;
    sdsBORECUPERAIPI: TStringField;
    sdsBORECUPERAPIS: TStringField;
    sdsVLBASEPIS: TFMTBCDField;
    sdsALPIS: TFloatField;
    sdsVLPIS: TFMTBCDField;
    sdsVLBASECOFINS: TFMTBCDField;
    sdsALCOFINS: TFloatField;
    sdsVLCOFINS: TFMTBCDField;
    sdsPRCUSTO: TFMTBCDField;
    sdsPRVIGOR: TFMTBCDField;
    sdsVLOUTDESPESA: TFMTBCDField;
    sdsVLCUSTOMEDIO: TFMTBCDField;
    sdsVLCUSTO: TFMTBCDField;
    sdsBORECUPERACOFINS: TStringField;
    sdsDTFABRICACAO: TDateField;
    sdsDTVALIDADE: TDateField;
    sdsVLSALDOVALOR: TFMTBCDField;
    sdsPRLUCRO: TFloatField;
    sdsVLICMSRED: TFMTBCDField;
    sdsALICMSSUBTRIB: TFloatField;
    sdsVLICMSSUBTRIB: TFMTBCDField;
    sdsVLBASEICMSSUBTRIB: TFMTBCDField;
    sdsVLVENDA: TFMTBCDField;
    sdsPRLUCROATACADO: TFloatField;
    sdsPRLUCROESPECIAL: TFloatField;
    sdsVLATACADO: TFMTBCDField;
    sdsVLESPECIAL: TFMTBCDField;
    sdsCDMODBCICMS: TIntegerField;
    sdsCDMODBCSTICMS: TIntegerField;
    sdsPRMRGVLADICIONADOICMSSUBTRIB: TFloatField;
    sdsPRREDBCICMS: TFloatField;
    sdsNUSTICMS: TStringField;
    sdsNUSTIPI: TStringField;
    sdsNUSTCOFINS: TStringField;
    sdsNUSTPIS: TStringField;
    sdsBORECUPERAAJUSTEICMS: TStringField;
    sdsBOICMSAJUSTE: TStringField;
    sdsBOBASEIPIAJUSTE: TStringField;
    sdsBOAJUSTETOTAL: TStringField;
    sdsBOBASEICMSAJUSTE: TStringField;
    sdsBONDIFERENCIALALIQUOTA: TStringField;
    sdsVLICMSDIFALIQUOTA: TFMTBCDField;
    sdsBODIFERENCIALALIQUOTA: TStringField;
    sdsCDITENTRADA: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsBORECUPERAIPIESPECIAL: TStringField;
    sdsCDITORDCOMPRA: TIntegerField;
    sdsCDORDCOMPRA: TIntegerField;
    sdsBOBASEPISAJUSTE: TStringField;
    sdsBOBASECOFINSAJUSTE: TStringField;
    sdsVLCUSTOBRUTO: TFMTBCDField;
    sdsVLCUSTOLIQUIDO: TFMTBCDField;
    sdsPRCOMISSAO: TFloatField;
    sdsALSUPERSIMPLES: TFloatField;
    sdsVLSUPERSIMPLES: TFMTBCDField;
    sdsVLCOMISSAO: TFMTBCDField;
    sdsVLCUSTOTOTAL: TFMTBCDField;
    sdsVLPRECOVENDA: TFMTBCDField;
    sdsVLPRECOANTERIOR: TFMTBCDField;
    sdsPRFRETE: TFloatField;
    sdsVLIPIITEM: TFMTBCDField;
    sdsVLFRETEITEM: TFMTBCDField;
    sdsVLICMSSUBTRIBITEM: TFMTBCDField;
    sdsVLDESCONTOITEM: TFMTBCDField;
    sdsVLOUTDESPESAITEM: TFMTBCDField;
    sdsVLICMSDIFALIQUOTAITEM: TFMTBCDField;
    sdsCDBCCALCULOCREDITO: TStringField;
    sdsPRDESPESAITEM: TFloatField;
    sdsVLDESPESAITEM: TFMTBCDField;
    sdsVLLUCRO: TFMTBCDField;
    sdsDSINFADICIONAL: TBlobField;
    sdsCDPLCONTA: TIntegerField;
    sdsNUPLCONTA: TStringField;
    sdsVLPRECOPRAZO: TFMTBCDField;
    sdsPRLUCROPRAZO: TFloatField;
    sdsVLPRECOPRAZOANTERIOR: TFMTBCDField;
    sdsVLLUCROPRAZO: TFMTBCDField;
    sdsBOAJUSTEIPI: TStringField;
    cdsPRCOMISSAO1: TFloatField;
    cdsPRLUCRO1: TFloatField;
    cdsPRLUCROPRAZO1: TFloatField;
    cdsNMPRODUTO: TStringField;
    cdsVLVENDA1: TFMTBCDField;
    cdsVLPRAZO1: TFMTBCDField;
    cdsCDENTRADA: TIntegerField;
    cdsCDPRODUTO: TIntegerField;
    cdsCDCNTCUSTO: TIntegerField;
    cdsCDCFOP: TIntegerField;
    cdsCDDIGITADO: TStringField;
    cdsDSITENTRADA: TStringField;
    cdsBOALTERACUSTOMEDIO: TStringField;
    cdsQTITEM: TFloatField;
    cdsVLUNITARIO: TFMTBCDField;
    cdsVLTOTAL: TFMTBCDField;
    cdsPRDESCONTO: TFloatField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsVLBASEICMS: TFMTBCDField;
    cdsALICMS: TFloatField;
    cdsVLICMS: TFMTBCDField;
    cdsALICMSRED: TFloatField;
    cdsVLBASEICMSRED: TFMTBCDField;
    cdsVLBASEIPI: TFMTBCDField;
    cdsALIPI: TFloatField;
    cdsVLIPI: TFMTBCDField;
    cdsVLFRETE: TFMTBCDField;
    cdsVLSEGURO: TFMTBCDField;
    cdsPSLIQUIDO: TFloatField;
    cdsPSBRUTO: TFloatField;
    cdsBORECUPERAICMS: TStringField;
    cdsBORECUPERAIPI: TStringField;
    cdsBORECUPERAPIS: TStringField;
    cdsVLBASEPIS: TFMTBCDField;
    cdsALPIS: TFloatField;
    cdsVLPIS: TFMTBCDField;
    cdsVLBASECOFINS: TFMTBCDField;
    cdsALCOFINS: TFloatField;
    cdsVLCOFINS: TFMTBCDField;
    cdsPRCUSTO: TFMTBCDField;
    cdsPRVIGOR: TFMTBCDField;
    cdsVLOUTDESPESA: TFMTBCDField;
    cdsVLCUSTOMEDIO: TFMTBCDField;
    cdsVLCUSTO: TFMTBCDField;
    cdsBORECUPERACOFINS: TStringField;
    cdsDTFABRICACAO: TDateField;
    cdsDTVALIDADE: TDateField;
    cdsVLSALDOVALOR: TFMTBCDField;
    cdsVLICMSRED: TFMTBCDField;
    cdsALICMSSUBTRIB: TFloatField;
    cdsVLICMSSUBTRIB: TFMTBCDField;
    cdsVLBASEICMSSUBTRIB: TFMTBCDField;
    cdsVLVENDA: TFMTBCDField;
    cdsPRLUCROATACADO: TFloatField;
    cdsPRLUCROESPECIAL: TFloatField;
    cdsVLATACADO: TFMTBCDField;
    cdsVLESPECIAL: TFMTBCDField;
    cdsCDMODBCICMS: TIntegerField;
    cdsCDMODBCSTICMS: TIntegerField;
    cdsPRMRGVLADICIONADOICMSSUBTRIB: TFloatField;
    cdsPRREDBCICMS: TFloatField;
    cdsNUSTICMS: TStringField;
    cdsNUSTIPI: TStringField;
    cdsNUSTCOFINS: TStringField;
    cdsNUSTPIS: TStringField;
    cdsBORECUPERAAJUSTEICMS: TStringField;
    cdsBOICMSAJUSTE: TStringField;
    cdsBOBASEIPIAJUSTE: TStringField;
    cdsBOAJUSTETOTAL: TStringField;
    cdsBOBASEICMSAJUSTE: TStringField;
    cdsBONDIFERENCIALALIQUOTA: TStringField;
    cdsVLICMSDIFALIQUOTA: TFMTBCDField;
    cdsBODIFERENCIALALIQUOTA: TStringField;
    cdsCDITENTRADA: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsBORECUPERAIPIESPECIAL: TStringField;
    cdsCDITORDCOMPRA: TIntegerField;
    cdsCDORDCOMPRA: TIntegerField;
    cdsBOBASEPISAJUSTE: TStringField;
    cdsBOBASECOFINSAJUSTE: TStringField;
    cdsVLCUSTOBRUTO: TFMTBCDField;
    cdsVLCUSTOLIQUIDO: TFMTBCDField;
    cdsVLCUSTOTOTAL: TFMTBCDField;
    cdsVLPRECOANTERIOR: TFMTBCDField;
    cdsVLIPIITEM: TFMTBCDField;
    cdsVLICMSSUBTRIBITEM: TFMTBCDField;
    cdsVLDESCONTOITEM: TFMTBCDField;
    cdsVLOUTDESPESAITEM: TFMTBCDField;
    cdsVLICMSDIFALIQUOTAITEM: TFMTBCDField;
    cdsCDBCCALCULOCREDITO: TStringField;
    cdsVLLUCRO: TFMTBCDField;
    cdsDSINFADICIONAL: TBlobField;
    cdsCDPLCONTA: TIntegerField;
    cdsNUPLCONTA: TStringField;
    cdsVLPRECOPRAZOANTERIOR: TFMTBCDField;
    cdsVLLUCROPRAZO: TFMTBCDField;
    cdsBOAJUSTEIPI: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDORDPRODUCAO: TIntegerField;
    sdsNUCNTCUSTO: TStringField;
    sdsVLRETENCAO: TFMTBCDField;
    sdsVLBASEICMSNTRIBUTAVEL: TFMTBCDField;
    sdsVLBASEICMSORIGINAL: TFMTBCDField;
    sdsVLTOTALCOMPLETO: TFMTBCDField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDORDPRODUCAO: TIntegerField;
    cdsNUCNTCUSTO: TStringField;
    cdsVLRETENCAO: TFMTBCDField;
    cdsVLBASEICMSNTRIBUTAVEL: TFMTBCDField;
    cdsVLBASEICMSORIGINAL: TFMTBCDField;
    cdsVLTOTALCOMPLETO: TFMTBCDField;
    procedure cdsALSUPERSIMPLESValidate(Sender: TField);
    procedure setvlcustototal(Sender: TField);
    procedure cdsPRCOMISSAOValidate(Sender: TField);
    procedure cdsPRLUCROValidate(Sender: TField);
    procedure cdsPRFRETEValidate(Sender: TField);
    procedure cdsVLFRETEITEMValidate(Sender: TField);
    procedure cdsPRDESPESAITEMValidate(Sender: TField);
    procedure cdsVLPRECOVENDAValidate(Sender: TField);
    procedure cdsVLPRECOPRAZOValidate(Sender: TField);
    procedure cdsPRLUCROPRAZOValidate(Sender: TField);
  private { Private declarations }
    procedure Atualizar_pizza_peca;
  public { Public declarations }
  end;

var
  frmmarkupentrada: Tfrmmarkupentrada;

function dlgmarkupentrada(cditentrada:string):Boolean;

implementation

uses uDtmMain;

{$R *.dfm}

function dlgmarkupentrada(cditentrada:string):Boolean;
var
  sql: string;
begin
  result := False;
  frmmarkupentrada := Tfrmmarkupentrada.Create(nil);
  try
    with frmmarkupentrada do
    begin
      sds.ParamByName(_cdempresa).AsLargeInt   := empresa.cdempresa;
      sds.ParamByName(_cditentrada).asstring := cditentrada;
      cds.Open;
      cds.Edit;
      if cdsvlfreteitem.ascurrency = 0 then
      begin
        cdsvlfreteitem.ascurrency := cdsvlfrete.ascurrency / cdsqtitem.asfloat;
      end;
      cdsVLICMSDIFALIQUOTAITEM.AsCurrency := cdsVLICMSDIFALIQUOTA.AsCurrency / cdsQTITEM.AsFloat;
      cdsvlipiitem.ascurrency             := cdsVLIPI.AsCurrency             / cdsQTITEM.AsFloat;
      cdsVLICMSSUBTRIBitem.ascurrency     := cdsVLICMSSUBTRIB.AsCurrency     / cdsQTITEM.AsFloat;
      cdsvldescontoitem.ascurrency        := cdsvldesconto.ascurrency        / cdsqtitem.asfloat;
      cdsVLOUTDESPESAitem.ascurrency      := cdsvloutdespesa.ascurrency      / cdsqtitem.asfloat;
      cdsVLCUSTOBRUTO.AsCurrency          := cdsVLUNITARIO.AsCurrency +
                                             cdsVLIPIitem.AsCurrency +
                                             cdsVLFRETEitem.AsCurrency +
                                             cdsVLICMSSUBTRIBitem.AsCurrency +
                                             cdsVLOUTDESPESAITEM.AsCurrency +
                                             cdsVLICMSDIFALIQUOTAitem.AsCurrency;
      cdsVLCUSTOLIQUIDO.AsCurrency        := cdsVLCUSTOBRUTO.AsCurrency - (cdsVLDESCONTOITEM.AsCurrency / cdsQTITEM.AsFloat);

      if cdsPRCOMISSAO.IsNull     then cdsPRCOMISSAO.AsFloat     := cdsPRCOMISSAO1.AsFloat;
      if cdsPRDESPESAITEM.IsNull  then cdsPRDESPESAITEM.AsFloat  := empresa.prdespesaoperacional;
      if cdsALSUPERSIMPLES.IsNull then cdsALSUPERSIMPLES.AsFloat := empresa.prsupersimples;
      if cdsPRLUCRO.IsNull        then cdsPRLUCRO.AsFloat        := cdsprlucro1.AsFloat;

      cdsVLPRECOVENDA.AsCurrency := cdsVLCUSTOTOTAL.AsCurrency + (cdsVLCUSTOTOTAL.AsCurrency * cdsPRLUCRO.AsFloat / 100);
      if cdsVLPRECOANTERIOR.IsNull or (cdsVLPRECOANTERIOR.AsCurrency = 0) then
      begin
        cdsVLPRECOANTERIOR.AsCurrency := cdsVLVENDA1.AsCurrency;
      end;
      if cdsVLPRECOPRAZOANTERIOR.IsNull or (cdsVLPRECOPRAZOANTERIOR.AsCurrency = 0) then
      begin
        cdsVLPRECOPRAZOANTERIOR.AsCurrency := cdsVLPRAZO1.AsCurrency;
      end;
      sdsevolucao.ParamByName(_cdempresa).AsLargeInt := empresa.cdempresa;
      sdsevolucao.ParamByName(_cdproduto).AsString := cdsCDPRODUTO.AsString;
      sdsevolucao.Open;
      while not sdsevolucao.Eof do
      begin
        cdsevolucao.Insert;
        cdsevolucao.FieldByName(_dtemissao).AsDateTime    := sdsevolucao.FieldByName(_dtemissao).AsDateTime;
        cdsevolucao.FieldByName(_vlprecovenda).AsCurrency := sdsevolucao.FieldByName(_vlprecovenda).AsCurrency;
        cdsevolucao.Post;
        sdsevolucao.Next;
      end;
      ShowModal;
      if ModalResult = mrok then
      begin
        cds.Post;
        if cds.ApplyUpdates(0) = 0 then
        begin
          sql := 'update produto '+
                 'set vlvenda='+getcurrencys(cdsVLPRECOVENDA.AsCurrency)+
                 ',vlprazo='+getcurrencys(cdsVLPRECOprazo.AsCurrency)+
                 ',vlcusto='+getcurrencys(cdsVLCUSTOLIQUIDO.AsFloat)+
                 ',prcomissao='+getfloats(cdsPRCOMISSAO.AsFloat)+
                 ',prlucroprazo='+getfloats(cdsPRLUCROPRAZO.AsFloat)+
                 ',prlucro='+getfloats(cdsPRLUCRO.AsFloat)+' '+
                 'where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdsCDPRODUTO.AsString;
          ExecutaSQL(sql);
          sql := 'update itlote '+
                 'set vlvenda='+getcurrencys(cdsVLPRECOVENDA.AsCurrency)+
                 ',vlcusto='+getcurrencys(cdsVLCUSTOLIQUIDO.AsFloat)+
                 ',vlprazo='+getcurrencys(cdsVLPRECOprazo.AsCurrency)+
                 ',prcomissao='+getfloats(cdsPRCOMISSAO.AsFloat)+
                 ',prlucroprazo='+getfloats(cdsPRLUCROPRAZO.AsFloat)+
                 ',prlucro='+getfloats(cdsPRLUCRO.AsFloat)+' '+
                 'where cdempresa='+empresa.cdempresa.tostring+' and cditentrada='+cdsCDITENTRADA.AsString;
          ExecutaSQL(sql);
        end;
        result := True;
      end;
    end;
  finally
    FreeAndNil(frmmarkupentrada);
  end;
end;

procedure Tfrmmarkupentrada.cdsALSUPERSIMPLESValidate(Sender: TField);
begin
  cdsVLSUPERSIMPLES.AsCurrency := cdsVLCUSTOLIQUIDO.AsCurrency * cdsALSUPERSIMPLES.AsFloat / 100;
end;

procedure Tfrmmarkupentrada.setvlcustototal(Sender: TField);
begin
  cdsVLCUSTOTOTAL.AsCurrency := cdsVLCUSTOLIQUIDO.AsCurrency + cdsVLSUPERSIMPLES.AsCurrency + cdsVLCOMISSAO.AsCurrency + cdsVLDESPESAITEM.AsCurrency;
  cdsPRLUCROValidate(sender);
end;

procedure Tfrmmarkupentrada.cdsPRCOMISSAOValidate(Sender: TField);
begin
  cdsVLCOMISSAO.AsCurrency := cdsVLCUSTOLIQUIDO.AsCurrency * cdsPRCOMISSAO.AsFloat / 100;
end;

procedure Tfrmmarkupentrada.cdsPRLUCROValidate(Sender: TField);
begin
  cdsVLPRECOVENDA.OnValidate := nil;
  cdsVLPRECOVENDA.AsCurrency := cdsVLCUSTOTOTAL.AsCurrency + (cdsVLCUSTOTOTAL.AsCurrency * cdsPRLUCRO.AsFloat / 100);
  cdsVLLUCRO.AsCurrency      := cdsVLPRECOVENDA.AsCurrency - cdsVLCUSTOTOTAL.AsCurrency;
  Atualizar_pizza_peca;
  cdsVLPRECOVENDA.OnValidate := cdsVLPRECOVENDAValidate;
end;

procedure Tfrmmarkupentrada.cdsPRFRETEValidate(Sender: TField);
begin
  cdsVLFRETEITEM.AsCurrency := cdsVLUNITARIO.AsCurrency * cdsPRFRETE.AsFloat / 100;
end;

procedure Tfrmmarkupentrada.cdsVLFRETEITEMValidate(Sender: TField);
begin
  cdsVLCUSTOBRUTO.AsCurrency := cdsVLUNITARIO.AsCurrency + cdsVLIPIitem.AsCurrency+ cdsVLFRETEitem.AsCurrency + cdsVLICMSSUBTRIBitem.AsCurrency+
                                cdsVLOUTDESPESAITEM.AsCurrency + cdsVLICMSDIFALIQUOTAITEM.AsCurrency;
  cdsVLCUSTOLIQUIDO.AsCurrency := cdsVLCUSTOBRUTO.AsCurrency + (cdsVLDESCONTOITEM.AsCurrency / cdsQTITEM.AsFloat);
  setvlcustototal(sender);
end;

procedure Tfrmmarkupentrada.cdsPRDESPESAITEMValidate(Sender: TField);
begin
  cdsVLdespesaitem.AsCurrency := cdsVLCUSTOLIQUIDO.AsCurrency * cdsPRdespesaitem.AsFloat / 100;
end;

procedure Tfrmmarkupentrada.cdsVLPRECOVENDAValidate(Sender: TField);
begin
  cdsPRLUCRO.OnValidate := nil;
  cdsPRLUCRO.AsFloat    := ((cdsVLPRECOVENDA.AsCurrency * 100) / cdsVLCUSTOTOTAL.AsCurrency) - 100;
  cdsVLLUCRO.AsCurrency := cdsVLPRECOVENDA.AsCurrency - cdsVLCUSTOTOTAL.AsCurrency;
  Atualizar_pizza_peca;
  cdsPRLUCRO.OnValidate := cdsPRLUCROValidate;
end;

procedure Tfrmmarkupentrada.Atualizar_pizza_peca;
  procedure adicionar_valor(nome:string; valor:currency);
  begin
    if valor <= 0 then
    begin
      Exit;
    end;
    cdspizzapeca.Append;
    cdspizzapecanome.AsString    := nome;
    cdspizzapecavalor.AsCurrency := valor;
    cdspizzapeca.Post;
  end;
begin
  if not cdspizzapeca.Active then
  begin
    cdspizzapeca.CreateDataSet;
    cdspizzapeca.Open;
  end;
  if cdspizzapeca.RecordCount > 0 then
  begin
    cdspizzapeca.EmptyDataSet;
  end;
  cdspizzapeca.ReadOnly := False;
  Adicionar_valor('Custo'   , cdsVLCUSTOLIQUIDO.AsCurrency);
  Adicionar_valor('Despesa' , cdsVLDESPESAITEM.AsCurrency);
  Adicionar_valor('Comissão', cdsVLCOMISSAO.AsCurrency);
  Adicionar_valor('Simples' , cdsVLSUPERSIMPLES.AsCurrency);
  Adicionar_valor('Lucro'   , cdsVLLUCRO.AsCurrency);
end;

procedure Tfrmmarkupentrada.cdsVLPRECOPRAZOValidate(Sender: TField);
begin
  cdsPRLUCROPRAZO.OnValidate := nil;
  cdsPRLUCROPRAZO.AsFloat    := ((cdsVLPRECOPRAZO.AsCurrency * 100) / cdsVLCUSTOTOTAL.AsCurrency) - 100;
  cdsVLLUCROPRAZO.AsCurrency := cdsVLPRECOPRAZO.AsCurrency - cdsVLCUSTOTOTAL.AsCurrency;
  Atualizar_pizza_peca;
  cdsPRLUCROPRAZO.OnValidate := cdsPRLUCROPRAZOValidate;
end;

procedure Tfrmmarkupentrada.cdsPRLUCROPRAZOValidate(Sender: TField);
begin
  cdsVLPRECOPRAZO.OnValidate := nil;
  cdsVLPRECOPRAZO.AsCurrency := cdsVLCUSTOTOTAL.AsCurrency + (cdsVLCUSTOTOTAL.AsCurrency * cdsPRLUCROPRAZO.AsFloat / 100);
  cdsVLLUCROPRAZO.AsCurrency := cdsVLPRECOPRAZO.AsCurrency - cdsVLCUSTOTOTAL.AsCurrency;
  Atualizar_pizza_peca;
  cdsVLPRECOPRAZO.OnValidate := cdsVLPRECOPRAZOValidate;
end;

end.

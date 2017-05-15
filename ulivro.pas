unit ulivro;

interface

uses
  System.Actions, System.UITypes,
  forms, windows, sysutils, ExtCtrls, ToolWin, Controls, ComCtrls, Mask, StdCtrls,
  Classes, ActnList, dialogs, Menus,
  Grids, DBClient, FMTBcd, Provider, DB, sqlexpr,
  uregistro, uconstantes, utipo, ustrings, urotinas, uRichEdit,
  udatahora, uexportarexcel,
  classefornecedor, classecliente, classeconsiste,
  classeregistrainformacao, classegerar, classeempresa, classelivrofiscal,
  classeusuario, classeexecutasql, classeaplicacao, classesaida, classeVersao,
  classecte, classeproduto, classeRegistro, classeretornasql, classelivrofiscaldigital,
  classeform,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGrid,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxSplitter, cxPC, cxLookAndFeelPainters, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, cxContainer, cxLabel,
  cxGroupBox, cxCheckBox, cxDBLabel, cxButtons, dxStatusBar, cxCalendar, cxSpinEdit,
  dxBar, cxLookAndFeels, cxMemo, cxButtonEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridBandedTableView, cxGridDBBandedTableView, cxPCdxBarPopupMenu,
  cxNavigator, dxBarBuiltInMenu;

type
  Tfrmlivro = class(TForm)
    pnl: TPanel;
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actabrirsaida: TAction;
    actabrirEntrada: TAction;
    actvoltar: TAction;
    actsalvarimpressao: TAction;
    actimprimirmemo: TAction;
    actgerarsintegra: TAction;
    actimprimirapuracaoicmslaser: TAction;
    actimprimirapuracaoipilaser: TAction;
    actimprimirlivrofiscalentradaicmsipip1aemitentelaser: TAction;
    actimprimirtermoLaser: TAction;
    actimprimirlivrofiscalentradaicmsipi1aLaser: TAction;
    actimprimirlivrofiscalentradaipi1aLaser: TAction;
    actimprimirlivrofiscalentradaicms1aLaser: TAction;
    actimprimirlivrofiscalemitentesentradaLaser: TAction;
    actimprimirlivrofiscalemitentessaidasLaser: TAction;
    actimprimirlivrofiscalsaidaicms2aLaser: TAction;
    actimprimirlivrofiscalsaidaipi2aLaser: TAction;
    actimprimirlivrofiscalsaidaicmsipi2aLaser: TAction;
    actfechar: TAction;
    sds: TSQLDataSet;
    sdsicms: TSQLDataSet;
    sdsitufp1a: TSQLDataSet;
    sdsitapuracaoicms: TSQLDataSet;
    sdsitapuf: TSQLDataSet;
    sdsitregapuracao1: TSQLDataSet;
    dts: TDataSource;
    dtsicms: TDataSource;
    dtsitufp1a: TDataSource;
    dtsitapuracaoicms: TDataSource;
    dtsitapuf: TDataSource;
    dtsitregapuracao1: TDataSource;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsicms: TClientDataSet;
    cdsitufp1a: TClientDataSet;
    cdsitapuracaoicms: TClientDataSet;
    cdsitregapuracao1: TClientDataSet;
    cdsitapuf: TClientDataSet;
    sdsitregapuracao2: TSQLDataSet;
    cdsitregapuracao2: TClientDataSet;
    dtsitregapuracao2: TDataSource;
    ToolBar4: TToolBar;
    ToolButton17: TToolButton;
    actefd: TAction;
    sdsipi: TSQLDataSet;
    cdsipi: TClientDataSet;
    dtsipi: TDataSource;
    sdsCDLP1A: TIntegerField;
    sdsDTINICIO: TDateField;
    sdsDTFINAL: TDateField;
    cdsCDLP1A: TIntegerField;
    cdsDTINICIO: TDateField;
    cdsDTFINAL: TDateField;
    dts1: TDataSource;
    sdsipiCDLP1A: TIntegerField;
    sdsipiCDITLP1A: TIntegerField;
    sdsipiCDSAIDA: TIntegerField;
    sdsipiNMTPIMPOSTO: TStringField;
    sdsipiCDENTRADA: TIntegerField;
    sdsipiSGUF: TStringField;
    sdsipiCDTPOP1A: TIntegerField;
    sdsipiTPSAIENT: TStringField;
    sdsipiDTENTRADA: TDateField;
    sdsipiNMESPECIE: TStringField;
    sdsipiNUSERIE: TStringField;
    sdsipiDTEMISSAO: TDateField;
    sdsipiVLCONTABIL: TFMTBCDField;
    sdsipiVLBASE: TFMTBCDField;
    sdsipiVLIMPOSTO: TFMTBCDField;
    sdsipiVLISENTAS: TFMTBCDField;
    sdsipiVLOUTRAS: TFMTBCDField;
    sdsipiDSOBSERVACAO: TStringField;
    sdsicmsCDLP1A: TIntegerField;
    sdsicmsCDITLP1A: TIntegerField;
    sdsicmsCDSAIDA: TIntegerField;
    sdsicmsNMTPIMPOSTO: TStringField;
    sdsicmsCDENTRADA: TIntegerField;
    sdsicmsSGUF: TStringField;
    sdsicmsCDTPOP1A: TIntegerField;
    sdsicmsTPSAIENT: TStringField;
    sdsicmsDTENTRADA: TDateField;
    sdsicmsNMESPECIE: TStringField;
    sdsicmsNUSERIE: TStringField;
    sdsicmsDTEMISSAO: TDateField;
    sdsicmsVLCONTABIL: TFMTBCDField;
    sdsicmsVLBASE: TFMTBCDField;
    sdsicmsVLIMPOSTO: TFMTBCDField;
    sdsicmsVLISENTAS: TFMTBCDField;
    sdsicmsVLOUTRAS: TFMTBCDField;
    sdsicmsDSOBSERVACAO: TStringField;
    cdsipiCDLP1A: TIntegerField;
    cdsipiCDITLP1A: TIntegerField;
    cdsipiCDSAIDA: TIntegerField;
    cdsipiNMTPIMPOSTO: TStringField;
    cdsipiCDENTRADA: TIntegerField;
    cdsipiSGUF: TStringField;
    cdsipiCDTPOP1A: TIntegerField;
    cdsipiTPSAIENT: TStringField;
    cdsipiDTENTRADA: TDateField;
    cdsipiNMESPECIE: TStringField;
    cdsipiNUSERIE: TStringField;
    cdsipiDTEMISSAO: TDateField;
    cdsipiVLCONTABIL: TFMTBCDField;
    cdsipiVLBASE: TFMTBCDField;
    cdsipiVLIMPOSTO: TFMTBCDField;
    cdsipiVLISENTAS: TFMTBCDField;
    cdsipiVLOUTRAS: TFMTBCDField;
    cdsipiDSOBSERVACAO: TStringField;
    cdsicmsCDLP1A: TIntegerField;
    cdsicmsCDITLP1A: TIntegerField;
    cdsicmsCDSAIDA: TIntegerField;
    cdsicmsNMTPIMPOSTO: TStringField;
    cdsicmsCDENTRADA: TIntegerField;
    cdsicmsSGUF: TStringField;
    cdsicmsCDTPOP1A: TIntegerField;
    cdsicmsTPSAIENT: TStringField;
    cdsicmsDTENTRADA: TDateField;
    cdsicmsNMESPECIE: TStringField;
    cdsicmsNUSERIE: TStringField;
    cdsicmsDTEMISSAO: TDateField;
    cdsicmsVLCONTABIL: TFMTBCDField;
    cdsicmsVLBASE: TFMTBCDField;
    cdsicmsVLIMPOSTO: TFMTBCDField;
    cdsicmsVLISENTAS: TFMTBCDField;
    cdsicmsVLOUTRAS: TFMTBCDField;
    cdsicmsDSOBSERVACAO: TStringField;
    sdsitufp1aCDLP1A: TIntegerField;
    sdsitufp1aCDITUFP1A: TIntegerField;
    sdsitufp1aCDUF: TIntegerField;
    sdsitufp1aTPSAIENT: TStringField;
    sdsitufp1aVLCONTABIL: TFMTBCDField;
    sdsitufp1aVLBASE: TFMTBCDField;
    sdsitufp1aVLOUTRAS: TFMTBCDField;
    sdsitufp1aVLIMPOSTO: TFMTBCDField;
    sdsitufp1aSGUF: TStringField;
    cdsitufp1aCDLP1A: TIntegerField;
    cdsitufp1aCDITUFP1A: TIntegerField;
    cdsitufp1aCDUF: TIntegerField;
    cdsitufp1aTPSAIENT: TStringField;
    cdsitufp1aVLCONTABIL: TFMTBCDField;
    cdsitufp1aVLBASE: TFMTBCDField;
    cdsitufp1aVLOUTRAS: TFMTBCDField;
    cdsitufp1aVLIMPOSTO: TFMTBCDField;
    cdsitufp1aSGUF: TStringField;
    sdsitapufCDLP1A: TIntegerField;
    sdsitapufCDITAPUF: TIntegerField;
    sdsitapufCDTPIMPOSTO: TIntegerField;
    sdsitapufTPSAIENT: TStringField;
    sdsitapufVLCONTABIL: TFMTBCDField;
    sdsitapufVLBASE: TFMTBCDField;
    sdsitapufVLIMPOSTO: TFMTBCDField;
    sdsitapufVLISENTAS: TFMTBCDField;
    sdsitapufVLOUTRAS: TFMTBCDField;
    sdsitapufNMTPIMPOSTO: TStringField;
    sdsitregapuracao2CDLP1A: TIntegerField;
    sdsitregapuracao2CDITREGAPURACAO: TIntegerField;
    sdsitregapuracao2CDTPIMPOSTO: TIntegerField;
    sdsitregapuracao2VLDEBITO: TFMTBCDField;
    sdsitregapuracao2VLDOUTROS: TFMTBCDField;
    sdsitregapuracao2VLDESTORNO: TFMTBCDField;
    sdsitregapuracao2VLDTOTAL: TFMTBCDField;
    sdsitregapuracao2VLCREDITO: TFMTBCDField;
    sdsitregapuracao2VLCOUTROS: TFMTBCDField;
    sdsitregapuracao2VLCESTORNO: TFMTBCDField;
    sdsitregapuracao2VLCSUBTOTAL: TFMTBCDField;
    sdsitregapuracao2VLCSALDOCREDOR: TFMTBCDField;
    sdsitregapuracao2VLCTOTAL: TFMTBCDField;
    sdsitregapuracao2VLSALDODEVEDOR: TFMTBCDField;
    sdsitregapuracao2VLDEDUCOES: TFMTBCDField;
    sdsitregapuracao2VLIMPOSTO: TFMTBCDField;
    sdsitregapuracao2VLSALDOCREDOR: TFMTBCDField;
    sdsitregapuracao2VLDRESSARCIMENTO: TFMTBCDField;
    cdsitregapuracao2CDLP1A: TIntegerField;
    cdsitregapuracao2CDITREGAPURACAO: TIntegerField;
    cdsitregapuracao2CDTPIMPOSTO: TIntegerField;
    cdsitregapuracao2VLDEBITO: TFMTBCDField;
    cdsitregapuracao2VLDOUTROS: TFMTBCDField;
    cdsitregapuracao2VLDESTORNO: TFMTBCDField;
    cdsitregapuracao2VLDTOTAL: TFMTBCDField;
    cdsitregapuracao2VLCREDITO: TFMTBCDField;
    cdsitregapuracao2VLCOUTROS: TFMTBCDField;
    cdsitregapuracao2VLCESTORNO: TFMTBCDField;
    cdsitregapuracao2VLCSUBTOTAL: TFMTBCDField;
    cdsitregapuracao2VLCSALDOCREDOR: TFMTBCDField;
    cdsitregapuracao2VLCTOTAL: TFMTBCDField;
    cdsitregapuracao2VLSALDODEVEDOR: TFMTBCDField;
    cdsitregapuracao2VLDEDUCOES: TFMTBCDField;
    cdsitregapuracao2VLIMPOSTO: TFMTBCDField;
    cdsitregapuracao2VLSALDOCREDOR: TFMTBCDField;
    cdsitregapuracao2VLDRESSARCIMENTO: TFMTBCDField;
    sdsitregapuracao3: TSQLDataSet;
    cdsitregapuracao3: TClientDataSet;
    dtsitregapuracao3: TDataSource;
    sdsitapuracaoipi: TSQLDataSet;
    cdsitapuracaoipi: TClientDataSet;
    dtsitapuracaoipi: TDataSource;
    cdssdsitufp1a: TDataSetField;
    cdssdsicms: TDataSetField;
    cdssdsipi: TDataSetField;
    cdssdsitapuracaoicms: TDataSetField;
    cdssdsitapuf: TDataSetField;
    cdssdsitapuracaoipi: TDataSetField;
    cdssdsitregapuracao3: TDataSetField;
    cdssdsitregapuracao2: TDataSetField;
    cdssdsitregapuracao1: TDataSetField;
    sdsitregapuracao1CDLP1A: TIntegerField;
    sdsitregapuracao1CDITREGAPURACAO: TIntegerField;
    sdsitregapuracao1CDTPIMPOSTO: TIntegerField;
    sdsitregapuracao1VLDEBITO: TFMTBCDField;
    sdsitregapuracao1VLDOUTROS: TFMTBCDField;
    sdsitregapuracao1VLDESTORNO: TFMTBCDField;
    sdsitregapuracao1VLDTOTAL: TFMTBCDField;
    sdsitregapuracao1VLCREDITO: TFMTBCDField;
    sdsitregapuracao1VLCOUTROS: TFMTBCDField;
    sdsitregapuracao1VLCESTORNO: TFMTBCDField;
    sdsitregapuracao1VLCSUBTOTAL: TFMTBCDField;
    sdsitregapuracao1VLCSALDOCREDOR: TFMTBCDField;
    sdsitregapuracao1VLCTOTAL: TFMTBCDField;
    sdsitregapuracao1VLSALDODEVEDOR: TFMTBCDField;
    sdsitregapuracao1VLDEDUCOES: TFMTBCDField;
    sdsitregapuracao1VLIMPOSTO: TFMTBCDField;
    sdsitregapuracao1VLSALDOCREDOR: TFMTBCDField;
    sdsitregapuracao1VLDRESSARCIMENTO: TFMTBCDField;
    cdsitregapuracao1CDLP1A: TIntegerField;
    cdsitregapuracao1CDITREGAPURACAO: TIntegerField;
    cdsitregapuracao1CDTPIMPOSTO: TIntegerField;
    cdsitregapuracao1VLDEBITO: TFMTBCDField;
    cdsitregapuracao1VLDOUTROS: TFMTBCDField;
    cdsitregapuracao1VLDESTORNO: TFMTBCDField;
    cdsitregapuracao1VLDTOTAL: TFMTBCDField;
    cdsitregapuracao1VLCREDITO: TFMTBCDField;
    cdsitregapuracao1VLCOUTROS: TFMTBCDField;
    cdsitregapuracao1VLCESTORNO: TFMTBCDField;
    cdsitregapuracao1VLCSUBTOTAL: TFMTBCDField;
    cdsitregapuracao1VLCSALDOCREDOR: TFMTBCDField;
    cdsitregapuracao1VLCTOTAL: TFMTBCDField;
    cdsitregapuracao1VLSALDODEVEDOR: TFMTBCDField;
    cdsitregapuracao1VLDEDUCOES: TFMTBCDField;
    cdsitregapuracao1VLIMPOSTO: TFMTBCDField;
    cdsitregapuracao1VLSALDOCREDOR: TFMTBCDField;
    cdsitregapuracao1VLDRESSARCIMENTO: TFMTBCDField;
    pgc: TcxPageControl;
    tbsICMS: TcxTabSheet;
    grditufp1a: TcxGrid;
    grditufp1aDBTableView1: TcxGridDBTableView;
    grditufp1aDBTableView1CDLP1A: TcxGridDBColumn;
    grditufp1aDBTableView1NUITAPUF: TcxGridDBColumn;
    grditufp1aDBTableView1TPSAIENT: TcxGridDBColumn;
    grditufp1aDBTableView1SGUF: TcxGridDBColumn;
    grditufp1aDBTableView1VLCONTABIL: TcxGridDBColumn;
    grditufp1aDBTableView1VLBASE: TcxGridDBColumn;
    grditufp1aDBTableView1VLIMPOSTO: TcxGridDBColumn;
    grditufp1aDBTableView1VLOUTRAS: TcxGridDBColumn;
    grditufp1aLevel1: TcxGridLevel;
    spt: TcxSplitter;
    grdicms: TcxGrid;
    grdicmsDBTableView1: TcxGridDBTableView;
    grdicmsDBTableView1NUDOCUMENTO: TcxGridDBColumn;
    grdicmsDBTableView1CDSAIDA: TcxGridDBColumn;
    grdicmsDBTableView1CDCFOP: TcxGridDBColumn;
    grdicmsDBTableView1NMTPIMPOSTO: TcxGridDBColumn;
    grdicmsDBTableView1CDENTRADA: TcxGridDBColumn;
    grdicmsDBTableView1SGUF: TcxGridDBColumn;
    grdicmsDBTableView1CDTPOP1A: TcxGridDBColumn;
    grdicmsDBTableView1TPSAIENT: TcxGridDBColumn;
    grdicmsDBTableView1DTENTRADA: TcxGridDBColumn;
    grdicmsDBTableView1NMESPECIE: TcxGridDBColumn;
    grdicmsDBTableView1NUSERIE: TcxGridDBColumn;
    grdicmsDBTableView1DTEMISSAO: TcxGridDBColumn;
    grdicmsDBTableView1VLCONTABIL: TcxGridDBColumn;
    grdicmsDBTableView1VLBASE: TcxGridDBColumn;
    grdicmsDBTableView1ALIQUOTA: TcxGridDBColumn;
    grdicmsDBTableView1VLIMPOSTO: TcxGridDBColumn;
    grdicmsDBTableView1VLISENTAS: TcxGridDBColumn;
    grdicmsDBTableView1VLOUTRAS: TcxGridDBColumn;
    grdicmsDBTableView1DSOBSERVACAO: TcxGridDBColumn;
    grdicmsLevel1: TcxGridLevel;
    tbsipi: TcxTabSheet;
    grdipi: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tbsapuracao: TcxTabSheet;
    grditapuf: TcxGrid;
    grditapufDBTableView1: TcxGridDBTableView;
    grditapufDBTableView1CDLP1A: TcxGridDBColumn;
    grditapufDBTableView1NUITAPUF: TcxGridDBColumn;
    grditapufDBTableView1CDTPIMPOSTO: TcxGridDBColumn;
    grditapufDBTableView1NMTPIMPOSTO: TcxGridDBColumn;
    grditapufDBTableView1TPSAIENT: TcxGridDBColumn;
    grditapufDBTableView1VLCONTABIL: TcxGridDBColumn;
    grditapufDBTableView1VLBASE: TcxGridDBColumn;
    grditapufDBTableView1VLIMPOSTO: TcxGridDBColumn;
    grditapufDBTableView1VLISENTAS: TcxGridDBColumn;
    grditapufDBTableView1VLOUTRAS: TcxGridDBColumn;
    grditapufLevel1: TcxGridLevel;
    grditapuracaoicms: TcxGrid;
    grditapuracaoicmsDBTableView1: TcxGridDBTableView;
    grditapuracaoicmsDBTableView1CDLP1A: TcxGridDBColumn;
    grditapuracaoicmsDBTableView1NUITAPURACAO: TcxGridDBColumn;
    grditapuracaoicmsDBTableView1TPSAIENT: TcxGridDBColumn;
    grditapuracaoicmsDBTableView1CDCFOP: TcxGridDBColumn;
    grditapuracaoicmsDBTableView1VLCONTABIL: TcxGridDBColumn;
    grditapuracaoicmsDBTableView1VLBASE: TcxGridDBColumn;
    grditapuracaoicmsDBTableView1VLIMPOSTO: TcxGridDBColumn;
    grditapuracaoicmsDBTableView1VLISENTAS: TcxGridDBColumn;
    grditapuracaoicmsDBTableView1VLOUTRAS: TcxGridDBColumn;
    grditapuracaoicmsDBTableView1VLOUTROSCREDITOS: TcxGridDBColumn;
    grditapuracaoicmsDBTableView1VLOUTROSDEBITOS: TcxGridDBColumn;
    grditapuracaoicmsLevel1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    tbsapuracaoipi: TcxTabSheet;
    grditapuracaoipi: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    tbssaldo: TcxTabSheet;
    vgrditregapuracao1: TcxDBVerticalGrid;
    vgrditregapuracao1CategoryRow1: TcxCategoryRow;
    vgrditregapuracao1DBEditorRow1: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow2: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow3: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow4: TcxDBEditorRow;
    vgrditregapuracao1CategoryRow2: TcxCategoryRow;
    vgrditregapuracao1DBEditorRow5: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow6: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow7: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow8: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow9: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow10: TcxDBEditorRow;
    vgrditregapuracao1CategoryRow3: TcxCategoryRow;
    vgrditregapuracao1DBEditorRow11: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow12: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow13: TcxDBEditorRow;
    vgrditregapuracao1DBEditorRow14: TcxDBEditorRow;
    tbsicmssubtrib: TcxTabSheet;
    vgrditregapuracao3: TcxDBVerticalGrid;
    cxCategoryRow4: TcxCategoryRow;
    cxDBEditorRow15: TcxDBEditorRow;
    cxDBEditorRow16: TcxDBEditorRow;
    cxDBEditorRow17: TcxDBEditorRow;
    cxDBEditorRow18: TcxDBEditorRow;
    cxCategoryRow5: TcxCategoryRow;
    cxDBEditorRow19: TcxDBEditorRow;
    cxDBEditorRow20: TcxDBEditorRow;
    cxDBEditorRow21: TcxDBEditorRow;
    cxDBEditorRow22: TcxDBEditorRow;
    cxDBEditorRow23: TcxDBEditorRow;
    cxDBEditorRow24: TcxDBEditorRow;
    cxCategoryRow6: TcxCategoryRow;
    cxDBEditorRow25: TcxDBEditorRow;
    cxDBEditorRow26: TcxDBEditorRow;
    cxDBEditorRow27: TcxDBEditorRow;
    cxDBEditorRow28: TcxDBEditorRow;
    tbssaldoipi: TcxTabSheet;
    vgrditregapuracao2: TcxDBVerticalGrid;
    cxCategoryRow1: TcxCategoryRow;
    cxDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow2: TcxDBEditorRow;
    cxDBEditorRow3: TcxDBEditorRow;
    cxDBEditorRow4: TcxDBEditorRow;
    cxDBEditorRow5: TcxDBEditorRow;
    cxDBEditorRow6: TcxDBEditorRow;
    cxDBEditorRow7: TcxDBEditorRow;
    cxDBEditorRow8: TcxDBEditorRow;
    cxCategoryRow2: TcxCategoryRow;
    cxDBEditorRow9: TcxDBEditorRow;
    cxDBEditorRow10: TcxDBEditorRow;
    cxDBEditorRow11: TcxDBEditorRow;
    cxDBEditorRow12: TcxDBEditorRow;
    cxDBEditorRow13: TcxDBEditorRow;
    cxCategoryRow3: TcxCategoryRow;
    cxDBEditorRow14: TcxDBEditorRow;
    vgrditregapuracao2DBEditorRow1: TcxDBEditorRow;
    vgrditregapuracao2DBEditorRow2: TcxDBEditorRow;
    vgrditregapuracao2DBEditorRow3: TcxDBEditorRow;
    tbsciapi: TcxTabSheet;
    sdsLP1ACIAPI: TSQLDataSet;
    cdslp1aciapi: TClientDataSet;
    dtslp1aciapi: TDataSource;
    cdssdsLP1ACIAPI: TDataSetField;
    grdlp1acipi: TcxGrid;
    tbvlp1aciapi: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    tbvlp1aciapiNUPARCELA: TcxGridDBColumn;
    tbvlp1aciapiVLAJUSTE: TcxGridDBColumn;
    tbvlp1aciapiNUDOCUMENTO: TcxGridDBColumn;
    tbvlp1aciapiDTEMISSAO: TcxGridDBColumn;
    tbvlp1aciapiNMPRODUTO: TcxGridDBColumn;
    sdsLP1ACIAPICDLP1A: TIntegerField;
    sdsLP1ACIAPICDITLP1ACIAPI: TIntegerField;
    sdsLP1ACIAPICDPRODUTO: TIntegerField;
    sdsLP1ACIAPICDUSUARIOI: TIntegerField;
    sdsLP1ACIAPICDUSUARIOA: TIntegerField;
    sdsLP1ACIAPICDCOMPUTADORI: TIntegerField;
    sdsLP1ACIAPICDCOMPUTADORA: TIntegerField;
    sdsLP1ACIAPINUDOCUMENTO: TIntegerField;
    sdsLP1ACIAPINUPARCELA: TIntegerField;
    sdsLP1ACIAPIVLAJUSTE: TFMTBCDField;
    sdsLP1ACIAPITSINCLUSAO: TSQLTimeStampField;
    sdsLP1ACIAPITSALTERACAO: TSQLTimeStampField;
    sdsLP1ACIAPIDTEMISSAO: TDateField;
    sdsLP1ACIAPINMPRODUTO: TStringField;
    cdslp1aciapiCDLP1A: TIntegerField;
    cdslp1aciapiCDLP1ACIAPI: TIntegerField;
    cdslp1aciapiCDPRODUTO: TIntegerField;
    cdslp1aciapiCDUSUARIOI: TIntegerField;
    cdslp1aciapiCDUSUARIOA: TIntegerField;
    cdslp1aciapiCDCOMPUTADORI: TIntegerField;
    cdslp1aciapiCDCOMPUTADORA: TIntegerField;
    cdslp1aciapiNUDOCUMENTO: TIntegerField;
    cdslp1aciapiNUPARCELA: TIntegerField;
    cdslp1aciapiVLAJUSTE: TFMTBCDField;
    cdslp1aciapiTSINCLUSAO: TSQLTimeStampField;
    cdslp1aciapiTSALTERACAO: TSQLTimeStampField;
    cdslp1aciapiDTEMISSAO: TDateField;
    cdslp1aciapiNMPRODUTO: TStringField;
    sdsicmsNUDOCUMENTO: TIntegerField;
    cdsicmsNUDOCUMENTO: TIntegerField;
    sdsipiNUDOCUMENTO: TIntegerField;
    cdsipiNUDOCUMENTO: TIntegerField;
    tbsinfadicional: TcxTabSheet;
    cxLabel1: TcxLabel;
    edtnufuncionarios: TcxDBSpinEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtvlfolhapagamento: TcxDBCalcEdit;
    edtvlcofins: TcxDBCalcEdit;
    cxLabel4: TcxLabel;
    edtqtenergia: TcxDBCalcEdit;
    sdsNUFUNCIONARIOS: TIntegerField;
    sdsVLFOLHAPAGAMENTO: TFMTBCDField;
    sdsVLCOFINS: TFMTBCDField;
    sdsQTENERGIA: TFloatField;
    cdsNUFUNCIONARIOS: TIntegerField;
    cdsVLFOLHAPAGAMENTO: TFMTBCDField;
    cdsVLCOFINS: TFMTBCDField;
    cdsQTENERGIA: TFloatField;
    pnl1: TPanel;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarSeparator5: TdxBarSeparator;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarSeparator6: TdxBarSeparator;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarSeparator7: TdxBarSeparator;
    dxBarButton29: TdxBarButton;
    Label2: TLabel;
    Label1: TLabel;
    Label19: TLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    spl1: TcxSplitter;
    gbxobservacao: TcxGroupBox;
    mem1: TcxDBMemo;
    gbxobservacaoicms: TcxGroupBox;
    spl3: TcxSplitter;
    mem3: TcxDBMemo;
    cdsitregapuracao2DSOBSERVACAO: TMemoField;
    sdsitregapuracao2DSOBSERVACAO: TMemoField;
    cdsitregapuracao1DSOBSERVACAO: TMemoField;
    sdsitregapuracao1DSOBSERVACAO: TMemoField;
    sdsipiCDCFOP: TIntegerField;
    cdsipiCDCFOP: TIntegerField;
    sdsicmsCDCFOP: TIntegerField;
    cdsicmsCDCFOP: TIntegerField;
    actExportarNFENotaFiscal: TAction;
    actExportar: TAction;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    actexportarnfeCompra: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    tbsECF: TcxTabSheet;
    tbsECF60M: TcxTabSheet;
    sdsreg60a: TSQLDataSet;
    dspreg60a: TDataSetProvider;
    cdsreg60a: TClientDataSet;
    dtsreg60a: TDataSource;
    grdreg60atbv: TcxGridDBTableView;
    grdreg60aLevel1: TcxGridLevel;
    grdreg60a: TcxGrid;
    sdsreg60aVLTOTALPARCIAL: TFMTBCDField;
    sdsreg60aDTEMISSAO: TDateField;
    sdsreg60aNUSERIE: TStringField;
    sdsreg60aSTALIQUOTA: TStringField;
    cdsreg60aVLTOTALPARCIAL: TFMTBCDField;
    cdsreg60aDTEMISSAO: TDateField;
    cdsreg60aNUSERIE: TStringField;
    cdsreg60aSTALIQUOTA: TStringField;
    grdreg60atbvVLTOTALPARCIAL: TcxGridDBColumn;
    grdreg60atbvDTEMISSAO: TcxGridDBColumn;
    grdreg60atbvNUSERIE: TcxGridDBColumn;
    grdreg60atbvSTALIQUOTA: TcxGridDBColumn;
    sdsreg60m: TSQLDataSet;
    dspreg60m: TDataSetProvider;
    cdsreg60m: TClientDataSet;
    dtsreg60m: TDataSource;
    grdreg60m: TcxGrid;
    tbvreg60m: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    sdsreg60mDTEMISSAO: TDateField;
    sdsreg60mNUSERIE: TStringField;
    sdsreg60mNUORDSEQ: TSmallintField;
    sdsreg60mMDDOCFISCAL: TStringField;
    sdsreg60mCOOINICIAL: TIntegerField;
    sdsreg60mCOOFINAL: TIntegerField;
    sdsreg60mNUREDUCAOZ: TIntegerField;
    sdsreg60mNUCRO: TSmallintField;
    sdsreg60mVLBRUTA: TFMTBCDField;
    sdsreg60mVLEQUIPAMENTO: TFMTBCDField;
    cdsreg60mDTEMISSAO: TDateField;
    cdsreg60mNUSERIE: TStringField;
    cdsreg60mNUORDSEQ: TSmallintField;
    cdsreg60mMDDOCFISCAL: TStringField;
    cdsreg60mCOOINICIAL: TIntegerField;
    cdsreg60mCOOFINAL: TIntegerField;
    cdsreg60mNUREDUCAOZ: TIntegerField;
    cdsreg60mNUCRO: TSmallintField;
    cdsreg60mVLBRUTA: TFMTBCDField;
    cdsreg60mVLEQUIPAMENTO: TFMTBCDField;
    tbvreg60mDTEMISSAO: TcxGridDBColumn;
    tbvreg60mNUSERIE: TcxGridDBColumn;
    tbvreg60mNUORDSEQ: TcxGridDBColumn;
    tbvreg60mMDDOCFISCAL: TcxGridDBColumn;
    tbvreg60mCOOINICIAL: TcxGridDBColumn;
    tbvreg60mCOOFINAL: TcxGridDBColumn;
    tbvreg60mNUREDUCAOZ: TcxGridDBColumn;
    tbvreg60mNUCRO: TcxGridDBColumn;
    tbvreg60mVLBRUTA: TcxGridDBColumn;
    tbvreg60mVLEQUIPAMENTO: TcxGridDBColumn;
    edtcodigo: TcxTextEdit;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsitufp1aCDUSUARIOI: TIntegerField;
    sdsitufp1aCDUSUARIOA: TIntegerField;
    sdsitufp1aCDCOMPUTADORI: TIntegerField;
    sdsitufp1aCDCOMPUTADORA: TIntegerField;
    sdsitufp1aTSINCLUSAO: TSQLTimeStampField;
    sdsitufp1aTSALTERACAO: TSQLTimeStampField;
    sdsitapufCDUSUARIOI: TIntegerField;
    sdsitapufCDUSUARIOA: TIntegerField;
    sdsitapufCDCOMPUTADORI: TIntegerField;
    sdsitapufCDCOMPUTADORA: TIntegerField;
    sdsitapufTSINCLUSAO: TSQLTimeStampField;
    sdsitapufTSALTERACAO: TSQLTimeStampField;
    sdsitregapuracao1CDUSUARIOI: TIntegerField;
    sdsitregapuracao1CDUSUARIOA: TIntegerField;
    sdsitregapuracao1CDCOMPUTADORI: TIntegerField;
    sdsitregapuracao1CDCOMPUTADORA: TIntegerField;
    sdsitregapuracao1TSINCLUSAO: TSQLTimeStampField;
    sdsitregapuracao1TSALTERACAO: TSQLTimeStampField;
    sdsitregapuracao2CDUSUARIOI: TIntegerField;
    sdsitregapuracao2CDUSUARIOA: TIntegerField;
    sdsitregapuracao2CDCOMPUTADORI: TIntegerField;
    sdsitregapuracao2CDCOMPUTADORA: TIntegerField;
    sdsitregapuracao2TSINCLUSAO: TSQLTimeStampField;
    sdsitregapuracao2TSALTERACAO: TSQLTimeStampField;
    sdsLP1ACIAPICDITSAIDA: TIntegerField;
    sdsLP1ACIAPICDITENTRADA: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsitufp1aCDUSUARIOI: TIntegerField;
    cdsitufp1aCDUSUARIOA: TIntegerField;
    cdsitufp1aCDCOMPUTADORI: TIntegerField;
    cdsitufp1aCDCOMPUTADORA: TIntegerField;
    cdsitufp1aTSINCLUSAO: TSQLTimeStampField;
    cdsitufp1aTSALTERACAO: TSQLTimeStampField;
    cdsitregapuracao1CDUSUARIOI: TIntegerField;
    cdsitregapuracao1CDUSUARIOA: TIntegerField;
    cdsitregapuracao1CDCOMPUTADORI: TIntegerField;
    cdsitregapuracao1CDCOMPUTADORA: TIntegerField;
    cdsitregapuracao1TSINCLUSAO: TSQLTimeStampField;
    cdsitregapuracao1TSALTERACAO: TSQLTimeStampField;
    cdsitregapuracao2CDUSUARIOI: TIntegerField;
    cdsitregapuracao2CDUSUARIOA: TIntegerField;
    cdsitregapuracao2CDCOMPUTADORI: TIntegerField;
    cdsitregapuracao2CDCOMPUTADORA: TIntegerField;
    cdsitregapuracao2TSINCLUSAO: TSQLTimeStampField;
    cdsitregapuracao2TSALTERACAO: TSQLTimeStampField;
    cdslp1aciapiCDITSAIDA: TIntegerField;
    cdslp1aciapiCDITENTRADA: TIntegerField;
    grditufp1aDBTableView1VLISENTAS: TcxGridDBColumn;
    sdsitufp1aVLISENTAS: TFMTBCDField;
    cdsitufp1aVLISENTAS: TFMTBCDField;
    sdsicmsVLBASEICMSSUBTRIB: TFMTBCDField;
    sdsicmsVLICMSSUBTRIB: TFMTBCDField;
    sdsicmsALICMSSUBTRIB: TFloatField;
    cdsicmsVLBASEICMSSUBTRIB: TFMTBCDField;
    cdsicmsVLICMSSUBTRIB: TFMTBCDField;
    cdsicmsALICMSSUBTRIB: TFloatField;
    grdicmsDBTableView1VLBASEICMSSUBTRIB: TcxGridDBColumn;
    grdicmsDBTableView1VLICMSSUBTRIB: TcxGridDBColumn;
    grdicmsDBTableView1ALICMSSUBTRIB: TcxGridDBColumn;
    actexportarcte: TAction;
    dxBarButton30: TdxBarButton;
    sdsVLTRIBUTADACIAPI: TFMTBCDField;
    sdsVLSAIDACIAPI: TFMTBCDField;
    sdsPRCOEFICIENTECIAPI: TFloatField;
    cdsVLTRIBUTADACIAPI: TFMTBCDField;
    cdsVLSAIDACIAPI: TFMTBCDField;
    cdsPRCOEFICIENTECIAPI: TFloatField;
    sdsLP1ACIAPIVLICMS: TFMTBCDField;
    sdsLP1ACIAPIVLDEDUCAO: TFMTBCDField;
    sdsLP1ACIAPIVLSALDO: TFMTBCDField;
    sdsLP1ACIAPIBOATIVADO: TStringField;
    cdslp1aciapiVLICMS: TFMTBCDField;
    cdslp1aciapiVLDEDUCAO: TFMTBCDField;
    cdslp1aciapiVLSALDO: TFMTBCDField;
    cdslp1aciapiBOATIVADO: TStringField;
    tbvlp1aciapiVLICMS: TcxGridDBColumn;
    tbvlp1aciapiVLDEDUCAO: TcxGridDBColumn;
    tbvlp1aciapiVLSALDO: TcxGridDBColumn;
    tbvlp1aciapiBOATIVADO: TcxGridDBColumn;
    actadicionar: TAction;
    sdsLP1ACIAPICDDIGITADO: TStringField;
    cdslp1aciapiCDDIGITADO: TStringField;
    tbvlp1aciapiCDDIGITADO: TcxGridDBColumn;
    Bevel1: TBevel;
    Label3: TLabel;
    txtvltributadaciapi: TcxDBLabel;
    lbl1: TLabel;
    txt1: TcxDBLabel;
    lbl2: TLabel;
    txt2: TcxDBLabel;
    sdsCDTPESCRITURACAO: TIntegerField;
    cdsCDTPESCRITURACAO: TIntegerField;
    tbsPISCOFINS: TcxTabSheet;
    lbltpcobranca: TLabel;
    cbxcdtpescrituracao: TcxDBLookupComboBox;
    lbl3: TLabel;
    cbxcdindicadorsituacaoespecial: TcxDBLookupComboBox;
    sdsCDINDICADORSITUACAOESPECIAL: TIntegerField;
    cdsCDINDICADORSITUACAOESPECIAL: TIntegerField;
    edtnureciboanterior: TcxDBTextEdit;
    lblnureciboanterior: TLabel;
    sdsNURECIBOANTERIOR: TStringField;
    cdsNURECIBOANTERIOR: TStringField;
    btnefdpiscofins: TcxButton;
    actefdpiscofins: TAction;
    dxBarSubItem4: TdxBarSubItem;
    actexportarpdf: TAction;
    actexportarctepdf: TAction;
    dxBarButton31: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    actexportarxml: TAction;
    tbsativo: TcxTabSheet;
    grdlp1aativopiscofins: TcxGrid;
    cxGridLevel5: TcxGridLevel;
    sdslp1aativopiscofins: TSQLDataSet;
    cdslp1aativopiscofins: TClientDataSet;
    dtslp1aativopiscofins: TDataSource;
    sdslp1aativopiscofinsCDLP1AATIVOPISCOFINS: TIntegerField;
    sdslp1aativopiscofinsCDUSUARIOI: TIntegerField;
    sdslp1aativopiscofinsCDUSUARIOA: TIntegerField;
    sdslp1aativopiscofinsCDCOMPUTADORI: TIntegerField;
    sdslp1aativopiscofinsCDCOMPUTADORA: TIntegerField;
    sdslp1aativopiscofinsCDLP1A: TIntegerField;
    sdslp1aativopiscofinsTSINCLUSAO: TSQLTimeStampField;
    sdslp1aativopiscofinsTSALTERACAO: TSQLTimeStampField;
    sdslp1aativopiscofinsNUPARCELA: TIntegerField;
    sdslp1aativopiscofinsVLBASEPIS: TFMTBCDField;
    sdslp1aativopiscofinsVLPIS: TFMTBCDField;
    sdslp1aativopiscofinsVLBASECOFINS: TFMTBCDField;
    sdslp1aativopiscofinsVLCOFINS: TFMTBCDField;
    sdslp1aativopiscofinsVLDEDUCAO: TFMTBCDField;
    sdslp1aativopiscofinsVLSALDO: TFMTBCDField;
    cdssdslp1aativopiscofins: TDataSetField;
    cdslp1aativopiscofinsCDLP1AATIVOPISCOFINS: TIntegerField;
    cdslp1aativopiscofinsCDUSUARIOI: TIntegerField;
    cdslp1aativopiscofinsCDUSUARIOA: TIntegerField;
    cdslp1aativopiscofinsCDCOMPUTADORI: TIntegerField;
    cdslp1aativopiscofinsCDCOMPUTADORA: TIntegerField;
    cdslp1aativopiscofinsCDLP1A: TIntegerField;
    cdslp1aativopiscofinsTSINCLUSAO: TSQLTimeStampField;
    cdslp1aativopiscofinsTSALTERACAO: TSQLTimeStampField;
    cdslp1aativopiscofinsNUPARCELA: TIntegerField;
    cdslp1aativopiscofinsVLBASEPIS: TFMTBCDField;
    cdslp1aativopiscofinsVLPIS: TFMTBCDField;
    cdslp1aativopiscofinsVLBASECOFINS: TFMTBCDField;
    cdslp1aativopiscofinsVLCOFINS: TFMTBCDField;
    cdslp1aativopiscofinsVLDEDUCAO: TFMTBCDField;
    cdslp1aativopiscofinsVLSALDO: TFMTBCDField;
    sdslp1aativopiscofinsNMPRODUTO: TStringField;
    cdslp1aativopiscofinsNMPRODUTO: TStringField;
    dxBarLargeButton1: TdxBarLargeButton;
    actefditem: TAction;
    grdlp1aativopiscofinsDBBandedTableView1: TcxGridDBBandedTableView;
    grdlp1aativopiscofinsDBBandedTableView1CDBCCALCULOCREDITO: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1CDPISCOFINSBEMATIVO: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1CDPISCOFINSBEMORIGEM: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1NUSTPIS: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1NUSTCOFINS: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1NUPARCELA: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1VLBASEPIS: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1ALPIS: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1VLPIS: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1VLBASECOFINS: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1ALCOFINS: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1VLCOFINS: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1CDPISCOFINSBEMUTILIZACAO: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1NUDOCUMENTO: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1DTEMISSAO: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1VLDEDUCAO: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1VLSALDO: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1CDPRODUTO: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1NMPRODUTO: TcxGridDBBandedColumn;
    grdlp1aativopiscofinsDBBandedTableView1VLENTRADA: TcxGridDBBandedColumn;
    actimpativopiscofins: TAction;
    dxBarButton32: TdxBarButton;
    sdslp1aativopiscofinsCDATIVOPISCOFINS: TIntegerField;
    sdslp1aativopiscofinsCDBCCALCULOCREDITO: TStringField;
    sdslp1aativopiscofinsCDPISCOFINSBEMATIVO: TStringField;
    sdslp1aativopiscofinsCDPISCOFINSBEMORIGEM: TIntegerField;
    sdslp1aativopiscofinsCDPISCOFINSBEMUTILIZACAO: TIntegerField;
    sdslp1aativopiscofinsCDPRODUTO: TIntegerField;
    sdslp1aativopiscofinsNUSTPIS: TStringField;
    sdslp1aativopiscofinsNUSTCOFINS: TStringField;
    sdslp1aativopiscofinsALPIS: TFloatField;
    sdslp1aativopiscofinsALCOFINS: TFloatField;
    sdslp1aativopiscofinsNUDOCUMENTO: TIntegerField;
    sdslp1aativopiscofinsDTEMISSAO: TDateField;
    sdslp1aativopiscofinsNMFORNECEDOR: TStringField;
    cdslp1aativopiscofinsCDATIVOPISCOFINS: TIntegerField;
    cdslp1aativopiscofinsCDBCCALCULOCREDITO: TStringField;
    cdslp1aativopiscofinsCDPISCOFINSBEMATIVO: TStringField;
    cdslp1aativopiscofinsCDPISCOFINSBEMORIGEM: TIntegerField;
    cdslp1aativopiscofinsCDPISCOFINSBEMUTILIZACAO: TIntegerField;
    cdslp1aativopiscofinsCDPRODUTO: TIntegerField;
    cdslp1aativopiscofinsNUSTPIS: TStringField;
    cdslp1aativopiscofinsNUSTCOFINS: TStringField;
    cdslp1aativopiscofinsALPIS: TFloatField;
    cdslp1aativopiscofinsALCOFINS: TFloatField;
    cdslp1aativopiscofinsNUDOCUMENTO: TIntegerField;
    cdslp1aativopiscofinsDTEMISSAO: TDateField;
    cdslp1aativopiscofinsNMFORNECEDOR: TStringField;
    sdslp1aativopiscofinsVLENTRADA: TFMTBCDField;
    cdslp1aativopiscofinsVLENTRADA: TFMTBCDField;
    actimprimirdemonstrativopiscofins: TAction;
    dxBarButton33: TdxBarButton;
    actspedcte: TAction;
    btnefdpiscofins1: TcxButton;
    actefdpiscofinscte: TAction;
    actexportarseried: TAction;
    dxBarButton34: TdxBarButton;
    bmg1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    actfiltraricms: TAction;
    actagruparicms: TAction;
    actexcelicms: TAction;
    btnfiltroicms: TdxBarButton;
    btnagruparicms: TdxBarButton;
    dxBarButton37: TdxBarButton;
    bmg1Bar2: TdxBar;
    dxBarDockControl2: TdxBarDockControl;
    btnfiltroipi: TdxBarButton;
    btnagruparipi: TdxBarButton;
    dxBarButton38: TdxBarButton;
    actfiltraripi: TAction;
    actagruparipi: TAction;
    actexcelipi: TAction;
    sdsLP1ACIAPICDTPCIAPI: TIntegerField;
    cdslp1aciapiCDTPCIAPI: TIntegerField;
    tbvlp1aciapiCDTPCIAPI: TcxGridDBColumn;
    sdsLP1ACIAPIVLICMSSUBTRIB: TFMTBCDField;
    sdsLP1ACIAPIVLICMSFRETE: TFMTBCDField;
    sdsLP1ACIAPIVLICMSDIFALIQUOTA: TFMTBCDField;
    sdsLP1ACIAPINUITEM: TIntegerField;
    cdslp1aciapiVLICMSSUBTRIB: TFMTBCDField;
    cdslp1aciapiVLICMSFRETE: TFMTBCDField;
    cdslp1aciapiVLICMSDIFALIQUOTA: TFMTBCDField;
    cdslp1aciapiNUITEM: TIntegerField;
    tbvlp1aciapiVLICMSSUBTRIB: TcxGridDBColumn;
    tbvlp1aciapiVLICMSFRETE: TcxGridDBColumn;
    tbvlp1aciapiVLICMSDIFALIQUOTA: TcxGridDBColumn;
    tbvlp1aciapiNUITEM: TcxGridDBColumn;
    sdsLP1ACIAPICDINDIVIDUALBEM: TStringField;
    sdsLP1ACIAPICDTPMERCADORIAATIVO: TIntegerField;
    cdslp1aciapiCDINDIVIDUALBEM: TStringField;
    cdslp1aciapiCDTPMERCADORIAATIVO: TIntegerField;
    tbvlp1aciapiCDTPMERCADORIAATIVO: TcxGridDBColumn;
    sdsLP1ACIAPICDINDICADOREMITENTE: TIntegerField;
    sdsLP1ACIAPINUDOCFISCALICMS: TStringField;
    sdsLP1ACIAPINUSERIE: TStringField;
    sdsLP1ACIAPINUCHAVENFE: TStringField;
    cdslp1aciapiCDINDICADOREMITENTE: TIntegerField;
    cdslp1aciapiNUDOCFISCALICMS: TStringField;
    cdslp1aciapiNUSERIE: TStringField;
    cdslp1aciapiNUCHAVENFE: TStringField;
    tbvlp1aciapiCDINDIVIDUALBEM: TcxGridDBColumn;
    tbvlp1aciapiCDINDICADOREMITENTE: TcxGridDBColumn;
    tbvlp1aciapiNUDOCFISCALICMS: TcxGridDBColumn;
    tbvlp1aciapiNUSERIE: TcxGridDBColumn;
    tbvlp1aciapiNUCHAVENFE: TcxGridDBColumn;
    sdsLP1ACIAPINMFORNECEDOR: TStringField;
    sdsLP1ACIAPINMCLIENTE: TStringField;
    cdslp1aciapiNMFORNECEDOR: TStringField;
    cdslp1aciapiNMCLIENTE: TStringField;
    tbvlp1aciapiNMFORNECEDOR: TcxGridDBColumn;
    tbvlp1aciapiNMCLIENTE: TcxGridDBColumn;
    actexportarnfepdf: TAction;
    dxBarButton35: TdxBarButton;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    btnexportar: TdxBarLargeButton;
    pumexportar: TdxBarPopupMenu;
    btnspedcte: TcxButton;
    sdsipiALIQUOTA: TFloatField;
    cdsipiALIQUOTA: TFloatField;
    sdsicmsALIQUOTA: TFloatField;
    cdsicmsALIQUOTA: TFloatField;
    tbvlp1aciapiCDCLIENTE: TcxGridDBColumn;
    tbvlp1aciapiCDFORNECEDOR: TcxGridDBColumn;
    sdsCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    sdsitufp1aCDEMPRESA: TLargeintField;
    sdsitapufCDEMPRESA: TLargeintField;
    sdsitregapuracao1CDEMPRESA: TLargeintField;
    sdsitregapuracao2CDEMPRESA: TLargeintField;
    sdsLP1ACIAPICDEMPRESA: TLargeintField;
    sdsLP1ACIAPICDFORNECEDOR: TLargeintField;
    sdsLP1ACIAPICDCLIENTE: TLargeintField;
    sdslp1aativopiscofinsCDEMPRESA: TLargeintField;
    sdsreg60mCDEMPRESA: TLargeintField;
    sdsreg60aCDEMPRESA: TLargeintField;
    cdsitufp1aCDEMPRESA: TLargeintField;
    cdsitapufCDEMPRESA: TLargeintField;
    cdsitregapuracao1CDEMPRESA: TLargeintField;
    cdsitregapuracao2CDEMPRESA: TLargeintField;
    cdslp1aciapiCDEMPRESA: TLargeintField;
    cdslp1aciapiCDFORNECEDOR: TLargeintField;
    cdslp1aciapiCDCLIENTE: TLargeintField;
    cdsreg60aCDEMPRESA: TLargeintField;
    cdsreg60mCDEMPRESA: TLargeintField;
    cdslp1aativopiscofinsCDEMPRESA: TLargeintField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Char);
    procedure actImprimirExecute(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actabrirsaidaExecute(Sender: TObject);
    procedure actabrirEntradaExecute(Sender: TObject);
    procedure actgerarsintegraExecute(Sender: TObject);
    procedure actimprimirapuracaoicmslaserExecute(Sender: TObject);
    procedure actimprimirapuracaoipilaserExecute(Sender: TObject);
    procedure actimprimirlivrofiscalentradaicmsipip1aemitentelaserExecute(Sender: TObject);
    procedure actimprimirtermoLaserExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actimprimirlivrofiscalentradaicmsipi1aLaserExecute(Sender: TObject);
    procedure actimprimirlivrofiscalentradaipi1aLaserExecute(Sender: TObject);
    procedure actimprimirlivrofiscalentradaicms1aLaserExecute(Sender: TObject);
    procedure actimprimirlivrofiscalemitentesentradaLaserExecute(Sender: TObject);
    procedure actimprimirlivrofiscalemitentessaidasLaserExecute(Sender: TObject);
    procedure actimprimirlivrofiscalsaidaicms2aLaserExecute(Sender: TObject);
    procedure actimprimirlivrofiscalsaidaipi2aLaserExecute(Sender: TObject);
    procedure actimprimirlivrofiscalsaidaicmsipi2aLaserExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdicmsDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actefdExecute(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cdsitregapuracao2VLDRESSARCIMENTOValidate(Sender: TField);
    procedure cdsitregapuracao1VLCOUTROSValidate(Sender: TField);
    procedure actExportarNFENotaFiscalExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure actexportarnfeCompraExecute(Sender: TObject);
    procedure pm1Popup(Sender: TObject);
    procedure cdsAfterOpen(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure actexportarcteExecute(Sender: TObject);
    procedure tbvlp1aciapiCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cdslp1aciapiBeforePost(DataSet: TDataSet);
    procedure cdslp1aciapiNewRecord(DataSet: TDataSet);
    procedure cxGridDBTableView3CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdslp1aciapiCDDIGITADOValidate(Sender: TField);
    procedure cdslp1aciapiVLICMSValidate(Sender: TField);
    procedure cdslp1aciapiVLDEDUCAOValidate(Sender: TField);
    procedure cdslp1aciapiAfterScroll(DataSet: TDataSet);
    procedure actefdpiscofinsExecute(Sender: TObject);
    procedure actexportarctepdfExecute(Sender: TObject);
    procedure actexportarxmlExecute(Sender: TObject);
    procedure cdslp1aativopiscofinsCDDIGITADOValidate(Sender: TField);
    procedure cdslp1aativopiscofinsBeforePost(DataSet: TDataSet);
    procedure cdslp1aativopiscofinsALCOFINSValidate(Sender: TField);
    procedure cdslp1aativopiscofinsALPISValidate(Sender: TField);
    procedure actimpativopiscofinsExecute(Sender: TObject);
    procedure actimprimirdemonstrativopiscofinsExecute(Sender: TObject);
    procedure actspedcteExecute(Sender: TObject);
    procedure actefdpiscofinscteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actexportarseriedExecute(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actfiltraricmsExecute(Sender: TObject);
    procedure actagruparicmsExecute(Sender: TObject);
    procedure actexcelicmsExecute(Sender: TObject);
    procedure actfiltraripiExecute(Sender: TObject);
    procedure actagruparipiExecute(Sender: TObject);
    procedure actexcelipiExecute(Sender: TObject);
    procedure tbvlp1aciapiCDFORNECEDORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvlp1aciapiCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdslp1aciapiCDCLIENTEValidate(Sender: TField);
    procedure cdslp1aciapiCDFORNECEDORValidate(Sender: TField);
    procedure actexportarnfepdfExecute(Sender: TObject);
    procedure cdsreg60aPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure cdsreg60mPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure cdsreg60aBeforePost(DataSet: TDataSet);
    procedure cdsreg60mNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure cdslp1aciapiDTEMISSAOValidate(Sender: TField);
  private
    livrofiscal : tlivrofiscal;
    cliente     : TCliente;
    fornecedor  : TFornecedor;
    codigoinsercao : string;
    procedure ImprimirTermo;
    procedure carregarlivroemitenteslaser(tipo: string);
    procedure AbrirTabelas;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

const
  tbl      = 'lp1a';
  exibe    = 'Livro Fiscal';
  artigoI  = 'o';
var
  frmlivro: Tfrmlivro;

implementation

uses uDtmMain,
  uMain,
  //ulivroimprimirreglivro,
  classesintegra,
  //livroImprimirTermoAbertura,
  //UntImprimirLivroEmitentesEntradaSaidaLaser,
  ulocalizarproduto,
  classeefdpiscofins,
  uimprimirrelatoriopadrao,
  usaidaexportaralterdatasaca,
  ulocalizarCliente,
  ulocalizarfornecedor;

{$R *.DFM}

const
  texto = 'Informe o código do tipo do livro'#13+
          '1 - Apuração de ICMS'#13+
          '2 - Apuração de IPI'#13+
          '3 - Registro de Entrada'#13+
          '4 - Registro de Saída'#13+
          '5 - Registro de Inventário de Estoque'#13;

function Tfrmlivro.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
  if not result then
  begin
    exit;
  end;
  result := true;
end;

procedure Tfrmlivro.AbrirTabelas;
begin
  cbxcdtpescrituracao.Properties.ListSource := abrir_tabela(_tp + _escrituracao);
  cbxcdindicadorsituacaoespecial.Properties.ListSource := abrir_tabela(_indicador + _situacao + _especial);
  TcxLookupComboBoxProperties(tbvlp1aciapiCDTPCIAPI.Properties).ListSource := abrir_tabela(_tp + _ciapi);
  TcxLookupComboBoxProperties(tbvlp1aciapiCDTPMERCADORIAATIVO.Properties).ListSource := abrir_tabela(_tp + _mercadoria + _ativo);
  TcxLookupComboBoxProperties(tbvlp1aciapiNUDOCFISCALICMS.Properties).ListSource := abrir_tabela(_docfiscalicms);
  TcxLookupComboBoxProperties(tbvlp1aciapiCDINDICADOREMITENTE.Properties).ListSource := abrir_tabela(_indicador + _emitente);
end;

procedure Tfrmlivro.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmlivro.actNovoExecute(Sender: TObject);
var
  cd : integer;
begin
  if RetornaSQLData('select max(dtfinal) from lp1a') >= DtBanco then
  begin
    MessageDlg('Livro não pode ser gerado acima da data atual.', mtInformation, [mbOK], 0);
    abort;
  end;
  cd := livrofiscal.InserirLivro;
  if cd <> 0 then
  begin
    abrir(cd);
  end;
end;

procedure Tfrmlivro.actSalvarExecute(Sender: TObject);
begin
  cdsreg60a.ApplyUpdates(0);
  cdsreg60m.ApplyUpdates(0);
  registro.Salvar;
end;

procedure Tfrmlivro.actExcluirExecute(Sender: TObject);
var
  cdativopiscofins, vldeducao : array of string;
  x, i : integer;
begin
  if RetornaSQLInteger('select count(*) from lp1a where cdempresa='+empresa.cdempresa.tostring+' and dtinicio>'+GetDtBanco(cdsDTINICIO.AsDateTime)) > 0 then
  begin
    MessageDlg('Livro não pode ser excluído porque existem livro com data superior.'#13'Excluia os livros com data superior antes de excluir este livro.', mtinformation, [mbok], 0);
    Abort;
  end;
  if cdslp1aativopiscofins.RecordCount > 0 then
  begin
    i := cdslp1aativopiscofins.RecordCount;
    SetLength(cdativopiscofins, i);
    SetLength(vldeducao, i);
    cdslp1aativopiscofins.First;
    while not cdslp1aativopiscofins.Eof do
    begin
      cdativopiscofins[cdslp1aativopiscofins.RecNo-1] := cdslp1aativopiscofinsCDATIVOPISCOFINS.AsString;
      vldeducao       [cdslp1aativopiscofins.RecNo-1] := getcurrencys(cdslp1aativopiscofinsVLDEDUCAO.AsCurrency);
      cdslp1aativopiscofins.Next;
    end;
    if registro.excluir then
    begin
      for x := 0 to i -1 do
      begin
        ExecutaSQL('update ativopiscofins set nuparcela=nuparcela-1,vlsaldo=vlsaldo+'+VLDEDUCAO[x]+' where cdempresa='+empresa.cdempresa.tostring+' and cdativopiscofins='+CDATIVOPISCOFINS[x]);
      end
    end;
  end
  else
  begin
    registro.Excluir;
  end;
end;

procedure Tfrmlivro.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmlivro.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure Tfrmlivro.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmlivro.edtCodigoKeyPress(Sender: TObject; var Key: Char);
var
  codigo : integer;
begin
  TQForm.KeyPressControl(key);
  if (key = #13) and (TEdit(sender).text <> '') then
  begin
    codigoinsercao := edtcodigo.text;
    codigo         := strtoint(edtcodigo.text);
    if not abrir(codigo) then
    begin
      if actnovo.Enabled then
      begin
        if messagedlg('Código '+codigoinsercao+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
        begin
          actNovoExecute(sender)
        end
        else
        begin
          edtcodigo.text := cdsCDLP1A.asstring;
        end;
      end
      else
      begin
        MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [codigoinsercao, maiuscula(exibe)]), mterror, [mbok], 0);
        edtcodigo.text := cdsCDLP1A.asstring;
      end;
    end;
    edtcodigo.selectall;
  end;
end;

procedure Tfrmlivro.edtCodigoEnter(Sender: TObject);
begin
  edtcodigo.selectall;
end;

procedure Tfrmlivro.FormShow(Sender: TObject);
begin
  livrofiscal                := tlivrofiscal.create;
  tbsPISCOFINS.TabVisible    := Empresa.tpregime <> _s;
  actefditem.Visible         := empresa.livro.bospeditem;
  actspedcte.Visible         := empresa.livro.bospedcte;
  actefdpiscofinscte.Visible := empresa.livro.bospedctepiscofins;
  spt.CloseSplitter;
  pgc.ActivePage := tbsipi;
  pgc.ActivePage := tbsicms;
  //pgc.ActivePageIndex := 0;
  vgrditregapuracao1.LayoutStyle := lsBandsView;
  vgrditregapuracao1.LayoutStyle := lsmultirecordview;
  vgrditregapuracao2.LayoutStyle := lsBandsView;
  vgrditregapuracao2.LayoutStyle := lsmultirecordview;
  vgrditregapuracao3.LayoutStyle := lsBandsView;
  vgrditregapuracao3.LayoutStyle := lsmultirecordview;
  pnl.caption                    := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmlivro.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmlivro.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmlivro.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmlivro.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmlivro.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure Tfrmlivro.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmlivro.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmlivro.actabrirsaidaExecute(Sender: TObject);
begin
  //
end;

procedure Tfrmlivro.actabrirEntradaExecute(Sender: TObject);
begin
  //
end;

procedure Tfrmlivro.actgerarsintegraExecute(Sender: TObject);
begin
  if MessageDlg('Deseja gerar o arquivo sintegra deste livro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    exit;
  end;
  Gerar_sintegra(cdsCDLP1A.AsString, cdsDTINICIO.AsDateTime, cdsDTFINAL.AsDateTime);
end;

procedure Tfrmlivro.actimprimirapuracaoicmslaserExecute(Sender: TObject);
//var
  //nufolha : string;
begin
  ImpimirRelatorioPadrao1(69, cds.fieldbyname(_cdempresa).asstring, cdsCDLP1A.AsString);
  {nufolha   := inputbox('Folha inicial', 'Informe o número da folha inicial', _1);
  if nufolha <> '' then
  begin
    imprimirlivroapuracao(cdsDTINICIO.AsDateTime, cdsDTFINAL.AsDateTime, uppercase(_ICMS), strtoint(nufolha))
  end
  else
  begin
    imprimirlivroapuracao(cdsDTINICIO.AsDateTime, cdsDTFINAL.AsDateTime, uppercase(_ICMS), 0);
  end;}
end;

procedure Tfrmlivro.actimprimirapuracaoipilaserExecute(Sender: TObject);
//var
  //nufolha : string;
begin
  ImpimirRelatorioPadrao1(70, cds.fieldbyname(_cdempresa).asstring, cdsCDLP1A.AsString);
  {nufolha   := inputbox('Folha inicial', 'Informe o número da folha inicial', _1);
  if nufolha <> '' then
  begin
    imprimirlivroapuracao(cdsDTINICIO.AsDateTime, cdsDTFINAL.AsDateTime, UpperCase(_IPI), strtoint(nufolha))
  end
  else
  begin
    imprimirlivroapuracao(cdsDTINICIO.AsDateTime, cdsDTFINAL.AsDateTime, UpperCase(_IPI), 0);
  end;}
end;

procedure Tfrmlivro.actimprimirlivrofiscalentradaicmsipip1aemitentelaserExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(59, cds.fieldbyname(_CDEMPRESA).AsString, cdsCDLP1A.AsString);
end;

procedure Tfrmlivro.ImprimirTermo;
var
  dtis, dtfs, nuordem, nupaginaf, cdtplivro : string;
  dti, dtf : TDate;
begin
  cdtplivro := inputbox('Tipo de Livro', texto, '');
  if cdtplivro = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo+' '+_de+' '+_livro]), mtinformation, [mbok], 0);
    exit;
  end;
  if (cdtplivro <> _1) and (cdtplivro <> _2) and (cdtplivro <> _3) and (cdtplivro <> _4) and (cdtplivro <> _5) then
  begin
    messagedlg('Código do tipo do livro inválido!'#13'Digite um código entre 1 e 5 para imprimir.', mtInformation, [mbok], 0);
    exit;
  end;

  nuordem := inputbox('Número de Ordem', 'Informe o número da ordem', _1);
  if nuordem = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_de+' '+_ordem]), mtinformation, [mbok], 0);
    exit;
  end;
  try
    nuordem := inttostr(strtoint(nuordem));
    if strtoint(nuordem) < 1 then
    begin
      messagedlg('Número de ordem dever ser um número inteiro positivo.', mtInformation, [mbok], 0);
      exit;
    end;
  except
    messagedlg('Número de ordem deve ser um número inteiro.', mtinformation, [mbok], 0);
    exit;
  end;

  nupaginaf := inputbox('Número da última página', 'Informe o número da última página', '');
  if nupaginaf = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_da+' '+__ultima+' '+__pagina]), mtinformation, [mbok], 0);
    exit;
  end;

  try
    nupaginaf := inttostr(strtoint(nupaginaf));
    if strtoint(nupaginaf) < 1 then
    begin
      messagedlg('Número da página dever ser um número inteiro positivo.', mtInformation, [mbok], 0);
      exit;
    end;
  except
    messagedlg('Número da página deve ser um número inteiro.', mtinformation, [mbok], 0);
    exit;
  end;

  dtis := inputbox('Data de início', 'Informe a data de início', '');
  if dtis = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__inicio]), mtinformation, [mbok], 0);
    exit;
  end;

  try
    dti := strtodate(dtis);
  except
    messagedlg('Data inicial inválida.', mtinformation, [mbok], 0);
    exit;
  end;

  dtfs := inputbox('Data de término', 'Informe a data de término', '');
  if dtfs = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__termino]), mtinformation, [mbok], 0);
    exit;
  end;

  try
    dtf := strtodate(dtfs)
  except
    messagedlg('Data do término inválida.', mtinformation, [mbok], 0);
    exit;
  end;
    //
  if dtf < dti then
  begin
    messagedlg('Data do término deve ser maior do que a data de início.', mtInformation, [mbok], 0);
    exit;
  end;
  //if (cdtplivro = _3) or (cdtplivro = _4) then
  //begin
    //RegistrarLivro(nuordem, dti, dtf);
  //end;
  //imprimirlivroabertura    (dti,dtf,StrToInt(cdtplivro), nupaginaf, nuordem);
end;

procedure Tfrmlivro.actimprimirtermoLaserExecute(Sender: TObject);
begin
  ImprimirTermo;
end;

procedure Tfrmlivro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlivro.actimprimirlivrofiscalentradaicmsipi1aLaserExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(58, cds.fieldbyname(_CDEMPRESA).AsString, cdsCDLP1A.AsString);
end;

procedure Tfrmlivro.actimprimirlivrofiscalentradaipi1aLaserExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(57, cds.fieldbyname(_CDEMPRESA).AsString, cdsCDLP1A.AsString);
end;

procedure Tfrmlivro.actimprimirlivrofiscalentradaicms1aLaserExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(56, cds.fieldbyname(_CDEMPRESA).AsString, cdsCDLP1A.AsString);
end;

procedure Tfrmlivro.actimprimirlivrofiscalemitentesentradaLaserExecute(Sender: TObject);
begin
   carregarlivroemitenteslaser(_E);
end;

procedure Tfrmlivro.actimprimirlivrofiscalemitentessaidasLaserExecute(Sender: TObject);
begin
   carregarlivroemitenteslaser(_S);
end;

procedure Tfrmlivro.actimprimirlivrofiscalsaidaicms2aLaserExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(468, cdsCDLP1A.AsString);
end;

procedure Tfrmlivro.actimprimirlivrofiscalsaidaipi2aLaserExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(469, cdsCDLP1A.AsString);
end;

procedure Tfrmlivro.actimprimirlivrofiscalsaidaicmsipi2aLaserExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(470, cdsCDLP1A.AsString);
end;

procedure Tfrmlivro.carregarlivroemitenteslaser(tipo: string);
var
  nufolha : string;
  linha : TStrings;
begin
  linha     := tstringlist.create;
  try
    nufolha := inputbox('Folha inicial', 'Informe o número da folha inicial', _1);
    {$IFDEF VER210}
    if nufolha <> '' then imprimirlivroemitentesentradasaidalaser(tipo, linha, cdsCDLP1A.AsString, strtoint(nufolha))
                     else imprimirlivroemitentesentradasaidalaser(tipo, linha, cdsCDLP1A.AsString);
    {$ENDIF}
  finally
    freeandnil(linha);
  end;
end;

procedure Tfrmlivro.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(_livro, frmmain.tlbnew);
end;

procedure Tfrmlivro.FormDestroy(Sender: TObject);
begin
  livrofiscal.free;
  registro.Destroy;
  cliente.destroy;
  fornecedor.destroy;
end;

procedure Tfrmlivro.grdicmsDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item.DataBinding.DefaultCaption = uppercase(_NUDOCUMENTO) then
  begin
    if not cdsicmsCDSAIDA.isnull then
    begin
      if actabrirsaida.Enabled then
      begin
        frmmain.Abrirformulario(_saida, cdsicmsCDSAIDA.asinteger);
      end;
    end
    else if (not cdsicmsCDENTRADA.isnull) and actabrirentrada.Enabled then
    begin
      frmmain.Abrirformulario(_entrada, cdsicmsCDENTRADA.asinteger);
    end;
  end;
end;

procedure Tfrmlivro.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure Tfrmlivro.actefdExecute(Sender: TObject);
var
  livrofiscaldigital : TLivroFiscalDigital;
  linha : TStrings;
  savedialog : TSaveDialog;
begin
  if (empresa.endereco.sguf = _mg) and (cdsNUFUNCIONARIOS.AsInteger <= 0) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_de+' '+__funcionario]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsinfadicional;
    edtnufuncionarios.SetFocus;
    exit;
  end;
  if MessageDlg('Deseja gerar o arquivo Sped Fiscal (EFD) deste livro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    exit;
  end;
  linha              := tstringlist.create;
  savedialog         := tsavedialog.Create(nil);
  LivroFiscalDigital := TLivroFiscalDigital.Create(linha);
  try
    LivroFiscalDigital.Gerar(cdsCDLP1A.asinteger, TAction(sender).Name='actefditem');
    savedialog.FileName := 'Sped Fiscal '+empresa.nmempresa+' '+FormatDateTime(_yyyymm, cdsDTINICIO.AsDateTime)+'.'+_txt;
    if savedialog.Execute then
    begin
      linha.SaveToFile(savedialog.FileName);
      showmessage('Arquivo salvo');
    end;
  finally
    freeandnil(LivroFiscalDigital);
    freeandnil(linha);
    FreeAndNil(savedialog);
  end;
end;

procedure Tfrmlivro.cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item.DataBinding.DefaultCaption = uppercase(_NUDOCUMENTO) then
  begin
    if not cdsipiCDSAIDA.isnull then
    begin
      if actabrirsaida.Enabled then
      begin
        frmmain.Abrirformulario(_saida, cdsipiCDSAIDA.asinteger);
      end;
    end
    else if (not cdsipiCDENTRADA.isnull) and actabrirentrada.Enabled then
    begin
      frmmain.Abrirformulario(_entrada, cdsipiCDENTRADA.asinteger);
    end;
  end;
end;

procedure Tfrmlivro.cdsitregapuracao2VLDRESSARCIMENTOValidate(Sender: TField);
begin
  cdsitregapuracao2VLDTOTAL.AsCurrency := cdsitregapuracao2VLDEBITO.AsCurrency + cdsitregapuracao2VLDOUTROS.AsCurrency +
                                          cdsitregapuracao2VLDRESSARCIMENTO.AsCurrency +cdsitregapuracao2VLDESTORNO.AsCurrency;
  cdsitregapuracao2VLCSUBTOTAL.ascurrency    := cdsitregapuracao2vlcredito.ascurrency +cdsitregapuracao2VLCOUTROS.ascurrency + cdsitregapuracao2VLCESTORNO.ascurrency;
  cdsitregapuracao2VLCTOTAL.ascurrency       := cdsitregapuracao2VLCSUBTOTAL.ascurrency +cdsitregapuracao2VLCSALDOCREDOR.ascurrency;
  cdsitregapuracao2VLSALDODEVEDOR.ascurrency := cdsitregapuracao2VLDTOTAL.ascurrency -cdsitregapuracao2VLCTOTAL.ascurrency;
  if cdsitregapuracao2VLSALDODEVEDOR.ascurrency < 0 then
  begin
    cdsitregapuracao2VLSALDODEVEDOR.ascurrency := 0;
  end;
  cdsitregapuracao2VLIMPOSTO.ascurrency      := 0;
  cdsitregapuracao2VLSALDOCREDOR.ascurrency  := 0;
  if cdsitregapuracao2VLDTOTAL.ascurrency > cdsitregapuracao2VLDEDUCOES.ascurrency + cdsitregapuracao2VLCTOTAL.ascurrency then
  begin
    cdsitregapuracao2VLIMPOSTO.ascurrency := cdsitregapuracao2VLdTOTAL.ascurrency - cdsitregapuracao2VLDEDUCOES.ascurrency - cdsitregapuracao2VLCTOTAL.ascurrency
  end
  else if cdsitregapuracao2vlctotal.ascurrency + cdsitregapuracao2VLDEDUCOES.ascurrency > cdsitregapuracao2VLDTOTAL.ascurrency then
  begin
    cdsitregapuracao2VLSALDOCREDOR.ascurrency := cdsitregapuracao2VLCTOTAL.ascurrency + cdsitregapuracao2VLDEDUCOES.ascurrency - cdsitregapuracao2VLDTOTAL.ascurrency;
  end;
end;

procedure Tfrmlivro.cdsitregapuracao1VLCOUTROSValidate(Sender: TField);
begin
  cdsitregapuracao1vldtotal.AsCurrency := cdsitregapuracao1VLDEBITO.AsCurrency + cdsitregapuracao1VLDOUTROS.AsCurrency +
                                          cdsitregapuracao1VLDRESSARCIMENTO.AsCurrency +cdsitregapuracao1VLDESTORNO.AsCurrency;
  cdsitregapuracao1VLCSUBTOTAL.ascurrency := cdsitregapuracao1vlcredito.ascurrency + cdsitregapuracao1VLCOUTROS.ascurrency + cdsitregapuracao1VLCESTORNO.ascurrency;
  cdsitregapuracao1VLCTOTAL.ascurrency    := cdsitregapuracao1VLCSUBTOTAL.ascurrency + cdsitregapuracao1VLCSALDOCREDOR.ascurrency;
  cdsitregapuracao1VLSALDODEVEDOR.ascurrency := cdsitregapuracao1VLDTOTAL.ascurrency - cdsitregapuracao1VLCTOTAL.ascurrency;
  if cdsitregapuracao1VLSALDODEVEDOR.ascurrency < 0 then
  begin
    cdsitregapuracao1VLSALDODEVEDOR.ascurrency := 0;
  end;
  cdsitregapuracao1VLIMPOSTO.ascurrency      := 0;
  cdsitregapuracao1VLSALDOCREDOR.ascurrency  := 0;
  if cdsitregapuracao1VLDTOTAL.ascurrency > cdsitregapuracao1VLDEDUCOES.ascurrency + cdsitregapuracao1VLCTOTAL.ascurrency then
  begin
    cdsitregapuracao1VLIMPOSTO.ascurrency := cdsitregapuracao1VLdTOTAL.ascurrency - cdsitregapuracao1VLDEDUCOES.ascurrency - cdsitregapuracao1VLCTOTAL.ascurrency
  end
  else if cdsitregapuracao1vlctotal.ascurrency + cdsitregapuracao1VLDEDUCOES.ascurrency > cdsitregapuracao1VLDTOTAL.ascurrency then
  begin
    cdsitregapuracao1VLSALDOCREDOR.ascurrency := cdsitregapuracao1VLCTOTAL.ascurrency + cdsitregapuracao1VLDEDUCOES.ascurrency - cdsitregapuracao1VLDTOTAL.ascurrency;
  end;
end;

procedure Tfrmlivro.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmlivro.actExportarNFENotaFiscalExecute(Sender: TObject);
var
  diretorio : string;
begin
  diretorio := QRotinas.getdiretorio;
  if diretorio = '' then
  begin
    exit;
  end;
  if cliente.ExportarNFE(diretorio, cdsDTINICIO.asdatetime, cdsDTFINAL.asdatetime, false) then messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0)
                                                                                          else messagedlg('Não há nota fiscal para ser exportada'#13'dentro da faixa de datas informada.', mtInformation, [mbok], 0);
end;

procedure Tfrmlivro.actExportarExecute(Sender: TObject);
begin
  btnexportar.DropDown(false);
end;

procedure Tfrmlivro.actexportarnfeCompraExecute(Sender: TObject);
var
  fornecedor : TFornecedor;
  diretorio : string;
begin
  fornecedor := tfornecedor.create;
  try
    diretorio := QRotinas.getdiretorio;
    if diretorio = '' then
    begin
      exit;
    end;
    if fornecedor.ExportarNFE(diretorio, cdsdtinicio.asdatetime, cdsdtfinal.asdatetime, false) then
    begin
      messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0);
    end
    else
    begin
      messagedlg('Não há nota fiscal para ser exportada'#13'dentro da faixa de datas informada.', mtInformation, [mbok], 0);
    end;
  finally
    FreeAndNil(fornecedor);
  end;
end;

procedure Tfrmlivro.pm1Popup(Sender: TObject);
begin
  ShowMessage('on popup');
end;

procedure Tfrmlivro.cdsAfterOpen(DataSet: TDataSet);
begin
  cdsreg60a.Close;
  cdsreg60a.FetchParams;
  cdsreg60a.Params[0].AsString := FormatDateTime(_mm_dd_yyyy, cdsdtinicio.AsDateTime);
  cdsreg60a.Params[1].AsString := FormatDateTime(_mm_dd_yyyy, cdsdtfinal.AsDateTime);
  cdsreg60a.open;

  cdsreg60m.Close;
  cdsreg60m.FetchParams;
  cdsreg60m.Params[0].AsString := FormatDateTime(_mm_dd_yyyy, cdsdtinicio.AsDateTime);
  cdsreg60m.Params[1].AsString := FormatDateTime(_mm_dd_yyyy, cdsdtfinal.AsDateTime);
  cdsreg60m.open;
end;

procedure Tfrmlivro.actexportarcteExecute(Sender: TObject);
var
  diretorio : string;
  resultado2, resultado3 : boolean;
begin
  diretorio := QRotinas.getdiretorio;
  if diretorio = '' then
  begin
    exit;
  end;
  resultado2 := cliente.Exportarcte(diretorio, cdsDTINICIO.asdatetime, cdsDTFINAL.asdatetime, _2, false);
  resultado3 := cliente.Exportarcte(diretorio, cdsDTINICIO.asdatetime, cdsDTFINAL.asdatetime, _3, false);
  if resultado2 or resultado3 then
  begin
    messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0)
  end
  else
  begin
    messagedlg('Não há conhecimento para ser exportada'#13'dentro da faixa de datas informado.', mtInformation, [mbok], 0);
  end;
end;

procedure Tfrmlivro.tbvlp1aciapiCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item.DataBinding.DefaultCaption = uppercase(_NUDOCUMENTO) then
  begin
    if not cdslp1aciapiCDITSAIDA.isnull then
    begin
      if actabrirsaida.Enabled then
      begin
        frmmain.Abrirformulario(_saida, qregistro.InteirodoCodigo(_itsaida, cdslp1aciapiCDITSAIDA.AsInteger, _cdsaida));
      end;
    end
    else if (not cdslp1aciapiCDITENTRADA.isnull) and actabrirentrada.Enabled then
    begin
      frmmain.Abrirformulario(_entrada, qregistro.InteirodoCodigo(_itentrada, cdslp1aciapiCDITentrada.AsInteger, _cdentrada));
    end;
  end;
end;

procedure Tfrmlivro.cdslp1aciapiBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdslp1aciapi);
end;

procedure Tfrmlivro.cdslp1aciapiNewRecord(DataSet: TDataSet);
begin
  cdslp1aciapiCDLP1ACIAPI.AsString := GerarCodigo(_lp1aciapi);
  cdslp1aciapiNUPARCELA.AsInteger  := 1;
  cdslp1aciapiNUITEM.AsInteger     := 1;
  cdslp1aciapiBOATIVADO.AsString   := _s;
  cdslp1aciapiVLAJUSTE.AsCurrency  := 0;
  cdslp1aciapiVLICMS.AsCurrency    := 0;
  cdslp1aciapiVLDEDUCAO.AsCurrency := 0;
  cdslp1aciapiVLSALDO.AsCurrency   := 0;
  cdslp1aciapiVLICMSSUBTRIB.AsCurrency     := 0;
  cdslp1aciapiVLICMSFRETE.AsCurrency       := 0;
  cdslp1aciapiVLICMSDIFALIQUOTA.AsCurrency := 0;
end;

procedure Tfrmlivro.cxGridDBTableView3CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tbl, cdslp1aciapi, false);
end;

procedure Tfrmlivro.cdslp1aciapiCDDIGITADOValidate(Sender: TField);
var
  produto : TProduto;
begin
  produto := tproduto.create;
  try
    produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
    if produto.cdproduto = 0 then
    begin
      abort;
    end;
    produto.Select(produto.cdproduto);
    if (produto.cdproduto <> 0) and (cdslp1aciapiCDPRODUTO.AsInteger <> produto.cdproduto) then
    begin
      cdslp1aciapiCDPRODUTO.AsInteger := produto.cdproduto;
    end;
    if produto.boativar <> _s then
    begin
      MessageDlg('Produto '+sender.asstring+' - '+produto.nmproduto+#13'está desativado.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if produto.cdtpitem <> _08 then
    begin
      MessageDlg('O tipo do item do produto deve ser ATIVO IMOBILIARIO.', mtInformation, [mbOK], 0);
      Abort;
    end;
    produto.checkContaATivo;
    if produto.cdcontaativo = '' then
    begin

    end;
    cdslp1aciapiNMPRODUTO.asstring := produto.nmproduto;
  finally
    freeandnil(produto);
  end;
end;

procedure Tfrmlivro.cdslp1aciapiVLICMSValidate(Sender: TField);
begin
  cdslp1aciapiVLAJUSTE.AsCurrency  := (cdslp1aciapiVLICMS.AsCurrency + cdslp1aciapiVLICMSSUBTRIB.AsCurrency + cdslp1aciapiVLICMSFRETE.AsCurrency + cdslp1aciapiVLICMSDIFALIQUOTA.AsCurrency)* cdsPRCOEFICIENTECIAPI.AsFloat * (1/48);
  cdslp1aciapiVLDEDUCAO.AsCurrency := cdslp1aciapiVLAJUSTE.AsCurrency;
end;

procedure Tfrmlivro.cdslp1aciapiVLDEDUCAOValidate(Sender: TField);
begin
  cdslp1aciapiVLSALDO.AsCurrency := (cdslp1aciapiVLICMS.AsCurrency + cdslp1aciapiVLICMSSUBTRIB.AsCurrency + cdslp1aciapiVLICMSFRETE.AsCurrency + cdslp1aciapiVLICMSDIFALIQUOTA.AsCurrency) - cdslp1aciapiVLDEDUCAO.AsCurrency;
end;

procedure Tfrmlivro.cdslp1aciapiAfterScroll(DataSet: TDataSet);
begin
  tbvlp1aciapi.OptionsData.Deleting       := not ((not cdslp1aciapiCDITSAIDA.IsNull) or (not cdslp1aciapiCDITENTRADA.IsNull));
  tbvlp1aciapiNUDOCUMENTO.Options.Editing := not ((not cdslp1aciapiCDITSAIDA.IsNull) or (not cdslp1aciapiCDITENTRADA.IsNull));
  tbvlp1aciapiDTEMISSAO.Options.Editing   := not ((not cdslp1aciapiCDITSAIDA.IsNull) or (not cdslp1aciapiCDITENTRADA.IsNull));
  tbvlp1aciapiCDDIGITADO.Options.Editing  := not ((not cdslp1aciapiCDITSAIDA.IsNull) or (not cdslp1aciapiCDITENTRADA.IsNull));
  tbvlp1aciapiNUPARCELA.Options.Editing   := not ((not cdslp1aciapiCDITSAIDA.IsNull) or (not cdslp1aciapiCDITENTRADA.IsNull));
  tbvlp1aciapiVLICMS.Options.Editing      := not ((not cdslp1aciapiCDITSAIDA.IsNull) or (not cdslp1aciapiCDITENTRADA.IsNull));
  tbvlp1aciapiVLDEDUCAO.Options.Editing   := not ((not cdslp1aciapiCDITSAIDA.IsNull) or (not cdslp1aciapiCDITENTRADA.IsNull));
  tbvlp1aciapiVLSALDO.Options.Editing     := not ((not cdslp1aciapiCDITSAIDA.IsNull) or (not cdslp1aciapiCDITENTRADA.IsNull));
  tbvlp1aciapiVLAJUSTE.Options.Editing    := not ((not cdslp1aciapiCDITSAIDA.IsNull) or (not cdslp1aciapiCDITENTRADA.IsNull));
end;

procedure Tfrmlivro.actefdpiscofinsExecute(Sender: TObject);
var
  livrofiscaldigital : TPisCofins;
  diretorio : string;
begin
  if MessageDlg('Deseja gerar o arquivo Sped PIS/COFINS deste livro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    exit;
  end;
  diretorio := QRotinas.getdiretorio;
  if diretorio = '' then
  begin
    Exit;
  end;
  LivroFiscalDigital := TPisCofins.Create;
  try
    if LivroFiscalDigital.Gerar(cdsCDLP1A.asinteger, diretorio) then
    begin
      MessageDlg('Sped PIS/COFINS gerado.', mtInformation, [mbOK], 0) ;
    end;
  finally
    freeandnil(LivroFiscalDigital);
  end;
end;

procedure Tfrmlivro.actexportarctepdfExecute(Sender: TObject);
var
  diretorio : string;
  cte : TCte;
begin
  cte := TCte.create;
  try
    diretorio := QRotinas.getdiretorio;
    if diretorio = '' then
    begin
      exit;
    end;
    if cte.Exportarpdf(diretorio, cdsDTINICIO.asdatetime, cdsDTFINAL.asdatetime, _cliente) then messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0)
                                                                                           else messagedlg('Não há conhecimento para ser exportada'#13'dentro da faixa de datas informado.', mtInformation, [mbok], 0);
  finally
    FreeAndNil(cte);
  end;
end;

procedure Tfrmlivro.actexportarxmlExecute(Sender: TObject);
begin
//
end;

procedure Tfrmlivro.cdslp1aativopiscofinsCDDIGITADOValidate(Sender: TField);
var
  produto : TProduto;
begin
  produto := tproduto.create;
  try
    produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
    if produto.cdproduto = 0 then
    begin
      Abort;
    end;
    produto.Select(produto.cdproduto);
    if (produto.cdproduto <> 0) and (cdslp1aativopiscofinsCDPRODUTO.AsInteger <> produto.cdproduto) then
    begin
      cdslp1aativopiscofinsCDPRODUTO.AsInteger := produto.cdproduto;
    end;
    if produto.boativar <> _s then
    begin
      MessageDlg('Produto '+sender.asstring+' - '+produto.nmproduto+#13'está desativado.', mtInformation, [mbOK], 0);
      Abort;
    end;
    cdslp1aativopiscofinsNMPRODUTO.asstring := produto.nmproduto;
  finally
    freeandnil(produto);
  end;
end;

procedure Tfrmlivro.cdslp1aativopiscofinsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdslp1aativopiscofins);
end;

procedure Tfrmlivro.cdslp1aativopiscofinsALCOFINSValidate(Sender: TField);
begin
  if cdslp1aativopiscofinsALCOFINS.AsFloat < 0 then
  begin
    messagedlg('Alíquota de COFINS menor ou igual a zero.'#13'Digite um valor maior do que zero para continuar.', mtinformation, [mbok], 0);
    cdslp1aativopiscofinsALCOFINS.FocusControl;
    abort;
  end;
  cdslp1aativopiscofinsVLCOFINS.AsCurrency := cdslp1aativopiscofinsVLBASECOFINS.AsCurrency * cdslp1aativopiscofinsALCOFINS.AsFloat / 100;
end;

procedure Tfrmlivro.cdslp1aativopiscofinsALPISValidate(Sender: TField);
begin
  if cdslp1aativopiscofinsALPIS.AsFloat < 0 then
  begin
    messagedlg('Alíquota de PIS menor ou igual a zero.'#13'Digite um valor maior do que zero para continuar.', mtinformation, [mbok], 0);
    cdslp1aativopiscofinsALPIS.FocusControl;
    abort;
  end;
  cdslp1aativopiscofinsVLPIS.AsCurrency := cdslp1aativopiscofinsVLBASEPIS.AsCurrency * cdslp1aativopiscofinsALPIS.AsFloat / 100;
end;

procedure Tfrmlivro.actimpativopiscofinsExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(417, cdsCDLP1A.AsString);
end;

procedure Tfrmlivro.actimprimirdemonstrativopiscofinsExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(425, cdsCDLP1A.AsString);
end;

procedure Tfrmlivro.actspedcteExecute(Sender: TObject);
var
  livrofiscaldigital : TLivroFiscalDigital;
  linha : TStrings;
  savedialog : TSaveDialog;
  filename : string;
begin
  if MessageDlg('Deseja gerar o arquivo Sped Fiscal deste livro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    exit;
  end;
  MessageDlg('Selecione o arquivo de origem do Sped Fiscal.', mtInformation, [mbOK], 0);
  if not QRotinas.getfilename(filename) then
  begin
    exit;
  end;
  linha              := tstringlist.create;
  savedialog         := tsavedialog.Create(nil);
  LivroFiscalDigital := TLivroFiscalDigital.Create(linha);
  try
    LivroFiscalDigital.GerarJuncao(cdsCDLP1A.asinteger, filename);
    savedialog.FileName := 'Sped Fiscal '+empresa.nmempresa+' '+FormatDateTime(_yyyymm, cdsDTINICIO.AsDateTime)+'.'+_txt;
    if savedialog.Execute then
    begin
      linha.SaveToFile(savedialog.FileName);
      showmessage('Arquivo salvo');
    end;
  finally
    freeandnil(LivroFiscalDigital);
    linha.Free;
    savedialog.Free;
  end;
end;

procedure Tfrmlivro.actefdpiscofinscteExecute(Sender: TObject);
var
  livrofiscaldigital : TPisCofins;
  diretorio, filename : string;
begin
  if MessageDlg('Deseja gerar o arquivo Sped PIS/COFINS deste livro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    exit;
  end;
  if not QRotinas.getfilename(filename) then // Abre a tela de diálogo
  begin
    exit;
  end;
  diretorio := QRotinas.getdiretorio;
  if diretorio = '' then
  begin  
    Exit;
  end;
  LivroFiscalDigital := TPisCofins.Create;
  try
    if LivroFiscalDigital.GerarJuncao(cdsCDLP1A.asinteger, diretorio, filename) then
    begin
      MessageDlg('Sped PIS/COFINS gerado.', mtInformation, [mbOK], 0) ;
    end;
  finally
    freeandnil(LivroFiscalDigital);
  end;
end;

procedure Tfrmlivro.FormCreate(Sender: TObject);
begin
  cliente    := tcliente.create;
  fornecedor := TFornecedor.create;
  AbrirTabelas;
  registro := tregistro.create(Self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  actexportarseried.Visible := RegistroExiste(_serie, _nudocfiscalicms+'=''02''');
  actexportarcte.Visible    := empresa.faturamento.cte.bo;
  actexportarctepdf.Visible := empresa.faturamento.cte.bo;
end;

procedure Tfrmlivro.actexportarseriedExecute(Sender: TObject);
begin
  if empresa.livro.cdalterdata = '' then
  begin
    MessageDlg('Código da empresa no Alterdata não está definido no cadastro empresa.'#13'Favor alterar antes de continuar.', mtInformation, [mbok], 0);
    abort;
  end;
  Exportar_Serie_D_Alterdata(cdsDTINICIO.AsDateTime, cdsDTFINAL.AsDateTime);
end;

procedure Tfrmlivro.cdsAfterScroll(DataSet: TDataSet);
begin
  actExcluir.Enabled := not RegistroExiste(_lp1a, _dtinicio+'>'+GetDtBanco(cdsDTINICIO.AsDateTime));
  actExcluir.Visible := actexcluir.Enabled;
end;

procedure Tfrmlivro.actfiltraricmsExecute(Sender: TObject);
begin
  grdicmsDBTableView1.FilterRow.Visible := btnfiltroicms.down;
end;

procedure Tfrmlivro.actagruparicmsExecute(Sender: TObject);
begin
  grdicmsDBTableView1.OptionsView.GroupByBox := btnagruparicms.down;
end;

procedure Tfrmlivro.actexcelicmsExecute(Sender: TObject);
begin
  exportarexcel(grdicms);
end;

procedure Tfrmlivro.actfiltraripiExecute(Sender: TObject);
begin
  cxGridDBTableView1.FilterRow.Visible := btnfiltroipi.down;
end;

procedure Tfrmlivro.actagruparipiExecute(Sender: TObject);
begin
  cxGridDBTableView1.OptionsView.GroupByBox := btnagruparipi.down;
end;

procedure Tfrmlivro.actexcelipiExecute(Sender: TObject);
begin
  exportarexcel(grdipi);
end;

procedure Tfrmlivro.tbvlp1aciapiCDFORNECEDORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : LargeInt;
begin
  codigo := Localizarfornecedor;
  if codigo <> 0 then
  begin
    cdslp1aciapi.FieldByName(_CDfornecedor).AsLargeInt := codigo;
  end;
end;

procedure Tfrmlivro.tbvlp1aciapiCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : LargeInt;
begin
  codigo := Localizarcliente;
  if codigo <> 0 then
  begin
    cdslp1aciapi.FieldByName(_CDCLIENTE).AsLargeInt := codigo;
  end;
end;

procedure Tfrmlivro.cdslp1aciapiCDCLIENTEValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdslp1aciapiNMCLIENTE.Clear;
    Exit;
  end;
  if not cliente.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdslp1aciapiNMCLIENTE.AsString := cliente.nmcliente;
end;

procedure Tfrmlivro.cdslp1aciapiCDFORNECEDORValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdslp1aciapiNMfornecedor.Clear;
    Exit;
  end;
  if fornecedor.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_fornecedor)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdslp1aciapiNMfornecedor.AsString := fornecedor.nmfornecedor;
end;

procedure Tfrmlivro.cdslp1aciapiDTEMISSAOValidate(Sender: TField);
begin
  if sender.AsDateTime > cdsDTFINAL.AsDateTime then
  begin
    messagedlg('Data de emissão não pode ser maior do que a data final do livro.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
end;

procedure Tfrmlivro.actexportarnfepdfExecute(Sender: TObject);
var
  diretorio : string;
  saida : Tsaida;
begin
  saida := tsaida.create;
  try
    diretorio := QRotinas.getdiretorio;
    if diretorio = '' then
    begin
      exit;
    end;
    if saida.Exportarpdf(diretorio, cdsDTINICIO.asdatetime, cdsDTFINAL.asdatetime) then
    begin
      messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0)
    end
    else
    begin
      messagedlg('Não há nota fiscal para ser exportada'#13'dentro da faixa de datas informado.', mtInformation, [mbok], 0);
    end;
  finally
    FreeAndNil(saida);
  end;
end;

procedure Tfrmlivro.cdsreg60aPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  if UpperCase(e.Message) = 'KEY VIOLATION.' then
  begin
    MessageDlg('Violação de Chave.', mtInformation, [mbOK], 0);
    Action := daAbort;
  end;
end;

procedure Tfrmlivro.cdsreg60mPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  if UpperCase(e.Message) = 'KEY VIOLATION.' then
  begin
    MessageDlg('Violação de Chave.', mtInformation, [mbOK], 0);
    Action := daAbort;
  end;
end;

procedure Tfrmlivro.cdsreg60aBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName(_cdempresa).AsLargeInt := empresa.cdempresa;
end;

procedure Tfrmlivro.cdsreg60mNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName(_cdempresa).AsLargeInt := empresa.cdempresa;
end;

end.

unit uLocacao;

interface

uses
  System.Actions, System.UITypes,
  forms, windows, Classes, Spin, Mask, Buttons, Controls, ToolWin, ExtCtrls,ActnList,
  sysutils, types, dialogs, graphics, ComCtrls, StdCtrls, Menus, OleServer,
  FMTBcd, DB, DBClient, Provider, sqlexpr,  Grids,
  unumero, uconstantes, uanotacao, ustrings, urotinas, uregistroib,
  uregistro, uExportarExcel, udatahora, udlgRichEdit,
  unovoproduto,
  classecliente, classeempresa, classeretornasql, classeconsiste,
  classeexecutasql, classegerar, classeusuario, classeregistrainformacao, classeform,
  classeproduto, udbmemo, classearquivo, classeequipamento, classelocacao,
  classeaplicacao, classeRegistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, dxBar, cxClasses,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxSpinEdit, cxTimeEdit, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxCurrencyEdit, cxLabel, cxDBLabel, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxBlobEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxButtonEdit, cxCalc, cxButtons, cxPCdxBarPopupMenu, cxPC, DBCtrls, cxNavigator,
  dxBarBuiltInMenu, ulocalizarFuncionario;

type
  Tfrmlocacao= class(TForm)
    pnl: TPanel;
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    gbxCliente: TGroupBox;
    lblcdcliente: TLabel;
    Label3: TLabel;
    gbxEquipamento: TGroupBox;
    lblcdequipamento: TLabel;
    Label14: TLabel;
    lblstlocacao: TLabel;
    pnldesconto: TPanel;
    actabrircliente: TAction;
    actabrirequipamento: TAction;
    gbxpreventrega2: TGroupBox;
    actfechar: TAction;
    lbltpordserv: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    lblvlacessorio: TLabel;
    lbldtprevista: TLabel;
    actbaixarestoque: TAction;
    actentradaestoque: TAction;
    rceequipamento: TcxRichEdit;
    lblvlcaucao: TLabel;
    lblvlacrescimo: TLabel;
    Label45: TLabel;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnNovo: TdxBarLargeButton;
    dxbrlrgbtnEditar: TdxBarLargeButton;
    dxbrlrgbtnAbrir: TdxBarLargeButton;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtncancelar: TdxBarLargeButton;
    dxbrlrgbtnexcluir: TdxBarLargeButton;
    dxbrsprtr1: TdxBarSeparator;
    dxbrlrgbtnprimeiro: TdxBarLargeButton;
    dxbrlrgbtnanterior: TdxBarLargeButton;
    dxbrlrgbtnproximo: TdxBarLargeButton;
    dxbrlrgbtnultimo: TdxBarLargeButton;
    dxbrsprtr2: TdxBarSeparator;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    sds: TSQLDataSet;
    sdsitlocacaoacessorio: TSQLDataSet;
    sdshlocacaoequipamento: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsitlocacaoacessorio: TClientDataSet;
    cdshlocacaoequipamento: TClientDataSet;
    dts: TDataSource;
    dtsitlocacaoacessorio: TDataSource;
    dtshlocacaoequipamento: TDataSource;
    gbxclientecoresponsavel: TGroupBox;
    lblcdclientecoresponsavel: TLabel;
    lblentregue: TLabel;
    lblrecebido: TLabel;
    dts1: TDataSource;
    sdsCDLOCACAO: TIntegerField;
    sdsCDEQUIPAMENTO: TIntegerField;
    sdsCDSTLOCACAO: TIntegerField;
    sdsCDTPLOCACAO: TIntegerField;
    sdsCDUF: TIntegerField;
    sdsCDMUNICIPIO: TIntegerField;
    sdsCDFUNCIONARIO: TIntegerField;
    sdsCDFUNCIONARIOENTREGUE: TIntegerField;
    sdsVLLOCACAO: TFMTBCDField;
    sdsVLBAIXA: TFMTBCDField;
    sdsVLSALDO: TFMTBCDField;
    sdsVLRECEBIDO: TFMTBCDField;
    sdsVLACESSORIO: TFMTBCDField;
    sdsVLEQUIPAMENTO: TFMTBCDField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsVLDEVOLUCAO: TFMTBCDField;
    sdsVLABATIMENTO: TFMTBCDField;
    sdsVLDEDUCAO: TFMTBCDField;
    sdsVLACRESCIMO: TFMTBCDField;
    sdsDSOBSERVACAO: TBlobField;
    sdsDTINICIO: TDateField;
    sdsDTPREVISTA: TDateField;
    sdsDTFINAL: TDateField;
    sdsHRINICIO: TTimeField;
    sdsHRFINAL: TTimeField;
    sdsNUDIAS: TIntegerField;
    sdsDSENDERECO: TStringField;
    sdsDSNUMERO: TStringField;
    sdsDSCOMPLEMENTO: TStringField;
    sdsNUCXPOSTAL: TStringField;
    sdsNMBAIRRO: TStringField;
    sdsNUCEP: TStringField;
    sdsNUFONE1: TStringField;
    sdsNUFONE2: TStringField;
    sdsNUFONE3: TStringField;
    sdsNUFAX: TStringField;
    sdsNMCONTATO: TStringField;
    sdsVLCAUCAO: TFMTBCDField;
    sdsNUNFDEVOLUCAO: TIntegerField;
    sdsNUNFSAIDA: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDLOCACAO: TIntegerField;
    cdsCDEQUIPAMENTO: TIntegerField;
    cdsCDSTLOCACAO: TIntegerField;
    cdsCDTPLOCACAO: TIntegerField;
    cdsCDUF: TIntegerField;
    cdsCDMUNICIPIO: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    cdsCDFUNCIONARIOENTREGUE: TIntegerField;
    cdsVLLOCACAO: TFMTBCDField;
    cdsVLBAIXA: TFMTBCDField;
    cdsVLSALDO: TFMTBCDField;
    cdsVLRECEBIDO: TFMTBCDField;
    cdsVLACESSORIO: TFMTBCDField;
    cdsVLEQUIPAMENTO: TFMTBCDField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsVLDEVOLUCAO: TFMTBCDField;
    cdsVLABATIMENTO: TFMTBCDField;
    cdsVLDEDUCAO: TFMTBCDField;
    cdsVLACRESCIMO: TFMTBCDField;
    cdsDSOBSERVACAO: TBlobField;
    cdsDTINICIO: TDateField;
    cdsDTPREVISTA: TDateField;
    cdsDTFINAL: TDateField;
    cdsHRINICIO: TTimeField;
    cdsHRFINAL: TTimeField;
    cdsNUDIAS: TIntegerField;
    cdsDSENDERECO: TStringField;
    cdsDSNUMERO: TStringField;
    cdsDSCOMPLEMENTO: TStringField;
    cdsNUCXPOSTAL: TStringField;
    cdsNMBAIRRO: TStringField;
    cdsNUCEP: TStringField;
    cdsNUFONE1: TStringField;
    cdsNUFONE2: TStringField;
    cdsNUFONE3: TStringField;
    cdsNUFAX: TStringField;
    cdsNMCONTATO: TStringField;
    cdsVLCAUCAO: TFMTBCDField;
    cdsNUNFDEVOLUCAO: TIntegerField;
    cdsNUNFSAIDA: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    sdsitlocacaoacessorioCDITLOCACAOACESSORIO: TIntegerField;
    sdsitlocacaoacessorioCDLOCACAO: TIntegerField;
    sdsitlocacaoacessorioCDPRODUTO: TIntegerField;
    sdsitlocacaoacessorioCDSTITLOCACAOACESSORIO: TIntegerField;
    sdsitlocacaoacessorioCDUSUARIOI: TIntegerField;
    sdsitlocacaoacessorioCDUSUARIOA: TIntegerField;
    sdsitlocacaoacessorioCDCOMPUTADORI: TIntegerField;
    sdsitlocacaoacessorioCDCOMPUTADORA: TIntegerField;
    sdsitlocacaoacessorioCDDIGITADO: TStringField;
    sdsitlocacaoacessorioQTITEM: TIntegerField;
    sdsitlocacaoacessorioVLITLOCACAOACESSORIO: TFMTBCDField;
    sdsitlocacaoacessorioTSINCLUSAO: TSQLTimeStampField;
    sdsitlocacaoacessorioTSALTERACAO: TSQLTimeStampField;
    cdssdsitlocacaoacessorio: TDataSetField;
    cdsitlocacaoacessorioCDITLOCACAOACESSORIO: TIntegerField;
    cdsitlocacaoacessorioCDLOCACAO: TIntegerField;
    cdsitlocacaoacessorioCDPRODUTO: TIntegerField;
    cdsitlocacaoacessorioCDSTITLOCACAOACESSORIO: TIntegerField;
    cdsitlocacaoacessorioCDUSUARIOI: TIntegerField;
    cdsitlocacaoacessorioCDUSUARIOA: TIntegerField;
    cdsitlocacaoacessorioCDCOMPUTADORI: TIntegerField;
    cdsitlocacaoacessorioCDCOMPUTADORA: TIntegerField;
    cdsitlocacaoacessorioCDDIGITADO: TStringField;
    cdsitlocacaoacessorioQTITEM: TIntegerField;
    cdsitlocacaoacessorioVLITLOCACAOACESSORIO: TFMTBCDField;
    cdsitlocacaoacessorioTSINCLUSAO: TSQLTimeStampField;
    cdsitlocacaoacessorioTSALTERACAO: TSQLTimeStampField;
    sdshlocacaoequipamentoCDLOCACAO: TIntegerField;
    sdshlocacaoequipamentoDTHISTORICO: TDateField;
    sdshlocacaoequipamentoHRHISTORICO: TTimeField;
    sdshlocacaoequipamentoDSOBSERVACAO: TBlobField;
    sdshlocacaoequipamentoNMFUNCIONARIO: TStringField;
    sdshlocacaoequipamentoCDEQUIPAMENTO: TIntegerField;
    sdshlocacaoequipamentoNUSERIE: TStringField;
    sdshlocacaoequipamentoNUPATRIMONIO: TStringField;
    sdshlocacaoequipamentoNMTPEQUIPAMENTO: TStringField;
    sdshlocacaoequipamentoNMMARCA: TStringField;
    sdshlocacaoequipamentoNMMODELO: TStringField;
    cdshlocacaoequipamentoCDLOCACAO: TIntegerField;
    cdshlocacaoequipamentoDTHISTORICO: TDateField;
    cdshlocacaoequipamentoHRHISTORICO: TTimeField;
    cdshlocacaoequipamentoDSOBSERVACAO: TBlobField;
    cdshlocacaoequipamentoNMFUNCIONARIO: TStringField;
    cdshlocacaoequipamentoCDEQUIPAMENTO: TIntegerField;
    cdshlocacaoequipamentoNUSERIE: TStringField;
    cdshlocacaoequipamentoNUPATRIMONIO: TStringField;
    cdshlocacaoequipamentoNMTPEQUIPAMENTO: TStringField;
    cdshlocacaoequipamentoNMMARCA: TStringField;
    cdshlocacaoequipamentoNMMODELO: TStringField;
    edtcodigo: TcxTextEdit;
    edtdtinicio: TcxDBDateEdit;
    edtdtfinal: TcxDBDateEdit;
    cbxcdtplocacao: TcxDBLookupComboBox;
    edthrinicio: TcxDBTimeEdit;
    edthrfinal: TcxDBTimeEdit;
    cbxcdfuncionarioentregue: TcxDBLookupComboBox;
    cbxcdfuncionario: TcxDBLookupComboBox;
    edtnudias: TcxDBSpinEdit;
    edtvllocacao: TcxDBCurrencyEdit;
    edtvlequipamento: TcxDBCurrencyEdit;
    edtvlacessorio: TcxDBCurrencyEdit;
    edtvlcaucao: TcxDBCurrencyEdit;
    edtvlacrescimo: TcxDBCurrencyEdit;
    sdsitlocacaoacessorioNMPRODUTO: TStringField;
    cdsitlocacaoacessorioNMPRODUTO: TStringField;
    edtcdequipamento: TcxDBButtonEdit;
    pgc: TcxPageControl;
    tbsacessorio: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    tbshlocacaoequipamento: TcxTabSheet;
    grdhlocacaoequipamento: TcxGrid;
    grdhlocacaoequipamentoDBTableView1: TcxGridDBTableView;
    grdhlocacaoequipamentoDBTableView1DTHISTORICO: TcxGridDBColumn;
    grdhlocacaoequipamentoDBTableView1HRHISTORICO: TcxGridDBColumn;
    grdhlocacaoequipamentoDBTableView1DSOBSERVACAO: TcxGridDBColumn;
    grdhlocacaoequipamentoDBTableView1NMFUNCIONARIO: TcxGridDBColumn;
    grdhlocacaoequipamentoDBTableView1CDEQUIPAMENTO: TcxGridDBColumn;
    grdhlocacaoequipamentoDBTableView1NUSERIE: TcxGridDBColumn;
    grdhlocacaoequipamentoDBTableView1NUPATRIMONIO: TcxGridDBColumn;
    grdhlocacaoequipamentoDBTableView1NMTPEQUIPAMENTO: TcxGridDBColumn;
    grdhlocacaoequipamentoDBTableView1NMMARCA: TcxGridDBColumn;
    grdhlocacaoequipamentoDBTableView1NMMODELO: TcxGridDBColumn;
    grdhlocacaoequipamentoLevel1: TcxGridLevel;
    memdsobservacao: TcxDBMemo;
    grditlocacaoacessorio: TcxGrid;
    grditlocacaoacessorioDBTableView1: TcxGridDBTableView;
    grditlocacaoacessorioDBTableView1CDDIGITADO: TcxGridDBColumn;
    grditlocacaoacessorioDBTableView1NMPRODUTO: TcxGridDBColumn;
    grditlocacaoacessorioDBTableView1CDSTITLOCACAOACESSORIO: TcxGridDBColumn;
    grditlocacaoacessorioDBTableView1QTITEM: TcxGridDBColumn;
    grditlocacaoacessorioDBTableView1VLITLOCACAOACESSORIO: TcxGridDBColumn;
    grditlocacaoacessorioLevel1: TcxGridLevel;
    tbsenderecoObra: TcxTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    lblnmcontato: TLabel;
    edtnufax: TcxDBMaskEdit;
    edtnufone2: TcxDBMaskEdit;
    edtnufone1: TcxDBMaskEdit;
    edtnucxpostal: TcxDBMaskEdit;
    edtnucep: TcxDBMaskEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    edtnufone3: TcxDBMaskEdit;
    edtnmcontato: TcxDBTextEdit;
    txt1: TcxDBLabel;
    actabrirproduto: TAction;
    actabrirclientecoresponsavel: TAction;
    lblnfsaida: TLabel;
    edtnunfsaida: TcxDBTextEdit;
    Label39: TLabel;
    edtnunfdevolucao: TcxDBTextEdit;
    cdssdshlocacaoequipamento: TDataSetField;
    sdsQTITEM: TIntegerField;
    cdsQTITEM: TIntegerField;
    lblqtitem: TLabel;
    edtqtitem: TcxDBSpinEdit;
    actabrirtplocacao: TAction;
    sdsitlocacaoacessorioNMITLOCACAOACESSORIO: TStringField;
    cdsitlocacaoacessorioNMITLOCACAOACESSORIO: TStringField;
    grditlocacaoacessorioDBTableView1NMITLOCACAOACESSORIO: TcxGridDBColumn;
    Label6: TLabel;
    Label13: TLabel;
    dxBarLargeButton1: TdxBarLargeButton;
    txtnmstlocacao: TcxDBLabel;
    sdsNMSTLOCACAO: TStringField;
    cdsNMSTLOCACAO: TStringField;
    actimprimirdevolucao: TAction;
    dxBarButton2: TdxBarButton;
    actcopiar: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    actrenovar: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    sdsCDLOCACAOANTERIOR: TIntegerField;
    cdsCDLOCACAOANTERIOR: TIntegerField;
    tbsRenovacao: TcxTabSheet;
    sdsrenovacao: TSQLDataSet;
    cdsrenovacao: TClientDataSet;
    dtsrenovacao: TDataSource;
    sdsrenovacaoCDLOCACAO: TIntegerField;
    sdsrenovacaoDTINICIO: TDateField;
    sdsrenovacaoHRINICIO: TTimeField;
    sdsrenovacaoDTFINAL: TDateField;
    sdsrenovacaoHRFINAL: TTimeField;
    sdsrenovacaoNMSTLOCACAO: TStringField;
    sdsrenovacaoQTITEM: TIntegerField;
    cdssdsrenovacao: TDataSetField;
    cdsrenovacaoCDLOCACAO: TIntegerField;
    cdsrenovacaoDTINICIO: TDateField;
    cdsrenovacaoHRINICIO: TTimeField;
    cdsrenovacaoDTFINAL: TDateField;
    cdsrenovacaoHRFINAL: TTimeField;
    cdsrenovacaoNMSTLOCACAO: TStringField;
    cdsrenovacaoQTITEM: TIntegerField;
    sdsrenovacaoNUDIAS: TIntegerField;
    sdsrenovacaoVLLOCACAO: TFMTBCDField;
    cdsrenovacaoNUDIAS: TIntegerField;
    cdsrenovacaoVLLOCACAO: TFMTBCDField;
    grdrenovacaoDBTableView1: TcxGridDBTableView;
    grdrenovacaoLevel1: TcxGridLevel;
    grdrenovacao: TcxGrid;
    grdrenovacaoDBTableView1CDLOCACAO: TcxGridDBColumn;
    grdrenovacaoDBTableView1DTINICIO: TcxGridDBColumn;
    grdrenovacaoDBTableView1HRINICIO: TcxGridDBColumn;
    grdrenovacaoDBTableView1DTFINAL: TcxGridDBColumn;
    grdrenovacaoDBTableView1HRFINAL: TcxGridDBColumn;
    grdrenovacaoDBTableView1NMSTLOCACAO: TcxGridDBColumn;
    grdrenovacaoDBTableView1QTITEM: TcxGridDBColumn;
    grdrenovacaoDBTableView1NUDIAS: TcxGridDBColumn;
    grdrenovacaoDBTableView1VLLOCACAO: TcxGridDBColumn;
    actabrirlocacao: TAction;
    sdsQTSALDO: TIntegerField;
    cdsQTSALDO: TIntegerField;
    lblqtsaldo: TLabel;
    txtqtsaldo: TcxDBLabel;
    tbsdevolucao: TcxTabSheet;
    sdsevolucao: TSQLDataSet;
    cdsdevolucao: TClientDataSet;
    dtsdevolucaoparcial: TDataSource;
    sdsevolucaoCDLOCACAODEVOLUCAO: TIntegerField;
    sdsevolucaoCDLOCACAO: TIntegerField;
    sdsevolucaoCDUSUARIOI: TIntegerField;
    sdsevolucaoCDUSUARIOA: TIntegerField;
    sdsevolucaoCDCOMPUTADORI: TIntegerField;
    sdsevolucaoCDCOMPUTADORA: TIntegerField;
    sdsevolucaoTSINCLUSAO: TSQLTimeStampField;
    sdsevolucaoTSALTERACAO: TSQLTimeStampField;
    sdsevolucaoQTITEM: TIntegerField;
    sdsevolucaoVLUNITARIO: TFMTBCDField;
    sdsevolucaoVLTOTAL: TFMTBCDField;
    sdsevolucaoNUDIAS: TIntegerField;
    cdsdevolucaoCDLOCACAODEVOLUCAO: TIntegerField;
    cdsdevolucaoCDLOCACAO: TIntegerField;
    cdsdevolucaoCDUSUARIOI: TIntegerField;
    cdsdevolucaoCDUSUARIOA: TIntegerField;
    cdsdevolucaoCDCOMPUTADORI: TIntegerField;
    cdsdevolucaoCDCOMPUTADORA: TIntegerField;
    cdsdevolucaoTSINCLUSAO: TSQLTimeStampField;
    cdsdevolucaoTSALTERACAO: TSQLTimeStampField;
    cdsdevolucaoQTITEM: TIntegerField;
    cdsdevolucaoVLUNITARIO: TFMTBCDField;
    cdsdevolucaoVLTOTAL: TFMTBCDField;
    cdsdevolucaoNUDIAS: TIntegerField;
    grddevolucaoDBTableView1: TcxGridDBTableView;
    grddevolucaoLevel1: TcxGridLevel;
    grddevolucao: TcxGrid;
    grddevolucaoDBTableView1QTITEM: TcxGridDBColumn;
    grddevolucaoDBTableView1VLUNITARIO: TcxGridDBColumn;
    grddevolucaoDBTableView1VLTOTAL: TcxGridDBColumn;
    grddevolucaoDBTableView1NUDIAS: TcxGridDBColumn;
    sdsevolucaoDTENTREGA: TDateField;
    sdsevolucaoHRENTREGA: TTimeField;
    cdsdevolucaoDTENTREGA: TDateField;
    cdsdevolucaoHRENTREGA: TTimeField;
    grddevolucaoDBTableView1DTENTREGA: TcxGridDBColumn;
    grddevolucaoDBTableView1HRENTREGA: TcxGridDBColumn;
    actdevolucao: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    lblcdlocacaoanterior: TLabel;
    txtcdlocacaoanterior: TDBText;
    actabrirlocacaoanterior: TAction;
    actexcluirdevolucao: TAction;
    bmg1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    dxBarButton3: TdxBarButton;
    cdssdsevolucao: TDataSetField;
    bmg1Bar2: TdxBar;
    bdcacessorio: TdxBarDockControl;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    sdsevolucaoDSOBSERVACAO: TBlobField;
    cdsdevolucaoDSOBSERVACAO: TBlobField;
    grddevolucaoDBTableView1DSOBSERVACAO: TcxGridDBColumn;
    actabrirsaida: TAction;
    actreabrir: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    txtdtprevista: TcxDBLabel;
    tbssaida: TcxTabSheet;
    sdsitsaida: TSQLDataSet;
    cdsitsaida: TClientDataSet;
    dtsitsaida: TDataSource;
    sdsitsaidaNUSAIDA: TIntegerField;
    sdsitsaidaCDSAIDA: TIntegerField;
    sdsitsaidaDTEMISSAO: TDateField;
    sdsitsaidaVLTOTAL: TFMTBCDField;
    cdssdsitsaida: TDataSetField;
    cdsitsaidaNUSAIDA: TIntegerField;
    cdsitsaidaCDSAIDA: TIntegerField;
    cdsitsaidaDTEMISSAO: TDateField;
    cdsitsaidaVLTOTAL: TFMTBCDField;
    grditsaida: TcxGrid;
    grditsaidaLevel1: TcxGridLevel;
    grditsaidaDBTableView1: TcxGridDBTableView;
    grditsaidaDBTableView1NUSAIDA: TcxGridDBColumn;
    grditsaidaDBTableView1DTEMISSAO: TcxGridDBColumn;
    grditsaidaDBTableView1VLTOTAL: TcxGridDBColumn;
    sdsDTEMISSAO: TDateField;
    cdsDTEMISSAO: TDateField;
    lblemissao: TLabel;
    txtdtemissao: TcxDBLabel;
    tbshstlocacao: TcxTabSheet;
    sdshstlocacao: TSQLDataSet;
    sdshstlocacaoNMCOMPUTADOR: TStringField;
    sdshstlocacaoDSJUSTIFICATIVA: TBlobField;
    sdshstlocacaoCDHSTLOCACAO: TIntegerField;
    sdshstlocacaoCDLOCACAO: TIntegerField;
    sdshstlocacaoCDSTLOCACAO: TIntegerField;
    sdshstlocacaoCDUSUARIOI: TIntegerField;
    sdshstlocacaoCDUSUARIOA: TIntegerField;
    sdshstlocacaoCDCOMPUTADORI: TIntegerField;
    sdshstlocacaoCDCOMPUTADORA: TIntegerField;
    sdshstlocacaoTSINCLUSAO: TSQLTimeStampField;
    sdshstlocacaoTSALTERACAO: TSQLTimeStampField;
    cdshstlocacao: TClientDataSet;
    cdshstlocacaoNMCOMPUTADOR: TStringField;
    cdshstlocacaoDSJUSTIFICATIVA: TBlobField;
    cdshstlocacaoCDHSTLOCACAO: TIntegerField;
    cdshstlocacaoCDLOCACAO: TIntegerField;
    cdshstlocacaoCDSTLOCACAO: TIntegerField;
    cdshstlocacaoCDUSUARIOI: TIntegerField;
    cdshstlocacaoCDUSUARIOA: TIntegerField;
    cdshstlocacaoCDCOMPUTADORI: TIntegerField;
    cdshstlocacaoCDCOMPUTADORA: TIntegerField;
    cdshstlocacaoTSINCLUSAO: TSQLTimeStampField;
    cdshstlocacaoTSALTERACAO: TSQLTimeStampField;
    dtshstlocacao: TDataSource;
    cdssdshstlocacao: TDataSetField;
    grdhstlocacao: TcxGrid;
    grdhstlocacaoDBTableView1: TcxGridDBTableView;
    grdhstlocacaoDBTableView1CDSTLOCACAO: TcxGridDBColumn;
    grdhstlocacaoDBTableView1CDUSUARIOI: TcxGridDBColumn;
    grdhstlocacaoDBTableView1NMCOMPUTADOR: TcxGridDBColumn;
    grdhstlocacaoDBTableView1TSHISTORICO: TcxGridDBColumn;
    grdhstlocacaoDBTableView1DSJUSTIFICATIVA: TcxGridDBColumn;
    grdhstlocacaoLevel1: TcxGridLevel;
    tbsperiodo: TcxTabSheet;
    sdsperiodo: TSQLDataSet;
    cdsperiodo: TClientDataSet;
    dtsperiodo: TDataSource;
    sdsperiodoCDLOCACAOPERIODO: TIntegerField;
    sdsperiodoCDLOCACAO: TIntegerField;
    sdsperiodoCDUSUARIOI: TIntegerField;
    sdsperiodoCDUSUARIOA: TIntegerField;
    sdsperiodoCDCOMPUTADORI: TIntegerField;
    sdsperiodoCDCOMPUTADORA: TIntegerField;
    sdsperiodoTSINCLUSAO: TSQLTimeStampField;
    sdsperiodoTSALTERACAO: TSQLTimeStampField;
    sdsperiodoDTEMISSAO: TDateField;
    sdsperiodoDTPREVISTA: TDateField;
    sdsperiodoNUDIAS: TIntegerField;
    cdssdsperiodo: TDataSetField;
    cdsperiodoCDLOCACAOPERIODO: TIntegerField;
    cdsperiodoCDLOCACAO: TIntegerField;
    cdsperiodoCDUSUARIOI: TIntegerField;
    cdsperiodoCDUSUARIOA: TIntegerField;
    cdsperiodoCDCOMPUTADORI: TIntegerField;
    cdsperiodoCDCOMPUTADORA: TIntegerField;
    cdsperiodoTSINCLUSAO: TSQLTimeStampField;
    cdsperiodoTSALTERACAO: TSQLTimeStampField;
    cdsperiodoDTEMISSAO: TDateField;
    cdsperiodoDTPREVISTA: TDateField;
    cdsperiodoNUDIAS: TIntegerField;
    grdperiodoDBTableView1: TcxGridDBTableView;
    grdperiodoLevel1: TcxGridLevel;
    grdperiodo: TcxGrid;
    grdperiodoDBTableView1DTEMISSAO: TcxGridDBColumn;
    grdperiodoDBTableView1DTPREVISTA: TcxGridDBColumn;
    grdperiodoDBTableView1NUDIAS: TcxGridDBColumn;
    grdperiodoDBTableView1DTINICIO: TcxGridDBColumn;
    sdsperiodoDTINICIO: TDateField;
    cdsperiodoDTINICIO: TDateField;
    sdsperiodoQTITEM: TIntegerField;
    cdsperiodoQTITEM: TIntegerField;
    grdperiodoDBTableView1QTITEM: TcxGridDBColumn;
    sdsperiodoVLLOCACAO: TFMTBCDField;
    cdsperiodoVLLOCACAO: TFMTBCDField;
    grdperiodoDBTableView1VLLOCACAO: TcxGridDBColumn;
    sdsperiodoVLEQUIPAMENTO: TFMTBCDField;
    cdsperiodoVLEQUIPAMENTO: TFMTBCDField;
    grdperiodoDBTableView1VLEQUIPAMENTO: TcxGridDBColumn;
    sdsevolucaoNUSAIDA: TIntegerField;
    cdsdevolucaoNUSAIDA: TIntegerField;
    grddevolucaoDBTableView1NUSAIDA: TcxGridDBColumn;
    sdsevolucaoCDSAIDA: TIntegerField;
    cdsdevolucaoCDSAIDA: TIntegerField;
    actabrirsaidadevolucao: TAction;
    btnimprimir: TdxBarLargeButton;
    actimprimircontrato: TAction;
    pumimprimir: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    acttrocar: TAction;
    btntrocar: TcxButton;
    btnalterarvalor: TcxButton;
    actalterarvalor: TAction;
    actdesfazerrenovacao: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    sdsevolucaoNFDEVOLUCAO: TIntegerField;
    cdsdevolucaoNFDEVOLUCAO: TIntegerField;
    grddevolucaoDBTableView1NFDEVOLUCAO: TcxGridDBColumn;
    edtCDCLIENTE: TcxDBButtonEdit;
    lblNMCLIENTE: TDBText;
    edtcdclientecoresponsavel: TcxDBButtonEdit;
    lblnmclientecoresponsavel: TDBText;
    sdsNMCLIENTE: TStringField;
    cdsNMCLIENTE: TStringField;
    sdsNMCLIENTECORESPONSAVEL: TStringField;
    cdsNMCLIENTECORESPONSAVEL: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsCDCLIENTECORESPONSAVEL: TLargeintField;
    sdsitlocacaoacessorioCDEMPRESA: TLargeintField;
    sdsevolucaoCDEMPRESA: TLargeintField;
    sdshstlocacaoCDEMPRESA: TLargeintField;
    sdsperiodoCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsCDCLIENTECORESPONSAVEL: TLargeintField;
    cdsitlocacaoacessorioCDEMPRESA: TLargeintField;
    cdsdevolucaoCDEMPRESA: TLargeintField;
    cdshstlocacaoCDEMPRESA: TLargeintField;
    cdsperiodoCDEMPRESA: TLargeintField;
    lblcdoperador: TLabel;
    edtcdoperador: TcxDBButtonEdit;
    txtnmoperador: TDBText;
    sdsCDOPERADOR: TIntegerField;
    cdsCDOPERADOR: TIntegerField;
    sdsNMOPERADOR: TStringField;
    cdsNMOPERADOR: TStringField;
    actabrirfuncionario: TAction;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actabrirequipamentoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure lblcdequipamentoDblClick(Sender: TObject);
    procedure actbaixarestoqueExecute(Sender: TObject);
    procedure actentradaestoqueExecute(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure cdsitlocacaoacessorioBeforePost(DataSet: TDataSet);
    procedure cdsitlocacaoacessorioNewRecord(DataSet: TDataSet);
    procedure cdsitlocacaoacessorioCDDIGITADOValidate(Sender: TField);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsNUDIASValidate(Sender: TField);
    procedure edtcdequipamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDEQUIPAMENTOValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxcdufExit(Sender: TObject);
    procedure cdsNUFONE1Validate(Sender: TField);
    procedure cdsNUFONE2Validate(Sender: TField);
    procedure cdsNUFONE3Validate(Sender: TField);
    procedure cdsNUFAXValidate(Sender: TField);
    procedure grditlocacaoacessorioDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grditlocacaoacessorioDBTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure grditlocacaoacessorioDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure actabrirclientecoresponsavelExecute(Sender: TObject);
    procedure lblcdclientecoresponsavelDblClick(Sender: TObject);
    procedure lblcdclienteDblClick(Sender: TObject);
    procedure cdsitlocacaoacessorioAfterDelete(DataSet: TDataSet);
    procedure cdsitlocacaoacessorioAfterPost(DataSet: TDataSet);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actabrirtplocacaoExecute(Sender: TObject);
    procedure lbltpordservDblClick(Sender: TObject);
    procedure cdsCDTPLOCACAOValidate(Sender: TField);
    procedure grdhlocacaoequipamentoDBTableView1DSOBSERVACAOGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure actimprimirdevolucaoExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure actrenovarExecute(Sender: TObject);
    procedure actabrirlocacaoExecute(Sender: TObject);
    procedure grdrenovacaoDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actdevolucaoExecute(Sender: TObject);
    procedure actabrirlocacaoanteriorExecute(Sender: TObject);
    procedure txtcdlocacaoanteriorDblClick(Sender: TObject);
    procedure actexcluirdevolucaoExecute(Sender: TObject);
    procedure cdsdevolucaoAfterScroll(DataSet: TDataSet);
    procedure actabrirsaidaExecute(Sender: TObject);
    procedure cdsCDSTLOCACAOValidate(Sender: TField);
    procedure actreabrirExecute(Sender: TObject);
    procedure grditsaidaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirsaidadevolucaoExecute(Sender: TObject);
    procedure grddevolucaoDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure actimprimircontratoExecute(Sender: TObject);
    procedure acttrocarExecute(Sender: TObject);
    procedure cdsDTINICIOValidate(Sender: TField);
    procedure set_text_numero_inteiro(Sender: TField; const Text: string);
    procedure edtnudiasPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure actalterarvalorExecute(Sender: TObject);
    procedure edtnunfsaidaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtnunfdevolucaoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure actopcoesExecute(Sender: TObject);
    procedure actdesfazerrenovacaoExecute(Sender: TObject);
    procedure cdsQTITEMValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdclientecoresponsavelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientecoresponsavelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDCLIENTECORESPONSAVELValidate(Sender: TField);
    procedure edtcdoperadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdoperadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDOPERADORValidate(Sender: TField);
    procedure actabrirfuncionarioExecute(Sender: TObject);
  private      { Private declarations }
    boerro           : Boolean;
    registro         : TRegistro;
    locacao          : tlocacao;
    produto          : TProduto;
    cdequipamentoold : string;
    qtitemRegistro   : integer;
    boeditar         : boolean;
    function  RegistrarTrocaEquipamento:boolean;
    procedure gravartotais;
    procedure setrecord(cdtp:integer);
  public  { Public declarations }
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmlocacao: Tfrmlocacao;

implementation

uses
  uDtmMain,
  uLocalizarEquipamento,
  uMain,
  udlgtransferiradntcliente,
  ulocalizarCliente,
  uLocalizarProduto,
  ubaixaRequisicao,
  uimprimirrelatoriopadrao,
  UdlgInfNumIntervencao,
  udlglocacaodevolucao,
  uMenuRelatorio;

{$R *.DFM}

const
    tbl      = 'locacao';
    exibe    = 'Locação';
    artigoI  = 'a';

function Tfrmlocacao.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmlocacao.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir;
end;

procedure Tfrmlocacao.actNovoExecute(Sender: TObject);
begin
  boeditar := false;
  registro.novo(Sender);
  rceequipamento.Clear;
end;

procedure Tfrmlocacao.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure Tfrmlocacao.actExcluirExecute(Sender: TObject);
var
  cdstlocacao, cdequipamento : string;
  qtsaldo : Integer;
begin
  cdequipamento := cdsCDEQUIPAMENTO.AsString;
  qtsaldo       := cdsQTITEM.AsInteger;
  cdstlocacao   := cdsCDSTLOCACAO.AsString;
  if registro.Excluir and (cdstlocacao = _1) then
  begin
    ExecutaSQL('update equipamento set qtsaldo=qtsaldo+'+inttostr(qtsaldo)+' where cdempresa='+empresa.cdempresa.tostring+' and cdequipamento='+cdequipamento);
    rceequipamento.Clear;
  end;
end;

procedure Tfrmlocacao.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmlocacao.actCancelarExecute(Sender: TObject);
begin
  registro.Cancelar;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure Tfrmlocacao.actEditarExecute(Sender: TObject);
begin
  boeditar := true;
  registro.Editar;
  qtitemRegistro := cdsQTITEM.AsInteger;
end;

procedure Tfrmlocacao.FormShow(Sender: TObject);
begin
  pnl.Caption := Exibe;
  locacao     := tlocacao.create;
  produto     := TProduto.create;
  edtCodigo.SetFocus;
end;

procedure Tfrmlocacao.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure Tfrmlocacao.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure Tfrmlocacao.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure Tfrmlocacao.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure Tfrmlocacao.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmlocacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlocacao.actabrirequipamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmlocacao.FormDestroy(Sender: TObject);
begin
  locacao.destroy;
  freeandnil(produto);
  registro.destroy;
end;

procedure Tfrmlocacao.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(_locacao, frmmain.tlbnew);
end;

procedure Tfrmlocacao.lblcdequipamentoDblClick(Sender: TObject);
begin
  actAbrirequipamento.onExecute(actAbrirequipamento);
end;

procedure Tfrmlocacao.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPLOCACAO.asinteger := registro.get_tipo_tabela_minumo;
  cdequipamentoold         := '';
  registro.NewRecord;
  cdsDTEMISSAO.AsDateTime     := DtBanco;
  cdsDTINICIO.AsDateTime      := cdsDTEMISSAO.AsDateTime;
  cdsHRINICIO.AsDateTime      := HrBanco;
  cdsCDSTLOCACAO.AsInteger     := qregistro.Codigo_status_novo(tbl);
  cdsVLLOCACAO.AsCurrency     := 0;
  cdsVLBAIXA.AsCurrency       := 0;
  cdsVLSALDO.AsCurrency       := 0;
  cdsVLRECEBIDO.AsCurrency    := 0;
  cdsVLACESSORIO.AsCurrency   := 0;
  cdsVLEQUIPAMENTO.AsCurrency := 0;
  cdsVLDESCONTO.AsCurrency    := 0;
  cdsVLDEVOLUCAO.AsCurrency   := 0;
  cdsVLABATIMENTO.AsCurrency  := 0;
  cdsVLDEDUCAO.AsCurrency     := 0;
  cdsVLACRESCIMO.AsCurrency   := 0;
  cdsVLCAUCAO.AsCurrency      := 0;
  cdsQTSALDO.AsInteger        := 1;
  cdsNUDIAS.AsInteger         := 1;
  cdsQTITEM.AsInteger         := 1;
  cdsDTINICIO.FocusControl;
  setrecord(cdsCDTPLOCACAO.asinteger);
end;

procedure Tfrmlocacao.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmlocacao.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmlocacao.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmlocacao.edtnudiasPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if Length(DisplayValue) > 10 then
  begin
    MessageDlg('Valor não é número inteiro válido.', mtInformation, [mbok], 0);
    edtnudias.SetFocus;
    Abort;
  end;
end;

procedure Tfrmlocacao.edtnunfdevolucaoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if Length(edtnunfdevolucao.text) > 10 then
  begin
    ErrorText := 'Valor não é um inteiro válido.';
    Error := True;
    DisplayValue := copy(edtnunfdevolucao.text, 1, 10);
  end;
end;

procedure Tfrmlocacao.edtnunfsaidaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if Length(edtnunfsaida.text) > 10 then
  begin
    ErrorText := 'Valor não é um inteiro válido.';
    Error := True;
    DisplayValue := copy(edtnunfsaida.text, 1, 10);
  end;
end;

procedure Tfrmlocacao.cdsitlocacaoacessorioBeforePost(DataSet: TDataSet);
begin
  if (locacao.tplocacao.bonmacessorio = _n) and cdsitlocacaoacessorioCDPRODUTO.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Produto]), mtinformation, [mbok], 0);
    Abort;
  end;
  registro.set_update(cdsitlocacaoacessorio);
end;

procedure Tfrmlocacao.cdsitlocacaoacessorioNewRecord(DataSet: TDataSet);
begin
  cdsitlocacaoacessorioQTITEM.AsFloat                  := 1;
  cdsitlocacaoacessorioCDSTITLOCACAOACESSORIO.AsInteger := qregistro.Codigo_status_novo(_it+_locacao+_acessorio);
  cdsitlocacaoacessorioCDITLOCACAOACESSORIO.AsString   := GerarCodigo(_it+_locacao+_acessorio);
  cdsitlocacaoacessorioVLITLOCACAOACESSORIO.AsCurrency := 0;
end;

procedure Tfrmlocacao.cdsAfterScroll(DataSet: TDataSet);
var
  bomudar : Boolean;
begin
  locacao.Select(cds.FieldByName(_cdlocacao).AsInteger);
  LOCACAO.locacaodevolucao.Ler(cdsdevolucao);
  locacao.locacaoperiodo.Ler(cdsperiodo);
  locacao.stlocacao.Select(locacao.cdstlocacao);
  actEditar.Enabled            := locacao.stlocacao.boalterar = _s;
  actExcluir.Enabled           := locacao.stlocacao.boexcluir = _s;
  actalterarvalor.Visible      := locacao.BoAlterarValor;
  acttrocar.Enabled            := locacao.BoTrocar;
  actdesfazerrenovacao.Visible := locacao.BoAlterarValor;
  if (dts.State = dsedit) or (dts.State = dsinsert) then
  begin
    acttrocar.Enabled := False;
  end;
  cdequipamentoold          := cdsCDEQUIPAMENTO.asstring;
  locacao.equipamento.Select(locacao.cdequipamento);
  locacao.equipamento.setrce(tbl, locacao.cdtplocacao, rceequipamento);
  setrecord(locacao.cdtplocacao);
  actrenovar.Visible      := (((cdsCDSTLOCACAO.AsInteger = 1) or (cdsCDSTLOCACAO.AsInteger = 3)) and cdsCDLOCACAOANTERIOR.IsNull) or (cdsrenovacao.RecordCount > 0);
  bomudar                 := pgc.ActivePage = tbsRenovacao;
  tbsRenovacao.TabVisible := cdsrenovacao.RecordCount > 0;
  if bomudar then
  begin
    pgc.ActivePage := tbsacessorio;
  end;
  actdevolucao.Visible         := ((cdsCDSTLOCACAO.AsInteger = 1) or (cdsCDSTLOCACAO.AsInteger = 3)) and (cdsQTSALDO.AsInteger > 0);
  lblcdlocacaoanterior.Visible := not cdsCDLOCACAOANTERIOR.IsNull;
  txtcdlocacaoanterior.visible := not cdscdlocacaoanterior.isnull;
  if (pgc.ActivePage = tbsdevolucao) and (cdsdevolucao.RecordCount = 0) then
  begin
    pgc.ActivePageIndex := 0;
  end;
  tbsdevolucao.TabVisible      := cdsdevolucao.RecordCount > 0;
  actrenovar.Visible         := ((cdsCDSTLOCACAO.AsString = _8) or (cdsCDSTLOCACAO.AsString = _3) or (cdsCDSTLOCACAO.AsInteger = 7)) and (cdsDTPREVISTA.AsDateTime < DtBanco);
  actdevolucao.Visible       := (cdsCDSTLOCACAO.AsString = _8) or (cdsCDSTLOCACAO.AsString = _4) or (cdsCDSTLOCACAO.AsString = _9) or (cdsCDSTLOCACAO.AsString = _3) or (cdsCDSTLOCACAO.AsString = _7) or (cdsCDSTLOCACAO.AsString = _6);
  actreabrir.Visible         := cdsCDSTLOCACAO.AsString = _4;
  actexcluirdevolucao.Visible := (cdsdevolucao.RecordCount > 0) and
                                 ((cdsCDSTLOCACAO.AsString = _5) or
                                  (cdsCDSTLOCACAO.AsString = _3) or
                                  (cdsCDSTLOCACAO.AsString = _2) or
                                  (cdsCDSTLOCACAO.AsString = _6) or
                                  (cdsCDSTLOCACAO.AsString = _7)) and
                                 cdsdevolucaoNUSAIDA.IsNull;
  if actdevolucao.Visible and (not actdevolucao.Enabled) then
  begin
    actdevolucao.Enabled := True;
  end;
end;

procedure Tfrmlocacao.edtcdequipamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cod :integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cod := LocalizarEquipamento('', False, true);
  if cod <> 0 then
  begin
    cdsCDEQUIPAMENTO.AsInteger := cod;
  end;
end;

procedure Tfrmlocacao.edtcdoperadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdoperadorPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmlocacao.edtcdoperadorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizarfuncionario;
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDoperador.asinteger := cd;
  end
end;

procedure Tfrmlocacao.FormCreate(Sender: TObject);
begin
  boerro := False;
  cbxcdtplocacao.Properties.ListSource            := abrir_tabela(_tplocacao);
  cbxcdfuncionario.Properties.ListSource          := abrir_tabela(_funcionario);
  cbxcdfuncionarioentregue.Properties.ListSource  := abrir_tabela(_funcionario);
  cbxcduf.Properties.ListSource                   := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource            := abrir_tabela(_municipio);
  TcxLookupComboBoxProperties(grditlocacaoacessorioDBTableView1CDSTITLOCACAOACESSORIO.Properties).ListSource := abrir_tabela(_st+_it+_locacao+_acessorio);
  TcxLookupComboBoxProperties(grdhstlocacaoDBTableView1CDSTLOCACAO.Properties).ListSource                    := abrir_tabela(_st+_locacao);
  TcxLookupComboBoxProperties(grdhstlocacaoDBTableView1CDusuarioi.Properties).ListSource                     := abrir_tabela(_usuario);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 49, cds, tbl);
end;

procedure Tfrmlocacao.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  if (dts.State = dsedit) or (dts.State = dsinsert) then
  begin
    acttrocar.Enabled := False;
  end;
end;

procedure Tfrmlocacao.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmlocacao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmlocacao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmlocacao.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmlocacao.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet));
  end;
end;

procedure Tfrmlocacao.cdsNUFONE1Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure Tfrmlocacao.cdsNUFONE2Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure Tfrmlocacao.cdsNUFONE3Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure Tfrmlocacao.cdsQTITEMValidate(Sender: TField);
var
  qtitem : integer;
begin
  boerro := false;
  if cdsCDEQUIPAMENTO.AsString = '' then
  begin
    Exit;
  end;
  locacao.equipamento.Select(cdsCDEQUIPAMENTO.Asinteger);
  qtitem := Sender.AsInteger - qtitemRegistro;
  if (locacao.tplocacao.boequipamentosaldo = _s) and (qtitem > 0) and (locacao.equipamento.qtsaldo < qtitem) then
  begin
    boerro := True;
    MessageDlg('Equipamento possui saldo ('+inttostr(locacao.equipamento.qtsaldo)+') insuficiente para ser locado.'#13'Selecione outro equipamento para continuar.', mtInformation, [mbOK], 0);
    edtqtitem.SetFocus;
    abort;
  end;
  cdsVLLOCACAO.AsCurrency     := locacao.ObterPrecoLocacao(cdsCDequipamento.Asinteger, cdsNUDIAS.Asinteger, Sender.Asinteger);
  cdsVLEQUIPAMENTO.AsCurrency := locacao.equipamento.vlequipamento * Sender.AsInteger;
  if qtitemRegistro < Sender.AsInteger then
  begin
    cdsQTSALDO.AsInteger := (Sender.AsInteger - qtitemRegistro) + qtitemRegistro
  end
  else
  begin
    cdsQTSALDO.AsInteger := qtitemRegistro - (qtitemRegistro - Sender.AsInteger);
  end;
end;

procedure Tfrmlocacao.set_text_numero_inteiro(Sender: TField; const Text: string);
begin
  registro.consistir_numero_integer(Sender, Text);
end;

procedure Tfrmlocacao.cdsNUFAXValidate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure Tfrmlocacao.grditlocacaoacessorioDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_locacao, cdsitlocacaoacessorio, true);
end;

procedure Tfrmlocacao.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmlocacao.edtcdclientecoresponsavelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientecoresponsavelPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmlocacao.edtcdclientecoresponsavelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  codigo := LocalizarCliente(true);
  if codigo = 0 then
  begin
    Exit;
  end;
  if (cds.State <> dsinsert) and (cds.State <> dsedit) then
  begin
    cds.Edit;
  end;
  cds.fieldbyname(_cdclientecoresponsavel).AsInteger := codigo;
end;

procedure Tfrmlocacao.edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmlocacao.edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdclientePropertiesButtonClick(self, cds);
end;

procedure Tfrmlocacao.edtcdequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdequipamentoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmlocacao.grditlocacaoacessorioDBTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if (key = __KeySearch) and (LowerCase(TcxGridDBColumn(AItem).DataBinding.FieldName) = _cddigitado) then
  begin
    grditlocacaoacessorioDBTableView1CDDIGITADOPropertiesButtonClick(sender, 0)
  end
end;

procedure Tfrmlocacao.grditlocacaoacessorioDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutoExecute(actabrirproduto);
  end;
end;

procedure Tfrmlocacao.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitlocacaoacessorio);
end;

procedure Tfrmlocacao.actabrirclientecoresponsavelExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(_cdcliente+_c+_o+_responsavel,TAction(Sender), cds, cds);
end;

procedure Tfrmlocacao.lblcdclientecoresponsavelDblClick(Sender: TObject);
begin
  actabrirclientecoresponsavelExecute(actabrirclientecoresponsavel);
end;

procedure Tfrmlocacao.lblcdclienteDblClick(Sender: TObject);
begin
  actabrirclienteExecute(actabrircliente);
end;

procedure Tfrmlocacao.gravartotais;
begin
  cdsitlocacaoacessorio.DisableControls;
  try
    cdsitlocacaoacessorio.First;
    cdsVLACESSORIO.AsCurrency := 0;
    while not cdsitlocacaoacessorio.Eof do
    begin
      cdsVLACESSORIO.AsCurrency := cdsVLACESSORIO.AsCurrency + cdsitlocacaoacessorioVLITLOCACAOACESSORIO.AsCurrency;
      cdsitlocacaoacessorio.Next;
    end;
  finally
    cdsitlocacaoacessorio.EnableControls;
  end;
end;

procedure Tfrmlocacao.cdsitlocacaoacessorioAfterDelete(DataSet: TDataSet);
begin
  gravartotais;
end;

procedure Tfrmlocacao.cdsCDEQUIPAMENTOValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    Exit;
  end;
  locacao.equipamento.Select(Sender.asinteger);
  if (locacao.tplocacao.boequipamentosaldo = _s) and (locacao.equipamento.qtsaldo < cdsQTITEM.AsInteger) then
  begin
    Sender.Clear;
    edtcdequipamento.Clear;
    MessageDlg('Equipamento '+inttostr(locacao.equipamento.cdequipamento)+' não possui saldo suficiente para ser locado.'#13'Selecione outro equipamento para continuar.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    abort;
  end;
  if locacao.equipamento.bopertenceempresa <> _s then
  begin
    Sender.Clear;
    edtcdequipamento.Clear;
    messagedlg('Equipamento '+inttostr(locacao.equipamento.cdequipamento)+' não pertence a empresa para ser usado na locaçao.'#13'Selecione um equipamento que pertence a empresa para continuar.', mtinformation, [mbok], 0);
    Sender.FocusControl;
    abort;
  end;
  locacao.equipamento.setrce(tbl, cdsCDTPLOCACAO.asinteger, rceequipamento);
  if (cdsVLEQUIPAMENTO.AsCurrency > 0) and (cdsVLEQUIPAMENTO.AsCurrency <> locacao.equipamento.vlequipamento) then
  begin
    if messagedlg('Alterar valor do equipamento '#13'de '+FormatFloat(__moeda, cdsVLEQUIPAMENTO.AsCurrency)+#13'para '+formatfloat(__moeda, locacao.equipamento.vlequipamento)+'?', mtconfirmation, [mbyes, mbno], 0) = mrno then
    begin
      exit;
    end;
    cdsVLEQUIPAMENTO.AsCurrency := locacao.equipamento.vlequipamento;
  end
  else
  begin
    cdsVLEQUIPAMENTO.AsCurrency := locacao.equipamento.vlequipamento;
  end;
  cdsVLLOCACAO.AsCurrency := locacao.ObterPrecoLocacao(cdsCDequipamento.Asinteger, cdsNUDIAS.Asinteger, cdsQTITEM.Asinteger);
end;

procedure Tfrmlocacao.cdsCDOPERADORValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMoperador.Clear;
    Exit;
  end;
  cdsNMoperador.AsString := NomedoCodigo(_funcionario, Sender.asstring);
  if cdsNMoperador.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, __funcionario]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure Tfrmlocacao.cdsitlocacaoacessorioCDDIGITADOValidate(Sender: TField);
var
  cdproduto : integer;
begin
  cdproduto := produto.CodigoProdutoDigitado(sender.asstring, '');
  if cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(cdproduto);
  produto.tpproduto.select(produto.cdtpproduto);
  if (produto.tpproduto.boestoque = _s) and (produto.qtestoque <= 0) then
  begin
    messagedlg('Produto '+sender.asstring+' com estoque '+FormatFloat(__moedadec3, produto.qtestoque)+'.'#13'Digite um produto que tenha o estoque acima de zero para continuar', mtinformation, [mbok], 0);
    abort;
  end;
  cdsitlocacaoacessorioNMPRODUTO.Asstring := produto.nmproduto;
  cdsitlocacaoacessorioCDPRODUTO.AsInteger := cdproduto;
  cdsitlocacaoacessorioVLITLOCACAOACESSORIO.AsCurrency := produto.vlvenda;
end;

procedure Tfrmlocacao.actbaixarestoqueExecute(Sender: TObject);
begin
  if cdsitlocacaoacessorio.Active and (cdsitlocacaoacessorio.RecordCount > 0) and BaixaRequisicao(cdsCDLOCACAO.Asstring) then
  begin
    abrir(cdsCDLOCACAO.asinteger);
  end;
end;

procedure Tfrmlocacao.actentradaestoqueExecute(Sender: TObject);
begin
  if cdsitlocacaoacessorio.Active and (cdsitlocacaoacessorio.RecordCount > 0) and EntradaRequisicao(cdsCDLOCACAO.Asstring) then
  begin
    abrir(cdsCDLOCACAO.asinteger);
  end;
end;

procedure Tfrmlocacao.cdsBeforePost(DataSet: TDataSet);
begin
  if cdsCDEQUIPAMENTO.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_equipamento]), mtinformation, [mbok], 0);
    cdsCDEQUIPAMENTO.FocusControl;
    abort;
  end;
  registro.set_update(cds);
end;

procedure Tfrmlocacao.cdsNUDIASValidate(Sender: TField);
begin
  cdsVLLOCACAO.AsCurrency  := locacao.ObterPrecoLocacao(cdsCDequipamento.Asinteger, cdsNUDIAS.AsInteger, cdsQTITEM.AsInteger);
  cdsDTPREVISTA.AsDateTime := cdsDTINICIO.AsDateTime + cdsNUDIAS.AsInteger - 1 + locacao.tplocacao.nudiainicial;
end;

function TFrmLocacao.RegistrarTrocaEquipamento:boolean;
begin
  result := False;
  if (not cdsCDEQUIPAMENTO.IsNull) and (cdsCDEQUIPAMENTO.AsString <> cdequipamentoold) and boeditar then
  begin
    if messagedlg('Registrar a troca do equipamento?', mtconfirmation, [mbyes, mbno], 0) = mrno then
    begin
      exit;
    end;
    result := FormatarRichEdit(_hlocacaoequipamento, cdsCDLOCACAO.Asstring, cdequipamentoold, True, locacao.tplocacao.boassociarfuncionariotroca=_s);
  end;
end;

procedure Tfrmlocacao.actSalvarExecute(Sender: TObject);
var
  codigo : string;
  boeditar, boinsert : Boolean;
  procedure atualizar_saldo_equipamento;
  var
    qtitem : integer;
  begin
    if boinsert then
    begin
      ExecutaSQL('update equipamento set qtsaldo=qtsaldo-'+cdsQTITEM.AsString+' where cdempresa='+empresa.cdempresa.tostring+' and cdequipamento='+cdsCDEQUIPAMENTO.AsString);
    end
    else if boeditar then
    begin
      if cdsCDEQUIPAMENTO.AsString <> cdequipamentoold then
      begin
        IF cdequipamentoold <> '' then
        begin
          ExecutaSQL('update equipamento set qtsaldo=qtsaldo+'+inttostr(qtitemRegistro)+' where cdempresa='+empresa.cdempresa.tostring+' and cdequipamento='+cdequipamentoold);
        end;
        ExecutaSQL('update equipamento set qtsaldo=qtsaldo-'+cdsQTITEM.AsString+' where cdempresa='+empresa.cdempresa.tostring+' and cdequipamento='+cdsCDEQUIPAMENTO.AsString);
      end
      else
      begin
        qtitem := cdsQTITEM.AsInteger - qtitemRegistro;
        if qtitem > 0 then
        begin
          ExecutaSQL('update equipamento set qtsaldo=qtsaldo-'+inttostr(qtitem)+' where cdempresa='+empresa.cdempresa.tostring+' and cdequipamento='+cdsCDEQUIPAMENTO.AsString)
        end
        else if qtitem < 0 then
        begin
          ExecutaSQL('update equipamento set qtsaldo=qtsaldo+'+inttostr(qtitemRegistro-cdsQTITEM.AsInteger)+' where cdempresa='+empresa.cdempresa.tostring+' and cdequipamento='+cdsCDEQUIPAMENTO.AsString);
        end;
      end;
    end;
  end;
  procedure checktplocacao;
  begin
    if cbxcdtplocacao.Text <> '' then
    begin
      Exit;
    end;
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo+' '+_de+' '+__locacao]), mtinformation, [mbok], 0);
    cdsCDTPLOCACAO.FocusControl;
    Abort;
  end;
  procedure checkcliente;
  begin
    if edtcdcliente.Text <> '' then // obrigatoriedade de cliente
    begin
      Exit;
    end;
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Cliente]), mtinformation, [mbok], 0);
    cds.FieldByName(_CDCLIENTE).FocusControl;
    abort;
  end;
  procedure checkequipamento;
  begin
    if edtcdequipamento.Text <> '' then // obrigatoriedade de equipamento
    begin
      exit;
    end;
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_equipamento]), mtinformation, [mbok], 0);
    cdsCDEQUIPAMENTO.FocusControl;
    Abort;
  end;
  procedure checknudias;
  begin
    if edtnudias.Text <> _0 then // obrigatoriedade de equipamento
    begin
      Exit;
    end;
    messagedlg('Número de dias não pode ser igual a zero.', mterror, [mbok], 0);
    cdsNUDIAS.FocusControl;
    Abort;
  end;
begin
  Self.SelectNext(Self.ActiveControl, true, true);
  if boerro then
  begin
    Exit;
  end;
  checktplocacao;
  checkcliente;
  checkequipamento;
  checknudias;
  if cdsvllocacao.IsNull then
  begin
    cdsvllocacao.AsCurrency := 0;
  end;
  if cdsvlsaldo.IsNull then
  begin
    cdsvlsaldo.AsCurrency := 0;
  end;
  if cdsvlrecebido.IsNull then
  begin
    cdsvlrecebido.AsCurrency := 0;
  end;
  if cdsitlocacaoacessorio.State = dsinsert then
  begin
    cdsitlocacaoacessorio.Post;
  end;
  gravartotais;
  codigo   := cdequipamentoold;
  boinsert := cds.State = dsInsert;
  boeditar := cds.State = dsEdit;
  registro.salvar;
  cdequipamentoold := codigo;
  atualizar_saldo_equipamento;
  if RegistrarTrocaEquipamento then
  begin
    Abrir(cdsCDLOCACAO.asinteger);
  end;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure Tfrmlocacao.cdsitlocacaoacessorioAfterPost(DataSet: TDataSet);
begin
  gravartotais;
end;

procedure Tfrmlocacao.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmlocacao.actabrirtplocacaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmlocacao.actalterarvalorExecute(Sender: TObject);
var
  vllocacao : Currency;
  cdlocacaoperiodo: string;
begin
  vllocacao := cdsVLLOCACAO.AsCurrency;
  if Alterar_Valor_locacao(vllocacao) then
  begin
    registro.set_readonly_dados(self, false);
    qtitemRegistro := cdsQTITEM.AsInteger;
    cds.edit;
    boeditar := True;
    cdsVLLOCACAO.AsCurrency := vllocacao;
    actSalvarExecute(actSalvar);
    cdlocacaoperiodo := RetornaSQLString('select max(cdlocacaoperiodo) from locacaoperiodo where cdempresa='+empresa.cdempresa.tostring+' and cdlocacao='+cdscdlocacao.AsString);
    if cdlocacaoperiodo <> '' then
    begin
      ExecutaSQL('update locacaoperiodo set vllocacao='+getcurrencys(vllocacao)+' where cdempresa='+empresa.cdempresa.tostring+' and cdlocacaoperiodo='+cdlocacaoperiodo);
    end;
  end;
end;

procedure Tfrmlocacao.lbltpordservDblClick(Sender: TObject);
begin
  actAbrirtplocacao.onExecute(actAbrirtplocacao);
end;

procedure Tfrmlocacao.setrecord(cdtp: integer);
begin
  if cdtp = 0 then
  begin
    exit;
  end;
  locacao.tplocacao.Select(cdtp);
  lblcdoperador.visible := locacao.tplocacao.booperador = _s;
  edtcdoperador.Visible := locacao.tplocacao.booperador = _s;
  txtnmoperador.Visible := locacao.tplocacao.booperador = _s;
  actrenovar.Visible              := locacao.tplocacao.borenovarcontrato = _s;
  lblvlacessorio.Visible          := locacao.tplocacao.bovlacessorio = _s;
  edtvlacessorio.Visible          := locacao.tplocacao.bovlacessorio = _s;
  lblvlcaucao.Visible             := locacao.tplocacao.bovlcaucao = _s;
  edtvlcaucao.Visible             := locacao.tplocacao.bovlcaucao = _s;
  edtvlacrescimo.Visible          := locacao.tplocacao.bovlacrescimo = _s;
  lblvlacrescimo.Visible          := locacao.tplocacao.bovlacrescimo = _s;
  gbxclientecoresponsavel.Visible := locacao.tplocacao.bocoresponsavel = _s;
  bdcacessorio.Visible            := locacao.tplocacao.bonmacessorio = _n;
  lblentregue.visible             := locacao.tplocacao.boentregue = _s;
  cbxcdfuncionarioentregue.visible := locacao.tplocacao.boentregue = _s;
  lblrecebido.visible             := locacao.tplocacao.borecebido = _s;
  cbxcdfuncionario.visible        := locacao.tplocacao.borecebido = _s;
  grditlocacaoacessorioDBTableView1CDDIGITADO.Visible             := locacao.tplocacao.bonmacessorio = _N;
  grditlocacaoacessorioDBTableView1NMPRODUTO.Visible              := locacao.tplocacao.bonmacessorio = _N;
  grditlocacaoacessorioDBTableView1QTITEM.Visible                 := locacao.tplocacao.bonmacessorio = _N;
  grditlocacaoacessorioDBTableView1VLITLOCACAOACESSORIO.Visible   := locacao.tplocacao.bonmacessorio = _N;
  grditlocacaoacessorioDBTableView1CDSTITLOCACAOACESSORIO.Visible := locacao.tplocacao.bonmacessorio = _N;
  grditlocacaoacessorioDBTableView1NMITLOCACAOACESSORIO.Visible   := locacao.tplocacao.bonmacessorio = _s;
  if locacao.tplocacao.bousuarioentregue = _s then
  begin
    cbxcdfuncionarioentregue.Properties.ListSource  := abrir_tabela(_funcionario+_usuario)
  end
  else
  begin
    cbxcdfuncionarioentregue.Properties.ListSource  := abrir_tabela(_funcionario);
  end;
end;

procedure Tfrmlocacao.cdsCDTPLOCACAOValidate(Sender: TField);
begin
  setrecord(sender.asinteger);
end;

procedure Tfrmlocacao.grdhlocacaoequipamentoDBTableView1DSOBSERVACAOGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AIsHintMultiLine := True;
  AHintText        := ARecord.DisplayTexts[2];
end;

procedure Tfrmlocacao.actimprimirdevolucaoExecute(Sender: TObject);
begin
  if cdsdevolucaoCDLOCACAODEVOLUCAO.AsString = '' then
  begin
    Exit;
  end;
  ImpimirRelatorioPadrao1(536, cdsdevolucaoCDLOCACAODEVOLUCAO.AsString);
end;

procedure Tfrmlocacao.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmlocacao.actcopiarExecute(Sender: TObject);
var
  codigo : integer;
begin
  if (locacao.tplocacao.boequipamentosaldo = _s) and (not locacao.ExisteSaldoLocacaoEquipamento(cdscdequipamento.asstring, cdsQTITEM.asinteger)) then
  begin
    MessageDlg('Não existe saldo suficiente para copiar a locação.', mtInformation, [mbOK], 0);
    Abort;
  end;
  codigo := locacao.copiar(cdsCDLOCACAO.asinteger);
  if codigo <> 0 then
  begin
    Abrir(codigo);
  end;
end;

procedure Tfrmlocacao.actrenovarExecute(Sender: TObject);
var
  nudias : Integer;
begin
  if (locacao.tplocacao.boequipamentosaldo = _s) and (cdsCDSTLOCACAO.AsString = _2) and (not locacao.ExisteSaldoLocacaoEquipamento(cdscdequipamento.asstring, cdsQTITEM.asinteger)) then
  begin
    MessageDlg('Não existe saldo suficiente para renovar a locação.', mtInformation, [mbOK], 0);
    Abort;
  end;
  nudias := InformeNumeroDias(cdsNUDIAS.asinteger);
  if nudias = 0 then
  begin
    Exit;
  end;
  ExecutaSQL('update locacao '+
             'set dtinicio=dtprevista+1'+
                ',dtprevista=dtprevista+'+inttostr(nudias)+
                ',cdstlocacao=9'+
                ',qtitem=qtsaldo'+
                ',nudias='+inttostr(nudias)+
                ',vlequipamento='+FormatarMoedaA(locacao.ObterVlequipamento(cdscdequipamento.asinteger, cdsQTSALDO.asinteger))+
                ',vllocacao='+FormatarMoedaA(locacao.ObterPrecoLocacao(cdsCDequipamento.asinteger, nudias, cdsQTSALDO.asinteger))+' '+
             'where cdempresa='+empresa.cdempresa.tostring+' and cdlocacao='+cdsCDLOCACAO.AsString);
  locacao.cdlocacao := cdsCDLOCACAO.asinteger;
  locacao.RegistrarMudancaStatus(9);
  locacao.Select(cdsCDLOCACAO.asinteger);
  locacao.RegistrarPeriodo;
  Abrir(cdsCDLOCACAO.asinteger);
end;

procedure Tfrmlocacao.actabrirlocacaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds, cdsrenovacao);
end;

procedure Tfrmlocacao.grdrenovacaoDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cd+_locacao then
  begin
    actabrirlocacaoExecute(actabrirlocacao);
  end;
end;

procedure Tfrmlocacao.actdesfazerrenovacaoExecute(Sender: TObject);
begin
  if locacao.DesfazerRenovacao then
  begin
    Abrir(cdsCDLOCACAO.asinteger);
  end;
end;

procedure Tfrmlocacao.actdevolucaoExecute(Sender: TObject);
var
  cddevolucao : string;
begin
  locacao.Select(cdsCDLOCACAO.asinteger);
  if dlgLocacaoDevolucao(locacao) then
  begin
    cddevolucao := locacao.AdicionarDevolucao;
    Abrir(cdsCDLOCACAO.asinteger);
    cdsdevolucao.Locate(_cdlocacaodevolucao, cddevolucao, []);
    actimprimirdevolucaoExecute(Sender);
  end;
end;

procedure Tfrmlocacao.actabrirfuncionarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmlocacao.actabrirlocacaoanteriorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds, _cd+_locacao+_anterior, true);
end;

procedure Tfrmlocacao.txtcdlocacaoanteriorDblClick(Sender: TObject);
begin
  actabrirlocacaoanteriorExecute(actabrirlocacaoanterior);
end;

procedure Tfrmlocacao.actexcluirdevolucaoExecute(Sender: TObject);
begin
  locacao.ExcluirDevolucao(cdsdevolucaoCDLOCACAODEVOLUCAO.Asinteger);
  Abrir(cdsCDLOCACAO.asinteger);
end;

procedure Tfrmlocacao.cdsdevolucaoAfterScroll(DataSet: TDataSet);
begin
  actexcluirdevolucao.Visible := (cdsdevolucao.RecordCount > 0) and ((cdsCDSTLOCACAO.AsString = _5) or (cdsCDSTLOCACAO.AsString = _3) or (cdsCDSTLOCACAO.AsString = _6) or (cdsCDSTLOCACAO.AsString = _7)) and cdsdevolucaoNUSAIDA.IsNull;
end;

procedure Tfrmlocacao.cdsDTINICIOValidate(Sender: TField);
begin
  cdsDTPREVISTA.AsDateTime := cdsDTINICIO.AsDateTime + cdsNUDIAS.AsInteger - 1;
end;

procedure Tfrmlocacao.actabrirsaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitsaida);
end;

procedure Tfrmlocacao.cdsCDSTLOCACAOValidate(Sender: TField);
begin
  if Sender.AsString = _1 then
  begin
    actrenovar.Visible   := False;
    actdevolucao.Visible := False;
  end;
end;

procedure Tfrmlocacao.actreabrirExecute(Sender: TObject);
begin
  ExecutaSQL('update locacao set cdstlocacao=1 where cdempresa='+empresa.cdempresa.tostring+' and cdlocacao='+cdsCDLOCACAO.AsString);
  locacao.cdlocacao := cdsCDLOCACAO.asinteger;
  locacao.Registrarmudancastatus(1);
  locacao.locacaoperiodo.Ler(locacao.cdlocacao);
  locacao.locacaoperiodo.Delete;
  Abrir(cdsCDLOCACAO.asinteger);
end;

procedure Tfrmlocacao.grditsaidaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nu+_saida then
  begin
    actabrirsaidaExecute(actabrirsaida);
  end;
end;

procedure Tfrmlocacao.actabrirsaidadevolucaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdevolucao);
end;

procedure Tfrmlocacao.grddevolucaoDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nu+_saida then
  begin
    actabrirsaidadevolucaoExecute(actabrirsaidadevolucao);
  end;
end;

procedure Tfrmlocacao.cdsCDCLIENTECORESPONSAVELValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  if not locacao.clienteresponsavel.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  locacao.clienteresponsavel.stcliente.Select(locacao.clienteresponsavel.cdstcliente);
  if locacao.clienteresponsavel.stcliente.bogerarinfo <> _s then
  begin
    messagedlg('Cliente está no status '+locacao.clienteresponsavel.stcliente.nmstcliente+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  if locacao.tplocacao.cdtpcliente <> 0 then
  begin
    if locacao.clienteresponsavel.cdtpcliente = 0 then
    begin
      MessageDlg('O tipo de cliente não foi preenchido.'#13'Favor preencher para poder continuar.', mtInformation, [mbOK], 0);
      sender.FocusControl;
      abort;
    end;
    if locacao.clienteresponsavel.cdtpcliente <> locacao.tplocacao.cdtpcliente then
    begin
      MessageDlg('O tipo de cliente não é permitido para o tipo de locação selecionada.', mtInformation, [mbOK], 0);
      sender.FocusControl;
      abort;
    end;
  end;
  sender.DataSet.FieldByName(_nmcliente).AsString := locacao.clienteresponsavel.nmcliente;
end;

procedure Tfrmlocacao.cdsCDCLIENTEValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  if not locacao.cliente.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  locacao.cliente.stcliente.Select(locacao.cliente.cdstcliente);
  if locacao.cliente.stcliente.bogerarinfo <> _s then
  begin
    messagedlg('Cliente está no status '+locacao.cliente.stcliente.nmstcliente+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  if locacao.tplocacao.cdtpcliente <> 0 then
  begin
    if locacao.cliente.cdtpcliente = 0 then
    begin
      MessageDlg('O tipo de cliente não foi preenchido.'#13'Favor preencher para poder continuar.', mtInformation, [mbOK], 0);
      sender.FocusControl;
      abort;
    end;
    if locacao.cliente.cdtpcliente <> locacao.tplocacao.cdtpcliente then
    begin
      MessageDlg('O tipo de cliente não é permitido para o tipo de locação selecionada.', mtInformation, [mbOK], 0);
      sender.FocusControl;
      abort;
    end;
  end;
  sender.DataSet.FieldByName(_nmcliente).AsString := locacao.cliente.nmcliente;
end;

procedure Tfrmlocacao.actimprimircontratoExecute(Sender: TObject);
begin
  if cdsQTITEM.AsInteger = 0 then
  begin
    MessageDlg('Quantidade de itens não pode ser igual a zero.', mtInformation, [mbOK], 0);
    Abort;
  end;
  ImpimirRelatorioPadrao1(524, 'where locacao.cdempresa='+empresa.cdempresa.tostring+' and locacao.cdlocacao='+cdsCDLOCACAO.AsString);
  if cdsCDSTLOCACAO.AsString = _1 then
  begin
    ExecutaSQL('update locacao set cdstlocacao=4 where cdempresa='+empresa.cdempresa.tostring+' and cdlocacao='+cdsCDLOCACAO.AsString);
    locacao.cdlocacao := cdsCDLOCACAO.asinteger;
    locacao.Registrarmudancastatus(4);
    locacao.registrarperiodo;
    Abrir(cdsCDLOCACAO.asinteger);
  end;
end;

procedure Tfrmlocacao.acttrocarExecute(Sender: TObject);
var
  cdequipamento : integer;
begin
  cdequipamento := LocalizarEquipamento('', False, true);
  if cdequipamento = 0 then
  begin
    exit;
  end;
  if cdequipamento = cdsCDEQUIPAMENTO.AsInteger then
  begin
    MessageDlg('Selecione equipamento diferente da locação para realizar a troca.', mtInformation, [mbOK], 0);
    Exit;
  end;
  if locacao.tplocacao.boequipamentosaldo = _s then
  begin
    locacao.equipamento.Select(cdequipamento);
    if locacao.equipamento.qtsaldo < cdsQTSALDO.AsInteger then
    begin
      MessageDlg('Saldo do Equipamento ('+inttostr(locacao.equipamento.qtsaldo)+') não é suficiente para a troca.', mtInformation, [mbOK], 0);
      exit;
    end;
  end;
  registro.set_readonly_dados(self, false);
  qtitemRegistro := cdsQTITEM.AsInteger;
  cds.edit;
  registro.set_grade_item(self, True);
  boeditar := True;
  cdsCDEQUIPAMENTO.AsInteger := cdequipamento;
  actSalvarExecute(actSalvar);
end;

end.


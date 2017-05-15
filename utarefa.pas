unit utarefa;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls,
  ComCtrls, Controls, Graphics, Menus, ActnList, ShellApi,
  sqlexpr, FMTBcd, Provider, DBCtrls, DBClient, DB,
  JvExExtCtrls, JvExtComponent, JvClock,
  uexportarexcel, ustrings, uregistro, uconstantes,
  udatahora, ulocalizarcliente,
  classeusuario, classeregistrainformacao, classegerar, classeform,  classeempresa,
  classeexecutasql, classeretornasql, classeregistro, classeaplicacao, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxButtons, cxLabel, cxCheckListBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxDBEdit,
  cxCalendar, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxSpinEdit, cxTimeEdit, dxBar, cxPCdxBarPopupMenu,
  cxBlobEdit, cxGroupBox, cxListView, cxDBLabel, cxSplitter, cxNavigator,
  dxBarBuiltInMenu;

type
  Tfrmdlgtarefa = class(TForm)
    cds: TClientDataSet;
    dts: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    tmr1: TTimer;
    sdsCDTAREFA: TIntegerField;
    sdsCDSTTAREFA: TIntegerField;
    sdsCDTPTAREFA: TIntegerField;
    sdsCDITCONTCLIENTE: TIntegerField;
    sdsCDFUNCIONARIO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsDTEMISSAO: TDateField;
    sdsHREMISSAO: TTimeField;
    sdsDSOBSERVACAO: TBlobField;
    sdsHRDURACAO: TTimeField;
    sdsHRESTIMADA: TTimeField;
    sdsNMCLIENTE: TStringField;
    cdsCDTAREFA: TIntegerField;
    cdsCDSTTAREFA: TIntegerField;
    cdsCDTPTAREFA: TIntegerField;
    cdsCDITCONTCLIENTE: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsDTEMISSAO: TDateField;
    cdsHREMISSAO: TTimeField;
    cdsDSOBSERVACAO: TBlobField;
    cdsHRDURACAO: TTimeField;
    cdsHRESTIMADA: TTimeField;
    cdsNMCLIENTE: TStringField;
    sdsitcontcliente: TSQLDataSet;
    dspitcontcliente: TDataSetProvider;
    cdsitcontcliente: TClientDataSet;
    dtsitcontcliente: TDataSource;
    sdsDSTAG: TStringField;
    cdsDSTAG: TStringField;
    sdsNUDIAS: TIntegerField;
    cdsNUDIAS: TIntegerField;
    sdsDSSOLUCAO: TBlobField;
    cdsDSSOLUCAO: TBlobField;
    sdsNUFONE1: TStringField;
    cdsNUFONE1: TStringField;
    cdsCDTPTAREFA1: TIntegerField;
    sdsCDTPTAREFA1: TIntegerField;
    sdsDTPREVISTA: TDateField;
    cdsDTPREVISTA: TDateField;
    sdsNMTAREFA: TStringField;
    cdsNMTAREFA: TStringField;
    sdsNUFONE2: TStringField;
    cdsNUFONE2: TStringField;
    sdsPREXECUCAO: TFloatField;
    cdsPREXECUCAO: TFloatField;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    act: TActionList;
    actok: TAction;
    actcancelar1: TAction;
    pgc: TcxPageControl;
    tbstarefa: TcxTabSheet;
    tbsdiagnostico: TcxTabSheet;
    memdsdiagnostico: TcxDBMemo;
    memnmtarefa: TcxDBMemo;
    tbschecklist: TcxTabSheet;
    tbsacompanhamento: TcxTabSheet;
    tbsacao: TcxTabSheet;
    dtsacao: TDataSource;
    cdsacao: TClientDataSet;
    sdsacao: TSQLDataSet;
    dts1: TDataSource;
    grdacao: TcxGrid;
    sdsacaoCDACAO: TIntegerField;
    sdsacaoCDTAREFA: TIntegerField;
    sdsacaoCDUSUARIOI: TIntegerField;
    sdsacaoCDUSUARIOA: TIntegerField;
    sdsacaoCDCOMPUTADORI: TIntegerField;
    sdsacaoCDCOMPUTADORA: TIntegerField;
    sdsacaoTSINCLUSAO: TSQLTimeStampField;
    sdsacaoTSALTERACAO: TSQLTimeStampField;
    sdsacaoDTEMISSAO: TDateField;
    sdsacaoHRINICIO: TTimeField;
    sdsacaoHRFIM: TTimeField;
    sdsacaoHRDURACAO: TTimeField;
    sdsacaoCDFUNCIONARIO: TIntegerField;
    cdssdsacao: TDataSetField;
    cdsacaoCDACAO: TIntegerField;
    cdsacaoCDTAREFA: TIntegerField;
    cdsacaoCDUSUARIOI: TIntegerField;
    cdsacaoCDUSUARIOA: TIntegerField;
    cdsacaoCDCOMPUTADORI: TIntegerField;
    cdsacaoCDCOMPUTADORA: TIntegerField;
    cdsacaoTSINCLUSAO: TSQLTimeStampField;
    cdsacaoTSALTERACAO: TSQLTimeStampField;
    cdsacaoDTEMISSAO: TDateField;
    cdsacaoHRINICIO: TTimeField;
    cdsacaoHRFIM: TTimeField;
    cdsacaoHRDURACAO: TTimeField;
    cdsacaoCDFUNCIONARIO: TIntegerField;
    grdacaoLevel1: TcxGridLevel;
    tbvacao: TcxGridDBTableView;
    tbvacaoDTEMISSAO: TcxGridDBColumn;
    tbvacaoHRINICIO: TcxGridDBColumn;
    tbvacaoHRFIM: TcxGridDBColumn;
    tbvacaoHRDURACAO: TcxGridDBColumn;
    tbvacaoCDFUNCIONARIO: TcxGridDBColumn;
    tbvacaoDSOBSERVACAO: TcxGridDBColumn;
    sdstarefachecklist: TSQLDataSet;
    cdstarefachecklist: TClientDataSet;
    dtstarefachecklist: TDataSource;
    sdstarefachecklistCDTAREFACHECKLIST: TIntegerField;
    sdstarefachecklistCDUSUARIOI: TIntegerField;
    sdstarefachecklistCDUSUARIOA: TIntegerField;
    sdstarefachecklistCDCOMPUTADORI: TIntegerField;
    sdstarefachecklistCDCOMPUTADORA: TIntegerField;
    sdstarefachecklistCDTAREFA: TIntegerField;
    sdstarefachecklistTSINCLUSAO: TSQLTimeStampField;
    sdstarefachecklistTSALTERACAO: TSQLTimeStampField;
    sdstarefachecklistDSTAREFACHECKLIST: TStringField;
    sdstarefachecklistBOCONCLUSAO: TStringField;
    cdssdstarefachecklist: TDataSetField;
    cdstarefachecklistCDTAREFACHECKLIST: TIntegerField;
    cdstarefachecklistCDUSUARIOI: TIntegerField;
    cdstarefachecklistCDUSUARIOA: TIntegerField;
    cdstarefachecklistCDCOMPUTADORI: TIntegerField;
    cdstarefachecklistCDCOMPUTADORA: TIntegerField;
    cdstarefachecklistCDTAREFA: TIntegerField;
    cdstarefachecklistTSINCLUSAO: TSQLTimeStampField;
    cdstarefachecklistTSALTERACAO: TSQLTimeStampField;
    cdstarefachecklistDSTAREFACHECKLIST: TStringField;
    cdstarefachecklistBOCONCLUSAO: TStringField;
    tbvtarefachecklist: TcxGridDBTableView;
    grdtarefachecklistLevel1: TcxGridLevel;
    grdtarefachecklist: TcxGrid;
    tbvtarefachecklistDSTAREFACHECKLIST: TcxGridDBColumn;
    tbvtarefachecklistBOCONCLUSAO: TcxGridDBColumn;
    sdstarefachecklistNUSEQUENCIA: TIntegerField;
    cdstarefachecklistNUSEQUENCIA: TIntegerField;
    tbvtarefachecklistNUSEQUENCIA: TcxGridDBColumn;
    sdstarefaacompanhamento: TSQLDataSet;
    cdstarefaacompanhamento: TClientDataSet;
    dtstarefaacompanhamento: TDataSource;
    sdstarefaacompanhamentoCDTAREFAACOMPANHAMENTO: TIntegerField;
    sdstarefaacompanhamentoCDTAREFA: TIntegerField;
    sdstarefaacompanhamentoCDUSUARIOI: TIntegerField;
    sdstarefaacompanhamentoCDUSUARIOA: TIntegerField;
    sdstarefaacompanhamentoCDCOMPUTADORI: TIntegerField;
    sdstarefaacompanhamentoCDCOMPUTADORA: TIntegerField;
    sdstarefaacompanhamentoCDFUNCIONARIO: TIntegerField;
    sdstarefaacompanhamentoCDSETOR: TIntegerField;
    sdstarefaacompanhamentoTSINCLUSAO: TSQLTimeStampField;
    sdstarefaacompanhamentoTSALTERACAO: TSQLTimeStampField;
    sdstarefaacompanhamentoDSOBSERVACAO: TBlobField;
    sdstarefaacompanhamentoBORESOLVIDO: TStringField;
    tbvtarefaacompanhamento: TcxGridDBTableView;
    grdtarefaacompanhamentoLevel1: TcxGridLevel;
    grdtarefaacompanhamento: TcxGrid;
    cdssdstarefaacompanhamento: TDataSetField;
    cdstarefaacompanhamentoCDTAREFAACOMPANHAMENTO: TIntegerField;
    cdstarefaacompanhamentoCDTAREFA: TIntegerField;
    cdstarefaacompanhamentoCDUSUARIOI: TIntegerField;
    cdstarefaacompanhamentoCDUSUARIOA: TIntegerField;
    cdstarefaacompanhamentoCDCOMPUTADORI: TIntegerField;
    cdstarefaacompanhamentoCDCOMPUTADORA: TIntegerField;
    cdstarefaacompanhamentoCDFUNCIONARIO: TIntegerField;
    cdstarefaacompanhamentoCDSETOR: TIntegerField;
    cdstarefaacompanhamentoTSINCLUSAO: TSQLTimeStampField;
    cdstarefaacompanhamentoTSALTERACAO: TSQLTimeStampField;
    cdstarefaacompanhamentoDSOBSERVACAO: TBlobField;
    cdstarefaacompanhamentoBORESOLVIDO: TStringField;
    tbvtarefaacompanhamentoCDFUNCIONARIO: TcxGridDBColumn;
    tbvtarefaacompanhamentoCDSETOR: TcxGridDBColumn;
    tbvtarefaacompanhamentoBORESOLVIDO: TcxGridDBColumn;
    sdsCDPRIORIDADE: TIntegerField;
    cdsCDPRIORIDADE: TIntegerField;
    sdstarefaacompanhamentoCDFUNCIONARIOORIGEM: TIntegerField;
    sdstarefaacompanhamentoDTPREVISTA: TDateField;
    sdstarefaacompanhamentoHRESTIMADA: TTimeField;
    cdstarefaacompanhamentoCDFUNCIONARIOORIGEM: TIntegerField;
    cdstarefaacompanhamentoDTPREVISTA: TDateField;
    cdstarefaacompanhamentoHRESTIMADA: TTimeField;
    tbvtarefaacompanhamentoCDFUNCIONARIOORIGEM: TcxGridDBColumn;
    tbvtarefaacompanhamentoDTPREVISTA: TcxGridDBColumn;
    tbvtarefaacompanhamentoHRESTIMADA: TcxGridDBColumn;
    sdsCDGRAUDIFICULDADE: TIntegerField;
    cdsCDGRAUDIFICULDADE: TIntegerField;
    tbvtarefaacompanhamentoTSINCLUSAO: TcxGridDBColumn;
    gbxacompanhamento: TcxGroupBox;
    tbsoutros: TcxTabSheet;
    sdsCDPROJETO: TIntegerField;
    cdsCDPROJETO: TIntegerField;
    lblfuncionario: TLabel;
    cbxcdfuncionario: TcxDBLookupComboBox;
    sdsacao1: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    TimeField2: TTimeField;
    TimeField3: TTimeField;
    IntegerField7: TIntegerField;
    cdsacao1: TClientDataSet;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    SQLTimeStampField3: TSQLTimeStampField;
    SQLTimeStampField4: TSQLTimeStampField;
    DateField2: TDateField;
    TimeField4: TTimeField;
    TimeField5: TTimeField;
    TimeField6: TTimeField;
    IntegerField14: TIntegerField;
    dtsacao1: TDataSource;
    cdssdsacao1: TDataSetField;
    sdsacaoDSOBSERVACAO: TStringField;
    cdsacaoDSOBSERVACAO: TStringField;
    sdsacao1DSOBSERVACAO: TStringField;
    cdsacao1DSOBSERVACAO: TStringField;
    lbl2: TLabel;
    edtprexecucao: TcxDBSpinEdit;
    cbxcdgraudificuldade: TcxDBLookupComboBox;
    lblgraudificuldade: TLabel;
    lblnuversao: TLabel;
    edtdstag: TcxDBTextEdit;
    actnovo: TAction;
    gbxacao: TcxGroupBox;
    memdssolucao: TcxDBMemo;
    memacompanhamento: TcxMemo;
    sdstarefaacompanhamentoTSTERMINO: TSQLTimeStampField;
    cdstarefaacompanhamentoTSTERMINO: TSQLTimeStampField;
    ckbboresolvido: TcxCheckBox;
    cdsDTTERMINO: TDateField;
    cdsHRTERMINO: TTimeField;
    sdsDTTERMINO: TDateField;
    sdsHRTERMINO: TTimeField;
    actcopiar: TAction;
    sdstarefaacompanhamentoDTTERMINO: TDateField;
    cdstarefaacompanhamentoDTTERMINO: TDateField;
    sdsEMAIL: TStringField;
    sdsNUFONECONTATO: TStringField;
    cdsEMAIL: TStringField;
    cdsNUFONECONTATO: TStringField;
    tbvtarefaacompanhamentoDSOBSERVACAO: TcxGridDBColumn;
    Panel1: TPanel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnnovo: TcxButton;
    btncopiar: TcxButton;
    Panel2: TPanel;
    lblsttarefa: TLabel;
    lblcdcliente: TLabel;
    lblvendedor: TLabel;
    lblcdform: TLabel;
    txtnufone1: TDBText;
    txtNUFONE2: TDBText;
    lbl3: TLabel;
    Label4: TLabel;
    lbltermino: TLabel;
    txtnufonecontato: TDBText;
    txtemail: TDBText;
    cbxcditcontcliente: TcxDBLookupComboBox;
    cbxcdtptarefa: TcxDBLookupComboBox;
    cbxcdsttarefa: TcxDBLookupComboBox;
    cbxcdtptarefa1: TcxDBLookupComboBox;
    btn1: TcxButton;
    cbxcdcliente: TcxDBLookupComboBox;
    btn2: TcxButton;
    btn4: TcxButton;
    btn5: TcxButton;
    clkduracao: TJvClock;
    txtdttermino: TcxDBLabel;
    txthrtermino: TcxDBLabel;
    btnenviaremail: TcxButton;
    actenviaremail: TAction;
    lbltpmotivotarefa: TLabel;
    cbxcdtpmotivotarefa: TcxDBLookupComboBox;
    sdsCDTPMOTIVOTAREFA: TIntegerField;
    cdsCDTPMOTIVOTAREFA: TIntegerField;
    actresolvido: TAction;
    btnresolvido: TcxButton;
    cxSplitter1: TcxSplitter;
    sdsQTDURACAO: TFloatField;
    cdsQTDURACAO: TFloatField;
    sdsacaoQTDURACAO: TFloatField;
    cdsacaoQTDURACAO: TFloatField;
    sdstarefachecklistTSCONCLUSAO: TSQLTimeStampField;
    cdstarefachecklistTSCONCLUSAO: TSQLTimeStampField;
    tbvtarefachecklistTSCONCLUSAO: TcxGridDBColumn;
    tbvtarefachecklistBOINICIO: TcxGridDBColumn;
    tbvtarefachecklistTSINICIO: TcxGridDBColumn;
    sdstarefachecklistBOINICIO: TStringField;
    sdstarefachecklistTSINICIO: TSQLTimeStampField;
    cdstarefachecklistBOINICIO: TStringField;
    cdstarefachecklistTSINICIO: TSQLTimeStampField;
    sdstarefachecklistQTDURACAO: TFloatField;
    cdstarefachecklistQTDURACAO: TFloatField;
    tbvtarefachecklistQTDURACAO: TcxGridDBColumn;
    tbsemail: TcxTabSheet;
    tbvlogemail: TcxGridDBTableView;
    grdlogemailLevel1: TcxGridLevel;
    grdlogemail: TcxGrid;
    dtslogemail: TDataSource;
    cdslogemail: TClientDataSet;
    sdslogemail: TSQLDataSet;
    sdslogemailCDLOGEMAIL: TIntegerField;
    sdslogemailCDUSUARIO: TIntegerField;
    sdslogemailCDTAREFA: TIntegerField;
    sdslogemailCDCOMPUTADOR: TIntegerField;
    sdslogemailTSREGISTRO: TSQLTimeStampField;
    sdslogemailDSMENSAGEM: TBlobField;
    sdslogemailDSDESTINATARIO: TStringField;
    sdslogemailDSCC: TStringField;
    sdslogemailDSTITULO: TStringField;
    sdslogemailDSANEXO: TBlobField;
    cdssdslogemail: TDataSetField;
    cdslogemailCDLOGEMAIL: TIntegerField;
    cdslogemailCDUSUARIO: TIntegerField;
    cdslogemailCDTAREFA: TIntegerField;
    cdslogemailCDCOMPUTADOR: TIntegerField;
    cdslogemailTSREGISTRO: TSQLTimeStampField;
    cdslogemailDSMENSAGEM: TBlobField;
    cdslogemailDSDESTINATARIO: TStringField;
    cdslogemailDSCC: TStringField;
    cdslogemailDSTITULO: TStringField;
    cdslogemailDSANEXO: TBlobField;
    tbvlogemailNMUSUARIO: TcxGridDBColumn;
    tbvlogemailNMCOMPUTADOR: TcxGridDBColumn;
    tbvlogemailTSREGISTRO: TcxGridDBColumn;
    tbvlogemailDSMENSAGEM: TcxGridDBColumn;
    tbvlogemailDSDESTINATARIO: TcxGridDBColumn;
    tbvlogemailDSCC: TcxGridDBColumn;
    tbvlogemailDSTITULO: TcxGridDBColumn;
    tbvlogemailDSANEXO: TcxGridDBColumn;
    sdslogemailNMUSUARIO: TStringField;
    sdslogemailNMCOMPUTADOR: TStringField;
    cdslogemailNMUSUARIO: TStringField;
    cdslogemailNMCOMPUTADOR: TStringField;
    tbsmanual: TcxTabSheet;
    lblacao: TLabel;
    edtdtacao: TcxDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    edthrfim: TcxDBTimeEdit;
    edthrinicio: TcxDBTimeEdit;
    Label5: TLabel;
    cbxcdprojeto: TcxDBLookupComboBox;
    lbl1: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lblhremissao: TLabel;
    edthremissao: TcxDBTimeEdit;
    lblhrduracao: TLabel;
    clkhrduracao: TJvClock;
    lblprioridade: TLabel;
    cbxcdprioridade: TcxDBLookupComboBox;
    lblhrestimada: TLabel;
    edthrestimada: TcxDBTimeEdit;
    lbldtprevista: TLabel;
    edtdtprevista: TcxDBDateEdit;
    chkmanual: TCheckBox;
    actarquivo: TAction;
    btnarquivo: TcxButton;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    sdslogemailCDEMPRESA: TLargeintField;
    sdsacaoCDEMPRESA: TLargeintField;
    sdstarefachecklistCDEMPRESA: TLargeintField;
    sdstarefaacompanhamentoCDEMPRESA: TLargeintField;
    sdsacao1CDEMPRESA: TLargeintField;
    sdsacao1QTDURACAO: TFloatField;
    cdslogemailCDEMPRESA: TLargeintField;
    cdsacaoCDEMPRESA: TLargeintField;
    cdstarefachecklistCDEMPRESA: TLargeintField;
    cdstarefaacompanhamentoCDEMPRESA: TLargeintField;
    cdsacao1CDEMPRESA: TLargeintField;
    cdsacao1QTDURACAO: TFloatField;
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure tmr1Timer(Sender: TObject);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure btn1Click(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdclienteEnter(Sender: TObject);
    procedure cbxcdtptarefaEnter(Sender: TObject);
    procedure cbxcdtptarefa1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actokExecute(Sender: TObject);
    procedure actcancelar1Execute(Sender: TObject);
    procedure cdstarefachecklistNewRecord(DataSet: TDataSet);
    procedure cdstarefachecklistBeforePost(DataSet: TDataSet);
    procedure cdstarefaacompanhamentoNewRecord(DataSet: TDataSet);
    procedure cdstarefaacompanhamentoBeforePost(DataSet: TDataSet);
    procedure cbxcdfuncionarioEnter(Sender: TObject);
    procedure cdsacaoHRFIMValidate(Sender: TField);
    procedure cdsacaoBeforePost(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cbxcdprojetoEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actnovoExecute(Sender: TObject);
    procedure chkmanualClick(Sender: TObject);
    procedure cdstarefaacompanhamentoBORESOLVIDOValidate(Sender: TField);
    procedure actcopiarExecute(Sender: TObject);
    procedure cdstarefaacompanhamentoCDFUNCIONARIOValidate(Sender: TField);
    procedure actenviaremailExecute(Sender: TObject);
    procedure actresolvidoExecute(Sender: TObject);
    procedure cdsacaoAfterOpen(DataSet: TDataSet);
    procedure cdstarefaacompanhamentoAfterOpen(DataSet: TDataSet);
    procedure ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsacaoHRDURACAOValidate(Sender: TField);
    procedure cdsHRDURACAOValidate(Sender: TField);
    procedure cdsCDITCONTCLIENTEValidate(Sender: TField);
    procedure cdstarefachecklistAfterScroll(DataSet: TDataSet);
    procedure cdstarefachecklistBOCONCLUSAOValidate(Sender: TField);
    procedure cdstarefachecklistBOINICIOValidate(Sender: TField);
    procedure FormDestroy(Sender: TObject);
    procedure actarquivoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private   { Private declarations }
    registro : TRegistro;
    hrfim    : TTime;
    cdtarefaacompanhamento : string;
    boarquivo, boinsert : Boolean;
    tab : TcxTabSheet;
    pgctarefa: TcxPageControl;
    procedure FormShow;
    procedure atualizarContatocliente;
    procedure ExibirEncaminhamento;
    procedure ResolverAcompanhamento;
    procedure AbrirTabelas;
    function get_acao: string;
    function get_encaminhamento: string;
    function get_ok: string;
  public    { Public declarations }
  end;

function ShowTarefa(codigo: integer; pgctarefa: TcxPageControl; form: TForm; cdcliente:string=''; cditcontcliente:string=''; cdtptarefa:string=''; cdtptarefa1:string=''; cdprojeto:string=''):boolean;

var
  frmdlgtarefa: Tfrmdlgtarefa;

implementation

uses uMain, uDtmMain, ulocalizarFuncionario, uNovoTabela,
  classearquivo, Math, uDBMemo, Variants, udlgRichEdit, udlgarquivo;

{$R *.DFM}

var
  tab : TcxTabSheet;

function ShowTarefa(codigo: integer; pgctarefa: TcxPageControl; form: TForm; cdcliente:string=''; cditcontcliente:string=''; cdtptarefa:string=''; cdtptarefa1:string=''; cdprojeto:string=''):boolean;
begin
  if TQForm.ExisteComponente(form, _tarefa+codigo.ToString) then
  begin
    result := false;
    exit;
  end;

  result                 := False;
  frmdlgtarefa           := Tfrmdlgtarefa.Create(application);
  frmdlgtarefa.pgctarefa := pgctarefa;

  tab         := TcxTabSheet.Create(form);
  tab.parent  := pgctarefa;
  tab.name    := Maiuscula(_Tarefa)+codigo.ToString;
  tab.Caption := Maiuscula(_Tarefa)+' '+codigo.ToString;
  tab.show;

  frmdlgtarefa.tab         := tab;
  frmdlgtarefa.Parent      := tab;
  frmdlgtarefa.BorderStyle := bsnone;
  frmdlgtarefa.Align       := alclient;
  frmdlgtarefa.bringtofront;
  frmdlgtarefa.Visible     := true;

  with frmdlgtarefa do
  begin
    if qregistro.CodigoExiste(_tarefa, codigo) then
    begin
      sds.ParamByName(_cdtarefa).asinteger  := codigo;
      sds.ParamByName(_cdempresa).ASlargeInt := empresa.cdempresa;
    end;
    cds.Open;
    registro.set_readonly_dados(frmdlgtarefa, false);
    registro.set_grade_item(frmdlgtarefa, true);
    if cds.RecordCount = 0 then
    begin
      cds.Insert;
      boinsert := True;
      cds.FieldByName(_cdtarefa).asinteger := codigo;
      if (cdcliente <> '') or (cdtptarefa <> '') or (cdtptarefa1 <> '') or (cdprojeto <> '') then
      begin
        cds.fieldbyname(_CDEMPRESA).AsLargeInt := empresa.cdempresa;
        cds.fieldbyname(_cdcliente).AsString := cdcliente;
        cdsCDITCONTCLIENTE.AsString := cditcontcliente;
        cdsCDTPTAREFA.AsString      := cdtptarefa;
        cdsCDTPTAREFA1.AsString     := cdtptarefa1;
        cdscdprojeto.asstring       := cdprojeto;
      end;
    end
    else
    begin
      cds.Edit;
      atualizarContatocliente;
      cds.ReadOnly := (cdsCDFUNCIONARIO.AsInteger <> usuario.funcionario.cdfuncionario) and (usuario.funcionario.cdsetor <> qregistro.InteirodoCodigo(_funcionario, cdsCDFUNCIONARIO.AsInteger, _cdsetor));
    end;
    cdsacao1.ReadOnly := true;
    if Trim(cdsDSOBSERVACAO.AsString) <> '' then
    begin
      tbsdiagnostico.Caption := tbsdiagnostico.Caption + ' (*)';
    end;
    caption := 'Tarefa '+cds.fieldbyname(_cdtarefa).AsString+' - Criada por '+cbxcdfuncionario.Text;
    cdslogemail.readonly := true;

    FormShow;

    if ModalResult = mrok then
    begin
      Result := True;
    end;
  end;
end;

procedure Tfrmdlgtarefa.atualizarContatocliente;
begin
  cdsitcontcliente.Close;
  sdsitcontcliente.Close;
  if cds.FieldByName(_cdcliente).AsString = '' then
  begin
    Exit;
  end;
  sdsitcontcliente.Parambyname(_cdempresa).AsLargeInt := cds.FieldByName(_CDEMPRESA).AsLargeInt;
  sdsitcontcliente.Parambyname(_cdcliente).AsLargeInt := cds.FieldByName(_cdcliente).AsLargeInt;
  cdsitcontcliente.Open;
end;

procedure Tfrmdlgtarefa.cdsNewRecord(DataSet: TDataSet);
begin
  cdsDTEMISSAO.AsDateTime       := DtBanco;
  cdsHREMISSAO.AsDateTime       := HrBanco;
  cdsDTTERMINO.AsDateTime       := cdsDTEMISSAO.AsDateTime;
  cdsHRDURACAO.AsDateTime       := StrToTime(_00_00_00);
  cdsHRESTIMADA.AsDateTime      := StrToTime(_00_00_00);
  cdsCDSTTAREFA.AsInteger        := qregistro.Codigo_status_novo(_tarefa);
  cdsCDTPTAREFA.AsString        := RetornaSQLString('select min(cdtptarefa) from tptarefa WHERE CDEMPRESA='+empresa.cdempresa.tostring);
  cdsPREXECUCAO.AsFloat         := 0;
  cdsCDPRIORIDADE.AsString      := _1;
  cdsCDgraudificuldade.AsString := _1;
  cdsCDFUNCIONARIO.AsInteger    := usuario.funcionario.cdfuncionario;
end;

procedure Tfrmdlgtarefa.tmr1Timer(Sender: TObject);
begin
  if cdsacao.State = dsbrowse then
  begin
    cdsacao.Edit;
  end;
  cdsacaoHRFIM.AsDateTime := HrBanco;
  hrfim                   := cdsacaoHRFIM.AsDateTime;
end;

procedure Tfrmdlgtarefa.cdsCDCLIENTEValidate(Sender: TField);
begin
  cdsNMCLIENTE.asstring := NomedoCodigo(_cliente, sender.asstring);
  cdsNUFONE1.AsString   := NomedoCodigo(_cliente, sender.asstring, _nufone1);
  cdsNUFONE2.AsString   := NomedoCodigo(_cliente, sender.asstring, _nufone2);
  cdsCDITCONTCLIENTE.Clear;
  atualizarContatocliente;
end;

procedure Tfrmdlgtarefa.btn1Click(Sender: TObject);
var
  cditcontcliente : string;
begin
  if cbxcdcliente.Text = '' then
  begin
    messagedlg('Preencha o cliente antes de inserir um contato.', mtinformation, [mbok], 0);
    exit;
  end;
  cditcontcliente := InserirRegistroTabela(_itcontcliente, 'Contato Cliente', cds.FieldByName(_cdcliente).AsString, False, empresa.tarefa.boemailcontato);
  if cditcontcliente <> '' then
  begin
    atualizarContatocliente;
    cds.fieldbyname(_cditcontcliente).AsString := cditcontcliente;
  end;
end;

procedure Tfrmdlgtarefa.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdlgtarefa.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmdlgtarefa.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmdlgtarefa.btn2Click(Sender: TObject);
var
  cd : LargeInt;
begin
  cd := LocalizarCliente(true);
  if cd = 0 then
  begin
    Exit;
  end;
  if (cds.State <> dsinsert) and (cds.State <> dsedit) then
  begin
    cds.Edit;
  end;
  cds.fieldbyname(_CDCLIENTE).AsLargeInt := cd;
  cds.fieldbyname(_nmcliente).asstring := qregistro.NomedoCodigo(_cliente, cd);
end;

procedure Tfrmdlgtarefa.btn5Click(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_tptarefa+_1, 'Tipo 1 Tarefa');
  if codigo <> '' then
  begin
    abrir_tabela(_tptarefa+_1);
    cds.fieldbyname(_cd+_tp+_tarefa+_1).AsString := codigo;
  end;
end;

procedure Tfrmdlgtarefa.btn4Click(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_tptarefa, 'Tipo Tarefa');
  if codigo <> '' then
  begin
    abrir_tabela(_tptarefa);
    cds.fieldbyname(_cd+_tp+_tarefa).AsString := codigo;
  end;
end;

procedure Tfrmdlgtarefa.FormCreate(Sender: TObject);
begin
  boinsert  := False;
  boarquivo := False;
  tbsdiagnostico.TabVisible := Empresa.tarefa.bodiagnostico;
  tbschecklist.TabVisible   := Empresa.tarefa.bolistaverificacao;
  registro                  := tregistro.create(self, _tarefa, _tarefa, _o, cds, dts, nil, true);
  AbrirTabelas;
end;

procedure Tfrmdlgtarefa.FormDestroy(Sender: TObject);
begin
  tab.name := '';
  tab.TabVisible := false;
end;

procedure Tfrmdlgtarefa.cbxcdclienteEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_cliente);
end;

procedure Tfrmdlgtarefa.cbxcdtptarefaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tptarefa);
end;

procedure Tfrmdlgtarefa.cbxcdtptarefa1Enter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tptarefa+_1);
end;

procedure Tfrmdlgtarefa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmdlgtarefa.actokExecute(Sender: TObject);
begin
  if cbxcdsttarefa.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Status]), mtinformation, [mbok], 0);
    cbxcdsttarefa.SetFocus;
    Abort;
  end;
  if cbxcdtptarefa.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cbxcdtptarefa.SetFocus;
    Abort;
  end;
  if memnmtarefa.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_descricao]), mtinformation, [mbok], 0);
    memnmtarefa.SetFocus;
    Abort;
  end;
  if cbxcdfuncionario.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Criador]), mtinformation, [mbok], 0);
    cbxcdfuncionario.SetFocus;
    Abort;
  end;
  if usuario.funcionario.cdfuncionario = 0 then
  begin
    MessageDlg('Não há funcionário associado ao usuário.'#13'Defina um usuário no cadastro do funcionário antes de continuar.', mtinformation, [mbok], 0);
    Abort;
  end;
  if (cdstarefaacompanhamento.State = dsedit) or (cdstarefaacompanhamento.State = dsinsert) then
  begin
    cdstarefaacompanhamento.Post;
  end;
  modalresult := mrok;
  if cds.ReadOnly then
  begin
    cds.ReadOnly := false;
  end;
  if cbxcdsttarefa.EditValue <> _2 then
  begin
    cdsDTTERMINO.Clear;
    cdsHRTERMINO.Clear;
  end
  else if cdsdtTERMINO.IsNull then
  begin
    cdsDTTERMINO.AsDateTime := dtBanco;
    cdshrTERMINO.AsDateTime := hrBanco;
    cdsnudias.AsInteger     := DiferencaDias(cdsdttermino.asdatetime, cdsDTemissao.asdatetime);
  end;
  cdsacao.Last;
  if (cdsacao.State <> dsInsert) or (cdsacao.State <> dsEdit) then
  begin
    cdsacao.Edit;
  end;
  if not chkmanual.Checked then
  begin
    cdsacaoHRFIM.AsDateTime := hrfim;
  end;
  cds.ApplyUpdates(0);
  ResolverAcompanhamento;
  close;
end;

procedure Tfrmdlgtarefa.actcancelar1Execute(Sender: TObject);
var
  cdtarefa : integer;
begin
  if boinsert then
  begin
    cdtarefa := cdsCDTAREFA.AsInteger;
    if boarquivo then
    begin
      cds.Delete;
      cds.ApplyUpdates(0);
    end;
    registro.voltar_codigo_excluido(_tarefa, cdtarefa);
  end;
  close;
end;

procedure Tfrmdlgtarefa.cdstarefachecklistNewRecord(DataSet: TDataSet);
begin
  cdstarefachecklistCDTAREFACHECKLIST.AsString := GerarCodigo(_tarefa+_check+_list);
  cdstarefachecklistBOCONCLUSAO.AsString       := _N;
  cdstarefachecklistBOINICIO .AsString         := _N;
  cdstarefachecklistNUSEQUENCIA.AsInteger      := cdstarefachecklist.RecordCount + 1;
end;

procedure Tfrmdlgtarefa.cdstarefachecklistAfterScroll(DataSet: TDataSet);
begin
  if cdstarefachecklist.RecordCount > 0 then
  begin
    tbschecklist.Caption := 'Lista Verificação ('+inttostr(cdstarefachecklist.RecordCount)+')';
  end;
end;

procedure Tfrmdlgtarefa.cdstarefachecklistBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdstarefachecklist);
end;

procedure Tfrmdlgtarefa.cdstarefachecklistBOCONCLUSAOValidate(Sender: TField);
var
  tsduracao : TDateTime;
begin
  if sender.AsString = _s then
  begin
    cdstarefachecklistTSCONCLUSAO.AsDateTime := tsBanco;
    if not cdstarefachecklistTSINICIO.ISNULL then
    begin
      tsduracao := cdstarefachecklistTSCONCLUSAO.AsDateTime - cdstarefachecklistTSINICIO.AsDateTime;
      cdstarefachecklistqtduracao.AsFloat := RoundTo(((StrToInt(FormatDateTime('hh', tsduracao))*60)+StrToInt(FormatDateTime('nn', tsduracao))) * 0.01666666666666667, -2);
    end;
  end
  else
  begin
    cdstarefachecklistTSCONCLUSAO.Clear;
    cdstarefachecklistqtduracao.clear;
  end;
end;

procedure Tfrmdlgtarefa.cdstarefachecklistBOINICIOValidate(Sender: TField);
begin
  if sender.AsString = _s then
  begin
    cdstarefachecklistTSINICIO.AsDateTime := tsBanco
  end
  else
  begin
    cdstarefachecklistTSINICIO.Clear;
  end;
end;

procedure Tfrmdlgtarefa.cdstarefaacompanhamentoNewRecord(DataSet: TDataSet);
begin
  cdstarefaacompanhamentoCDTAREFAACOMPANHAMENTO.AsString := GerarCodigo(_tarefa+_acompanhamento);
  cdstarefaacompanhamentoBORESOLVIDO.AsString            := _N;
  cdstarefaacompanhamentoCDFUNCIONARIOORIGEM.AsString    := CodigodoCampo(_funcionario, inttostr(usuario.cdusuario), _cdusuario);
  cdstarefaacompanhamentoHRESTIMADA.AsDateTime           := cdsHRESTIMADA.AsDateTime;
  if (cdsDTPREVISTA.AsDateTime > DtBanco) and (not cdsDTPREVISTA.IsNull) then
  begin
    cdstarefaacompanhamentoDTPREVISTA.AsDateTime := cdsDTPREVISTA.AsDateTime;
  end;
  cdstarefaacompanhamentoCDFUNCIONARIO.FocusControl;
end;

procedure Tfrmdlgtarefa.cdstarefaacompanhamentoBeforePost(DataSet: TDataSet);
begin
  if cdstarefaacompanhamentoCDFUNCIONARIO.AsString = cdstarefaacompanhamentoCDFUNCIONARIOORIGEM.AsString then
  begin
    MessageDlg('Não pode encaminhar uma tarefa para si mesmo.', mtConfirmation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(cdstarefaacompanhamento);
end;

procedure Tfrmdlgtarefa.cbxcdfuncionarioEnter(Sender: TObject);
begin
  abrir_tabela(_funcionario);
  colorenter(Sender);
end;

procedure Tfrmdlgtarefa.cdsacaoHRFIMValidate(Sender: TField);
begin
  cdsacaoHRDURACAO.AsDateTime := cdsacaoHRFIM.AsDateTime - cdsacaoHRINICIO.AsDateTime;
  edthrinicio.Time            := cdsacaoHRINICIO.AsDateTime;
  edthrfim.Time               := cdsacaoHRFIM.AsDateTime;
  clkduracao.FixedTime        := cdsacaoHRDURACAO.AsDateTime;
end;

procedure Tfrmdlgtarefa.cdsacaoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsacao);
end;

procedure Tfrmdlgtarefa.cdsBeforePost(DataSet: TDataSet);
begin
  cdsHRDURACAO.AsDateTime := cdsHRDURACAO.AsDateTime + cdsacaoHRDURACAO.AsDateTime;
  registro.set_update(cds);
end;

procedure Tfrmdlgtarefa.cbxcdprojetoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_projeto);
end;

procedure Tfrmdlgtarefa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Close;
  end;
end;

procedure Tfrmdlgtarefa.cdsAfterScroll(DataSet: TDataSet);
begin
  ExibirEncaminhamento;
  clkhrduracao.FixedTime := cdsHRDURACAO.AsDateTime;
  actresolvido.Visible   := ((cdsCDSTTAREFA.AsString = _1) and ((usuario.funcionario.cdfuncionario = cdsCDFUNCIONARIO.AsInteger) or
                                                               (usuario.funcionario.cdsetor= qregistro.InteirodoCodigo(_funcionario, cdsCDFUNCIONARIO.AsInteger, _cdsetor)))) or
                            gbxacompanhamento.Visible;
end;

procedure Tfrmdlgtarefa.ExibirEncaminhamento;
var
  q : tClasseQuery;
begin
  if cds.State = dsinsert then
  begin
    Exit;
  end;
  q := tClasseQuery.Create('select first 1 cdtarefaacompanhamento'+
                                 ',dsobservacao'+
                                 ',cdfuncionarioorigem '+
                           'from tarefaacompanhamento '+
                           'where cdempresa='+empresa.cdempresa.tostring+' and cdtarefa='+cdsCDTAREFA.AsString+' and cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+' and boresolvido=''N''');
  try
    while not q.q.Eof do
    begin
      gbxacompanhamento.Visible             := q.q.fieldbyname(_dsobservacao).AsString <> '';
      memacompanhamento.lines.Text          := q.q.fieldbyname(_dsobservacao).AsString;
      memacompanhamento.Properties.ReadOnly := True;
      gbxacompanhamento.Caption             := gbxacompanhamento.Caption + ' de '+NomedoCodigo(_funcionario, q.q.fieldbyname(_cdfuncionario+_origem).asstring);
      cdtarefaacompanhamento                := q.q.fieldbyname(_cdtarefa+_acompanhamento).AsString;
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmdlgtarefa.actnovoExecute(Sender: TObject);
var
  cdtarefa : integer;
begin
  cdtarefa := qgerar.gerarcodigo(_tarefa);
  ShowTarefa(cdtarefa, pgctarefa, self);
end;

procedure Tfrmdlgtarefa.chkmanualClick(Sender: TObject);
begin
  edtdtacao.Properties.ReadOnly   := not chkmanual.Checked;
  edthrinicio.Properties.ReadOnly := not chkmanual.Checked;
  edthrfim.Properties.ReadOnly    := not chkmanual.Checked;
  tmr1.Enabled                    := not chkmanual.Checked;
end;

procedure Tfrmdlgtarefa.cdstarefaacompanhamentoBORESOLVIDOValidate(Sender: TField);
begin
  if sender.AsString = _s then
  begin
    cdstarefaacompanhamentoTSTERMINO.AsDateTime := tsBanco;
    cdstarefaacompanhamentoDTTERMINO.AsDateTime := cdstarefaacompanhamentoTSTERMINO.AsDateTime;
  end
  else
  begin
    cdstarefaacompanhamentoTSTERMINO.Clear;
    cdstarefaacompanhamentodtTERMINO.Clear;
  end;
end;

procedure Tfrmdlgtarefa.ResolverAcompanhamento;
begin
  if not ckbboresolvido.Checked then
  begin
    Exit;
  end;
  ExecutaSQL('update tarefaacompanhamento set boresolvido=''S'',tstermino='+quotedstr(tsBancos)+' '+
             'where cdempresa='+cds.FieldByName(_cdempresa).asstring+' and cdtarefaacompanhamento='+cdtarefaacompanhamento);
end;

procedure Tfrmdlgtarefa.AbrirTabelas;
begin
  cbxcdcliente.Properties.ListSource := abrir_tabela(_cliente);
  cbxcdfuncionario.Properties.ListSource := abrir_tabela(_funcionario);
  cbxcdtptarefa.Properties.ListSource := abrir_tabela(_tptarefa);
  cbxcdprojeto.Properties.ListSource := abrir_tabela(_projeto);
  cbxcdtptarefa1.Properties.ListSource := abrir_tabela(_tptarefa + _1);
  cbxcdsttarefa.Properties.ListSource := abrir_tabela(_sttarefa);
  cbxcdprioridade.Properties.ListSource := abrir_tabela(_prioridade);
  cbxcdtpmotivotarefa.Properties.ListSource := abrir_tabela(_tp + _motivo + _tarefa);
  cbxcdprojeto.Properties.ListSource := abrir_tabela(_projeto);
  cbxcdgraudificuldade.Properties.ListSource := abrir_tabela(_grau + _dificuldade);
  TcxLookupComboBoxProperties(tbvacaoCDFUNCIONARIO.Properties).ListSource := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvtarefaacompanhamentoCDFUNCIONARIO.Properties).ListSource := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvtarefaacompanhamentoCDFUNCIONARIOORIGEM.Properties).ListSource := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvtarefaacompanhamentoCDSETOR.Properties).ListSource := abrir_tabela(_setor);
end;

procedure Tfrmdlgtarefa.actcopiarExecute(Sender: TObject);
var
  cdtarefa : integer;
begin
  cdtarefa := qgerar.gerarcodigo(_tarefa);
  ShowTarefa(cdtarefa, pgctarefa, TForm(self.owner), cds.fieldbyname(_CDCLIENTE).asstring, cdsCDITCONTCLIENTE.AsString, cdsCDTPTAREFA.AsString, cdscdtptarefa1.AsString, cdscdprojeto.asstring);
end;

procedure Tfrmdlgtarefa.cdstarefaacompanhamentoCDFUNCIONARIOValidate(Sender: TField);
var
  cdstfuncionario : string;
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  cdstfuncionario := NomedoCodigo(_funcionario, sender.AsString, _cdstfuncionario);
  if (cdstfuncionario <> _1) and (cdstfuncionario <> _2) then
  begin
    MessageDlg('Funcionáio está no status '+NomedoCodigo(_stfuncionario, cdstfuncionario)+'.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

function Tfrmdlgtarefa.get_acao:string;
begin
  cdsacao.First;
  result := '';
  while not cdsacao.Eof do
  begin
    result := result + #13+espaco(3)+'Emissão: '    +FormatDateTime(_dd_mm_yyyy, cdsacaoDTEMISSAO.AsDateTime)+
                                     ' Início: '     +formatdatetime(_hh_mm_ss  , cdsacaoHRINICIO.AsDateTime)+
                                     ' Fim: '        +formatdatetime(_hh_mm_ss  , cdsacaoHRFIM.AsDateTime)+
                                     ' Duração: '    +formatdatetime(_hh_mm_ss  , cdsacaoHRDURACAO.AsDateTime)+
                                     ' Funcionário: '+NomedoCodigo(_funcionario, cdsacaoCDFUNCIONARIO.AsString);
    if Trim(cdsacaoDSOBSERVACAO.AsString) <> '' then
    begin
      result := result + ' Ação: ' +cdsacaoDSOBSERVACAO.AsString;
    end;
    cdsacao.Next;
  end;
  if result <> '' then
  begin
    result := #13#13'Ação'+result;
  end;
end;

function Tfrmdlgtarefa.get_ok:string;
begin
  if cdstarefaacompanhamentoBORESOLVIDO.AsString = _s then
  begin
    result := ' Sim '
  end
  else
  begin
    result := ' Não ';
  end;
end;

function Tfrmdlgtarefa.get_encaminhamento:string;
begin
  cdstarefaacompanhamento.First;
  result := '';
  while not cdstarefaacompanhamento.Eof do
  begin
    result := result + #13+espaco(3)+'De quem: '+NomedoCodigo(_funcionario, cdstarefaacompanhamentoCDFUNCIONARIOORIGEM.AsString)+
                                     ' Emissão: '+FormatDateTime(__tsbanco3, cdstarefaacompanhamentoTSINCLUSAO.AsDateTime);
    if cdstarefaacompanhamentoCDFUNCIONARIO.AsString <> '' then
    begin
      result := result +' Para: '+NomedoCodigo(_funcionario, cdstarefaacompanhamentoCDFUNCIONARIO.AsString);
    end;
    if cdstarefaacompanhamentoCDSETOR.AsString <> '' then
    begin
      result := result +' Setor: '+NomedoCodigo(_setor, cdstarefaacompanhamentoCDSETOR.AsString);
    end;
    result := result + ' OK? '+get_ok;
    if Trim(cdstarefaacompanhamentoDSOBSERVACAO.AsString) <> '' then
    begin
      result := result + ' Observação: ' +cdstarefaacompanhamentoDSOBSERVACAO.AsString;
    end;
    cdstarefaacompanhamento.Next;
  end;
  if result <> '' then
  begin
    result := #13#13'Encaminhamento'+result;
  end;
end;

procedure Tfrmdlgtarefa.actenviaremailExecute(Sender: TObject);
  function get_arquivo:string;
  //var
    //i : Integer;
  begin
    result := '';
    //todo
    // criar uma função para trazer os nome ds arquivos
    {
    for i := 0 to lsvarquivo.Items.Count - 1 do
    begin
      if result = '' then
      begin
        result := #13#13'Arquivo(s)';
      end;
      result := result + #13+ espaco(3)+lsvarquivo.Items[i].SubItems[0]+'=> '+lsvarquivo.Items[i].Caption;
    end;
    }
  end;
  function get_lista_arquivo:string;
  //var
    //i : Integer;
  begin
    result := '';
    //todo
    // criar uma função para trazer os nome dos arquivos
    {
    for i := 0 to lsvarquivo.Items.Count - 1 do
    begin
      if result <> '' then result := result + #13;
      result := result + empresa.tarefa.dspath+'\'+lsvarquivo.Items[i].SubItems[0]+ExtractFileExt(lsvarquivo.Items[i].Caption);
    end;
    }
  end;
var
  dstitulo, dsassunto : string;
begin
  dstitulo := 'Tarefa '+cdsCDTAREFA.AsString+#13;
  dsassunto := 'Tarefa '+cdsCDTAREFA.AsString+#13;
  if cbxcdcliente.Text <> '' then
  begin
    dsassunto := dsassunto + #13' Cliente: '+cbxcdcliente.Text;
    if cbxcditcontcliente.Text <> '' then
    begin
      dsassunto := dsassunto + #13' Contato: '+cbxcditcontcliente.Text;
      if txtemail.Caption <> '' then
      begin
        dsassunto := dsassunto + ' email '+txtemail.Caption;
      end;
    end;
  end;
  if cbxcdtptarefa.Text <> '' then
  begin
    dsassunto := dsassunto + #13' Tipo: '+cbxcdtptarefa.Text;
  end;
  if cbxcdtptarefa1.Text <> '' then
  begin
    dsassunto := dsassunto + #13' Tipo 1: '+cbxcdtptarefa1.Text;
  end;
  dsassunto := dsassunto + #13' Status: '+cbxcdsttarefa.Text+#13' Emissão: '+edtdtemissao.Text+' Hora: '+edthremissao.Text+#13#13'Descrição'#13+espaco(3)+
               memnmtarefa.Text+get_acao+get_encaminhamento+get_arquivo;
  Formatar_Email(False, dstitulo, dsassunto, get_lista_arquivo, '', '', '', '', '', _tarefa, cdscdtarefa.asstring);
end;

procedure Tfrmdlgtarefa.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmdlgtarefa.actresolvidoExecute(Sender: TObject);
begin
  if gbxacompanhamento.Visible then
  begin
     ckbboresolvido.Checked := True
  end
  else
  begin
    cdsCDSTTAREFA.AsString := _2;
  end;
  actokExecute(actok);
end;

procedure Tfrmdlgtarefa.cdsacaoAfterOpen(DataSet: TDataSet);
begin
  if cdsacao.RecordCount > 0 then
  begin
    tbsacao.Caption := tbsacao.Caption +'('+inttostr(cdsacao.RecordCount)+')';
  end;
end;

procedure Tfrmdlgtarefa.cdstarefaacompanhamentoAfterOpen(DataSet: TDataSet);
begin
  if cdstarefaacompanhamento.RecordCount > 0 then
  begin
    tbsacompanhamento.Caption := tbsacompanhamento.Caption +'('+inttostr(cdstarefaacompanhamento.RecordCount)+')';
  end;
end;

procedure Tfrmdlgtarefa.FormShow;
begin
  pgc.ActivePageIndex := 0;
  if dts.State = dsedit then
  begin
    memdssolucao.SetFocus
  end
  else if cbxcdcliente.Text <> '' then
  begin
    memnmtarefa.SetFocus
  end
  else
  begin
    cbxcdcliente.SetFocus;
  end;
  cdsacao.Insert;
  cdsacaoCDACAO.AsString        := GerarCodigo(_acao);
  cdsacaoDTEMISSAO.AsDateTime   := DtBanco;
  cdsacaoHRINICIO.AsDateTime    := hrBanco;
  cdsacaoHRFIM.AsDateTime       := cdsacaoHRINICIO.AsDateTime;
  cdsacaoCDFUNCIONARIO.AsInteger := usuario.funcionario.cdfuncionario;
end;

procedure Tfrmdlgtarefa.ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmdlgtarefa.cdsacaoHRDURACAOValidate(Sender: TField);
begin
  cdsacaoQTDURACAO.AsFloat := RoundTo(((StrToInt(FormatDateTime('hh', Sender.AsDateTime))*60)+StrToInt(FormatDateTime('nn', sender.AsDateTime))) * 0.01666666666666667, -2);
end;

procedure Tfrmdlgtarefa.cdsHRDURACAOValidate(Sender: TField);
begin
  cdsQTDURACAO.AsFloat := RoundTo(((StrToInt(FormatDateTime('hh', sender.AsDateTime))*60)+StrToInt(FormatDateTime('nn', sender.AsDateTime))) * 0.01666666666666667, -2);
end;

procedure Tfrmdlgtarefa.cdsCDITCONTCLIENTEValidate(Sender: TField);
var
  q : tClasseQuery;
begin
  if sender.AsString = '' then
  begin
    cdsEMAIL.Clear;
    cdsNUFONECONTATO.Clear;
    Exit;
  end;
  q := tClasseQuery.Create('select email,nufone1 from itcontcliente where cdempresa='+cds.FieldByName(_cdempresa).AsString+' and cditcontcliente='+sender.AsString);
  try
    if q.q.fieldbyname(_email).IsNull and Empresa.tarefa.boemailcontato then
    begin
      MessageDlg('Contato não possui email.'#13'Favor adicioná-lo.', mtInformation, [mbOK], 0);
      if not EditarRegistroTabela(_itcontcliente, 'Contato Cliente', cdsCDITCONTCLIENTE.AsString, False, empresa.tarefa.boemailcontato) then
      begin
        sender.FocusControl;
        Abort;
      end
      else
      begin
        cdsCDITCONTCLIENTEValidate(Sender);
        Exit;
      end;
    end;
    cdsEMAIL.AsString         := q.q.fieldbyname(_email).AsString;
    cdsNUFONECONTATO.AsString := q.q.fieldbyname(_nufone1).AsString;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmdlgtarefa.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(_tarefa, cds.fieldbyname(_cdtarefa).AsString);
end;

end.

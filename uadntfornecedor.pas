unit uadntfornecedor;

interface

uses
  forms, Controls, ExtCtrls, Buttons, dialogs, sysutils,
  Classes, ActnList, StdCtrls, Menus,
  sqlexpr, DB, DBClient, FMTBcd, Provider,
  uconstantes, uregistro, uexportarexcel,
  classeRegistro, classeform,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxCalc, cxLabel, cxDBLabel, cxButtonEdit, cxMemo, cxLookAndFeelPainters,
  cxGraphics, cxDataStorage, cxDBData,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox, dxBar,
  cxLookAndFeels, cxButtons, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxNavigator,
  System.Actions, Vcl.DBCtrls, System.UITypes;

type
  TfrmAdntFornecedor = class(TForm)
    act: TActionList;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actAbrirFornecedor: TAction;
    actabrirmovbancario: TAction;
    actabrirmovbancariobaixa: TAction;
    actfechar: TAction;
    sdsbaixa: TSQLDataSet;
    sdsbaixaCDMOVBANCARIO: TIntegerField;
    sdsbaixaNMTPBAIXA: TStringField;
    sdsbaixaNUBAIXA: TStringField;
    sdsbaixaDTBAIXA: TDateField;
    sdsbaixaVLMULTA: TFMTBCDField;
    sdsbaixaVLJURO: TFMTBCDField;
    sdsbaixaVLBAIXA: TFMTBCDField;
    sdsbaixaVLDESCONTO: TFMTBCDField;
    sdsbaixaVLABATIMENTO: TFMTBCDField;
    sdsbaixaVLDEVOLUCAO: TFMTBCDField;
    sdsbaixaVLLIQUIDO: TFMTBCDField;
    sdsbaixaCDBAIXA: TIntegerField;
    sdsbaixaCDADNTFORNECEDOR: TIntegerField;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsbaixa: TClientDataSet;
    dtsbaixa: TDataSource;
    dts: TDataSource;
    dts1: TDataSource;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnEditar: TdxBarLargeButton;
    dxbrlrgbtnAbrir: TdxBarLargeButton;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtncancelar: TdxBarLargeButton;
    dxbrlrgbtnprimeiro: TdxBarLargeButton;
    dxbrlrgbtnanterior: TdxBarLargeButton;
    dxbrlrgbtnproximo: TdxBarLargeButton;
    dxbrlrgbtnultimo: TdxBarLargeButton;
    dxbrsprtr2: TdxBarSeparator;
    btnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    sdsCDADNTFORNECEDOR: TIntegerField;
    sdsCDSTADNTFORNECEDOR: TIntegerField;
    sdsCDMOVBANCARIO: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsDTBAIXA: TDateField;
    sdsDTENTRADA: TDateField;
    sdsVLADNTFORNECEDOR: TFMTBCDField;
    sdsDSHISTORICO: TStringField;
    sdsVLSALDO: TFMTBCDField;
    sdsVLUTILIZADO: TFMTBCDField;
    sdsDSOBSERVACAO: TBlobField;
    cdsCDADNTFORNECEDOR: TIntegerField;
    cdsCDSTADNTFORNECEDOR: TIntegerField;
    cdsCDMOVBANCARIO: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsDTBAIXA: TDateField;
    cdsDTENTRADA: TDateField;
    cdsVLADNTFORNECEDOR: TFMTBCDField;
    cdsDSHISTORICO: TStringField;
    cdsVLSALDO: TFMTBCDField;
    cdsVLUTILIZADO: TFMTBCDField;
    cdsDSOBSERVACAO: TBlobField;
    cdssdsbaixa: TDataSetField;
    cdsbaixaCDMOVBANCARIO: TIntegerField;
    cdsbaixaNMTPBAIXA: TStringField;
    cdsbaixaNUBAIXA: TStringField;
    cdsbaixaDTBAIXA: TDateField;
    cdsbaixaVLMULTA: TFMTBCDField;
    cdsbaixaVLJURO: TFMTBCDField;
    cdsbaixaVLBAIXA: TFMTBCDField;
    cdsbaixaVLDESCONTO: TFMTBCDField;
    cdsbaixaVLABATIMENTO: TFMTBCDField;
    cdsbaixaVLDEVOLUCAO: TFMTBCDField;
    cdsbaixaVLLIQUIDO: TFMTBCDField;
    cdsbaixaCDBAIXA: TIntegerField;
    cdsbaixaCDADNTFORNECEDOR: TIntegerField;
    grdbaixa: TcxGrid;
    grdbaixaDBTableView1: TcxGridDBTableView;
    grdbaixaDBTableView1CDMOVBANCARIO: TcxGridDBColumn;
    grdbaixaDBTableView1NMTPBAIXA: TcxGridDBColumn;
    grdbaixaDBTableView1NUBAIXA: TcxGridDBColumn;
    grdbaixaDBTableView1DTBAIXA: TcxGridDBColumn;
    grdbaixaDBTableView1VLMULTA: TcxGridDBColumn;
    grdbaixaDBTableView1VLJURO: TcxGridDBColumn;
    grdbaixaDBTableView1VLBAIXA: TcxGridDBColumn;
    grdbaixaDBTableView1VLDESCONTO: TcxGridDBColumn;
    grdbaixaDBTableView1VLABATIMENTO: TcxGridDBColumn;
    grdbaixaDBTableView1VLDEVOLUCAO: TcxGridDBColumn;
    grdbaixaDBTableView1VLLIQUIDO: TcxGridDBColumn;
    grdbaixaLevel1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    edtdsobservacao: TcxDBMemo;
    pnl1: TPanel;
    Label3: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    lblfornecedor: TLabel;
    Label24: TLabel;
    Bevel1: TBevel;
    pnl: TcxLabel;
    edtvlsaldo: TcxDBCalcEdit;
    edtvlutilizado: TcxDBCalcEdit;
    edtVLADNTFORNECEDOR: TcxDBCalcEdit;
    edtdtemissao: TcxDBDateEdit;
    edtdtentrada: TcxDBDateEdit;
    edtCODIGO: TcxTextEdit;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    edtdshistorico: TcxDBTextEdit;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    actabrirautpagto: TAction;
    sdsbaixaCDAUTPAGTO: TIntegerField;
    cdsbaixaCDAUTPAGTO: TIntegerField;
    pumimprimir: TdxBarPopupMenu;
    sdsNMFORNECEDOR: TStringField;
    cdsNMFORNECEDOR: TStringField;
    lblnmfornecedor: TDBText;
    txtcdfornecedor: TDBText;
    sdsCDEMPRESA: TLargeintField;
    sdsCDFORNECEDOR: TLargeintField;
    sdsbaixaCDEMPRESA: TLargeintField;
    sdsbaixaCDTPBAIXA: TIntegerField;
    sdsbaixaCDADNTCLIENTE: TIntegerField;
    sdsbaixaCDDUPLICATA: TIntegerField;
    sdsbaixaCDCHEQUE: TIntegerField;
    sdsbaixaCDUSUARIOI: TIntegerField;
    sdsbaixaCDUSUARIOA: TIntegerField;
    sdsbaixaCDCOMPUTADORI: TIntegerField;
    sdsbaixaCDCOMPUTADORA: TIntegerField;
    sdsbaixaCDNEGOCIACAOENTRADA: TIntegerField;
    sdsbaixaCDADNTCLIENTEDESTINO: TIntegerField;
    sdsbaixaVLJURONRECEBIDO: TFMTBCDField;
    sdsbaixaTSINCLUSAO: TSQLTimeStampField;
    sdsbaixaTSALTERACAO: TSQLTimeStampField;
    sdsbaixaVLCOMISSAO: TFMTBCDField;
    sdsbaixaPRCOMISSAO: TFloatField;
    sdsbaixaVLJUROSNRECEBIDO: TFMTBCDField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDFORNECEDOR: TLargeintField;
    cdsbaixaCDEMPRESA: TLargeintField;
    cdsbaixaCDTPBAIXA: TIntegerField;
    cdsbaixaCDADNTCLIENTE: TIntegerField;
    cdsbaixaCDDUPLICATA: TIntegerField;
    cdsbaixaCDCHEQUE: TIntegerField;
    cdsbaixaCDUSUARIOI: TIntegerField;
    cdsbaixaCDUSUARIOA: TIntegerField;
    cdsbaixaCDCOMPUTADORI: TIntegerField;
    cdsbaixaCDCOMPUTADORA: TIntegerField;
    cdsbaixaCDNEGOCIACAOENTRADA: TIntegerField;
    cdsbaixaCDADNTCLIENTEDESTINO: TIntegerField;
    cdsbaixaVLJURONRECEBIDO: TFMTBCDField;
    cdsbaixaTSINCLUSAO: TSQLTimeStampField;
    cdsbaixaTSALTERACAO: TSQLTimeStampField;
    cdsbaixaVLCOMISSAO: TFMTBCDField;
    cdsbaixaPRCOMISSAO: TFloatField;
    cdsbaixaVLJUROSNRECEBIDO: TFMTBCDField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nextcontrol(Sender: TObject; var Key: Char);
    procedure edtCODIGOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actAbrirFornecedorExecute(Sender: TObject);
    procedure actabrirmovbancarioExecute(Sender: TObject);
    procedure actabrirmovbancariobaixaExecute(Sender: TObject);
    procedure grdbaixaDblClick(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure cxDBLabel2Click(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblfornecedorDblClick(Sender: TObject);
    procedure actabrirautpagtoExecute(Sender: TObject);
    procedure grdbaixaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdbaixaDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actImprimirExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    tbl, exibe: string;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmAdntFornecedor: TfrmAdntFornecedor;

implementation

uses uMain, uDtmMain, UMenuRelatorio;

{$R *.DFM}

const
  artigoI  = 'o';

function TfrmAdntFornecedor.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmAdntFornecedor.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmAdntFornecedor.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  if registro.salvar then
  begin
    key := #13;
    nextcontrol(Self.ActiveControl, key);
  end;
end;

procedure TfrmAdntFornecedor.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmAdntFornecedor.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmAdntFornecedor.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmAdntFornecedor.edtCODIGOKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, false);
end;

procedure TfrmAdntFornecedor.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmAdntFornecedor.FormShow(Sender: TObject);
begin
  exibe := QRegistro.CampodoCampo( _tabela, _nmtabela, uppercase(tbl), _nmexibe, true);
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
end;

procedure TfrmAdntFornecedor.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmAdntFornecedor.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmAdntFornecedor.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmAdntFornecedor.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmAdntFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAdntFornecedor.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure TfrmAdntFornecedor.edtCODIGOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmAdntFornecedor.actAbrirFornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmAdntFornecedor.actabrirmovbancarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmAdntFornecedor.actabrirmovbancariobaixaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsbaixa);
end;

procedure TfrmAdntFornecedor.grdbaixaDblClick(Sender: TObject);
begin
  actabrirmovbancariobaixa.onexecute(actabrirmovbancariobaixa);
end;

procedure TfrmAdntFornecedor.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmAdntFornecedor.cxDBLabel2Click(Sender: TObject);
begin
  actabrirmovbancario.OnExecute(actabrirmovbancario);
end;

procedure TfrmAdntFornecedor.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmAdntFornecedor.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure TfrmAdntFornecedor.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure TfrmAdntFornecedor.FormDestroy(Sender: TObject);
begin
  registro.destroy;
end;

procedure TfrmAdntFornecedor.FormCreate(Sender: TObject);
begin
  tbl      := _adntfornecedor;
  registro := tregistro.create(self,  tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 43, cds, tbl);
end;

procedure TfrmAdntFornecedor.lblfornecedorDblClick(Sender: TObject);
begin
  actAbrirFornecedorExecute(actAbrirFornecedor);  
end;

procedure TfrmAdntFornecedor.actabrirautpagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsbaixa);
end;

procedure TfrmAdntFornecedor.grdbaixaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdmovbancario then
  begin
    actabrirmovbancariobaixaExecute(actabrirmovbancariobaixa)
  end
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nubaixa then
  begin
    actabrirautpagtoExecute(actabrirautpagto);
  end;
end;

procedure TfrmAdntFornecedor.grdbaixaDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel( Key, sender);
end;

procedure TfrmAdntFornecedor.actImprimirExecute(Sender: TObject);
begin
//
end;

end.

unit uadntcliente;

interface

uses
  forms, Controls, ExtCtrls, Buttons, dialogs, windows, sysutils, StdCtrls, Classes,
  ActnList, Menus,
  Provider, DBClient, DB, FMTBcd, sqlexpr,
  uregistro, uconstantes,
  classeform, classeRegistro,
  cxLookAndFeelPainters, cxGraphics, cxDataStorage, cxEdit, cxDBData,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo,
  cxDBEdit, cxButtonEdit, cxTextEdit, cxCalendar, cxLabel, cxDBLabel,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxContainer, cxGroupBox, dxBar,
  cxLookAndFeels, cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxNavigator, System.Actions,
  Vcl.DBCtrls,
  System.UITypes;

type
  TfrmAdntCliente = class(TForm)
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
    actAbrirCliente: TAction;
    actabrirmovbancario: TAction;
    actabrirmovbancariobaixa: TAction;
    actfechar: TAction;
    sdsbaixa: TSQLDataSet;
    cdsbaixa: TClientDataSet;
    dtsbaixa: TDataSource;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsCDADNTCLIENTE: TIntegerField;
    sdsCDSTADNTCLIENTE: TIntegerField;
    sdsCDMOVBANCARIO: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsDTBAIXA: TDateField;
    sdsDTENTRADA: TDateField;
    sdsVLADNTCLIENTE: TFMTBCDField;
    sdsDSHISTORICO: TStringField;
    sdsVLSALDO: TFMTBCDField;
    sdsVLUTILIZADO: TFMTBCDField;
    sdsDSOBSERVACAO: TBlobField;
    cdsCDADNTCLIENTE: TIntegerField;
    cdsCDSTADNTCLIENTE: TIntegerField;
    cdsCDMOVBANCARIO: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsDTBAIXA: TDateField;
    cdsDTENTRADA: TDateField;
    cdsVLADNTCLIENTE: TFMTBCDField;
    cdsDSHISTORICO: TStringField;
    cdsVLSALDO: TFMTBCDField;
    cdsVLUTILIZADO: TFMTBCDField;
    cdsDSOBSERVACAO: TBlobField;
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
    sdsbaixaCDADNTCLIENTE: TIntegerField;
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
    cdsbaixaCDADNTCLIENTE: TIntegerField;
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
    cdssdsbaixa: TDataSetField;
    acttransferir: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    grdbaixa: TcxGrid;
    grdbaixaDBTableView1: TcxGridDBTableView;
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
    Label14: TLabel;
    Label12: TLabel;
    lblcliente: TLabel;
    Label24: TLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    edtdshistorico: TcxDBTextEdit;
    pnl: TcxLabel;
    lblnmfuncionario: TLabel;
    Label3: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    edtdtentrada: TcxDBDateEdit;
    edtdtemissao: TcxDBDateEdit;
    edtVLADNTCLIENTE: TcxDBCalcEdit;
    edtvlutilizado: TcxDBCalcEdit;
    edtvlsaldo: TcxDBCalcEdit;
    Bevel1: TBevel;
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
    pumbaixa: TdxBarPopupMenu;
    actimprimiradntcliente: TAction;
    pumimprimir: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    sdsCDADNTCLIENTEORIGEM: TIntegerField;
    cdsCDADNTCLIENTEORIGEM: TIntegerField;
    dxBarLargeButton3: TdxBarLargeButton;
    actexcluir: TAction;
    grdbaixaDBTableView1CDADTNCLIENTEDESTINO: TcxGridDBColumn;
    sdsbaixaCDADNTCLIENTEDESTINO: TIntegerField;
    cdsbaixaCDADNTCLIENTEDESTINO: TIntegerField;
    txtCDADNTCLIENTEORIGEM: TcxDBLabel;
    lblCDADNTCLIENTEORIGEM: TLabel;
    lblNMCLIENTE: TDBText;
    sdsNMCLIENTE: TStringField;
    cdsNMCLIENTE: TStringField;
    txtcdcliente: TDBText;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsCDREPRESENTANTE: TIntegerField;
    sdsPRCOMISSAO: TFloatField;
    sdsVLCOMISSAO: TFMTBCDField;
    sdsbaixaCDEMPRESA: TLargeintField;
    sdsbaixaCDTPBAIXA: TIntegerField;
    sdsbaixaCDAUTPAGTO: TIntegerField;
    sdsbaixaCDDUPLICATA: TIntegerField;
    sdsbaixaCDADNTFORNECEDOR: TIntegerField;
    sdsbaixaCDCHEQUE: TIntegerField;
    sdsbaixaCDUSUARIOI: TIntegerField;
    sdsbaixaCDUSUARIOA: TIntegerField;
    sdsbaixaCDCOMPUTADORI: TIntegerField;
    sdsbaixaCDCOMPUTADORA: TIntegerField;
    sdsbaixaCDNEGOCIACAOENTRADA: TIntegerField;
    sdsbaixaVLJURONRECEBIDO: TFMTBCDField;
    sdsbaixaTSINCLUSAO: TSQLTimeStampField;
    sdsbaixaTSALTERACAO: TSQLTimeStampField;
    sdsbaixaVLCOMISSAO: TFMTBCDField;
    sdsbaixaPRCOMISSAO: TFloatField;
    sdsbaixaVLJUROSNRECEBIDO: TFMTBCDField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsCDREPRESENTANTE: TIntegerField;
    cdsPRCOMISSAO: TFloatField;
    cdsVLCOMISSAO: TFMTBCDField;
    cdsbaixaCDEMPRESA: TLargeintField;
    cdsbaixaCDTPBAIXA: TIntegerField;
    cdsbaixaCDAUTPAGTO: TIntegerField;
    cdsbaixaCDDUPLICATA: TIntegerField;
    cdsbaixaCDADNTFORNECEDOR: TIntegerField;
    cdsbaixaCDCHEQUE: TIntegerField;
    cdsbaixaCDUSUARIOI: TIntegerField;
    cdsbaixaCDUSUARIOA: TIntegerField;
    cdsbaixaCDCOMPUTADORI: TIntegerField;
    cdsbaixaCDCOMPUTADORA: TIntegerField;
    cdsbaixaCDNEGOCIACAOENTRADA: TIntegerField;
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
    procedure actAbrirClienteExecute(Sender: TObject);
    procedure actabrirmovbancarioExecute(Sender: TObject);
    procedure grdbaixaDblClick(Sender: TObject);
    procedure actabrirmovbancariobaixaExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure cxDBLabel2Click(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure grdbaixaDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acttransferirExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblclienteDblClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure actimprimiradntclienteExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    tbl, exibe: string;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmAdntCliente: TfrmAdntCliente;

implementation

uses uMain, uExportarExcel,
  udlgtransferiradntcliente,
  uimprimirrelatoriopadrao,
  ubaixa, uDtmMain,
  UMenuRelatorio;

{$R *.DFM}

const
  artigoI  = 'a';

function TfrmAdntCliente.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmAdntCliente.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmAdntCliente.edtCODIGOKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, false);
end;

procedure TfrmAdntCliente.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  if registro.salvar then
  begin
    key := #13;
    nextcontrol(Self.ActiveControl, key);
  end;
end;

procedure TfrmAdntCliente.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmAdntCliente.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmAdntCliente.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmAdntCliente.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmAdntCliente.FormShow(Sender: TObject);
begin
  exibe    := QRegistro.CampodoCampo(_tabela, _nmtabela, uppercase(tbl), _nmexibe, true);
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
end;

procedure TfrmAdntCliente.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmAdntCliente.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmAdntCliente.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmAdntCliente.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmAdntCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAdntCliente.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure TfrmAdntCliente.edtCODIGOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmAdntCliente.actAbrirClienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmAdntCliente.actabrirmovbancarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmAdntCliente.grdbaixaDblClick(Sender: TObject);
begin
  actabrirmovbancariobaixa.OnExecute(actabrirmovbancariobaixa);
end;

procedure TfrmAdntCliente.actabrirmovbancariobaixaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsbaixa);
end;

procedure TfrmAdntCliente.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmAdntCliente.cxDBLabel2Click(Sender: TObject);
begin
  actabrirmovbancario.OnExecute(actabrirmovbancario);
end;

procedure TfrmAdntCliente.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  acttransferir.Enabled := dts.State = dsBrowse;
end;

procedure TfrmAdntCliente.cdsAfterScroll(DataSet: TDataSet);
begin
  acttransferir.Visible := cdsCDSTADNTCLIENTE.AsInteger = 1;
  actexcluir.Visible    := (cdsCDADNTCLIENTEORIGEM.AsString <> '') and (cdsVLSALDO.AsCurrency = cdsVLADNTCLIENTE.AsCurrency);
end;

procedure TfrmAdntCliente.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure TfrmAdntCliente.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure TfrmAdntCliente.grdbaixaDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel( Key, sender);
end;

procedure TfrmAdntCliente.acttransferirExecute(Sender: TObject);
begin
  if TransferirAdntcliente( cdsCDADNTCLIENTE.AsString) then
  begin
    Abrir(cdsCDADNTCLIENTE.AsInteger);
  end;
end;

procedure TfrmAdntCliente.FormDestroy(Sender: TObject);
begin
  registro.destroy;
end;

procedure TfrmAdntCliente.FormCreate(Sender: TObject);
begin
  tbl      := _adntcliente;
  registro := tregistro.create(self,  tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 43, cds, tbl);
end;

procedure TfrmAdntCliente.lblclienteDblClick(Sender: TObject);
begin
  actAbrirClienteExecute(actAbrirCliente);
end;

procedure TfrmAdntCliente.btnimprimirClick(Sender: TObject);
begin
//
end;

procedure TfrmAdntCliente.actimprimiradntclienteExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(321, cdsCDADNTCLIENTE.AsString);
end;

end.

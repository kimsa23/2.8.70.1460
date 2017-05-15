unit uparada;

interface

uses
  System.Actions, System.UITypes,
  forms, ComCtrls, ToolWin, ExtCtrls, Mask, Controls, Buttons, sysutils, windows,
  Graphics, dialogs, StdCtrls, Classes, ActnList, Menus,
  Grids,
  urotinas, udatahora, ustrings,
  uExportarExcel, uconstantes, uregistro,
  classeRegistro, classegerar, classeconsiste, classeregistrainformacao, classeform,
  classeretornasql, classeusuario, classeempresa,
  cxLookAndFeelPainters, cxTextEdit, cxMemo, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxPC,
  dxBar, cxClasses, cxGraphics, cxLookAndFeels, DB,
  DBClient, Provider, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxButtonEdit,
  cxCalc, cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxDBLabel, cxSpinEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSplitter, cxRichEdit,
  cxCheckBox, cxPCdxBarPopupMenu, DBCtrls, cxNavigator,
  cxBlobEdit, dxBarBuiltInMenu, SqlExpr, cxTimeEdit, Data.FMTBcd;

type
  Tfrmparada = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actfechar: TAction;
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
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dtsdetail: TDataSource;
    cdsdetail: TClientDataSet;
    sdsdetail: TSQLDataSet;
    cdssdsdetail: TDataSetField;
    cdsDTEMISSAO: TDateField;
    actabrirequipamento: TAction;
    sdsCDPARADA: TIntegerField;
    sdsCDEQUIPAMENTO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsDTEMISSAO: TDateField;
    sdsdetailCDITPARADA: TIntegerField;
    sdsdetailCDPARADA: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDTPPARADA: TIntegerField;
    sdsdetailCDSUBTPPARADA: TIntegerField;
    sdsdetailHRINICIO: TTimeField;
    sdsdetailHRTERMINO: TTimeField;
    cdsCDPARADA: TIntegerField;
    cdsCDEQUIPAMENTO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDITPARADA: TIntegerField;
    cdsdetailCDPARADA: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDTPPARADA: TIntegerField;
    cdsdetailCDSUBTPPARADA: TIntegerField;
    cdsdetailHRINICIO: TTimeField;
    cdsdetailHRTERMINO: TTimeField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailDSOBSERVACAO: TBlobField;
    cdsdetailDSOBSERVACAO: TBlobField;
    sdsdetailHRDURACAO: TTimeField;
    sdsdetailQTDURACAO: TFloatField;
    cdsdetailHRDURACAO: TTimeField;
    cdsdetailQTDURACAO: TFloatField;
    pnl: TcxLabel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvHRINICIO: TcxGridDBColumn;
    tbvHRTERMINO: TcxGridDBColumn;
    tbvHRDURACAO: TcxGridDBColumn;
    tbvQTDURACAO: TcxGridDBColumn;
    tbvCDTPPARADA: TcxGridDBColumn;
    tbvCDSUBTPPARADA: TcxGridDBColumn;
    tbvDSOBSERVACAO: TcxGridDBColumn;
    grlLevel1: TcxGridLevel;
    pnltop: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtcodigo: TcxTextEdit;
    edtdtemissao: TcxDBDateEdit;
    cbxcdequipamento: TcxDBLookupComboBox;
    Label5: TLabel;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    procedure actNovoExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure colorEnter(Sender: TObject);
    procedure colorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsDTEMISSAOValidate(Sender: TField);
    procedure cbxcdequipamentoEnter(Sender: TObject);
    procedure lblequipamentoDblClick(Sender: TObject);
    procedure actabrirequipamentoExecute(Sender: TObject);
    procedure cdsdetailHRTERMINOValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    tbl : string;
    procedure AbrirTabelas;
  public  { Public declarations }
    registro   : TRegistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmparada: Tfrmparada;

implementation

uses UMain, uDtmMain, DateUtils;

{$R *.DFM}

const
  exibe    = 'Parada Equipamento';
  artigoI  = 'a';

procedure Tfrmparada.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmparada.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

function Tfrmparada.Abrir(codigo: integer): boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmparada.AbrirTabelas;
begin
  cbxcdequipamento.Properties.ListSource := abrir_tabela(_equipamento);
  TcxLookupComboBoxProperties(tbvCDTPPARADA.Properties).ListSource := abrir_tabela(_tpparada);
  TcxLookupComboBoxProperties(tbvCDSUBTPPARADA.Properties).ListSource := abrir_tabela(_subtpparada);
end;

procedure Tfrmparada.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmparada.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmparada.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmparada.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmparada.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmparada.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmparada.actEditarExecute(Sender: TObject);
begin
  registro.editar;
  edtdtemissao.SetFocus;
end;

procedure Tfrmparada.actSalvarExecute(Sender: TObject);
begin
  if (cdsdetail.State = dsinsert) or (cdsdetail.State = dsedit) then
  begin
    cdsdetail.Post;
  end;
  cds.ApplyUpdates(0);
  registro.set_readonly_dados(self, true);
  abrir(cdsCDparada.AsInteger);
end;

procedure Tfrmparada.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure Tfrmparada.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmparada.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmparada.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmparada.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmparada.FormDestroy(Sender: TObject);
begin
  freeandnil(registro);
end;

procedure Tfrmparada.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmparada.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure Tfrmparada.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName(_HRINICIO).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Hora+' '+_de+' '+__Inicio]), mtinformation, [mbok], 0);
    DataSet.FieldByName(_HRINICIO).FocusControl;
    abort;
  end;
  if DataSet.FieldByName(_HRTERMINO).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Hora+' '+_de+' '+__Termino]), mtinformation, [mbok], 0);
    DataSet.FieldByName(_HRTERMINO).FocusControl;
    abort;
  end;
  if DataSet.FieldByName(_HRTERMINO).AsDateTime < DataSet.FieldByName(_hrinicio).AsDateTime then
  begin
    messagedlg('Hora de Término não pode ser menor do Hora de Início', mtinformation, [mbok], 0);
    DataSet.FieldByName(_HRTERMINO).FocusControl;
    abort;
  end;
  if DataSet.FieldByName(_CDTPPARADA).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo+' '+_de+' '+_Parada]), mtinformation, [mbok], 0);
    DataSet.FieldByName(_CDTPPARADA).FocusControl;
    abort;
  end;
  DataSet.FieldByName(_HRDURACAO).AsDateTime := DataSet.FieldByName(_HRTERMINO).AsDateTime - DataSet.FieldByName(_HRINICIO).AsDateTime;
  DataSet.FieldByName(_qtduracao).AsFloat    := MinuteOfTheDay(DataSet.FieldByName(_HRDURACAO).AsDateTime) * 0.01666666666666667;

  registro.set_update(cdsdetail);
end;

procedure Tfrmparada.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmparada.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsDTEMISSAO.AsDateTime := dtbanco;
end;

procedure Tfrmparada.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITPARADA.AsString := GerarCodigo(_itparada);
end;

procedure Tfrmparada.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmparada.colorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmparada.colorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmparada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmparada.FormCreate(Sender: TObject);
begin
  tbl := _parada;
  AbrirTabelas;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure Tfrmparada.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmparada.cdsDTEMISSAOValidate(Sender: TField);
begin
  if Sender.AsDateTime > dtbanco then
  begin
    messagedlg('Data de Emissão não pode ser maior que a data atual.'#13'Digite outra uma data menor ou igual a data atual.', mterror, [mbok], 0);
    Sender.FocusControl;
    abort;
  end;
end;

procedure Tfrmparada.cbxcdequipamentoEnter(Sender: TObject);
begin
  colorenter(Sender);
  abrir_tabela(_equipamento);
end;

procedure Tfrmparada.lblequipamentoDblClick(Sender: TObject);
begin
  actAbrirequipamento.onExecute(actabrirequipamento);
end;

procedure Tfrmparada.actabrirequipamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmparada.cdsdetailHRTERMINOValidate(Sender: TField);
begin
  sender.DataSet.FieldByName(_HRDURACAO).AsDateTime := sender.DataSet.FieldByName(_HRTERMINO).AsDateTime - sender.DataSet.FieldByName(_HRINICIO).AsDateTime;
  sender.DataSet.FieldByName(_qtduracao).AsFloat    := MinuteOfTheDay(sender.DataSet.FieldByName(_HRDURACAO).AsDateTime) * 0.01666666666666667;
end;

end.

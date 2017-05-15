unit uturno;

interface

uses
  forms, Windows, dialogs, graphics, Mask, Buttons, Controls, ToolWin, ExtCtrls, types,
  sysutils, StdCtrls, ComCtrls, Spin, Classes, ActnList, Menus,
  Grids, sqlexpr,
  uexportarexcel, udatahora, uregistro, urotinas, ulocalizar, uconstantes,
  unumero, ustrings, ulocalizarcliente,
  classeproduto, classeconsiste, classeexecutasql, classeusuario, classegerar,
  classeretornasql, classecontrato, classeregistro, classecliente, classeregistrainformacao, classeform,
  cxLookAndFeelPainters, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxButtons, dxBar, cxClasses,
  cxGraphics, cxLookAndFeels, cxLabel, cxPC, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxDBEdit,
  cxMaskEdit, cxCalendar, cxTextEdit, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTimeEdit, DBCtrls, cxButtonEdit, FMTBcd, DBClient, Provider, cxCalc,
  cxCurrencyEdit, cxPCdxBarPopupMenu, cxNavigator, cxCheckBox, System.Actions, System.UITypes;

type
  TfrmTurno = class(TForm)
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
    Panel1: TPanel;
    Label1: TLabel;
    pnl: TcxLabel;
    Label5: TLabel;
    edtnome: TcxDBTextEdit;
    edtcodigo: TcxTextEdit;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dtsdetail: TDataSource;
    cdsdetail: TClientDataSet;
    sdsdetail: TSQLDataSet;
    sdsCDTURNO: TIntegerField;
    sdsNMTURNO: TStringField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDTURNO: TIntegerField;
    cdsNMTURNO: TStringField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDITTURNO: TIntegerField;
    sdsdetailCDTURNO: TIntegerField;
    sdsdetailCDDIA: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailHRINICIO1: TTimeField;
    sdsdetailHRTERMINO1: TTimeField;
    sdsdetailHRINICIO2: TTimeField;
    sdsdetailHRTERMINO2: TTimeField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDITTURNO: TIntegerField;
    cdsdetailCDTURNO: TIntegerField;
    cdsdetailCDDIA: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailHRINICIO1: TTimeField;
    cdsdetailHRTERMINO1: TTimeField;
    cdsdetailHRINICIO2: TTimeField;
    cdsdetailHRTERMINO2: TTimeField;
    grddetail: TcxGrid;
    grddetailtbv: TcxGridDBTableView;
    grddetailtbvCDDIA: TcxGridDBColumn;
    grddetailtbvHRINICIO1: TcxGridDBColumn;
    grddetailtbvHRTERMINO1: TcxGridDBColumn;
    grddetailtbvHRINICIO2: TcxGridDBColumn;
    grddetailtbvHRTERMINO2: TcxGridDBColumn;
    grddetailLvl: TcxGridLevel;
    sdsBOPREENCHERHORARIOMEIO: TStringField;
    cdsBOPREENCHERHORARIOMEIO: TStringField;
    ckbbopreencherhorariomeio: TcxDBCheckBox;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dtsStateChange(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure actfecharExecute(Sender: TObject);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure grddetailtbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

const
  tbl      = 'turno';
  exibe    = 'Turno';
  artigoI  = 'o';
var
  frmTurno: TfrmTurno;

implementation

uses uDtmMain, uMain, classeempresa;

{$R *.DFM}

function TfrmTurno.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmTurno.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmTurno.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmTurno.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmTurno.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmTurno.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmTurno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmTurno.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure TfrmTurno.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmTurno.actSalvarExecute(Sender: TObject);
begin
  registro.salvar;
end;

procedure TfrmTurno.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmTurno.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmTurno.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmTurno.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmTurno.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmTurno.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmTurno.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmTurno.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmTurno.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmTurno.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmTurno.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure TfrmTurno.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmTurno.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmTurno.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmTurno.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure TfrmTurno.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmTurno.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITTURNO.AsString := GerarCodigo(_it+_turno);
end;

procedure TfrmTurno.FormCreate(Sender: TObject);
begin
  TcxLookupComboBoxProperties(grddetailtbvCDDIA.Properties).ListSource := abrir_tabela(_dia);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure TfrmTurno.cdsdetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsdetail);
end;

procedure TfrmTurno.grddetailtbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.

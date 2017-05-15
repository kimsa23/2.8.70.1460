unit urhocorrencia;

interface

uses
  System.Actions, System.UITypes,
  forms, StdCtrls, Controls, ComCtrls, ToolWin, ExtCtrls, dialogs, Classes,
  Windows, ShellAPI, sysutils, Mask, ActnList, Grids, Menus,
  DB, DBCtrls,
  FireDAC.Comp.Client,
  uDBMemo, ulocalizarFuncionario, uNovoTabela, uregistro, uconstantes,
  udatahora, ustrings,
  classeusuario, classeconsiste, classeregistrainformacao,
  classecliente, classeproduto, classeempresa, classeretornasql, classeequipamento,
  classeexecutasql, classeaplicacao, classegerar, classeRegistro,
  classearquivo, classeform, classequery,
  dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxDBEdit, cxButtonEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxPC, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, cxDBLabel, cxSpinEdit, cxCalc, cxCurrencyEdit, cxCheckBox,
  cxGroupBox, dxBarBuiltInMenu, cxCalendar, cxPCdxBarPopupMenu, cxButtons,
  cxTimeEdit, cxMemo, cxNavigator, cxListView;

type
  TfrmRHOcorrencia = class(TForm)
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
    btnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dts: TDataSource;
    pnl1: TPanel;
    pnl: TcxLabel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    Label2: TLabel;
    edtdtemissao: TcxDBDateEdit;
    actabrirfuncionario: TAction;
    lbldtprevisao: TLabel;
    lblcdfuncionario: TLabel;
    edtcdfuncionario: TcxDBButtonEdit;
    txtnmfuncionario: TDBText;
    gbxobservacao: TcxGroupBox;
    memdsobservacao: TcxDBMemo;
    edthremissao: TcxDBTimeEdit;
    lbltprhocorrencia: TLabel;
    cbxcdtprhocorrencia: TcxDBLookupComboBox;
    pumimprimir: TdxBarPopupMenu;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actabrirfuncionarioExecute(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure txtnmfuncionarioDblClick(Sender: TObject);
    procedure cbxcdtprhocorrenciaEnter(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure edtcdfuncionarioPropertiesChange(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmRHOcorrencia: TfrmRHOcorrencia;

implementation

uses uDtmMain, uMain, uMenuRelatorio;

{$R *.DFM}

const
  tbl      = _rhocorrencia;
  exibe    = 'RH Ocorrência';
  artigoI  = 'a';

function TfrmRHOcorrencia.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmRHOcorrencia.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmRHOcorrencia.actabrirfuncionarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qry);
end;

procedure TfrmRHOcorrencia.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmRHOcorrencia.actSalvarExecute(Sender: TObject);
begin
  registro.Salvar;
end;

procedure TfrmRHOcorrencia.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmRHOcorrencia.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmRHOcorrencia.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmRHOcorrencia.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmRHOcorrencia.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  edtCodigo.SetFocus;
  pnl.caption := exibe;
end;

procedure TfrmRHOcorrencia.txtnmfuncionarioDblClick(Sender: TObject);
begin
  actAbrirfuncionario.onExecute(actAbrirfuncionario);
end;

procedure TfrmRHOcorrencia.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmRHOcorrencia.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmRHOcorrencia.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmRHOcorrencia.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmRHOcorrencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRHOcorrencia.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmRHOcorrencia.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmRHOcorrencia.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure TfrmRHOcorrencia.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmRHOcorrencia.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure TfrmRHOcorrencia.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmRHOcorrencia.edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(Sender, Key, shift);
end;

procedure TfrmRHOcorrencia.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizarfuncionario;
  if codigo = 0 then
  begin
    exit;
  end;
  qry.FieldByName(_cdfuncionario).AsInteger := codigo;
end;

procedure TfrmRHOcorrencia.edtcdfuncionarioPropertiesChange(Sender: TObject);
begin
  if not (dts.state in [dsinsert, dsedit]) then
  begin
    exit;
  end;
  if qry.FieldByName(_NMFUNCIONARIO).ReadOnly then
  begin
    qry.FieldByName(_NMFUNCIONARIO).ReadOnly := false;
  end;
  if edtcdfuncionario.text = '' then
  begin
    qry.FieldByName(_NMFUNCIONARIO).clear;
    exit;
  end;
  if not CodigoExiste(_FUNCIONARIO, edtcdfuncionario.text) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdfuncionario.text, maiuscula(_funcionario)]), mterror, [mbok], 0);
    edtcdfuncionario.SetFocus;
    Abort;
  end;
  qry.FieldByName(_NMFUNCIONARIO).asstring := NomedoCodigo(_FUNCIONARIO, edtcdfuncionario.text);
end;

procedure TfrmRHOcorrencia.FormCreate(Sender: TObject);
begin
  qry := tFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT O.*,FU.NMFUNCIONARIO FROM RHOCORRENCIA O LEFT JOIN FUNCIONARIO FU ON FU.CDFUNCIONARIO=O.CDFUNCIONARIO AND FU.CDEMPRESA=O.CDEMPRESA WHERE O.CDEMPRESA=:CDEMPRESA AND O.CDRHOCORRENCIA=:CDRHOCORRENCIA';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  cbxcdtprhocorrencia.Properties.ListSource := abrir_tabela(_tprhocorrencia);
  registro := tregistro.Create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  //GeraMenuRelatorio (_printer, btnimprimir, 29, cds, _rhocorrencia);
  GeraMenuRelatorio ('', btnimprimir, 29, qry, _rhocorrencia);
end;

procedure TfrmRHOcorrencia.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmRHOcorrencia.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmRHOcorrencia.cbxcdtprhocorrenciaEnter(Sender: TObject);
begin
  colorenter(Sender);
  abrir_tabela(_tprhocorrencia);
end;

procedure TfrmRHOcorrencia.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmRHOcorrencia.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmRHOcorrencia.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(DataSet);
end;

procedure TfrmRHOcorrencia.qryNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName(_dtemissao).asdatetime := DtBanco;
  registro.NewRecord;
  DataSet.FieldByName(_dtemissao).FocusControl;
end;

end.

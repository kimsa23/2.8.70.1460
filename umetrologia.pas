unit umetrologia;

interface

uses
  System.Actions, System.UITypes,
  forms, StdCtrls, Controls, ComCtrls, ToolWin, ExtCtrls, dialogs, Classes,
  Windows, ShellAPI, sysutils, Mask, ActnList, Grids, Menus,
  FireDAC.Comp.Client,
  uNovoTabela, uregistro, uconstantes, udatahora, ustrings,
  classeusuario, classeconsiste, classeregistrainformacao,
  classecliente, classeproduto, classeempresa, classeretornasql, classeequipamento,
  classeexecutasql, classeaplicacao, classegerar, classeRegistro, classeform,
  classequery,
  dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxDBEdit, cxButtonEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxPC, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, cxDBLabel, cxSpinEdit, cxCalc, cxCurrencyEdit, cxCheckBox,
  cxCalendar, DBCtrls, cxPCdxBarPopupMenu, cxButtons, cxTimeEdit, cxMemo,
  cxNavigator, cxListView, uDBMemo, classearquivo,
  ulocalizarFuncionario, uLocalizarEquipamento, dxBarBuiltInMenu;

type
  TfrmMetrologia = class(TForm)
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
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dts: TDataSource;
    pgc: TcxPageControl;
    tbsCadastro: TcxTabSheet;
    pnl1: TPanel;
    pnl: TcxLabel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    tbsjustificativastatus: TcxTabSheet;
    memdsobservacao: TcxDBMemo;
    lblfornecedor: TLabel;
    edtcdfornecedor: TcxDBButtonEdit;
    txtnmfornecedor: TDBText;
    Label2: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lblcdfuncionario: TLabel;
    edtcdfuncionario: TcxDBButtonEdit;
    txtnmfuncionario: TDBText;
    actabrirfuncionario: TAction;
    actabrirfornecedor: TAction;
    edtdtprevisao: TcxDBDateEdit;
    lbldtprevisao: TLabel;
    edtdtcalibracao: TcxDBDateEdit;
    lbldtcalibracao: TLabel;
    lblcdequipamento: TLabel;
    edtcdequipamento: TcxDBButtonEdit;
    txtnmequipamento: TDBText;
    actabrirequipamento: TAction;
    lblstequipamento: TLabel;
    cbxcdstmetrologia: TcxDBLookupComboBox;
    actarquivo: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
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
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actabrirfuncionarioExecute(Sender: TObject);
    procedure actabrirfornecedorExecute(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure txtnmfuncionarioDblClick(Sender: TObject);
    procedure txtnmfornecedorDblClick(Sender: TObject);
    procedure edtcdequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdequipamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure txtnmequipamentoDblClick(Sender: TObject);
    procedure actabrirequipamentoExecute(Sender: TObject);
    procedure cbxcdstmetrologiaEnter(Sender: TObject);
    procedure actarquivoExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure edtcdfuncionarioPropertiesChange(Sender: TObject);
    procedure edtcdfornecedorPropertiesChange(Sender: TObject);
    procedure edtcdequipamentoPropertiesChange(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmMetrologia: TfrmMetrologia;

implementation

uses uDtmMain, uMain, ulocalizarfornecedor, udlgarquivo;

{$R *.DFM}

const
  tbl      = _metrologia;
  exibe    = 'Metrologia';
  artigoI  = 'a';
  _sql = 'SELECT M.*'+
         ',F.NMFORNECEDOR'+
         ',FU.NMFUNCIONARIO'+
         ',E.NMEQUIPAMENTO '+
         'FROM METROLOGIA M '+
         'LEFT JOIN FORNECEDOR F ON F.CDFORNECEDOR=M.CDFORNECEDOR AND F.CDEMPRESA=M.CDEMPRESA '+
         'LEFT JOIN FUNCIONARIO FU ON FU.CDFUNCIONARIO=M.CDFUNCIONARIO AND FU.CDEMPRESA=M.CDEMPRESA '+
         'LEFT JOIN EQUIPAMENTO E ON E.CDEMPRESA=M.CDEMPRESA AND E.CDEQUIPAMENTO=M.CDEQUIPAMENTO '+
         'WHERE M.CDEMPRESA=:CDEMPRESA AND M.CDMETROLOGIA=:CDMETROLOGIA';

function TfrmMetrologia.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmMetrologia.actabrirequipamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qry);
end;

procedure TfrmMetrologia.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmMetrologia.actabrirfornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qry);
end;

procedure TfrmMetrologia.actabrirfuncionarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qry);
end;

procedure TfrmMetrologia.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmMetrologia.actSalvarExecute(Sender: TObject);
begin
  registro.Salvar;
end;

procedure TfrmMetrologia.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmMetrologia.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmMetrologia.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmMetrologia.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmMetrologia.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  edtCodigo.SetFocus;
  pnl.caption := exibe;
end;

procedure TfrmMetrologia.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure TfrmMetrologia.qryNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname(_CDSTMETROLOGIA).AsInteger := qregistro.Codigo_status_novo(_METROLOGIA);
  DataSet.fieldbyname(_dtemissao).asdatetime    := DtBanco;
  registro.NewRecord;
  DataSet.fieldbyname(_dtemissao).FocusControl;
end;

procedure TfrmMetrologia.txtnmequipamentoDblClick(Sender: TObject);
begin
  actAbrirequipamento.onExecute(actAbrirequipamento);
end;

procedure TfrmMetrologia.txtnmfornecedorDblClick(Sender: TObject);
begin
  actAbrirfornecedor.onExecute(actAbrirfornecedor);
end;

procedure TfrmMetrologia.txtnmfuncionarioDblClick(Sender: TObject);
begin
  actAbrirfuncionario.onExecute(actAbrirfuncionario);
end;

procedure TfrmMetrologia.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmMetrologia.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmMetrologia.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmMetrologia.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmMetrologia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmMetrologia.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmMetrologia.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmMetrologia.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure TfrmMetrologia.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmMetrologia.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure TfrmMetrologia.cbxcdstmetrologiaEnter(Sender: TObject);
begin
  colorenter(Sender);
  abrir_tabela(_stMETROLOGIA);
end;

procedure TfrmMetrologia.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmMetrologia.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, qry);
end;

procedure TfrmMetrologia.edtcdfornecedorPropertiesChange(Sender: TObject);
begin
  if not (dts.state in [dsinsert, dsedit]) then
  begin
    exit;
  end;
  if qry.FieldByName(_NMfornecedor).ReadOnly then
  begin
    qry.FieldByName(_NMfornecedor).ReadOnly := false;
  end;
  if edtcdfornecedor.text = '' then
  begin
    qry.FieldByName(_NMfornecedor).clear;
    exit;
  end;
  if not CodigoExiste(_fornecedor, edtcdfornecedor.text) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdfornecedor.text, maiuscula(_fornecedor)]), mterror, [mbok], 0);
    edtcdfornecedor.SetFocus;
    Abort;
  end;
  qry.FieldByName(_NMfornecedor).asstring := NomedoCodigo(_fornecedor, edtcdfornecedor.text);
end;

procedure TfrmMetrologia.edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmMetrologia.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizarfuncionario;
  if codigo = 0 then
  begin
    exit;
  end;
  qry.fieldbyname(_CDfuncionario).AsInteger := codigo;
end;

procedure TfrmMetrologia.edtcdfuncionarioPropertiesChange(Sender: TObject);
begin
  if not (dts.state in [dsinsert, dsedit]) then
  begin
    exit;
  end;
  if qry.FieldByName(_NMfuncionario).ReadOnly then
  begin
    qry.FieldByName(_NMfuncionario).ReadOnly := false;
  end;
  if edtcdfuncionario.text = '' then
  begin
    qry.FieldByName(_NMfuncionario).clear;
    exit;
  end;
  if not CodigoExiste(_funcionario, edtcdfuncionario.text) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdfuncionario.text, maiuscula(_funcionario)]), mterror, [mbok], 0);
    edtcdfuncionario.SetFocus;
    Abort;
  end;
  qry.FieldByName(_NMfuncionario).asstring := NomedoCodigo(_funcionario, edtcdfuncionario.text);
end;

procedure TfrmMetrologia.edtcdequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdequipamentoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmMetrologia.edtcdequipamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizarequipamento;
  if codigo = 0 then
  begin
    exit;
  end;
  qry.fieldbyname(_CDequipamento).AsInteger := codigo;
end;

procedure TfrmMetrologia.edtcdequipamentoPropertiesChange(Sender: TObject);
begin
  if not (dts.state in [dsinsert, dsedit]) then
  begin
    exit;
  end;
  if qry.FieldByName(_NMequipamento).ReadOnly then
  begin
    qry.FieldByName(_NMequipamento).ReadOnly := false;
  end;
  if edtcdequipamento.text = '' then
  begin
    qry.FieldByName(_NMequipamento).clear;
    exit;
  end;
  if not CodigoExiste(_equipamento, edtcdequipamento.text) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdequipamento.text, maiuscula(_equipamento)]), mterror, [mbok], 0);
    edtcdequipamento.SetFocus;
    Abort;
  end;
  qry.FieldByName(_NMequipamento).asstring := NomedoCodigo(_equipamento, edtcdequipamento.text);
end;

procedure TfrmMetrologia.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmMetrologia.FormCreate(Sender: TObject);
begin
  qry := tFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := _sql;
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  cbxcdstMETROLOGIA.Properties.ListSource  := abrir_tabela(_st+_METROLOGIA);
  registro                                  := tregistro.Create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure TfrmMetrologia.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmMetrologia.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmMetrologia.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(tbl, qry.fieldbyname(_cdmetrologia).AsString);
end;

end.

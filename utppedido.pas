unit utppedido;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Mask, Buttons, ExtCtrls, Controls, ComCtrls, ToolWin, dialogs,
  sysutils, Classes, ActnList, graphics, StdCtrls,
  DB,
  FireDAC.Comp.Client,
  udatahora, ustrings, urotinas, uconstantes, uregistro,
  classecopiarregistro, classeretornasql, classeusuario, classeconsiste, classegerar, classeregistrainformacao,
  classeregistro, classeempresa, classeform, classequery, classeaplicacao,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLookAndFeelPainters, cxCheckBox,
  cxDBEdit, cxGraphics,  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxClasses,
  dxBar, cxLookAndFeels, cxLabel, cxPC, cxMaskEdit, cxButtonEdit, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxBlobEdit, cxCalc;

type
  Tfrmtppedido = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actPrimeiro: TAction;
    actfechar: TAction;
    dts: TDataSource;
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
    dxbrlrgbtncopiar: TdxBarLargeButton;
    dxbrsprtr1: TdxBarSeparator;
    dxbrlrgbtnprimeiro: TdxBarLargeButton;
    dxbrlrgbtnanterior: TdxBarLargeButton;
    dxbrlrgbtnproximo: TdxBarLargeButton;
    dxbrlrgbtnultimo: TdxBarLargeButton;
    dxbrsprtr2: TdxBarSeparator;
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    Panel1: TPanel;
    bvl1: TBevel;
    Label1: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    pnl: TcxLabel;
    edtnome: TcxDBTextEdit;
    edtcodigo: TcxTextEdit;
    trv: TcxDBVerticalGrid;
    trvCategoryRow1: TcxCategoryRow;
    trvDBEditorRow1: TcxDBEditorRow;
    trvDBEditorRow2: TcxDBEditorRow;
    trvDBEditorRow3: TcxDBEditorRow;
    trvDBEditorRow4: TcxDBEditorRow;
    trvDBEditorRow5: TcxDBEditorRow;
    trvDBEditorRow6: TcxDBEditorRow;
    trvDBEditorRow7: TcxDBEditorRow;
    trvCategoryRow2: TcxCategoryRow;
    trvDBEditorRow9: TcxDBEditorRow;
    trvDBEditorRow10: TcxDBEditorRow;
    trvDBEditorRow11: TcxDBEditorRow;
    trvDBEditorRow12: TcxDBEditorRow;
    trvDBEditorRow13: TcxDBEditorRow;
    trvDBEditorRow14: TcxDBEditorRow;
    trvDBEditorRow15: TcxDBEditorRow;
    trvCategoryRow3: TcxCategoryRow;
    trvDBEditorRow17: TcxDBEditorRow;
    trvDBEditorRow19: TcxDBEditorRow;
    trvDBEditorRow20: TcxDBEditorRow;
    trvDBEditorRow21: TcxDBEditorRow;
    trvDBEditorRow24: TcxDBEditorRow;
    trvDBEditorRow27: TcxDBEditorRow;
    trvDBEditorRow26: TcxDBEditorRow;
    trvDBEditorRow28: TcxDBEditorRow;
    trvDBEditorRow29: TcxDBEditorRow;
    cbxcdtpfrete: TcxDBLookupComboBox;
    trvDBEditorRow30: TcxDBEditorRow;
    trvDBEditorRow31: TcxDBEditorRow;
    trvDBEditorRow32: TcxDBEditorRow;
    trvDBEditorRow33: TcxDBEditorRow;
    trvDBEditorRow34: TcxDBEditorRow;
    trvDBEditorRow36: TcxDBEditorRow;
    trvCategoryRow4: TcxCategoryRow;
    trvDBEditorRow37: TcxDBEditorRow;
    trvDBEditorRow38: TcxDBEditorRow;
    trvDBEditorRow39: TcxDBEditorRow;
    trvDBEditorRow40: TcxDBEditorRow;
    trvDBEditorRow41: TcxDBEditorRow;
    trvDBEditorRow42: TcxDBEditorRow;
    trvDBEditorRow43: TcxDBEditorRow;
    trvCategoryRow5: TcxCategoryRow;
    trvDBEditorRow44: TcxDBEditorRow;
    trvDBEditorRow45: TcxDBEditorRow;
    trvDBEditorRow46: TcxDBEditorRow;
    trvDBEditorRow47: TcxDBEditorRow;
    trvDBEditorRow48: TcxDBEditorRow;
    trvDBEditorRow49: TcxDBEditorRow;
    trvDBEditorRow51: TcxDBEditorRow;
    trvDBEditorRow52: TcxDBEditorRow;
    trvDBEditorRow53: TcxDBEditorRow;
    trvDBEditorRow55: TcxDBEditorRow;
    trvDBEditorRow56: TcxDBEditorRow;
    trvcdtpsaida: TcxDBEditorRow;
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    trvDBEditorRow35: TcxDBEditorRow;
    trvDBEditorRow54: TcxDBEditorRow;
    trvDBEditorRow57: TcxDBEditorRow;
    trvDBEditorRow25: TcxDBEditorRow;
    actavisotarefa: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    trvDBEditorRow58: TcxDBEditorRow;
    trvCategoryRow6: TcxCategoryRow;
    trvDBEditorRow22: TcxDBEditorRow;
    trvDBEditorRow59: TcxDBEditorRow;
    trvDBEditorRow60: TcxDBEditorRow;
    trvDBEditorRow61: TcxDBEditorRow;
    trvDBEditorRow62: TcxDBEditorRow;
    trvDBEditorRow18: TcxDBEditorRow;
    trvDBEditorRow65: TcxDBEditorRow;
    trvDBEditorRow66: TcxDBEditorRow;
    trvCategoryRow7: TcxCategoryRow;
    trvDBEditorRow8: TcxDBEditorRow;
    trvDBEditorRow50: TcxDBEditorRow;
    trvDBEditorRow67: TcxDBEditorRow;
    trvDBEditorRow68: TcxDBEditorRow;
    trvDBEditorRow69: TcxDBEditorRow;
    trvDBEditorRow70: TcxDBEditorRow;
    trvcdtpordproducao: TcxDBEditorRow;
    trvDBEditorRow71: TcxDBEditorRow;
    trvDBEditorRow72: TcxDBEditorRow;
    trvDBEditorRow73: TcxDBEditorRow;
    trvDBEditorRow74: TcxDBEditorRow;
    trvDBEditorRow75: TcxDBEditorRow;
    trvDBEditorRow76: TcxDBEditorRow;
    trvBOPACIENTE: TcxDBEditorRow;
    trvBOPROFISSIONAL: TcxDBEditorRow;
    trvBOITEMPROFISSIONAL: TcxDBEditorRow;
    trvDBEditorRow79: TcxDBEditorRow;
    trvCDPROFISSIONAL: TcxDBEditorRow;
    trvDBEditorRow77: TcxDBEditorRow;
    trvCDSTPACIENTE: TcxDBEditorRow;
    trvDBEditorRow78: TcxDBEditorRow;
    trvBOITEMTPREVISAOCOMERCIAL: TcxDBEditorRow;
    trvDBEditorRow80: TcxDBEditorRow;
    Exibir: TcxCategoryRow;
    trvDBEditorRow81: TcxDBEditorRow;
    trvDBEditorRow82: TcxDBEditorRow;
    trvDBEditorRow83: TcxDBEditorRow;
    trvDBEditorRow23: TcxDBEditorRow;
    trvDBEditorRow64: TcxDBEditorRow;
    trvDBEditorRow84: TcxDBEditorRow;
    trvDBEditorRow16: TcxDBEditorRow;
    trvDBEditorRow85: TcxDBEditorRow;
    trvDBEditorRow63: TcxDBEditorRow;
    trvDBEditorRow86: TcxDBEditorRow;
    trvDBEditorRow87: TcxDBEditorRow;
    trvDBEditorRow88: TcxDBEditorRow;
    trvDBEditorRow89: TcxDBEditorRow;
    trvDBEditorRow90: TcxDBEditorRow;
    trvDBEditorRow91: TcxDBEditorRow;
    trvDBEditorRow92: TcxDBEditorRow;
    trvDBEditorRow93: TcxDBEditorRow;
    trvDBEditorRow94: TcxDBEditorRow;
    trvCategoryRow8: TcxCategoryRow;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure actavisotarefaExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
  public  { Public declarations }
    registro : tregistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmtppedido: Tfrmtppedido;

implementation

uses ulocalizar, uMain, uDtmMain, udlgsetavisotarefa;

{$R *.DFM}

const
  tbl      = 'tppedido';
  exibe    = 'Tipo Pedido Venda';
  artigoI  = 'o';

function Tfrmtppedido.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtppedido.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtppedido.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtppedido.actSalvarExecute(Sender: TObject);
begin
  edtnome.SetFocus;
  if (qry.FieldByName(_bopacientedtdemissao).AsString = _s) and (qry.FieldByName(_cdstpaciente).AsString = '') then
  begin
    MessageDlg('Status do paciente é obrigatório quando está ativado preencher a data de demissão do paciente.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (qry.FieldByName(_BOORDPRODUCAOGERARAUTOMATICO).AsString = _s) and (qry.FieldByName(_CDTPORDPRODUCAO).AsString = '') then
  begin
    MessageDlg('Gerar Ordem de Produção automaticamente não pode estar ativado se não tiver um tipo de ordem de produçao vinculado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmtppedido.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtppedido.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtppedido.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtppedido.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtppedido.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtppedido.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtppedido.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmtppedido.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtppedido.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtppedido.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtppedido.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtppedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtppedido.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtppedido.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtppedido.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  actavisotarefa.Enabled := (not actSalvar.Enabled) and (qry.FieldByName(_bo+_aviso+_tarefa).AsString = _s);
end;

procedure Tfrmtppedido.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtppedido.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPPEDIDO WHERE CDEMPRESA=:CDEMPRESA AND CDTPPEDIDO=:CDTPPEDIDO';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  cbxcdtpfrete.Properties.ListSource := abrir_tabela(_tpfrete);
  TcxLookupComboBoxProperties(trvcdtpsaida.Properties.EditProperties).ListSource       := abrir_tabela(_tpsaida);
  TcxLookupComboBoxProperties(trvcdtpordproducao.Properties.EditProperties).ListSource := abrir_tabela(_tpordproducao);
  TcxLookupComboBoxProperties(trvcdprofissional.Properties.EditProperties).ListSource  := abrir_tabela(_profissional);
  TcxLookupComboBoxProperties(trvcdstpaciente.Properties.EditProperties).ListSource    := abrir_tabela(_stpaciente);
  registro                      := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  actavisotarefa.Visible        := Empresa.tarefa.bo;
  trvBOPACIENTE.Visible         := empresa.paciente.bo;
  trvBOPROFISSIONAL.Visible     := empresa.profissional.bo;
  trvBOITEMPROFISSIONAL.Visible := empresa.profissional.bo;
  trvCDPROFISSIONAL.Visible     := empresa.profissional.bo;
  trvBOITEMTPREVISAOCOMERCIAL.Visible := empresa.comercial.pedido.botprevisaocomercial;
end;

procedure Tfrmtppedido.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmtppedido.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtppedido.actavisotarefaExecute(Sender: TObject);
begin
  set_aviso_tarefa(tbl, qry.FieldByName(_cd+tbl).asstring);
end;

procedure Tfrmtppedido.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtppedido.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

end.

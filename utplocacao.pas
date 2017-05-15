unit utplocacao;

interface

uses
  forms, Classes, Mask, Buttons, ExtCtrls, Controls, ComCtrls, ToolWin, dialogs,
  sysutils, StdActns, ActnMan, ActnCtrls, ExtActns, graphics, ActnList, StdCtrls, Menus,
  FireDAC.Comp.Client,
  ustrings, udlgRichEdit, urotinas, uconstantes, uregistro,
  classeusuario, classeconsiste, classegerar, classeregistrainformacao,
  classeRegistro, classeform, classequery, classeaplicacao,
  dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMemo,
  cxDBEdit, cxTextEdit, DB, cxLabel, cxPC, cxStyles,
  cxBlobEdit, cxCheckBox, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxDBLookupComboBox, cxSpinEdit, System.Actions;

type
  Tfrmtplocacao = class(TForm)
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
    Panel1: TPanel;
    bvl1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    pnl: TcxLabel;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    vgr: TcxDBVerticalGrid;
    vgrDBEditorRow1: TcxDBEditorRow;
    vgrDBEditorRow2: TcxDBEditorRow;
    vgrDBEditorRow3: TcxDBEditorRow;
    vgrDBEditorRow4: TcxDBEditorRow;
    vgrDBEditorRow5: TcxDBEditorRow;
    vgrDBEditorRow6: TcxDBEditorRow;
    vgrDBEditorRow7: TcxDBEditorRow;
    vgrDBEditorRow8: TcxDBEditorRow;
    vgrDBEditorRow9: TcxDBEditorRow;
    vgrDBEditorRow10: TcxDBEditorRow;
    vgrcdproduto: TcxDBEditorRow;
    vgrcdTPCLIENTE: TcxDBEditorRow;
    vgrDBEditorRow12: TcxDBEditorRow;
    vgrDBEditorRow11: TcxDBEditorRow;
    vgrDBEditorRow13: TcxDBEditorRow;
    vgrDBEditorRow14: TcxDBEditorRow;
    vgrDBEditorRow15: TcxDBEditorRow;
    dxBarLargeButton1: TdxBarLargeButton;
    actcopiar: TAction;
    vgrDBEditorRow16: TcxDBEditorRow;
    vgrDBEditorRow17: TcxDBEditorRow;
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
    procedure nextcontrol(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry: TFDQuery;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmtplocacao: Tfrmtplocacao;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

const
  tbl      = _tplocacao;
  exibe    = 'Tipo Locação';
  artigoI  = 'o';

function Tfrmtplocacao.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtplocacao.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtplocacao.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtplocacao.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  if registro.salvar then
  begin
    key := #13;
    nextcontrol(Self.ActiveControl, key);
  end;
end;

procedure Tfrmtplocacao.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtplocacao.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtplocacao.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtplocacao.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtplocacao.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtplocacao.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtplocacao.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtplocacao.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmtplocacao.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtplocacao.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtplocacao.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtplocacao.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtplocacao.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure Tfrmtplocacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtplocacao.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtplocacao.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtplocacao.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtplocacao.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtplocacao.FormCreate(Sender: TObject);
begin
  qry:= TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPLOCACAO WHERE CDEMPRESA=:CDEMPRESA AND CDTPLOCACAO=:CDTPLOCACAO';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  TcxLookupComboBoxProperties(vgrcdproduto.Properties.EditProperties).ListSource := abrir_tabela(_produto);
  TcxLookupComboBoxProperties(vgrcdTPCLIENTE.Properties.EditProperties).ListSource := abrir_tabela(_TPCLIENTE);
end;

procedure Tfrmtplocacao.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure Tfrmtplocacao.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtplocacao.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

end.

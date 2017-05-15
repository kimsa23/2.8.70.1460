unit ueventoemail;

interface

uses
  Classes, ActnList, StdCtrls, Mask, Buttons, ExtCtrls, Controls,
  ComCtrls, ToolWin, dialogs, sysutils, ActnMan, ActnCtrls, ImgList, ExtActns,
  StdActns, graphics, Menus, Vcl.Forms,
  udatahora, ustrings, urotinas, uconstantes, uregistro,
  classeretornasql, classeusuario, classeempresa, classeconsiste, classegerar,
  classeregistrainformacao, classeform, classeregistro, classequery,
  classeaplicacao,
  XPStyleActnCtrls,
  FireDAC.Comp.Client,
  cxDBEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMemo, cxRichEdit, cxDBRichEdit, DB,
  dxBar,
  cxClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxLabel,
  cxPC, dxBevel, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, System.Actions, cxSpinEdit, cxTimeEdit,
  dxBarBuiltInMenu, cxGroupBox, cxButtons;

type
  TfrmEventoEmail = class(TForm)
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
    actcopiar: TAction;
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
    Label1: TLabel;
    Label3: TLabel;
    pnl: TcxLabel;
    edtnome: TcxDBTextEdit;
    edtcodigo: TcxTextEdit;
    actlayout: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBevel2: TdxBevel;
    pgc: TcxPageControl;
    tbsCadastro: TcxTabSheet;
    tbssql: TcxTabSheet;
    cbxcdreport: TcxDBLookupComboBox;
    ckbBOENVIARSILENCIOSAMENTE: TcxDBCheckBox;
    cbxcdreportuser: TcxDBLookupComboBox;
    edtdsdestinatario: TcxDBTextEdit;
    edtemailcopia: TcxDBTextEdit;
    edtdstitulo: TcxDBTextEdit;
    lblcdreport: TLabel;
    lblcdreportuser: TLabel;
    lblemailcopia: TLabel;
    lbldsdestinatario: TLabel;
    lbldstitulo: TLabel;
    memdssql: TcxDBMemo;
    gbxServico: TcxGroupBox;
    ckbboservico: TcxDBCheckBox;
    Label2: TLabel;
    cbxcdtptemporizador: TcxDBLookupComboBox;
    Label4: TLabel;
    edthrevento: TcxDBTimeEdit;
    acttesterelatorio: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
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
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actlayoutExecute(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure acttesterelatorioExecute(Sender: TObject);
  private      { Private declarations }
    qry: tFDQuery;
    procedure AbrirTabelas;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:Integer):boolean;
  end;

var
  frmEventoEmail: TfrmEventoEmail;

implementation

uses uDtmMain, uMain, udlgRichEdit, ClasseImpressaoMatricial,
uRichEdit;

{$R *.DFM}

const
  tbl      = 'eventoemail';
  exibe    = 'Evento Email';
  artigoI  = 'o';

function TfrmEventoEmail.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmEventoEmail.AbrirTabelas;
begin
  cbxcdreport.Properties.ListSource := abrir_tabela(_report);
  cbxcdreportuser.Properties.ListSource := abrir_tabela(_reportuser);
  cbxcdtptemporizador.Properties.ListSource := abrir_tabela(_tptemporizador);
end;

procedure TfrmEventoEmail.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmEventoEmail.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmEventoEmail.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  if registro.salvar then
  begin
    key := #13;
    nextcontrol(Self.ActiveControl, key);
  end;
end;

procedure TfrmEventoEmail.acttesterelatorioExecute(Sender: TObject);
var
  impressaomatricial : timpressaomatricial;
begin
  impressaomatricial := timpressaomatricial.create;
  try
    ExibirSaidaVideo(impressaomatricial.imprimir(aplicacao.confire, memdssql.Lines.Text), wsMaximized, true);
  finally
    freeandnil(impressaomatricial);
  end;
end;

procedure TfrmEventoEmail.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmEventoEmail.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmEventoEmail.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmEventoEmail.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmEventoEmail.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmEventoEmail.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmEventoEmail.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  edtCodigo.SetFocus;
end;

procedure TfrmEventoEmail.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmEventoEmail.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmEventoEmail.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmEventoEmail.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmEventoEmail.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure TfrmEventoEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmEventoEmail.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure TfrmEventoEmail.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmEventoEmail.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure TfrmEventoEmail.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmEventoEmail.FormCreate(Sender: TObject);
begin
  qry:= tFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'select * from EVENTOEMAIL where CDEMPRESA=:CDEMPRESA AND cdeventoemail=:cdeventoemail';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  qry.AfterScroll := qryAfterScroll;
  AbrirTabelas;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure TfrmEventoEmail.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
end;

procedure TfrmEventoEmail.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure TfrmEventoEmail.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure TfrmEventoEmail.actlayoutExecute(Sender: TObject);
begin
  FormatarRichEdit(_eventoemail, qry.fieldbyname(_cdeventoemail).asstring, _dsassunto, false);
end;

procedure TfrmEventoEmail.qryAfterScroll(DataSet: TDataSet);
begin
  actlayout.Enabled := qry.RecordCount = 1;
end;

end.

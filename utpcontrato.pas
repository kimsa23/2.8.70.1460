unit utpcontrato;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Mask, Buttons, ExtCtrls, Controls, ComCtrls, ToolWin, dialogs,
  sysutils, Classes, ActnList, graphics, StdCtrls,
  DB,
  FireDAC.Comp.Client,
  udatahora, ustrings, urotinas, uconstantes, uregistro,
  classeretornasql, classeusuario, classeconsiste, classegerar, classeregistrainformacao,
  classeregistro, classeempresa, classeform, classequery, classeaplicacao,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLookAndFeelPainters, cxCheckBox,
  cxDBEdit, cxGraphics,  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxClasses,
  dxBar, cxLookAndFeels, cxLabel, cxPC, cxMaskEdit, cxButtonEdit, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxBlobEdit, cxSpinEdit;

type
  Tfrmtpcontrato = class(TForm)
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
    pnl: TcxLabel;
    edtnome: TcxDBTextEdit;
    edtcodigo: TcxTextEdit;
    vtg: TcxDBVerticalGrid;
    vtgDBEditorRow5: TcxDBEditorRow;
    vtgDBEditorRow7: TcxDBEditorRow;
    vtgDBEditorRow18: TcxDBEditorRow;
    vtgDBEditorRow19: TcxDBEditorRow;
    vtgDBEditorRow26: TcxDBEditorRow;
    vtgDBEditorRow1: TcxDBEditorRow;
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    vtgBOPACIENTE: TcxDBEditorRow;
    vtgDBEditorRow3: TcxDBEditorRow;
    vtgDBEditorRow6: TcxDBEditorRow;
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
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry: TFDQuery;
  public  { Public declarations }
    registro : tregistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmtpcontrato: Tfrmtpcontrato;

implementation

uses ulocalizar, uMain, uDtmMain, classecopiarregistro;

{$R *.DFM}

const
  tbl      = 'tpcontrato';
  exibe    = 'Tipo Contrato';
  artigoI  = 'o';

function Tfrmtpcontrato.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpcontrato.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpcontrato.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpcontrato.actSalvarExecute(Sender: TObject);
begin
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmtpcontrato.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpcontrato.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpcontrato.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpcontrato.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpcontrato.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpcontrato.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpcontrato.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpcontrato.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpcontrato.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpcontrato.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpcontrato.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpcontrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpcontrato.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpcontrato.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpcontrato.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpcontrato.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpcontrato.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmtpcontrato.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPCONTRATO WHERE CDEMPRESA=:CDEMPRESA AND CDTPCONTRATO=:CDTPCONTRATO';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  vtgBOPACIENTE.Visible := empresa.paciente.bo;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure Tfrmtpcontrato.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtpcontrato.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtpcontrato.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

end.

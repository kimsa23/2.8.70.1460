unit utpproduto;

interface

uses
  forms, Menus, Mask, Buttons, ExtCtrls, Controls, ComCtrls, ToolWin, dialogs,
  sysutils, Classes, ActnList, graphics, StdCtrls,
  DB,
  FireDAC.Comp.Client,
  udatahora, ustrings, urotinas, uconstantes, uregistro,
  classecopiarregistro, classeretornasql, classeusuario,
  classeconsiste, classegerar, classeregistrainformacao, classeregistro,
  classeempresa, classeform, classequery, classeaplicacao,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLookAndFeelPainters, cxCheckBox,
  cxDBEdit, cxGraphics,  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxClasses, dxBar, cxLookAndFeels, cxLabel, cxPC, cxVGrid, cxDBVGrid,
  cxInplaceContainer, System.Actions;

type
  Tfrmtpproduto = class(TForm)
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
    pnl1: TPanel;
    pnl: TcxLabel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    Label3: TLabel;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1CategoryRow1: TcxCategoryRow;
    cxDBVerticalGrid1CategoryRow2: TcxCategoryRow;
    cxDBVerticalGrid1CategoryRow3: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow3: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow4: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow5: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow6: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow7: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow8: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow9: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow10: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow11: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow12: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow13: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow14: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow15: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow16: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow17: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow18: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow19: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow20: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow22: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow23: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow24: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow26: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow27: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow28: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow29: TcxDBEditorRow;
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    cxDBVerticalGrid1DBEditorRow30: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow31: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow32: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow33: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow34: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow35: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow36: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow37: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow38: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow39: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow4: TcxCategoryRow;
    cxDBVerticalGrid1CategoryRow5: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow40: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow41: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow42: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow43: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow44: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow6: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow45: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow46: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow47: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow48: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow49: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow50: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow51: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow52: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow21: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow25: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow53: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow54: TcxDBEditorRow;
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
    procedure dtsStateChange(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
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
  frmtpproduto: Tfrmtpproduto;

implementation

uses uDtmMain, uMain;

{$R *.DFM}

const
  tbl      = 'tpproduto';
  exibe    = 'Tipo Produto';
  artigoI  = 'o';

function Tfrmtpproduto.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpproduto.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpproduto.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpproduto.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  if registro.salvar then
  begin
    key := #13;
    nextcontrol(Self.ActiveControl, key);
  end;
end;

procedure Tfrmtpproduto.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpproduto.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpproduto.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpproduto.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpproduto.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpproduto.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpproduto.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpproduto.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpproduto.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpproduto.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpproduto.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpproduto.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure Tfrmtpproduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpproduto.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpproduto.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpproduto.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpproduto.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpproduto.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPPRODUTO WHERE CDEMPRESA=:CDEMPRESA AND CDTPPRODUTO=:CDTPPRODUTO';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure Tfrmtpproduto.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmtpproduto.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtpproduto.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtpproduto.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

end.

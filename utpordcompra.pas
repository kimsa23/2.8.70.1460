unit utpordcompra;

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
  Tfrmtpordcompra = class(TForm)
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
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1CategoryRow1: TcxCategoryRow;
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
    cxDBVerticalGrid1CategoryRow4: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow12: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow13: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow14: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow5: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow17: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow18: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow19: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow21: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow23: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow24: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow2: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow25: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow26: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow27: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow28: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow29: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow30: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow31: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow6: TcxCategoryRow;
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    cxDBVerticalGrid1DBEditorRow15: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow16: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow7: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow20: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow22: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow32: TcxDBEditorRow;
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
    qry : TFDQuery;
  public  { Public declarations }
    registro : tregistro;
    function Abrir(codigo:Integer):boolean;
  end;

var
  frmtpordcompra: Tfrmtpordcompra;

implementation

uses ulocalizar, uMain, uDtmMain, classecopiarregistro;

{$R *.DFM}

const
  tbl      = 'tpordcompra';
  exibe    = 'Tipo Ordem Compra';
  artigoI  = 'o';

function Tfrmtpordcompra.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpordcompra.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpordcompra.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpordcompra.actSalvarExecute(Sender: TObject);
begin
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmtpordcompra.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpordcompra.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpordcompra.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpordcompra.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpordcompra.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpordcompra.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpordcompra.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpordcompra.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpordcompra.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpordcompra.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpordcompra.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpordcompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpordcompra.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpordcompra.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpordcompra.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpordcompra.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpordcompra.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmtpordcompra.FormCreate(Sender: TObject);
begin
  qry := tFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPORDCOMPRA WHERE CDEMPRESA=:CDEMPRESA AND CDTPORDCOMPRA=:CDTPORDCOMPRA';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure Tfrmtpordcompra.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtpordcompra.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtpordcompra.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

end.

unit utpapontamentomanual;

interface

uses
  forms, Menus, Mask, Buttons, ExtCtrls, Controls, ComCtrls, ToolWin, dialogs,
  sysutils, Classes, ActnList, graphics, StdCtrls,
  DB,
  FireDAC.Comp.Client,
  udatahora, ustrings, urotinas, uconstantes, uregistro,
  classeretornasql, classeusuario, classeconsiste, classegerar,
  classeregistrainformacao, classeregistro, classeempresa, classeform, classeexecutasql,
  classequery, classeaplicacao,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLookAndFeelPainters, cxCheckBox,
  cxDBEdit, cxGraphics,  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxClasses,
  dxBar, cxLookAndFeels, cxLabel, cxPC, cxMaskEdit, cxButtonEdit, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalc, cxRadioGroup, System.Actions;
  
type
  Tfrmtpapontamentomanual = class(TForm)
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
    actopcoes: TAction;
    btnopcoes: TdxBarLargeButton;
    actprecolocacao: TAction;
    pumopcoes: TdxBarPopupMenu;
    actcopiar: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    acttpequipamentousuario: TAction;
    actexcluirmetodoprocesso: TAction;
    acttpinspecao: TAction;
    acttpequipamentoentrada: TAction;
    acttpequipamentosaida: TAction;
    lblTPVIEW: TLabel;
    cbxTPVIEW: TcxDBComboBox;
    vtg: TcxDBVerticalGrid;
    vtgDBEditorRow1: TcxDBEditorRow;
    vtgDBEditorRow2: TcxDBEditorRow;
    vtgDBEditorRow3: TcxDBEditorRow;
    vtgDBEditorRow4: TcxDBEditorRow;
    vtgDBEditorRow5: TcxDBEditorRow;
    vtgDBEditorRow6: TcxDBEditorRow;
    vtgDBEditorRow7: TcxDBEditorRow;
    vtgDBEditorRow8: TcxDBEditorRow;
    vtgDBEditorRow9: TcxDBEditorRow;
    vtgDBEditorRow10: TcxDBEditorRow;
    vtgDBEditorRow11: TcxDBEditorRow;
    vtgDBEditorRow12: TcxDBEditorRow;
    vtgDBEditorRow13: TcxDBEditorRow;
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
    procedure actopcoesExecute(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
  public  { Public declarations }
    registro : tregistro;
    tbl : string;
    exibe : string;
    function Abrir(codigo:Integer):boolean;
  end;

var
  frmtpapontamentomanual: Tfrmtpapontamentomanual;

implementation

uses ulocalizar, uMain, uDtmMain, classecopiarregistro;

{$R *.DFM}

function Tfrmtpapontamentomanual.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpapontamentomanual.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpapontamentomanual.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpapontamentomanual.actSalvarExecute(Sender: TObject);
begin
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmtpapontamentomanual.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpapontamentomanual.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpapontamentomanual.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpapontamentomanual.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpapontamentomanual.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpapontamentomanual.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpapontamentomanual.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpapontamentomanual.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpapontamentomanual.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpapontamentomanual.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpapontamentomanual.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpapontamentomanual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpapontamentomanual.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpapontamentomanual.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpapontamentomanual.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpapontamentomanual.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpapontamentomanual.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmtpapontamentomanual.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPAPONTAMENTOMANUAL WHERE CDEMPRESA=:CDEMPRESA AND CDTPAPONTAMENTOMANUAL=:CDTPAPONTAMENTOMANUAL';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  tbl      := _tpapontamentomanual;
  exibe    := 'Tipo Apontamento Manual';
  registro := tregistro.create(self, tbl, exibe, 'o', qry, dts, edtcodigo);
end;

procedure Tfrmtpapontamentomanual.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure Tfrmtpapontamentomanual.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtpapontamentomanual.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(DataSet);
end;

procedure Tfrmtpapontamentomanual.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

end.

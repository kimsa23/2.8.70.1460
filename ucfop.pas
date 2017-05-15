unit ucfop;

interface

uses
  forms, Classes, ActnList, StdCtrls, Mask, Buttons, ExtCtrls, Controls,
  ComCtrls, ToolWin, dialogs, sysutils, ActnMan, ActnCtrls, ImgList, ExtActns,
  StdActns, graphics, Menus,
  FireDAC.Comp.Client,
  udatahora, ustrings, urotinas, uconstantes, uregistro,
  classeretornasql, classeusuario, classeempresa, classeconsiste, classegerar,
  classeregistrainformacao, classeform, classeregistro, classequery, classeaplicacao,
  XPStyleActnCtrls, FMTBcd,
  cxDBEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMemo, cxRichEdit, cxDBRichEdit, DB, dxBar,
  cxClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxLabel,
  cxPC, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxStyles, cxBlobEdit,
  cxVGrid, cxDBVGrid, cxInplaceContainer, System.Actions;

type
  Tfrmcfop = class(TForm)
    act: TActionList;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
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
    dxbrlrgbtnEditar: TdxBarLargeButton;
    dxbrlrgbtnAbrir: TdxBarLargeButton;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtncancelar: TdxBarLargeButton;
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
    dxBarLargeButton1: TdxBarLargeButton;
    actnovo: TAction;
    vgr: TcxDBVerticalGrid;
    vgrDBEditorRow1: TcxDBEditorRow;
    vgrDBEditorRow2: TcxDBEditorRow;
    vgrDBEditorRow3: TcxDBEditorRow;
    vgrbolivroproducao: TcxDBEditorRow;
    vgrDBEditorRow5: TcxDBEditorRow;
    vgrDBEditorRow6: TcxDBEditorRow;
    vgrDBEditorRow7: TcxDBEditorRow;
    vgrboativar: TcxDBEditorRow;
    vgrDBEditorRow9: TcxDBEditorRow;
    vgrCDTPITEM: TcxDBEditorRow;
    vgrNUSTCOFINS: TcxDBEditorRow;
    vgrNUSTPIS: TcxDBEditorRow;
    vgrNUSTIPI: TcxDBEditorRow;
    vgrnusticms: TcxDBEditorRow;
    vgrNUSTCOFINSSIMPLES: TcxDBEditorRow;
    vgrNUSTPISSIMPLES: TcxDBEditorRow;
    vgrNUSTIPISIMPLES: TcxDBEditorRow;
    vgrNUSTICMSSIMPLES: TcxDBEditorRow;
    vgrDBEditorRow22: TcxDBEditorRow;
    vgrDBEditorRow23: TcxDBEditorRow;
    vgrcdcfopdevolucao: TcxDBEditorRow;
    vgrCategoryRow2: TcxCategoryRow;
    vgrCategoryRow3: TcxCategoryRow;
    vgrCategoryRow4: TcxCategoryRow;
    vgrDBEditorRow8: TcxDBEditorRow;
    vgrDBEditorRow10: TcxDBEditorRow;
    vgrCategoryRow5: TcxCategoryRow;
    vgrDBEditorRow11: TcxDBEditorRow;
    vgrDBEditorRow4: TcxDBEditorRow;
    vgrDBEditorRow12: TcxDBEditorRow;
    vgrDBEditorRow13: TcxDBEditorRow;
    vgrDBEditorRow14: TcxDBEditorRow;
    procedure actAbrirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
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
    procedure FormDestroy(Sender: TObject);
    procedure actnovoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:Integer):boolean;
  end;

var
  frmcfop: Tfrmcfop;

implementation

uses uDtmMain, uMain;

{$R *.DFM}

const
  tbl      = 'CFOP';
  exibe    = 'CFOP';
  artigoI  = 'o';
  _sql = 'SELECT * FROM CFOP WHERE CDCFOP=:CDCFOP';

function Tfrmcfop.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmcfop.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmcfop.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  if registro.salvar then
  begin
    key := #13;
    nextcontrol(Self.ActiveControl, key);
  end;
end;

procedure Tfrmcfop.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmcfop.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmcfop.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmcfop.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmcfop.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmcfop.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  edtCodigo.SetFocus;
end;

procedure Tfrmcfop.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmcfop.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmcfop.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmcfop.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmcfop.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure Tfrmcfop.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmcfop.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure Tfrmcfop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcfop.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmcfop.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmcfop.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmcfop.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmcfop.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmcfop.actnovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmcfop.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := _sql;
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;

  vgrbolivroproducao.Visible                                                             := Empresa.livroproducao.bo;
  TcxLookupComboBoxProperties(vgrnusticms.Properties.EditProperties).ListSource          := abrir_tabela(_sticms);
  TcxLookupComboBoxProperties(vgrnustipi.Properties.EditProperties).ListSource           := abrir_tabela(_stipi);
  TcxLookupComboBoxProperties(vgrnustpis.Properties.EditProperties).ListSource           := abrir_tabela(_stpis);
  TcxLookupComboBoxProperties(vgrnustcofins.Properties.EditProperties).ListSource        := abrir_tabela(_stcofins);
  TcxLookupComboBoxProperties(vgrnusticmssimples.Properties.EditProperties).ListSource   := abrir_tabela(_sticms);
  TcxLookupComboBoxProperties(vgrnustipisimples.Properties.EditProperties).ListSource    := abrir_tabela(_stipi);
  TcxLookupComboBoxProperties(vgrnustpissimples.Properties.EditProperties).ListSource    := abrir_tabela(_stpis);
  TcxLookupComboBoxProperties(vgrnustcofinssimples.Properties.EditProperties).ListSource := abrir_tabela(_stcofins);
  TcxLookupComboBoxProperties(vgrcdcfopdevolucao.Properties.EditProperties).ListSource   := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(vgrcdtpitem.Properties.EditProperties).ListSource          := abrir_tabela(_tpitem);
  pnl.Caption := exibe;
  registro    := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

end.

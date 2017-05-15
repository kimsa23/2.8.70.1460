unit utpfaturamento;

interface

uses
  forms, graphics, Classes, Mask, Buttons, ExtCtrls, Controls, ComCtrls,
  ToolWin, dialogs, sysutils, ActnList, StdCtrls, Menus,
  DB,
  FireDAC.Comp.Client,
  ulocalizar, ustrings, urotinas, uconstantes, uregistro, udatahora,
  classeusuario, classeconsiste, classegerar, classeform,
  classeregistro, classeregistrainformacao, classeretornasql, classequery, classeaplicacao,
  cxLookAndFeelPainters, dxBar, cxClasses, cxGroupBox, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxRadioGroup, cxDBEdit, cxButtonEdit, cxCheckBox, cxMaskEdit,
  cxGraphics, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeels, cxLabel, cxPC, cxDBLabel, cxCalc, cxSpinEdit, cxStyles, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxCalendar, cxRichEdit, System.Actions;

type
  Tfrmtpfaturamento = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
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
    dxbrsprtr1: TdxBarSeparator;
    dxbrlrgbtnprimeiro: TdxBarLargeButton;
    dxbrlrgbtnanterior: TdxBarLargeButton;
    dxbrlrgbtnproximo: TdxBarLargeButton;
    dxbrlrgbtnultimo: TdxBarLargeButton;
    dxbrsprtr2: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxbrdckcntrl1: TdxBarDockControl;
    pnl: TcxLabel;
    pnl1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    bvl1: TBevel;
    vgr: TcxDBVerticalGrid;
    vgrDBEditorRow2: TcxDBEditorRow;
    vgrDBEditorRow3: TcxDBEditorRow;
    vgrDBEditorRow5: TcxDBEditorRow;
    vgrDBEditorRow6: TcxDBEditorRow;
    vgrDBEditorRow7: TcxDBEditorRow;
    vgrDBEditorRow8: TcxDBEditorRow;
    vgrDBEditorRow11: TcxDBEditorRow;
    vgrDBEditorRow14: TcxDBEditorRow;
    vgrDBEditorRow16: TcxDBEditorRow;
    vgCDTPSAIDA: TcxDBEditorRow;
    vgrDBEditorRow19: TcxDBEditorRow;
    vgrDBEditorRow20: TcxDBEditorRow;
    vgrDBEditorRow21: TcxDBEditorRow;
    vgrDBEditorRow22: TcxDBEditorRow;
    vgrDBEditorRow26: TcxDBEditorRow;
    vgrCDROTA: TcxDBEditorRow;
    vgrDBEditorRow29: TcxDBEditorRow;
    vgCDTPPEDIDOCAMPANHA: TcxDBEditorRow;
    dxBarLargeButton1: TdxBarLargeButton;
    actcopiar: TAction;
    vgrCDEVENTOEMAIL: TcxDBEditorRow;
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
    procedure FormDestroy(Sender: TObject);
    procedure cxDBVerticalGrid1DBEditorRow27EditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
    procedure AbrirTabelas;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:Integer):boolean;
  end;

var
  frmtpfaturamento: Tfrmtpfaturamento;

implementation

uses uDtmMain, uMain, udlgRichEdit;

{$R *.DFM}

const
  tbl      = _tp+_faturamento;
  exibe    = 'Tipo Faturamento';
  artigoI  = 'o';

function Tfrmtpfaturamento.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpfaturamento.AbrirTabelas;
begin
  TcxLookupComboBoxProperties(vgrCDROTA.Properties.EditProperties).ListSource := abrir_tabela(_rota);
  TcxLookupComboBoxProperties(vgrCDEVENTOEMAIL.Properties.EditProperties).ListSource := abrir_tabela(_EVENTOEMAIL);
  TcxLookupComboBoxProperties(vgCDTPPEDIDOCAMPANHA.Properties.EditProperties).ListSource := abrir_tabela(_tppedido);
  TcxLookupComboBoxProperties(vgCDTPSAIDA.Properties.EditProperties).ListSource := abrir_tabela(_tpsaida);
end;

procedure Tfrmtpfaturamento.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpfaturamento.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpfaturamento.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  if registro.salvar then
  begin
    key := #13;
    nextcontrol(Self.ActiveControl, key);
  end;
end;

procedure Tfrmtpfaturamento.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpfaturamento.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpfaturamento.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpfaturamento.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtpfaturamento.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpfaturamento.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpfaturamento.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpfaturamento.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
end;

procedure Tfrmtpfaturamento.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpfaturamento.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpfaturamento.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpfaturamento.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpfaturamento.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure Tfrmtpfaturamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpfaturamento.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmtpfaturamento.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpfaturamento.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpfaturamento.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_CDTPFATURAMENTO).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpfaturamento.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpfaturamento.cxDBVerticalGrid1DBEditorRow27EditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  FormatarRichEdit(tbl, qry.fieldbyname(_cdtpfaturamento).asstring, _DSINFORMACAO+_BOLETO, true);
end;

procedure Tfrmtpfaturamento.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPFATURAMENTO WHERE CDEMPRESA=:CDEMPRESA AND CDTPFATURAMENTO=:CDTPFATURAMENTO';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  AbrirTabelas;
end;

procedure Tfrmtpfaturamento.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtpfaturamento.qryNewRecord(DataSet: TDataSet);
begin
  registro.newrecord;
end;

end.

unit utpembarque;

interface

uses
  forms, Menus, Mask, Buttons, ExtCtrls, Controls, ComCtrls, ToolWin, dialogs,
  sysutils, Classes, ActnList, graphics, StdCtrls,
  DB,
  FireDAC.Comp.Client,
  udatahora, ustrings, urotinas, uconstantes, uregistro,
  classeretornasql, classeusuario, classeconsiste, classegerar, classeregistrainformacao,
  classeregistro, classeempresa, classeform, classequery,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLookAndFeelPainters, cxCheckBox,
  cxDBEdit, cxGraphics,  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxClasses, dxBar, cxLookAndFeels, cxLabel, cxPC,
  cxMaskEdit, cxButtonEdit, cxVGrid, cxDBVGrid, cxInplaceContainer, cxBlobEdit,
  cxSpinEdit, cxDBLookupComboBox, System.Actions;

type
  Tfrmtpembarque = class(TForm)
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
    vtgCDCTETPPREVISAOENTREGA: TcxDBEditorRow;
    vtgCDCONDPAGTO: TcxDBEditorRow;
    vtgCDPRODUTO: TcxDBEditorRow;
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    vtgCDCTETPPREVISAOENTREGAH: TcxDBEditorRow;
    vtgCDCTETPTOMADOR: TcxDBEditorRow;
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
    procedure abrirtabela;
  public  { Public declarations }
    registro : tregistro;
    function Abrir(codigo:Integer):boolean;
  end;

var
  frmtpembarque: Tfrmtpembarque;

implementation

uses ulocalizar, uMain, uDtmMain, classecopiarregistro;

{$R *.DFM}

const
  tbl      = 'tpembarque';
  exibe    = 'Tipo Embarque';
  artigoI  = 'o';

function Tfrmtpembarque.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpembarque.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpembarque.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpembarque.actSalvarExecute(Sender: TObject);
begin
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmtpembarque.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpembarque.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpembarque.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpembarque.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpembarque.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpembarque.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpembarque.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpembarque.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpembarque.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpembarque.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpembarque.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpembarque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpembarque.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpembarque.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpembarque.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpembarque.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpembarque.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmtpembarque.FormCreate(Sender: TObject);
begin
  qry := tFDQuery.create(nil);
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPEMBARQUE WHERE CDEMPRESA=:CDEMPRESA AND CDTPEMBARQUE=:CDTPEMBARQUE';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  abrirtabela;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure Tfrmtpembarque.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtpembarque.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtpembarque.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure Tfrmtpembarque.abrirtabela;
begin
  TcxLookupComboBoxProperties(vtgCDCONDPAGTO.Properties.EditProperties).ListSource             := abrir_tabela(_condpagto);
  TcxLookupComboBoxProperties(vtgCDPRODUTO.Properties.EditProperties).ListSource               := abrir_tabela(_produto);
  TcxLookupComboBoxProperties(vtgCDCTETPTOMADOR.Properties.EditProperties).ListSource          := abrir_tabela(_CTETPTOMADOR);
  TcxLookupComboBoxProperties(vtgCDCTETPPREVISAOENTREGA.Properties.EditProperties).ListSource  := abrir_tabela(_CTETPPREVISAOENTREGA);
  TcxLookupComboBoxProperties(vtgCDCTETPPREVISAOENTREGAH.Properties.EditProperties).ListSource := abrir_tabela(_CTETPPREVISAOENTREGAH);
end;

end.

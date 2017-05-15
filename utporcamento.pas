unit utporcamento;

interface

uses
  forms, Menus, Mask, Buttons, ExtCtrls, Controls, ComCtrls, ToolWin, dialogs,
  sysutils, Classes, ActnList, graphics, StdCtrls,
  DB, FireDAC.Comp.Client,
  udatahora, ustrings, urotinas, uconstantes, uregistro,
  classeretornasql, classeusuario, classeconsiste, classegerar, classeregistrainformacao,
  classeregistro, classeempresa, classeform, classequery, classeaplicacao,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLookAndFeelPainters, cxCheckBox,
  cxDBEdit, cxGraphics,  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxClasses,
  dxBar, cxLookAndFeels, cxLabel, cxPC, cxMaskEdit, cxButtonEdit, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxCalc, cxRadioGroup,
  cxBlobEdit, System.Actions;
  
type
  Tfrmtporcamento = class(TForm)
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
    vtg: TcxDBVerticalGrid;
    vtgCategoryRow1: TcxCategoryRow;
    vtgDBEditorRow1: TcxDBEditorRow;
    vtgboicms: TcxDBEditorRow;
    vtgboipi: TcxDBEditorRow;
    vtgDBEditorRow4: TcxDBEditorRow;
    vtgDBEditorRow5: TcxDBEditorRow;
    vtgCategoryRow2: TcxCategoryRow;
    vtgDBEditorRow9: TcxDBEditorRow;
    vtgDBEditorRow10: TcxDBEditorRow;
    vtgDBEditorRow12: TcxDBEditorRow;
    vtgDBEditorRow13: TcxDBEditorRow;
    vtgDBEditorRow14: TcxDBEditorRow;
    vtgDBEditorRow15: TcxDBEditorRow;
    vtgDBEditorRow16: TcxDBEditorRow;
    vtgCategoryRow3: TcxCategoryRow;
    vtgDBEditorRow17: TcxDBEditorRow;
    vtgDBEditorRow18: TcxDBEditorRow;
    vtgDBEditorRow19: TcxDBEditorRow;
    vtgDBEditorRow20: TcxDBEditorRow;
    vtgDBEditorRow21: TcxDBEditorRow;
    vtgDBEditorRow24: TcxDBEditorRow;
    vtgDBEditorRow27: TcxDBEditorRow;
    vtgDBEditorRow26: TcxDBEditorRow;
    vtgDBEditorRow6: TcxDBEditorRow;
    vtgDBEditorRow7: TcxDBEditorRow;
    cbxcdtpfrete: TcxDBLookupComboBox;
    vtgDBEditorRow8: TcxDBEditorRow;
    vtgDBEditorRow11: TcxDBEditorRow;
    vtgDBEditorRow23: TcxDBEditorRow;
    vtgDBEditorRow28: TcxDBEditorRow;
    vtgDBEditorRow29: TcxDBEditorRow;
    vtgDBEditorRow30: TcxDBEditorRow;
    vtgDBEditorRow31: TcxDBEditorRow;
    vtgDBEditorRow34: TcxDBEditorRow;
    vtgDBEditorRow35: TcxDBEditorRow;
    vtgDBEditorRow36: TcxDBEditorRow;
    vtgCategoryRow4: TcxCategoryRow;
    vtgDBEditorRow39: TcxDBEditorRow;
    vtgDBEditorRow38: TcxDBEditorRow;
    vtgDBEditorRow40: TcxDBEditorRow;
    vtgDBEditorRow41: TcxDBEditorRow;
    vtgDBEditorRow42: TcxDBEditorRow;
    vtgDBEditorRow43: TcxDBEditorRow;
    vtgDBEditorRow44: TcxDBEditorRow;
    vtgDBEditorRow45: TcxDBEditorRow;
    vtgDBEditorRow46: TcxDBEditorRow;
    vtgDBEditorRow47: TcxDBEditorRow;
    vtgDBEditorRow48: TcxDBEditorRow;
    vtgCategoryRow5: TcxCategoryRow;
    vtgDBEditorRow37: TcxDBEditorRow;
    vtgDBEditorRow49: TcxDBEditorRow;
    vtgDBEditorRow50: TcxDBEditorRow;
    vtgDBEditorRow51: TcxDBEditorRow;
    vtgDBEditorRow52: TcxDBEditorRow;
    vtgDBEditorRow53: TcxDBEditorRow;
    vtgDBEditorRow54: TcxDBEditorRow;
    vtgDBEditorRow55: TcxDBEditorRow;
    vtgDBEditorRow56: TcxDBEditorRow;
    vtgDBEditorRow57: TcxDBEditorRow;
    vtgDBEditorRow58: TcxDBEditorRow;
    vtgDBEditorRow59: TcxDBEditorRow;
    vtgCategoryRow6: TcxCategoryRow;
    vtgCategoryRow7: TcxCategoryRow;
    vtgDBEditorRow60: TcxDBEditorRow;
    vtgDBEditorRow61: TcxDBEditorRow;
    vtgDBEditorRow62: TcxDBEditorRow;
    vtgDBEditorRow63: TcxDBEditorRow;
    vtgDBEditorRow64: TcxDBEditorRow;
    vtgDBEditorRow66: TcxDBEditorRow;
    vtgDBEditorRow67: TcxDBEditorRow;
    vtgDBEditorRow68: TcxDBEditorRow;
    vtgDBEditorRow69: TcxDBEditorRow;
    vtgALSIMPLESSERVICO: TcxDBEditorRow;
    vtgDBEditorRow71: TcxDBEditorRow;
    vtgALSIMPLES: TcxDBEditorRow;
    vtgDBEditorRow65: TcxDBEditorRow;
    vtgDBEditorRow70: TcxDBEditorRow;
    vtgDBEditorRow72: TcxDBEditorRow;
    vtgDBEditorRow73: TcxDBEditorRow;
    vtgCategoryRow8: TcxCategoryRow;
    vtgDBEditorRow74: TcxDBEditorRow;
    vtgDBEditorRow75: TcxDBEditorRow;
    vtgDBEditorRow76: TcxDBEditorRow;
    vtgDBEditorRow77: TcxDBEditorRow;
    vtgDBEditorRow78: TcxDBEditorRow;
    vtgDBEditorRow79: TcxDBEditorRow;
    vtgDBEditorRow80: TcxDBEditorRow;
    vtgDBEditorRow82: TcxDBEditorRow;
    vtgDBEditorRow83: TcxDBEditorRow;
    vtgDBEditorRow84: TcxDBEditorRow;
    vtgDBEditorRow85: TcxDBEditorRow;
    vtgDBEditorRow87: TcxDBEditorRow;
    vtgDBEditorRow88: TcxDBEditorRow;
    vtgDBEditorRow89: TcxDBEditorRow;
    vtgDBEditorRow90: TcxDBEditorRow;
    vtgCategoryRow10: TcxCategoryRow;
    vtgDBEditorRow32: TcxDBEditorRow;
    vtgDBEditorRow92: TcxDBEditorRow;
    vtgDBEditorRow93: TcxDBEditorRow;
    vtgDBEditorRow33: TcxDBEditorRow;
    vtgDBEditorRow94: TcxDBEditorRow;
    vtgDBEditorRow95: TcxDBEditorRow;
    vtgDBEditorRow22: TcxDBEditorRow;
    vtgDBEditorRow25: TcxDBEditorRow;
    vtgCategoryRow11: TcxCategoryRow;
    vtgDBEditorRow96: TcxDBEditorRow;
    vtgCategoryRow12: TcxCategoryRow;
    vtgDBEditorRow81: TcxDBEditorRow;
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    vtgDBEditorRow97: TcxDBEditorRow;
    vtgDBEditorRow91: TcxDBEditorRow;
    vtgDBEditorRow98: TcxDBEditorRow;
    vtgDBEditorRow99: TcxDBEditorRow;
    vtgBOGERARREQUISICAOPRODUCAO: TcxDBEditorRow;
    vtgDBEditorRow100: TcxDBEditorRow;
    vtgDBEditorRow101: TcxDBEditorRow;
    vtgDBEditorRow102: TcxDBEditorRow;
    vtgDBEditorRow103: TcxDBEditorRow;
    vtgDBEditorRow104: TcxDBEditorRow;
    vtgDBEditorRow105: TcxDBEditorRow;
    vtgDBEditorRow106: TcxDBEditorRow;
    vtgDBEditorRow107: TcxDBEditorRow;
    vtgDBEditorRow108: TcxDBEditorRow;
    vtgDBEditorRow109: TcxDBEditorRow;
    vtgDBEditorRow110: TcxDBEditorRow;
    vtgDBEditorRow111: TcxDBEditorRow;
    vtgDBEditorRow112: TcxDBEditorRow;
    vtgDBEditorRow113: TcxDBEditorRow;
    vtgDBEditorRow114: TcxDBEditorRow;
    vtgDBEditorRow115: TcxDBEditorRow;
    vtgDBEditorRow116: TcxDBEditorRow;
    vtgDBEditorRow117: TcxDBEditorRow;
    vtgDBEditorRow118: TcxDBEditorRow;
    vtgDBEditorRow119: TcxDBEditorRow;
    vtgCDTPPEDIDOMATERIAL: TcxDBEditorRow;
    vtgboiss: TcxDBEditorRow;
    vtgBOJUSTIFICARMUDANCASTATUS: TcxDBEditorRow;
    vtgDBEditorRow2: TcxDBEditorRow;
    vtgDBEditorRow3: TcxDBEditorRow;
    vtgDBEditorRow120: TcxDBEditorRow;
    vtgDBEditorRow121: TcxDBEditorRow;
    vtgDBEditorRow122: TcxDBEditorRow;
    vtgDBEditorRow123: TcxDBEditorRow;
    vtgDBEditorRow124: TcxDBEditorRow;
    vtgDBEditorRow125: TcxDBEditorRow;
    vtgDBEditorRow126: TcxDBEditorRow;
    vtgCategoryRow13: TcxCategoryRow;
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
  frmtporcamento: Tfrmtporcamento;

implementation

uses ulocalizar, uMain, uDtmMain, classecopiarregistro;

{$R *.DFM}

const
  tbl      = 'tporcamento';
  exibe    = 'Tipo Orçamento';
  artigoI  = 'o';

function Tfrmtporcamento.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtporcamento.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtporcamento.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtporcamento.actSalvarExecute(Sender: TObject);
begin
  edtnome.SetFocus;
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmtporcamento.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtporcamento.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtporcamento.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtporcamento.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtporcamento.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtporcamento.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtporcamento.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
  vtgALSIMPLESSERVICO.Visible := empresa.tpregime = _S;
  vtgALSIMPLES.Visible        := empresa.tpregime = _S;
  TcxLookupComboBoxProperties(vtgCDTPPEDIDOMATERIAL.Properties.EditProperties).ListSource := abrir_tabela(_tppedidomaterial);
end;

procedure Tfrmtporcamento.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtporcamento.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtporcamento.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtporcamento.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtporcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtporcamento.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtporcamento.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtporcamento.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtporcamento.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtporcamento.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmtporcamento.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPORCAMENTO WHERE CDEMPRESA=:CDEMPRESA AND CDTPORCAMENTO = :CDTPORCAMENTO';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  cbxcdtpfrete.Properties.ListSource := abrir_tabela(_tpfrete);
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  vtgBOGERARREQUISICAOPRODUCAO.Visible := empresa.producao.requisicaoproducao.bo;
end;

procedure Tfrmtporcamento.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtporcamento.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(Dataset);
end;

procedure Tfrmtporcamento.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

end.

unit utpordproducao;

interface

uses
  forms, Menus, Mask, Buttons, ExtCtrls, Controls, ComCtrls, ToolWin, dialogs,
  sysutils, Classes, ActnList, graphics, StdCtrls,
  DB,
  FireDAC.Comp.Client,
  udatahora, ustrings, urotinas, uconstantes, uregistro,
  classeretornasql, classeusuario, classeconsiste, classegerar,
  classeregistrainformacao, classeregistro, classeempresa, classeform, classequery,
  classeaplicacao,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLookAndFeelPainters, cxCheckBox,
  cxDBEdit, cxGraphics,  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxClasses,
  dxBar, cxLookAndFeels, cxLabel, cxPC, cxMaskEdit, cxButtonEdit, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxCalc, cxRadioGroup,
  cxBlobEdit, System.Actions;

type
  Tfrmtpordproducao = class(TForm)
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
    vtgDBEditorRow1: TcxDBEditorRow;
    vtgDBEditorRow2: TcxDBEditorRow;
    vtgDBEditorRow3: TcxDBEditorRow;
    vtgDBEditorRow4: TcxDBEditorRow;
    vtgCategoryRow3: TcxCategoryRow;
    vtgDBEditorRow5: TcxDBEditorRow;
    vtgDBEditorRow6: TcxDBEditorRow;
    vtgDBEditorRow7: TcxDBEditorRow;
    vtgDBEditorRow8: TcxDBEditorRow;
    vtgDBEditorRow9: TcxDBEditorRow;
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    vtgDBEditorRow10: TcxDBEditorRow;
    vtgDBEditorRow11: TcxDBEditorRow;
    vtgDBEditorRow12: TcxDBEditorRow;
    vtgDBEditorRow13: TcxDBEditorRow;
    vtgDBEditorRow14: TcxDBEditorRow;
    vtgDBEditorRow15: TcxDBEditorRow;
    vtgDBEditorRow16: TcxDBEditorRow;
    vtgDBEditorRow17: TcxDBEditorRow;
    vtgDBEditorRow18: TcxDBEditorRow;
    vtgDBEditorRow19: TcxDBEditorRow;
    vtgDBEditorRow20: TcxDBEditorRow;
    vtgDBEditorRow21: TcxDBEditorRow;
    vtgDBEditorRow22: TcxDBEditorRow;
    vtgDBEditorRow23: TcxDBEditorRow;
    vtgDBEditorRow24: TcxDBEditorRow;
    vtgDBEditorRow25: TcxDBEditorRow;
    vtgDBEditorRow26: TcxDBEditorRow;
    vtgDBEditorRow27: TcxDBEditorRow;
    vtgDBEditorRow28: TcxDBEditorRow;
    vtgDBEditorRow29: TcxDBEditorRow;
    vtgDBEditorRow30: TcxDBEditorRow;
    vtgDBEditorRow31: TcxDBEditorRow;
    vtgDBEditorRow32: TcxDBEditorRow;
    vtgDBEditorRow33: TcxDBEditorRow;
    vtgCategoryRow4: TcxCategoryRow;
    vtgDBEditorRow34: TcxDBEditorRow;
    vtgDBEditorRow35: TcxDBEditorRow;
    vtgDBEditorRow36: TcxDBEditorRow;
    vtgDBEditorRow37: TcxDBEditorRow;
    vtgDBEditorRow38: TcxDBEditorRow;
    vtgDBEditorRow39: TcxDBEditorRow;
    vtgDBEditorRow40: TcxDBEditorRow;
    vtgDBEditorRow41: TcxDBEditorRow;
    vtgDBEditorRow42: TcxDBEditorRow;
    vtgDBEditorRow43: TcxDBEditorRow;
    vtgDBEditorRow44: TcxDBEditorRow;
    vtgDBEditorRow46: TcxDBEditorRow;
    vtgCDFUNCIONARIO: TcxDBEditorRow;
    vtgCDEQUIPAMENTO: TcxDBEditorRow;
    vtgDBEditorRow47: TcxDBEditorRow;
    vtgDBEditorRow48: TcxDBEditorRow;
    vtgDBEditorRow49: TcxDBEditorRow;
    vtgDBEditorRow50: TcxDBEditorRow;
    vtgDBEditorRow51: TcxDBEditorRow;
    vtgBODTENTREGA: TcxDBEditorRow;
    vtgBODTPREVISAO: TcxDBEditorRow;
    vtgDBEditorRow54: TcxDBEditorRow;
    vtgDBEditorRow55: TcxDBEditorRow;
    vtgDBEditorRow56: TcxDBEditorRow;
    vtgDBEditorRow57: TcxDBEditorRow;
    vtgDBEditorRow58: TcxDBEditorRow;
    vtgDBEditorRow59: TcxDBEditorRow;
    vtgDBEditorRow60: TcxDBEditorRow;
    actopcoes: TAction;
    actmeta: TAction;
    btnopcoes: TdxBarLargeButton;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    vtgDBEditorRow61: TcxDBEditorRow;
    vtgDBEditorRow62: TcxDBEditorRow;
    vtgDBEditorRow63: TcxDBEditorRow;
    vtgDBEditorRow64: TcxDBEditorRow;
    vtgDBEditorRow65: TcxDBEditorRow;
    vtgDBEditorRow66: TcxDBEditorRow;
    vtgBOPRODUTO: TcxDBEditorRow;
    vtgDBEditorRow68: TcxDBEditorRow;
    vtgBOEQUIPAMENTO: TcxDBEditorRow;
    vtgDBEditorRow69: TcxDBEditorRow;
    vtgDBEditorRow70: TcxDBEditorRow;
    vtgboprodutomateriaprima: TcxDBEditorRow;
    vtgDBEditorRow71: TcxDBEditorRow;
    vtgDBEditorRow72: TcxDBEditorRow;
    vtgDBEditorRow73: TcxDBEditorRow;
    vtgDBEditorRow74: TcxDBEditorRow;
    vtgDBEditorRow75: TcxDBEditorRow;
    vtgCDFUNCIONARIORESPONSAVEL: TcxDBEditorRow;
    vtgDBEditorRow76: TcxDBEditorRow;
    vtgCDEVENTOEMAILSTORDPRODUCAO: TcxDBEditorRow;
    vtgCDSTORDPRODUCAOEVENTOEMAIL: TcxDBEditorRow;
    vtgenviaremail: TcxCategoryRow;
    vtgDBEditorRow77: TcxDBEditorRow;
    vtgDBEditorRow78: TcxDBEditorRow;
    vtgDBEditorRow79: TcxDBEditorRow;
    vtgDBEditorRow80: TcxDBEditorRow;
    vtgCDSTORDPRODUCAOGERARESTOQUE: TcxDBEditorRow;
    vtgCDSTORDPRODUCAOMAPAPRODUCAO: TcxDBEditorRow;
    vtgDBEditorRow81: TcxDBEditorRow;
    vtgDBEditorRow82: TcxDBEditorRow;
    vtgDBEditorRow83: TcxDBEditorRow;
    vtgDBEditorRow84: TcxDBEditorRow;
    vtgDBEditorRow85: TcxDBEditorRow;
    vtgDBEditorRow86: TcxDBEditorRow;
    vtgDBEditorRow87: TcxDBEditorRow;
    vtgOpcoes: TcxCategoryRow;
    vtgCDPRODUTOCORTE: TcxDBEditorRow;
    vtgDBEditorRow88: TcxDBEditorRow;
    vtgDBEditorRow89: TcxDBEditorRow;
    vtgDBEditorRow90: TcxDBEditorRow;
    vtgDBEditorRow91: TcxDBEditorRow;
    vtgAbas: TcxCategoryRow;
    vtgCategoryRow7: TcxCategoryRow;
    vtgGeral: TcxCategoryRow;
    vtgCategoryRow9: TcxCategoryRow;
    vtgCategoryRow1: TcxCategoryRow;
    vtgCategoryRow2: TcxCategoryRow;
    vtgDBEditorRow52: TcxDBEditorRow;
    vtgCDSTORDPRODUCAOITORDPRODUCAO: TcxDBEditorRow;
    vtgCDSTORDPRODUCAOITORDPRODUCAOMAT: TcxDBEditorRow;
    vtgCategoryRow5: TcxCategoryRow;
    vtgDBEditorRow45: TcxDBEditorRow;
    vtgDBEditorRow53: TcxDBEditorRow;
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
    procedure actopcoesExecute(Sender: TObject);
    procedure actmetaExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    tbl : string;
    exibe : string;
    artigoI : string;
    qry : TFDQuery;
    procedure AbrirTabela;
  public  { Public declarations }
    registro : tregistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmtpordproducao: Tfrmtpordproducao;

implementation

uses ulocalizar,
  uMain,
  uDtmMain,
  classecopiarregistro,
  udlgtabela;

{$R *.DFM}

function Tfrmtpordproducao.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpordproducao.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpordproducao.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpordproducao.actSalvarExecute(Sender: TObject);
begin
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmtpordproducao.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpordproducao.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpordproducao.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpordproducao.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpordproducao.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpordproducao.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpordproducao.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpordproducao.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpordproducao.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpordproducao.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpordproducao.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpordproducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpordproducao.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpordproducao.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpordproducao.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpordproducao.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpordproducao.FormDestroy(Sender: TObject);
begin
  registro.destroy;
end;

procedure Tfrmtpordproducao.FormCreate(Sender: TObject);
begin
  tbl := 'tpordproducao';
  exibe := 'Tipo Ordem de Produção';
  artigoI := 'o';
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPORDPRODUCAO WHERE CDEMPRESA=:CDEMPRESA AND CDTPORDPRODUCAO=:CDTPORDPRODUCAO';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  AbrirTabela;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure Tfrmtpordproducao.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtpordproducao.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(Dataset);
end;

procedure Tfrmtpordproducao.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure Tfrmtpordproducao.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure Tfrmtpordproducao.actmetaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_tpordproducaometa))), qry.FieldByName(_cdtpordproducao).AsInteger, _cdtpordproducao);
end;

procedure Tfrmtpordproducao.AbrirTabela;
begin
  TcxLookupComboBoxProperties(vtgcdfuncionario.Properties.EditProperties).ListSource               := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(vtgCDFUNCIONARIORESPONSAVEL.Properties.EditProperties).ListSource    := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(vtgcdequipamento.Properties.EditProperties).ListSource               := abrir_tabela(_equipamento);
  TcxLookupComboBoxProperties(vtgCDSTORDPRODUCAOEVENTOEMAIL.Properties.EditProperties).ListSource  := abrir_tabela(_stordproducao);
  TcxLookupComboBoxProperties(vtgCDEVENTOEMAILSTORDPRODUCAO.Properties.EditProperties).ListSource  := abrir_tabela(_eventoemail);
  TcxLookupComboBoxProperties(vtgCDSTORDPRODUCAOGERARESTOQUE.Properties.EditProperties).ListSource := abrir_tabela(_stordproducao);
  TcxLookupComboBoxProperties(vtgCDSTORDPRODUCAOMAPAPRODUCAO.Properties.EditProperties).ListSource := abrir_tabela(_stordproducao);
  TcxLookupComboBoxProperties(vtgCDPRODUTOCORTE.Properties.EditProperties).ListSource              := abrir_tabela(_produto);
  TcxLookupComboBoxProperties(vtgCDSTORDPRODUCAOITORDPRODUCAO.Properties.EditProperties).ListSource:= abrir_tabela(_stordproducao);
  TcxLookupComboBoxProperties(vtgCDSTORDPRODUCAOITORDPRODUCAOMAT.Properties.EditProperties).ListSource:= abrir_tabela(_stordproducao);
end;

end.

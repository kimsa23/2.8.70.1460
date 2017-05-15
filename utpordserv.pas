unit utpordserv;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, StdCtrls, Mask, Buttons, ExtCtrls, Controls,
  ComCtrls, StdActns, ActnMan, ActnCtrls, ExtActns, ToolWin, dialogs, sysutils,
  graphics, Menus,
  FireDAC.Comp.Client,
  udlgRichEdit, ustrings, urotinas, uconstantes, uregistro,
  classeusuario, classeconsiste, classegerar, classeregistro,
  classeregistrainformacao, classeform, classequery, classeaplicacao,
  cxLookAndFeelPainters,
  cxContainer, cxEdit, cxGroupBox, cxPC, cxControls, DB,
  cxCheckBox, cxDBEdit, cxTextEdit, cxMemo, cxGraphics,
  cxMaskEdit, cxDropDownEdit, cxRadioGroup, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxBar, cxClasses,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxButtonEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxLookAndFeels, cxLabel,
  cxPCdxBarPopupMenu, dxBarBuiltInMenu;

type
  Tfrmtpordserv = class(TForm)
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
    actabriretapa: TAction;
    actfechar: TAction;
    actcomprovanteentrega: TAction;
    actcomprovanteentregaverso: TAction;
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
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    ckbboproduto: TcxDBCheckBox;
    ckbBODEFAPR: TcxDBCheckBox;
    ckbbodefenc: TcxDBCheckBox;
    ckbBOOBSERVACAO: TcxDBCheckBox;
    ckbbosolucao: TcxDBCheckBox;
    ckbboobsinterna: TcxDBCheckBox;
    ckbbosolinterna: TcxDBCheckBox;
    ckbboosanterior: TcxDBCheckBox;
    ckbboservico: TcxDBCheckBox;
    ckbbopeca: TcxDBCheckBox;
    ckbbofoto: TcxDBCheckBox;
    ckbboacessorio: TcxDBCheckBox;
    ckbbodesenho: TcxDBCheckBox;
    ckbbogeral: TcxDBCheckBox;
    ckbbopintura: TcxDBCheckBox;
    ckbboteste: TcxDBCheckBox;
    ckbboservicoexterno: TcxDBCheckBox;
    ckbbodevolucaosemconserto: TcxDBCheckBox;
    ckbbogarantia: TcxDBCheckBox;
    cxTabSheet8: TcxTabSheet;
    cxPageControl3: TcxPageControl;
    cxTabSheet12: TcxTabSheet;
    Bevel2: TBevel;
    Label11: TLabel;
    cxGroupBox1: TcxGroupBox;
    ckbboDTPREVENTREGA: TcxDBCheckBox;
    ckbbohrPREVENTREGA: TcxDBCheckBox;
    ckbpreventregaobrigatorio: TcxDBCheckBox;
    cxGroupBox9: TcxGroupBox;
    ckb4: TcxDBCheckBox;
    ckb5: TcxDBCheckBox;
    ckb7: TcxDBCheckBox;
    ckbocliente: TcxDBCheckBox;
    ckbboatendente: TcxDBCheckBox;
    ckbbotecnico: TcxDBCheckBox;
    ckbbovendedor: TcxDBCheckBox;
    ckbborepresentante: TcxDBCheckBox;
    ckb6: TcxDBCheckBox;
    ckbbotecnicoobrigatorio: TcxDBCheckBox;
    ckb8: TcxDBCheckBox;
    ckb9: TcxDBCheckBox;
    ckb10: TcxDBCheckBox;
    ckb11: TcxDBCheckBox;
    ckb12: TcxDBCheckBox;
    ckbbocomissaoatendenteproduto: TcxDBCheckBox;
    ckbbocomissaotecnicoproduto: TcxDBCheckBox;
    ckbbocomissaovendedorproduto: TcxDBCheckBox;
    bocomissaoorcadoproduto: TcxDBCheckBox;
    ckbbocomissaoatendenteservico: TcxDBCheckBox;
    ckbbocomissaotecnicoservico: TcxDBCheckBox;
    ckbbocomissaovendedorservico: TcxDBCheckBox;
    ckb20: TcxDBCheckBox;
    ckb21: TcxDBCheckBox;
    cxTabSheet13: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    ckb1: TcxDBCheckBox;
    ckb2: TcxDBCheckBox;
    ckb3: TcxDBCheckBox;
    cxGroupBox3: TcxGroupBox;
    ckbboobservacaoanterior: TcxDBCheckBox;
    ckbboobservacaotpordserv: TcxDBCheckBox;
    cxGroupBox4: TcxGroupBox;
    edt1: TcxDBTextEdit;
    cxGroupBox5: TcxGroupBox;
    lblstcliente: TLabel;
    ckbboacessoriolista: TcxDBCheckBox;
    ckb18: TcxDBCheckBox;
    cbxcdetapa: TcxDBLookupComboBox;
    cxTabSheet9: TcxTabSheet;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    ckb16: TcxDBCheckBox;
    ckb17: TcxDBCheckBox;
    ckb19: TcxDBCheckBox;
    ckb22: TcxDBCheckBox;
    ckb23: TcxDBCheckBox;
    ckb28: TcxDBCheckBox;
    ckb29: TcxDBCheckBox;
    ckb30: TcxDBCheckBox;
    cxTabSheet10: TcxTabSheet;
    bvl1: TBevel;
    cxGroupBox7: TcxGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    cbxcdstitordserventrada: TcxDBLookupComboBox;
    cbxCDTPMOVTOENTRADA: TcxDBLookupComboBox;
    cxGroupBox6: TcxGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    cbxcdstitordservbaixa: TcxDBLookupComboBox;
    cbxCDTPMOVTOBAIXA: TcxDBLookupComboBox;
    ckbbobaixaestoque: TcxDBCheckBox;
    cxTabSheet11: TcxTabSheet;
    ckb14: TcxDBCheckBox;
    ckb15: TcxDBCheckBox;
    ckb31: TcxDBCheckBox;
    cxTabSheet2: TcxTabSheet;
    memdsobservacao: TcxDBMemo;
    cxTabSheet3: TcxTabSheet;
    memDSOBSIMPRESSAO: TcxDBMemo;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    memDSLAYOUTEQUIPAMENTO: TcxDBMemo;
    pnl1: TPanel;
    pnl: TcxLabel;
    lbl4: TLabel;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    lbl5: TLabel;
    ckb32: TcxDBCheckBox;
    chkboequipamentoguia: TcxDBCheckBox;
    gbxaprovacao: TcxGroupBox;
    chk1: TcxDBCheckBox;
    chk2: TcxDBCheckBox;
    chkboassinaturadesconto: TcxDBCheckBox;
    ckbboequipamentoobrigatorio: TcxDBCheckBox;
    ckbbodefeito: TcxDBCheckBox;
    ckbboavaliacaotecnica: TcxDBCheckBox;
    ckbBOREPORTORDSERV: TcxDBCheckBox;
    ckbBOREPORTABERTURA: TcxDBCheckBox;
    ckbBOREPORTENTREGA: TcxDBCheckBox;
    ckbBOREPORTACOMPANHAMENTO: TcxDBCheckBox;
    ckbBOREPORTORCAMENTOCONTRATO: TcxDBCheckBox;
    ckbBOREPORTORCAMENTOAVULSO: TcxDBCheckBox;
    ckb26: TcxDBCheckBox;
    ckb27: TcxDBCheckBox;
    ckb13: TcxDBCheckBox;
    ckbbonupatrimonio: TcxDBCheckBox;
    ckbboentrada: TcxDBCheckBox;
    ckbbosaida: TcxDBCheckBox;
    ckbbotpvoltagem: TcxDBCheckBox;
    ckbbotpvoltagemobrigatorio: TcxDBCheckBox;
    ckbbonukm: TcxDBCheckBox;
    ckbbokmobrigatorio: TcxDBCheckBox;
    ckbbocor: TcxDBCheckBox;
    ckbbonuano: TcxDBCheckBox;
    lblcdstordserventrega: TLabel;
    cbxcdstordserventrega: TcxDBLookupComboBox;
    ckbboreportaberturasalvar: TcxDBCheckBox;
    ckbbolocalservico: TcxDBCheckBox;
    ckbboselobalanca: TcxDBCheckBox;
    ckbbolacrebalanca: TcxDBCheckBox;
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
    procedure actabriretapaExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

const
  tbl      = _tpordserv;
  exibe    = 'Tipo Ordem Serviço';
  artigoI  = 'o';
var
  frmtpordserv: Tfrmtpordserv;

implementation

uses uDtmMain, uMain;

{$R *.DFM}

function Tfrmtpordserv.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpordserv.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpordserv.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpordserv.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  if cbxcdetapa.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Etapa]), mtinformation, [mbok], 0);
    Abort;
  end;
  if registro.salvar then
  begin
    key := #13;
    nextcontrol(Self.ActiveControl, key);
  end;
end;

procedure Tfrmtpordserv.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpordserv.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpordserv.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpordserv.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpordserv.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpordserv.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpordserv.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  edtCodigo.SetFocus;
end;

procedure Tfrmtpordserv.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpordserv.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpordserv.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpordserv.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpordserv.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure Tfrmtpordserv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpordserv.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpordserv.actabriretapaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qry);
end;

procedure Tfrmtpordserv.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpordserv.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_CDTPORDSERV).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpordserv.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpordserv.FormDestroy(Sender: TObject);
begin
  registro.destroy;
end;

procedure Tfrmtpordserv.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPORDSERV where CDEMPRESA=:CDEMPRESA AND CDTPORDSERV=:CDTPORDSERV';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  cbxcdetapa.Properties.ListSource              := abrir_tabela(_etapa);
  cbxCDTPMOVTOBAIXA.Properties.ListSource       := abrir_tabela(_tpmovto);
  cbxCDTPMOVTOENTRADA.Properties.ListSource     := abrir_tabela(_tpmovto);
  cbxcdstitordservbaixa.Properties.ListSource   := abrir_tabela(_STITORDSERV);
  cbxcdstitordserventrada.Properties.ListSource := abrir_tabela(_STITORDSERV);
  cbxcdstordserventrega.Properties.ListSource   := abrir_tabela(_STORDSERV);
end;

procedure Tfrmtpordserv.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtpordserv.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

end.

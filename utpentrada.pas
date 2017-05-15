unit utpentrada;

interface

uses
  System.Actions, System.UITypes,
  forms, Variants, graphics, Classes, Mask, Buttons, ExtCtrls, Controls, ComCtrls,
  ToolWin, dialogs, sysutils, ActnList, StdCtrls, Menus,
  DB,
  FireDAC.Comp.Client,
  ulocalizar, ustrings, urotinas, uconstantes, uregistro, udatahora,
  classeusuario, classeconsiste, classegerar, classeform,
  classeregistro, classeregistrainformacao, classeretornasql, classeempresa, classequery,
  classeaplicacao,
  cxLookAndFeelPainters,
  dxBar, cxClasses, cxGroupBox, cxControls,
  cxContainer, cxEdit, cxTextEdit,
  cxRadioGroup, cxDBEdit, cxButtonEdit, cxCheckBox, cxMaskEdit, cxGraphics,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeels, cxLabel, cxPC, cxDBLabel, cxStyles, cxVGrid, cxDBVGrid,
  cxInplaceContainer;

type
  Tfrmtpentrada = class(TForm)
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
    pnl1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    pnl: TcxLabel;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    edtnmreduzido: TcxDBTextEdit;
    Bevel1: TBevel;
    trv: TcxDBVerticalGrid;
    trvCategoryRow1: TcxCategoryRow;
    trvDBEditorRow38: TcxDBEditorRow;
    trvDBEditorRow27: TcxDBEditorRow;
    trvDBEditorRow17: TcxDBEditorRow;
    trvDBEditorRow25: TcxDBEditorRow;
    trvDBEditorRow19: TcxDBEditorRow;
    trvCategoryRow2: TcxCategoryRow;
    trvDBEditorRow45: TcxDBEditorRow;
    trvDBEditorRow57: TcxDBEditorRow;
    trvDBEditorRow56: TcxDBEditorRow;
    trvDBEditorRow50: TcxDBEditorRow;
    trvDBEditorRow51: TcxDBEditorRow;
    trvDBEditorRow46: TcxDBEditorRow;
    trvDBEditorRow43: TcxDBEditorRow;
    trvDBEditorRow40: TcxDBEditorRow;
    trvDBEditorRow36: TcxDBEditorRow;
    trvDBEditorRow33: TcxDBEditorRow;
    trvDBEditorRow29: TcxDBEditorRow;
    trvCategoryRow3: TcxCategoryRow;
    trvCategoryRow5: TcxCategoryRow;
    trvCDCFOPDUF: TcxDBEditorRow;
    trvCDCFOPDUFSUBTRIB: TcxDBEditorRow;
    trvCategoryRow4: TcxCategoryRow;
    trvCDCFOPFUF: TcxDBEditorRow;
    trvCDCFOPFUFSUBTRIB: TcxDBEditorRow;
    trvDBEditorRow1: TcxDBEditorRow;
    trvDBEditorRow2: TcxDBEditorRow;
    trvDBEditorRow4: TcxDBEditorRow;
    trvCategoryRow6: TcxCategoryRow;
    trvDBEditorRow5: TcxDBEditorRow;
    trvDBEditorRow6: TcxDBEditorRow;
    trvDBEditorRow7: TcxDBEditorRow;
    trvDBEditorRow8: TcxDBEditorRow;
    trvDBEditorRow9: TcxDBEditorRow;
    trvDBEditorRow10: TcxDBEditorRow;
    trvNUDOCFISCALICMS: TcxDBEditorRow;
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    trvDBEditorRow3: TcxDBEditorRow;
    trvCategoryRow7: TcxCategoryRow;
    trvBOORDPRODUCAO: TcxDBEditorRow;
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
    procedure FormCreate(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmtpentrada: Tfrmtpentrada;

implementation

uses uDtmMain, uMain, classecopiarregistro;

{$R *.DFM}

const
  tbl      = 'tpentrada';
  exibe    = 'Tipo Compra';
  artigoI  = 'o';

function Tfrmtpentrada.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpentrada.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpentrada.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpentrada.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  key := #13;
  nextcontrol(Self.ActiveControl, key);
  if (qry.FieldByName(_boicms).AsString = _s) and (qry.FieldByName(_BORETENCAOISS).AsString = _s) then
  begin
    MessageDlg('Não é permitido marcar ICMS e Retenção de ISS no mesmo tipo de documento.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (qry.FieldByName(_boipi).AsString = _s) and (qry.FieldByName(_BORETENCAOISS).AsString = _s) then
  begin
    MessageDlg('Não é permitido marcar IPI e Retenção de ISS no mesmo tipo de documento.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (not VarIsNull(trvcdcfopduf.Properties.Value)) and (Copy(trvcdcfopduf.Properties.value, 1, 1) <> _1) then
  begin
    MessageDlg('CFOP de dentro do estado deve começar com 1.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (not VarIsNull(trvCDCFOPDUFSUBTRIB.Properties.Value)) and (Copy(trvCDCFOPDUFSUBTRIB.Properties.value, 1, 1) <> _1) then
  begin
    MessageDlg('CFOP de dentro do estado deve começar com 1.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (not VarIsNull(trvcdcfopfuf.Properties.Value)) and (Copy(trvcdcfopfuf.Properties.Value, 1, 1) <> _2) then
  begin
    MessageDlg('CFOP de fora do estado deve começar com 2.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (not VarIsNull(trvCDCFOPFUFSUBTRIB.Properties.Value)) and (Copy(trvCDCFOPFUFSUBTRIB.Properties.Value, 1, 1) <> _2) then
  begin
    MessageDlg('CFOP de fora do estado deve começar com 2.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if registro.salvar then
  begin
    key := #13;
    nextcontrol(Self.ActiveControl, key);
  end;
end;

procedure Tfrmtpentrada.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpentrada.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpentrada.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpentrada.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpentrada.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpentrada.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpentrada.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
end;

procedure Tfrmtpentrada.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpentrada.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpentrada.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpentrada.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpentrada.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure Tfrmtpentrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpentrada.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmtpentrada.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpentrada.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpentrada.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_CDTPENTRADA).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpentrada.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpentrada.FormCreate(Sender: TObject);
begin
  qry := tFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPENTRADA WHERE CDEMPRESA=:CDEMPRESA AND CDTPENTRADA=:CDTPENTRADA';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  TcxLookupComboBoxProperties(trvcdcfopduf.Properties.EditProperties).ListSource        := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(trvcdcfopfuf.Properties.EditProperties).ListSource        := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(trvCDCFOPDUFSUBTRIB.Properties.EditProperties).ListSource := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(trvCDCFOPFUFSUBTRIB.Properties.EditProperties).ListSource := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(trvNUDOCFISCALICMS.Properties.EditProperties).ListSource  := abrir_tabela(_docfiscalicms);
  trvBOORDPRODUCAO.Visible := empresa.producao.ordproducao.bo;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure Tfrmtpentrada.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtpentrada.qryBeforePost(DataSet: TDataSet);
begin
  if (DataSet.State = dsinsert) or (dataset.State = dsedit) then
  begin
    if dataset.FieldByName(_nmreduzido).IsNull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_nome+' '+_reduzido]), mtinformation, [mbok], 0);
      DataSet.FieldByName(_nmreduzido).FocusControl;
      Abort;
    end;
  end;
  registro.set_update(dataset);
end;

procedure Tfrmtpentrada.qryNewRecord(DataSet: TDataSet);
begin
  registro.newrecord;
  qry.FieldByName(_TPFORNCLIENTE).AsString := _F;
end;

end.

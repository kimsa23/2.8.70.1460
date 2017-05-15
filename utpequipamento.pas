unit utpequipamento;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Mask, Buttons, ExtCtrls, Controls, ComCtrls, ToolWin, dialogs,
  sysutils, Classes, ActnList, graphics, StdCtrls,
  DB,
  FireDAC.Comp.Client,
  udatahora, ustrings, urotinas, uconstantes, uregistro,
  classeretornasql, classeusuario, classeconsiste, classegerar, classeregistrainformacao,
  classeregistro, classeempresa, classeform, classeexecutasql, classequery, classeaplicacao,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLookAndFeelPainters, cxCheckBox,
  cxDBEdit, cxGraphics,  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxClasses,
  dxBar, cxLookAndFeels, cxLabel, cxPC, cxMaskEdit, cxButtonEdit, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalc, cxRadioGroup;

type
  Tfrmtpequipamento = class(TForm)
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
    vgr: TcxDBVerticalGrid;
    vgrDBEditorRow1: TcxDBEditorRow;
    vgrDBEditorRow2: TcxDBEditorRow;
    vgrDBEditorRow3: TcxDBEditorRow;
    vgrDBEditorRow4: TcxDBEditorRow;
    vgrDBEditorRow5: TcxDBEditorRow;
    vgrDBEditorRow11: TcxDBEditorRow;
    vgrDBEditorRow12: TcxDBEditorRow;
    vgrDBEditorRow14: TcxDBEditorRow;
    vgrDBEditorRow13: TcxDBEditorRow;
    vgrDBEditorRow16: TcxDBEditorRow;
    vgrDBEditorRow17: TcxDBEditorRow;
    vgrDBEditorRow18: TcxDBEditorRow;
    vgrDBEditorRow19: TcxDBEditorRow;
    vgrDBEditorRow20: TcxDBEditorRow;
    vgrDBEditorRow21: TcxDBEditorRow;
    vgrDBEditorRow22: TcxDBEditorRow;
    vgrDBEditorRow23: TcxDBEditorRow;
    vgrDBEditorRow24: TcxDBEditorRow;
    vgrDBEditorRow25: TcxDBEditorRow;
    vgrDBEditorRow7: TcxDBEditorRow;
    vgrDBEditorRow6: TcxDBEditorRow;
    vgrDBEditorRow8: TcxDBEditorRow;
    actopcoes: TAction;
    btnopcoes: TdxBarLargeButton;
    actprecolocacao: TAction;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    vgrDBEditorRow9: TcxDBEditorRow;
    vgrDBEditorRow10: TcxDBEditorRow;
    actcopiar: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    vgrCDCOMPUTADOR: TcxDBEditorRow;
    vgrDBEditorRow15: TcxDBEditorRow;
    vgrDBEditorRow26: TcxDBEditorRow;
    vgrDBEditorRow27: TcxDBEditorRow;
    vgrCategoryRow2: TcxCategoryRow;
    vgrCategoryRow3: TcxCategoryRow;
    vgrCategoryRow4: TcxCategoryRow;
    vgrCategoryRow5: TcxCategoryRow;
    vgrCategoryRow6: TcxCategoryRow;
    vgrDBEditorRow28: TcxDBEditorRow;
    vgrDBEditorRow29: TcxDBEditorRow;
    vgrDBEditorRow30: TcxDBEditorRow;
    vgrDBEditorRow31: TcxDBEditorRow;
    vgrCategoryRow7: TcxCategoryRow;
    vgrDBEditorRow32: TcxDBEditorRow;
    vgrDBEditorRow33: TcxDBEditorRow;
    vgrDBEditorRow34: TcxDBEditorRow;
    vgrDBEditorRow35: TcxDBEditorRow;
    vgrDBEditorRow36: TcxDBEditorRow;
    vgrDBEditorRow37: TcxDBEditorRow;
    vgrDBEditorRow38: TcxDBEditorRow;
    acttpequipamentousuario: TAction;
    dxBarButton2: TdxBarButton;
    vgrDBEditorRow39: TcxDBEditorRow;
    vgrDBEditorRow40: TcxDBEditorRow;
    vgrDBEditorRow41: TcxDBEditorRow;
    vgrDBEditorRow42: TcxDBEditorRow;
    vgrDBEditorRow43: TcxDBEditorRow;
    vgrDBEditorRow44: TcxDBEditorRow;
    vgrCDFUNCIONARIO: TcxDBEditorRow;
    vgrDBEditorRow45: TcxDBEditorRow;
    vgrDBEditorRow46: TcxDBEditorRow;
    vgrCDSTORDPRODUCAO: TcxDBEditorRow;
    actexcluirmetodoprocesso: TAction;
    dxBarButton3: TdxBarButton;
    vgrDBEditorRow47: TcxDBEditorRow;
    vgrDBEditorRow48: TcxDBEditorRow;
    vgrDBEditorRow49: TcxDBEditorRow;
    vgrDBEditorRow50: TcxDBEditorRow;
    acttpinspecao: TAction;
    dxBarButton4: TdxBarButton;
    acttpequipamentoentrada: TAction;
    acttpequipamentosaida: TAction;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    vgrDBEditorRow51: TcxDBEditorRow;
    vgrDBEditorRow52: TcxDBEditorRow;
    vgrDBEditorRow53: TcxDBEditorRow;
    vgrDBEditorRow54: TcxDBEditorRow;
    vgrDBEditorRow55: TcxDBEditorRow;
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
    procedure actprecolocacaoExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure acttpequipamentousuarioExecute(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actexcluirmetodoprocessoExecute(Sender: TObject);
    procedure acttpinspecaoExecute(Sender: TObject);
    procedure acttpequipamentoentradaExecute(Sender: TObject);
    procedure acttpequipamentosaidaExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
  public  { Public declarations }
    registro : tregistro;
    function Abrir(codigo:Integer):boolean;
  end;

var
  frmtpequipamento: Tfrmtpequipamento;

implementation

uses ulocalizar, uMain, uDtmMain, udlgtabela,
  classecopiarregistro;

{$R *.DFM}

const
  tbl      = _tpequipamento;
  exibe    = 'Tipo Equipamento';
  artigoI  = 'o';

function Tfrmtpequipamento.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpequipamento.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpequipamento.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpequipamento.actSalvarExecute(Sender: TObject);
begin
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmtpequipamento.acttpequipamentousuarioExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_tpequipamento+_usuario))), qry.FieldByName(_cdtpequipamento).asInteger, _cdtpequipamento);
end;

procedure Tfrmtpequipamento.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpequipamento.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpequipamento.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpequipamento.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpequipamento.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpequipamento.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpequipamento.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpequipamento.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpequipamento.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpequipamento.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpequipamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpequipamento.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpequipamento.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpequipamento.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  actprecolocacao.enabled := dts.state = dsBrowse;
end;

procedure Tfrmtpequipamento.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpequipamento.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmtpequipamento.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPEQUIPAMENTO WHERE CDEMPRESA=:CDEMPRESA AND CDTPEQUIPAMENTO=:CDTPEQUIPAMENTO';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  qry.AfterScroll := qryAfterScroll;
  actexcluirmetodoprocesso.Visible := Empresa.producao.ordproducao.bo;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  //actprecolocacao.visible := empresa.bolocacao;
  TcxLookupComboBoxProperties(vgrCDSTORDPRODUCAO.Properties.EditProperties).ListSource := abrir_tabela(_stordproducao);
  TcxLookupComboBoxProperties(vgrCDCOMPUTADOR.Properties.EditProperties).ListSource    := abrir_tabela(_computador);
  TcxLookupComboBoxProperties(vgrCDFUNCIONARIO.Properties.EditProperties).ListSource   := abrir_tabela(_funcionario);
end;

procedure Tfrmtpequipamento.actprecolocacaoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_tpequipamentopreco))), qry.FieldByName(_cdtpequipamento).AsInteger, _cdtpequipamento);
end;

procedure Tfrmtpequipamento.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure Tfrmtpequipamento.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtpequipamento.qryAfterScroll(DataSet: TDataSet);
begin
  actprecolocacao.Enabled := qry.recordcount>0;
end;

procedure Tfrmtpequipamento.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtpequipamento.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure Tfrmtpequipamento.actexcluirmetodoprocessoExecute(Sender: TObject);
begin
  if qry.Active and ExecutaSQL('delete from itprodutorecurso where cdempresa='+qry.fieldbyname(_cdempresa).asstring+' and cdtpequipamento='+qry.fieldbyname(_cdtpequipamento).AsString) then
  begin
    MessageDlg('Exclusão realizada.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmtpequipamento.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpequipamento.acttpinspecaoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_tpinspecao))), qry.FieldByName(_cdtpequipamento).AsInteger, _cdtpequipamento);
end;

procedure Tfrmtpequipamento.acttpequipamentoentradaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_tpequipamentoentrada))), qry.FieldByName(_cdtpequipamento).AsInteger, _cdtpequipamento);
end;

procedure Tfrmtpequipamento.acttpequipamentosaidaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_tpequipamentosaida))), qry.FieldByName(_cdtpequipamento).AsInteger, _cdtpequipamento);
end;

end.

unit ureportuser;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, sysutils, Buttons, ExtCtrls, Controls,
  Windows, dialogs, Menus, StdCtrls,
  DB,
  FireDAC.Comp.Client,
  ureplicacao, udatahora, ustrings, uregistro, uconstantes,
  udlgRichEdit,
  classecopiarregistro, classeretornasql, classeregistrainformacao, classeregistro,
  classeform, classequery, classeaplicacao,
  cxPC, cxControls, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxLabel, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit,
  cxPCdxBarPopupMenu, cxCheckBox, dxBarBuiltInMenu,
  dxBevel,
  cxGroupBox,
  cxRadioGroup,
  cxSpinEdit;

type
  TfrmReportUser = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actscript: TAction;
    actfechar: TAction;
    pgc: TcxPageControl;
    tbsscript: TcxTabSheet;
    tbsdsrelatorio: TcxTabSheet;
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
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    pnl1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    actdesigner: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    edtcodigo: TcxTextEdit;
    dts: TDataSource;
    pnl: TcxLabel;
    memDSSCRIPT: TcxDBMemo;
    memDSRELATORIO: TcxDBMemo;
    edtnome: TcxDBTextEdit;
    edtNUSEQUENCIAMENU: TcxDBTextEdit;
    cbxcdtpreport: TcxDBLookupComboBox;
    cbxcdstreport: TcxDBLookupComboBox;
    cbxcdform: TcxDBLookupComboBox;
    tbsopcoes: TcxTabSheet;
    lbl1: TLabel;
    edtdstitulo: TcxDBTextEdit;
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    memdsopcoes: TcxDBMemo;
    rdgDSREPORTABERTURASAIDA: TcxDBRadioGroup;
    dxBarButton1: TdxBarButton;
    edtnucopia: TcxDBSpinEdit;
    Label7: TLabel;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actscriptExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actdesignerExecute(Sender: TObject);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ColorEnter(Sender: TObject);
    procedure ColorExit(Sender: TObject);
    procedure NextControl(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actcopiarExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
  public  { Public declarations }
    registro : tregistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmReportUser: TfrmReportUser;

implementation

uses uDtmMain, ureportdesigner, uMain, uLocalizar;

{$R *.DFM}

const
  tbl      = 'reportuser';
  exibe    = 'Relatório do Usuário';
  artigoI  = 'o';

function TfrmReportUser.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmReportUser.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmReportUser.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmReportUser.actSalvarExecute(Sender: TObject);
begin
  if cbxcdtpreport.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cbxcdtpreport.SetFocus;
    abort;
  end;
  registro.salvar;
end;

procedure TfrmReportUser.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmReportUser.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmReportUser.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmReportUser.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmReportUser.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmReportUser.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmReportUser.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmReportUser.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmReportUser.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmReportUser.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmReportUser.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmReportUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmReportUser.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure TfrmReportUser.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmReportUser.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure TfrmReportUser.actscriptExecute(Sender: TObject);
var
  cdtbl:string;
  cdfields : tstrings;
begin
  cdfields := tstringlist.create;
  try
    cdtbl := qry.fieldbyname(_cd+tbl).asstring;
    if Replicacao_Exportar(uppercase(tbl), cdtbl, cdfields) then
    begin
      showmessage('Registro Exportado!');
    end;
  finally
    freeandnil(cdfields);
  end;
end;

procedure TfrmReportUser.actdesignerExecute(Sender: TObject);
begin
  Exibir_report_designer(qry.fieldbyname(_cdreportuser).asstring, qry.fieldbyname(_dsscript).asstring, qry.fieldbyname(_dsrelatorio).asstring, qry.fieldbyname(_dsscript).FieldName, _reportuser);
  Abrir(qry.fieldbyname(_cdreportuser).AsInteger);
end;

procedure TfrmReportUser.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure TfrmReportUser.FormCreate(Sender: TObject);
begin
  qry := tFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := RetornaSQLString('select dssql from tabela where nmtabela='+quotedstr(UpperCase(tbl)));
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  cbxcdtpreport.Properties.ListSource   := abrir_tabela(_tpreport);
  cbxcdstreport.Properties.ListSource   := abrir_tabela(_streport);
  cbxcdform.Properties.ListSource       := abrir_tabela(_form);
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure TfrmReportUser.ColorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmReportUser.ColorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmReportUser.NextControl(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmReportUser.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure TfrmReportUser.qryBeforePost(DataSet: TDataSet);
begin
  if dataset.FieldByName(_BOIMPRIMIRDIRETO).AsString = '' then
  begin
    dataset.FieldByName(_BOIMPRIMIRDIRETO).AsString := _V;
  end;
  registro.set_update(dataset);
end;

procedure TfrmReportUser.qryNewRecord(DataSet: TDataSet);
begin
  dataset.FieldByName(_boimprimirdireto).AsString := _V;
  dataset.FieldByName(_dsscript).AsString         := _script_relatorio_novo;
end;

end.

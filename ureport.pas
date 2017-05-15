unit ureport;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, sysutils, Buttons, ExtCtrls, Controls, Windows, dialogs,
  Menus, StdCtrls,
  DBGrids, FMTBcd, DB, sqlexpr, FireDAC.Comp.Client,
  ureplicacao, udatahora, ustrings, uregistro, uconstantes,
  classecopiarregistro, classeregistrainformacao, classeregistro, classeform, classequery,
  classeaplicacao,
  cxPC, cxControls, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxLabel, cxMemo, cxDBEdit, cxMaskEdit, cxButtonEdit,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPCdxBarPopupMenu,
  dxBarBuiltInMenu, cxDropDownEdit, cxGroupBox, cxRadioGroup, cxSpinEdit;

type
  TfrmReport = class(TForm)
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
    memdsopcoes: TcxDBMemo;
    lbl1: TLabel;
    edtdstitulo: TcxDBTextEdit;
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
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
  frmReport: TfrmReport;

implementation

uses ureportdesigner, uDtmMain, uMain, uLocalizar;

{$R *.DFM}

const
  tbl      = 'report';
  exibe    = 'Relatório';
  artigoI  = 'o';
  _sql = 'SELECT * FROM REPORT WHERE CDREPORT=:CDREPORT';

function TfrmReport.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmReport.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmReport.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmReport.actSalvarExecute(Sender: TObject);
begin
  if cbxcdtpreport.Text = '' then
  begin
    messagedlg('O campo Tipo é obrigatório.', mtInformation, [mbOK], 0);
    cbxcdtpreport.SetFocus;
    abort;
  end;
  registro.salvar;
end;

procedure TfrmReport.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmReport.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmReport.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmReport.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmReport.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmReport.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmReport.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmReport.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmReport.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmReport.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmReport.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmReport.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure TfrmReport.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmReport.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_cd+tbl).asstring + ' - ' + edtNome.Text;
end;

procedure TfrmReport.actscriptExecute(Sender: TObject);
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

procedure TfrmReport.actdesignerExecute(Sender: TObject);
begin
  Exibir_report_designer(qry.fieldbyname(_cdreport).asstring, qry.fieldbyname(_dsscript).asstring, qry.fieldbyname(_dsrelatorio).asstring, qry.fieldbyname(_dsscript).FieldName, _report);
  Abrir(qry.fieldbyname(_cdreport).asinteger);
end;

procedure TfrmReport.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure TfrmReport.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;;
  dts.dataset := qry;
  qry.sql.text := _sql;
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;

  cbxcdtpreport.Properties.ListSource := abrir_tabela(_tpreport);
  cbxcdstreport.Properties.ListSource := abrir_tabela(_streport);
  cbxcdform.Properties.ListSource     := abrir_tabela(_form);
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure TfrmReport.ColorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmReport.ColorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmReport.NextControl(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmReport.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure TfrmReport.qryBeforePost(DataSet: TDataSet);
begin
  if qry.FieldByName(_BOIMPRIMIRDIRETO).AsString = 'N' then
  begin
    qry.FieldByName(_BOIMPRIMIRDIRETO).AsString := _V;
  end;
  registro.set_update(dataset);
end;

procedure TfrmReport.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  DataSet.FieldByName(_boimprimirdireto).AsString := _V;
  DataSet.FieldByName(_dsscript).AsString         := _script_relatorio_novo;
end;

end.

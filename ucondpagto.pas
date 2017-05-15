unit ucondpagto;

interface

uses
  System.Actions, forms, Classes, ActnList, StdCtrls, ExtCtrls, sysutils, windows,
  dialogs, db, Vcl.Controls,

  urotinas, uregistro, ustrings, uconstantes,

  classeusuario, classeconsiste, classegerar, classeregistrainformacao, classeRegistro, classeform,

  dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxButtonEdit, cxMaskEdit, cxSpinEdit,
  cxCheckBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLabel, cxPC, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxNavigator, dxColorEdit, dxDBColorEdit, dxCore, cxCalc,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCondPagto = class(TForm)
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
    actfechar: TAction;
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
    dts: TDataSource;
    dtsdetail: TDataSource;
    pnl1: TPanel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    Label3: TLabel;
    Label60: TLabel;
    pnl: TcxLabel;
    tbv: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tbvNUDIAS: TcxGridDBColumn;
    Label2: TLabel;
    edtnudias: TcxDBSpinEdit;
    cbxcdstcondpagto: TcxDBLookupComboBox;
    ckbboentrada: TcxDBCheckBox;
    ckbbosaida: TcxDBCheckBox;
    ckbbocte: TcxDBCheckBox;
    edtnucor: TdxDBColorEdit;
    lblnucor: TLabel;
    edtpracrescimo: TcxDBCalcEdit;
    lblPRACRESCIMO: TLabel;
    qry: TFDQuery;
    qrydetail: TFDQuery;
    sca: TFDSchemaAdapter;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdstcondpagtoEnter(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure qrydetailBeforePost(DataSet: TDataSet);
    procedure qrydetailNewRecord(DataSet: TDataSet);
    procedure qryAfterOpen(DataSet: TDataSet);
    procedure scaError(ASender, AInitiator: TObject; var AException: Exception);
    procedure qrydetailError(ASender, AInitiator: TObject; var AException: Exception);
    procedure qryError(ASender, AInitiator: TObject; var AException: Exception);
    procedure qrydetailBeforeInsert(DataSet: TDataSet);
  private      { Private declarations }
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmCondPagto: TfrmCondPagto;

implementation

uses uDtmMain,
     uLocalizar,
     uExportarExcel, uMain;

{$R *.DFM}

const
  tbl      = 'condpagto';
  exibe    = 'Condição de Pagamento';
  artigoI  = 'a';

function TfrmCondPagto.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmCondPagto.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmCondPagto.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmCondPagto.actSalvarExecute(Sender: TObject);
begin
  if (qrydetail.State = dsinsert) or (qrydetail.State = dsedit) then
  begin
    qrydetail.Post;
  end;
  if qrydetail.RecordCount = 0 then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_de+' '+_dias]), mtinformation, [mbok], 0);
    abort;
  end;
  if qry.fieldbyname(_cdcondpagto).AsInteger = -1 then
  begin
    if (qry.state <> dsinsert) and (qry.state <> dsinsert) then
    begin
      qry.edit;
    end;
    qry.fieldbyname(_cdcondpagto).AsInteger := qgerar.GerarCodigo(_condpagto);
  end;
  if not registro.aplicar_atualizacao then
  begin
    Exit;
  end;
  registro.set_readonly_dados(self, true);
  abrir(qry.fieldbyname(_CDCONDPAGTO).asinteger);
end;

procedure TfrmCondPagto.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmCondPagto.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmCondPagto.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmCondPagto.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmCondPagto.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmCondPagto.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmCondPagto.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  edtCodigo.SetFocus;
end;

procedure TfrmCondPagto.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmCondPagto.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmCondPagto.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmCondPagto.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmCondPagto.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure TfrmCondPagto.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCondPagto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCondPagto.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure TfrmCondPagto.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmCondPagto.edtnomePropertiesChange(Sender: TObject);
begin
  if qry.fieldbyname(_CDCONDPAGTO).asstring = '-1' then
  begin
    pnl.Caption := exibe+' - ' + edtNome.Text
  end
  else
  begin
    pnl.Caption := exibe+' '+ qry.fieldbyname(_CDCONDPAGTO).asstring + ' - ' + edtNome.Text;
  end;
end;

procedure TfrmCondPagto.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmCondPagto.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmCondPagto.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmCondPagto.qryAfterOpen(DataSet: TDataSet);
begin
  qrydetail.close;
  qrydetail.Open;
end;

procedure TfrmCondPagto.qryAfterScroll(DataSet: TDataSet);
begin
  //registro.setStatus(tbl, DataSet);
end;

procedure TfrmCondPagto.qryBeforePost(DataSet: TDataSet);
begin
  if qry.fieldbyname(_NMCONDPAGTO).AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    qry.fieldbyname(_NMCONDPAGTO).FocusControl;
    abort;
  end;
  registro.set_update(qry);
end;

procedure TfrmCondPagto.qrydetailBeforeInsert(DataSet: TDataSet);
begin
  if (qry.state = dsinsert) then
  begin
    qry.post;
  end;
end;

procedure TfrmCondPagto.qrydetailBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName(_nudias).IsNull then
  begin
    MessageDlg('Número de dias é um campo obrigatório.', mtInformation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(qrydetail);
end;

procedure TfrmCondPagto.qrydetailError(ASender, AInitiator: TObject; var AException: Exception);
begin
  showmessage(AException.Message);
end;

procedure TfrmCondPagto.qrydetailNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname(_CDITCONDPAGTO).AsInteger := qgerar.GerarCodigo(_itcondpagto);
end;

procedure TfrmCondPagto.qryError(ASender, AInitiator: TObject; var AException: Exception);
begin
  showmessage(AException.Message);
end;

procedure TfrmCondPagto.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  DataSet.fieldbyname(_BOENTRADA).AsString := _s;
  DataSet.fieldbyname(_BOSAIDA).AsString   := _s;
  DataSet.fieldbyname(_BOCTE).AsString     := _S;
  DataSet.fieldbyname(_NUCOR).AsInteger    := 0;
end;

procedure TfrmCondPagto.scaError(ASender, AInitiator: TObject; var AException: Exception);
begin
  showmessage(AException.Message);
end;

procedure TfrmCondPagto.FormCreate(Sender: TObject);
begin
  cbxcdstcondpagto.Properties.ListSource := abrir_tabela(_stcondpagto);
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure TfrmCondPagto.cbxcdstcondpagtoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_stcondpagto);
end;

procedure TfrmCondPagto.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

end.

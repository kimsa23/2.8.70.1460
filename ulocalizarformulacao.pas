unit ulocalizarformulacao;

interface

uses
  forms, Graphics, Classes, sysutils, dialogs, Controls, StdCtrls, Mask, Buttons,
  Menus, ComCtrls, ActnList, ExtCtrls, system.UITypes,
  DB,
  ulocalizarproduto, udatahora, uconstantes, ustrings, uregistro,
  urotinas,
  classeempresa, classesqlmontar, classeretornasql, classeexecutasql,
  classeform, classeaplicacao, classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit,
  cxCheckBox, cxCalc, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxStatusBar, cxLookAndFeelPainters,
  cxButtons, cxGroupBox, cxCurrencyEdit, cxLookAndFeels, dxBar, dxCore, cxDateUtils,
  cxNavigator, System.Actions, classelocacao;

type
  TfrmLocalizarformulacao = class(TForm)
    lblstatus: TLabel;
    lblCliente: TLabel;
    Bevel1: TBevel;
    btnFind: TcxButton;
    btnCancelar: TcxButton;
    btnok: TcxButton;
    cbxcdstformulacao: TcxLookupComboBox;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDFORMULACAO: TcxGridDBColumn;
    tbvNMFORMULACAO: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvDSFORMULACAO: TcxGridDBColumn;
    tbvNMSTFORMULACAO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tbvQTPESO: TcxGridDBColumn;
    act: TActionList;
    actfiltro: TAction;
    actagrupar: TAction;
    actexcel: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnfiltro: TdxBarButton;
    btnagrupar: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarButton1: TdxBarButton;
    actlimparcriterio: TAction;
    actimprimir: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actimprimirboleto: TAction;
    actimprimirduplicata: TAction;
    tbvNUCOR: TcxGridDBColumn;
    tbvNMREGIAOAPLICACAO: TcxGridDBColumn;
    tbvQTMISTURA: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    actimprimircarne: TAction;
    Label2: TLabel;
    edtnmformulacao: TcxTextEdit;
    edtdsformulacao: TcxTextEdit;
    Label1: TLabel;
    cbxcdregiaoaplicacao: TcxLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtqtpesof: TcxCalcEdit;
    edtqtpesoi: TcxCalcEdit;
    Label8: TLabel;
    Label6: TLabel;
    ckbboativar: TcxCheckBox;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    lblnmprodutos: TLabel;
    edtcdprodutos: TcxButtonEdit;
    tbvNUREVISAO: TcxGridDBColumn;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tbvDblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutosExit(Sender: TObject);
    procedure edtcdprodutosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutosPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarFormulacao:integer;

var
  frmLocalizarformulacao: TfrmLocalizarformulacao;

implementation

uses uLocalizar, uExportarExcel,
  ulocalizarCliente,
  uDtmMain,
  ClasseLocalizar,
  uimprimirrelatoriopadrao,
  classeregistro;

{$R *.DFM}

function LocalizarFormulacao:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_formulacao) then
  begin
    frmlocalizarformulacao := Tfrmlocalizarformulacao.Create(application);
    frmlocalizarformulacao.q.q.Connection := aplicacao.confire;
  end;
  if frmlocalizarformulacao.q.q.Active then
  begin
    frmlocalizarformulacao.btnfindclick(frmlocalizarformulacao.btnfind);
  end;
  frmlocalizarformulacao.showmodal;
  if frmlocalizarformulacao.ModalResult = mrok then
  begin
    result := frmlocalizarformulacao.codigo;
  end;
end;

function TfrmLocalizarformulacao.makesql:string;
begin
  result := 'SELECT f.cdformulacao' +
                  ',f.nmformulacao'+
                  ',f.dsformulacao'+
                  ',r.nmregiaoaplicacao'+
                  ',c.CDCLIENTE'+
                  ',C.NMCLIENTE'+
                  ',f.qtpeso'+
                  ',f.qtmistura'+
                  ',f.nurevisao'+
                  ',S.NUCOR'+
                  ',S.NMSTformulacao '+
            'FROM formulacao f '+
            'LEFT JOIN CLIENTE c ON C.CDCLIENTE=F.CDCLIENTE and F.cdempresa=c.cdempresa '+
            'left join regiaoaplicacao r on r.cdempresa=f.cdempresa and r.cdregiaoaplicacao=f.cdregiaoaplicacao '+
            'left join stformulacao s on s.cdstformulacao=f.cdstformulacao '+
            'left join itformulacao i on i.cdempresa=f.cdempresa and i.cdformulacao=f.cdformulacao '+
            'left join itformulacaosubstituto i2 on i2.cdempresa=i.cdempresa and i2.cditformulacao=i.cditformulacao '+
            sqlwhere+
            ' group by f.cdformulacao' +
                     ',f.nmformulacao'+
                     ',f.dsformulacao'+
                     ',r.nmregiaoaplicacao'+
                     ',c.CDCLIENTE'+
                     ',C.NMCLIENTE'+
                     ',f.qtpeso'+
                     ',f.qtmistura'+
                     ',f.nurevisao'+
                     ',S.NUCOR'+
                     ',S.NMSTformulacao';
end;

function TfrmLocalizarformulacao.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where f.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  if ckbboativar.Checked then
  begin
    result := result + ' and f.cdstformulacao=1 ';
  end;
  sqlmontarcodigo(edtcdCliente.text, _f, _cdCLIENTE, result);
  sqlmontarcodigo(cbxcdstformulacao.EditValue, _f, _cdst + _formulacao, result);
  sqlmontarcodigo(edtcdproduto.text, _i, _cdproduto, result);
  sqlmontarcodigo(edtcdprodutos.text, _i + _2, _cdproduto, result);
  sqlmontarnomelike(edtnmformulacao.Text, _f, _nm + _formulacao, result);
  sqlmontarnomelike(edtdsformulacao.Text, _f, _ds + _formulacao, result);
  sqlmontarcodigo(cbxcdregiaoaplicacao.EditValue, _f, _cd + _regiao + _aplicacao, result);
  sqlmontarvalor(edtqtpesoi.Value, edtqtpesof.Value, _s, _qtpeso, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarformulacao.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarformulacao.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarformulacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure TfrmLocalizarformulacao.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdformulacao).AsInteger;
end;

procedure TfrmLocalizarformulacao.AbrirTabelas;
begin
  cbxcdstformulacao.Properties.ListSource := abrir_tabela(_stformulacao);
  cbxcdregiaoaplicacao.Properties.ListSource := abrir_tabela(_regiaoaplicacao);
end;

procedure TfrmLocalizarformulacao.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarformulacao.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarformulacao.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarformulacao.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarformulacao.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarformulacao.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarformulacao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarformulacao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarformulacao.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarformulacao.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarformulacao.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TLocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarformulacao.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarformulacao.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarformulacao.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdprodutoPropertiesButtonClick(edtcdproduto, lblnmproduto);
end;

procedure TfrmLocalizarformulacao.edtcdprodutosExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto, _produto+_s);
  colorexit(sender);
end;

procedure TfrmLocalizarformulacao.edtcdprodutosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutosPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarformulacao.edtcdprodutosPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdprodutoPropertiesButtonClick(edtcdprodutos, lblnmprodutos);
end;

procedure TfrmLocalizarformulacao.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarformulacao.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarformulacao.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarformulacao.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarformulacao.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarformulacao.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarformulacao.actimprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarformulacao.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCOR;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if ACanvas.Font.Color = clred  then
  begin
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end
  else if ACanvas.Font.Color = clblue then
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmLocalizarformulacao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not q.q.Active) or (q.q.RecordCount <= 0) then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    q.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    q.q.prior;
    key := 0;
  end;
end;

end.

unit ulocalizarnegociacao;

interface

uses
  forms, Classes, sysutils, dialogs, Controls, StdCtrls, Mask, Buttons, ComCtrls,
  ExtCtrls, system.UITypes,
  udatahora, uconstantes, ustrings, uregistro, urotinas,
  classeempresa, classesqlmontar, classeretornasql, classeexecutasql,
  classeform, classeaplicacao, classequery,
  cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB,
  cxButtonEdit, cxCheckBox, cxCalc, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxStatusBar, cxLookAndFeelPainters, Menus,
  cxButtons, cxGroupBox, cxCurrencyEdit, cxLookAndFeels, ActnList, dxBar,
  dxCore, cxDateUtils, cxNavigator, System.Actions, ClasseLocalizar;

type
  TfrmLocalizarnegociacao = class(TForm)
    lblduplicata: TLabel;
    lblstatus: TLabel;
    lbldtemissao: TLabel;
    lblCliente: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    btnFind: TcxButton;
    btnCancelar: TcxButton;
    btnok: TcxButton;
    edtdtEmissaoi: TcxDateEdit;
    cbxcdstnegociacao: TcxLookupComboBox;
    edtnuduplicatai: TcxTextEdit;
    edtDtemissaoF: TcxDateEdit;
    edtvlduplicatai: TcxCalcEdit;
    edtvlduplicataf: TcxCalcEdit;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDNEGOCIACAO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvVLENTRADA: TcxGridDBColumn;
    tbvVLSAIDA: TcxGridDBColumn;
    tbvNMSTNEGOCIACAO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    lbl1: TLabel;
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
    actlimpacriterio: TAction;
    dxBarButton1: TdxBarButton;
    edtnuduplicataf: TcxTextEdit;
    Label1: TLabel;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
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
    procedure actlimpacriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

function Localizarnegociacao:integer;

var
  frmLocalizarnegociacao: TfrmLocalizarnegociacao;

implementation

uses uLocalizar, uExportarExcel, ulocalizarCliente, uDtmMain, classeregistro;

{$R *.DFM}

function Localizarnegociacao:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_negociacao) then
  begin
    frmLocalizarnegociacao := tfrmLocalizarnegociacao.Create(application);
  end;
  if frmLocalizarnegociacao.q.q.Active then
  begin
    frmLocalizarnegociacao.btnfindclick(frmLocalizarnegociacao.btnfind);
  end;
  frmLocalizarnegociacao.showmodal;
  if frmLocalizarnegociacao.ModalResult = mrok then
  begin
    result := frmLocalizarnegociacao.codigo;
  end;
end;

function TfrmLocalizarnegociacao.makesql:string;
begin
  result := 'SELECT N.CDNEGOCIACAO' +
                  ',N.DTEMISSAO'+
                  ',C.NMCLIENTE'+
                  ',N.VLENTRADA'+
                  ',N.VLSAIDA'+
                  ',S.NMSTNEGOCIACAO '+
            'FROM NEGOCIACAO N '+
            'LEFT JOIN CLIENTE c ON C.CDCLIENTE=N.CDCLIENTE and n.cdempresa=c.cdempresa '+
            'LEFT JOIN STNEGOCIACAO s ON S.CDSTNEGOCIACAO=N.CDSTNEGOCIACAO '+
            'left join negociacaoentrada e on e.cdempresa=n.cdempresa and e.cdnegociacao=n.cdnegociacao '+
            'left join negociacaosaida g on g.cdempresa=n.cdempresa and g.cdnegociacao=n.cdnegociacao '+
            sqlwhere+
            ' group by N.CDNEGOCIACAO' +
                     ',N.DTEMISSAO'+
                     ',C.NMCLIENTE'+
                     ',N.VLENTRADA'+
                     ',N.VLSAIDA'+
                     ',S.NMSTNEGOCIACAO';
end;

function TfrmLocalizarnegociacao.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where n.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarcodigo(edtcdCliente.text, _n, _cdCLIENTE, result);
  sqlmontarnomedireto(edtnuduplicatai.Text, _e, _nu + _duplicata, result);
  sqlmontarnomedireto(edtnuduplicataf.Text, _g, _nu + _duplicata, result);
  sqlmontarcodigo(cbxcdstnegociacao.EditValue, _n, _cdst + _negociacao, result);
  sqlmontardata(edtdtemissaoi.text, edtdtemissaof.text, _n, _dtemissao, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarnegociacao.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarnegociacao.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarnegociacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure TfrmLocalizarnegociacao.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdnegociacao).AsInteger;
end;

procedure TfrmLocalizarnegociacao.AbrirTabelas;
begin
  cbxcdstnegociacao.Properties.ListSource := abrir_tabela(_stnegociacao);
end;

procedure TfrmLocalizarnegociacao.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarnegociacao.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarnegociacao.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarnegociacao.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarnegociacao.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarnegociacao.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarnegociacao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarnegociacao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarnegociacao.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarnegociacao.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarnegociacao.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarnegociacao.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarnegociacao.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarnegociacao.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarnegociacao.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarnegociacao.actlimpacriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarnegociacao.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarnegociacao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    q.q.Prior;
    key := 0;
  end;
end;

end.

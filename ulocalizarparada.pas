unit ulocalizarparada;

interface

uses
  forms, Mask, Classes, ExtCtrls, sysutils, dialogs, Buttons, StdCtrls, ComCtrls,
  Menus, ActnList, Controls, system.UITypes,
  DB,
  ustrings, uregistro, uconstantes, udatahora,
  classeempresa, classeform, classesqlmontar, classeAplicacao, classequery,
  classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxStatusBar, cxGroupBox, cxLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxCore, cxDateUtils, cxNavigator,
  System.Actions, ClasseLocalizar;

type
  TfrmLocalizarParada = class(TForm)
    Bevel1: TBevel;
    lblequipamento: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtDtemissaoFinal: TcxDateEdit;
    edtdtEmissao: TcxDateEdit;
    btnOk: TcxButton;
    btncancelar: TcxButton;
    btnFind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDPARADA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMEQUIPAMENTO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdequipamento: TcxLookupComboBox;
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
    actlimparcriterio: TAction;
    dxBarButton1: TdxBarButton;
    lblCDSUBTPPARADA: TLabel;
    cbxCDSUBTPPARADA: TcxLookupComboBox;
    lblcdtpparada: TLabel;
    cbxcdtpparada: TcxLookupComboBox;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdequipamentoEnter(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
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

function LocalizarParada:integer;

var
  frmLocalizarParada: TfrmLocalizarParada;

implementation

uses uLocalizar, uExportarExcel, uMain, uDtmMain;

{$R *.DFM}

function LocalizarParada:integer;
begin
  result := 0;
  if frmlocalizarparada = nil then
  begin
    frmlocalizarparada := Tfrmlocalizarparada.Create(application);
  end;
  if frmlocalizarparada.q.q.Active then
  begin
    frmlocalizarparada.btnfindclick(frmlocalizarparada.btnfind);
  end;
  frmlocalizarparada.showmodal;
  if frmlocalizarparada.ModalResult = mrok then
  begin
    result := frmlocalizarparada.codigo;
  end;
end;

function TfrmLocalizarParada.makesql:string;
begin
  result := 'SELECT PARADA.CDPARADA'+
                  ',PARADA.DTEMISSAO'+
                  ',Equipamento.NMEQUIPAMENTO '+
            'FROM PARADA '+
            'LEFT JOIN EQUIPAMENTO ON Equipamento.CDEQUIPAMENTO=PARADA.CDEQUIPAMENTO and Equipamento.cdempresa=PARADA.cdempresa '+
            'left join itparada on itparada.cdempresa=parada.cdempresa and itparada.cdparada=parada.cdparada '+
            sqlwhere+
            ' group by PARADA.CDPARADA'+
                  ',PARADA.DTEMISSAO'+
                  ',Equipamento.NMEQUIPAMENTO';
end;

function TfrmLocalizarParada.sqlwhere: string;
var
  criterio : string;
begin
  result := result + 'where PARADA.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarcodigo(cbxcdequipamento.EditValue, _parada, _cdequipamento, result);
  sqlmontarcodigo(cbxcdtpparada.EditValue, _itparada, _cdtpparada, result);
  sqlmontarcodigo(cbxcdsubtpparada.EditValue, _itparada, _cdsubtpparada, result);
  sqlmontardata(edtdtEmissao.text, edtDtemissaoFinal.text, _parada, _dtemissao, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarParada.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0
end;

procedure TfrmLocalizarParada.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarParada.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarParada.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarParada.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarParada.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarParada.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarParada.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarParada.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarParada.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarParada.cbxcdequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_equipamento);
  colorenter(sender);
end;

procedure TfrmLocalizarParada.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarParada.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarParada.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarParada.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarParada.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarParada.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarParada.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdparada).AsInteger;
end;

procedure TfrmLocalizarParada.AbrirTabelas;
begin
  cbxcdequipamento.Properties.ListSource := abrir_tabela(_equipamento);
  cbxcdtpparada.Properties.ListSource := abrir_tabela(_tpparada);
  cbxcdsubtpparada.Properties.ListSource := abrir_tabela(_subtpparada);
end;

end.

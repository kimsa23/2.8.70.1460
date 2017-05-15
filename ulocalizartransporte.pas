unit ulocalizartransporte;

interface

uses
  forms, Mask, Classes, ExtCtrls, dialogs, sysutils, StdCtrls, ComCtrls, Controls,
  Menus, DB, ActnList, Buttons, system.UITypes,
  uExportarExcel, uconstantes, uregistro, ustrings, udatahora,
  classesqlmontar, classeempresa, classeform, classeaplicacao, classequery,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtons, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDropDownEdit, cxCalendar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, DBClient, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxCore, cxDateUtils,
  cxNavigator, System.Actions, ClasseLocalizar;

type
  TfrmLocalizartransporte = class(TForm)
    lblsttransporte: TLabel;
    lbldtemissao: TLabel;
    lbldtsaida: TLabel;
    lblentreemissao: TLabel;
    lblentresaida: TLabel;
    Bevel1: TBevel;
    lbltransportadora: TLabel;
    btnok: TcxButton;
    btn2: TcxButton;
    btnfind: TcxButton;
    edtdtEmissaoi: TcxDateEdit;
    edtDtemissaof: TcxDateEdit;
    edtdtsaidai: TcxDateEdit;
    edtdtsaidaf: TcxDateEdit;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    tbvCDTRANSPORTE: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTSAIDA: TcxGridDBColumn;
    tbvNMTRANSPORTADORA: TcxGridDBColumn;
    tbvNMSTTRANSPORTE: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdsttransporte: TcxLookupComboBox;
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
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdtransportadora: TcxButtonEdit;
    lblnmtransportadora: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdtransportadoraExit(Sender: TObject);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

function Localizartransporte:integer;

var
  frmLocalizartransporte: TfrmLocalizartransporte;

implementation

uses uLocalizar, ulocalizartransportadora, uDtmMain, classeregistro;

{$R *.DFM}

function Localizartransporte:integer;
begin
  result := 0;
  if frmlocalizartransporte = nil then
  begin
    frmlocalizartransporte := Tfrmlocalizartransporte.Create(application);
  end;
  if frmlocalizartransporte.q.q.Active then
  begin
    frmlocalizartransporte.btnfindclick(frmlocalizartransporte.btnfind);
  end;
  frmlocalizartransporte.showmodal;
  if frmlocalizartransporte.ModalResult = mrok then
  begin
    result := frmlocalizartransporte.codigo;
  end;
end;

function TfrmLocalizartransporte.makesql:string;
begin
  result := 'SELECT CDTRANSPORTE'+
                  ',DTEMISSAO'+
                  ',DTSAIDA'+
                  ',NMTRANSPORTADORA'+
                  ',NMSTTRANSPORTE ' +
            'FROM TRANSPORTE t ' +
            'LEFT JOIN TRANSPORTADORA ta ON Ta.CDTRANSPORTADORA=T.CDTRANSPORTADORA and t.cdempresa=ta.cdempresa ' +
            'LEFT JOIN STTRANSPORTE s ON S.CDSTTRANSPORTE=T.CDSTTRANSPORTE '+
            sqlwhere+
            ' order by dtemissao desc,cdtransporte desc';
end;

function TfrmLocalizartransporte.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where t.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarcodigo(edtcdtransportadora.text, _t, _cdtransportadora, result);
  sqlmontarcodigo(cbxcdsttransporte.EditValue, _t, _cdsttransporte, result);
  sqlmontardata(edtdtemissaoi.text, edtdtemissaof.text, _t, _dtemissao, result);
  sqlmontardata(edtdtsaidai.text, edtdtsaidaf.text, _t, _dtsaida, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizartransporte.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0
end;

procedure TfrmLocalizartransporte.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizartransporte.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizartransporte.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas
end;

procedure TfrmLocalizartransporte.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizartransporte.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizartransporte.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizartransporte.edtcdtransportadoraExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _transportadora, _transportadora);
  colorexit(sender);
end;

procedure TfrmLocalizartransporte.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizartransporte.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TLocalizar.edtcdtransportadoraPropertiesButtonClick(edtcdtransportadora, lblnmtransportadora);
end;

procedure TfrmLocalizartransporte.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizartransporte.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizartransporte.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizartransporte.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizartransporte.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizartransporte.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizartransporte.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizartransporte.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdtransporte).Asinteger;
end;

procedure TfrmLocalizartransporte.AbrirTabelas;
begin
  cbxcdsttransporte.Properties.ListSource := abrir_tabela(_sttransporte);
end;

procedure TfrmLocalizartransporte.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.

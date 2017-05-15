unit ulocalizarrpa;

interface

uses
  forms, Buttons, StdCtrls, ComCtrls, Controls, Mask, Classes, ExtCtrls,
  dialogs, Menus, sysutils, system.UITypes,
  DB,
  ustrings, ulocalizar, urotinas, udatahora, uregistro, uconstantes,
  uexportarexcel, ulocalizartransportadora,
  classeempresa, classesqlmontar, classeform, classeaplicacao, classequery,
  classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCalc, cxLookAndFeelPainters, cxButtons, cxGroupBox,
  cxButtonEdit, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxStatusBar, cxLookAndFeels, cxPC, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ActnList, dxBar, cxNavigator, dxCore, cxDateUtils,
  System.Actions, ClasseLocalizar;

type
  TfrmLocalizarRPA = class(TForm)
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDRPA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMTPRPA: TcxGridDBColumn;
    tbvNMTRANSPORTADORA: TcxGridDBColumn;
    tbvVLFRETE: TcxGridDBColumn;
    tbvNMSTRPA: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    Bevel1: TBevel;
    lbldocumento: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbltransportadora: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    edtvlfretef: TcxCalcEdit;
    edtvlfretei: TcxCalcEdit;
    edtDtemissaoFinal: TcxDateEdit;
    edtdtEmissao: TcxDateEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    cbxcdstrpa: TcxLookupComboBox;
    cbxcdtprpa: TcxLookupComboBox;
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
    tbvVLINSS: TcxGridDBColumn;
    tbvVLSESTSENAT: TcxGridDBColumn;
    tbvVLIRRF: TcxGridDBColumn;
    tbvVLADIANTAMENTO: TcxGridDBColumn;
    tbvVLPEDAGIO: TcxGridDBColumn;
    tbvVLSALDO: TcxGridDBColumn;
    tbvVLFRETETON: TcxGridDBColumn;
    tbvPSLIQUIDO: TcxGridDBColumn;
    tbvCDTRANSPORTADORA: TcxGridDBColumn;
    tbvCDPROPRIETARIO: TcxGridDBColumn;
    tbvNMPROPRIETARIO: TcxGridDBColumn;
    lblproprietario: TLabel;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdtransportadora: TcxButtonEdit;
    edtcdproprietario: TcxButtonEdit;
    lblnmtransportadora: TLabel;
    lblnmproprietario: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdtransportadoraExit(Sender: TObject);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdproprietarioExit(Sender: TObject);
    procedure edtcdproprietarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdproprietarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

function Localizarrpa:Integer;

var
  frmLocalizarRPA: TfrmLocalizarRPA;

implementation

uses uDtmMain;

{$R *.DFM}

function Localizarrpa:Integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_rpa) then
  begin
    frmlocalizarrpa := Tfrmlocalizarrpa.Create(application);
  end;
  if frmlocalizarrpa.q.q.Active then
  begin
    frmlocalizarrpa.btnFindClick(frmlocalizarrpa.btnFind);
  end;
  frmlocalizarrpa.showmodal;
  if frmlocalizarrpa.ModalResult = mrok then
  begin
    result := frmlocalizarrpa.codigo;
  end;
end;

function TfrmLocalizarRPA.makesql:string;
begin
  result := 'SELECT CDRPA'+
                  ',DTEMISSAO'+
                  ',NMTPRPA'+
                  ',T.RZSOCIAL NMTRANSPORTADORA'+
                  ',R.CDTRANSPORTADORA'+
                  ',CDPROPRIETARIO'+
                  ',P.RZSOCIAL NMPROPRIETARIO'+
                  ',VLFRETE'+
                  ',VLINSS'+
                  ',VLSESTSENAT'+
                  ',VLIRRF'+
                  ',VLADIANTAMENTO'+
                  ',VLPEDAGIO'+
                  ',VLSALDO'+
                  ',VLFRETETON'+
                  ',PSLIQUIDO'+
                  ',NMSTRPA '+
            'FROM RPA r '+
            'INNER JOIN TPRPA tp ON TP.CDTPRPA=R.CDTPRPA and tp.cdempresa=r.cdempresa '+
            'LEFT JOIN TRANSPORTADORA t ON T.CDTRANSPORTADORA=R.CDTRANSPORTADORA and t.cdempresa=r.cdempresa '+
            'LEFT JOIN TRANSPORTADORA P ON P.CDEMPRESA=R.CDEMPRESA AND P.CDTRANSPORTADORA=R.CDPROPRIETARIO '+
            'LEFT JOIN STRPA s ON S.CDSTRPA=R.CDSTRPA '+
            sqlwhere+
            ' order by dtemissao desc';
end;

function TfrmLocalizarRPA.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where r.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontarcodigo(edtcdtransportadora.text, _r, _cdtransportadora, result);
  sqlmontarcodigo(edtcdproprietario.text, _r, _cd + _proprietario, result);
  sqlmontarcodigo(cbxcdstrpa.EditValue, _r, _cd + _st + _rpa, result);
  sqlmontarcodigo(cbxcdtprpa.EditValue, _r, _cd + _tp + _rpa, result);
  sqlmontardata(edtdtemissao.text, edtdtemissaofinal.text, _r, _dtemissao, result);
  sqlmontarvalor(edtvlfretei.Value, edtvlfretef.Value, _r, _vlfrete, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarRPA.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarRPA.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarRPA.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarRPA.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdrpa).AsInteger;
end;

procedure TfrmLocalizarRPA.AbrirTabelas;
begin
  cbxcdstrpa.Properties.ListSource := abrir_tabela(_strpa);
  cbxcdtprpa.Properties.ListSource := abrir_tabela(_tprpa);
end;

procedure TfrmLocalizarRPA.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarRPA.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarRPA.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarRPA.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarRPA.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarRPA.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarRPA.edtcdproprietarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _transportadora, _transportadora, _proprietario);
  colorexit(sender);
end;

procedure TfrmLocalizarRPA.edtcdproprietarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdproprietarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarRPA.edtcdproprietarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizartransportadora(false);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproprietario.text    := cd.tostring;
  lblnmproprietario.caption := qregistro.NomedoCodigo(_transportadora, cd);
end;

procedure TfrmLocalizarRPA.edtcdtransportadoraExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _transportadora, _transportadora);
  colorexit(sender);
end;

procedure TfrmLocalizarRPA.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarRPA.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdtransportadoraPropertiesButtonClick(edtcdtransportadora, lblnmtransportadora);
end;

procedure TfrmLocalizarRPA.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarRPA.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarRPA.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarRPA.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarRPA.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarRPA.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarRPA.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarRPA.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

end.

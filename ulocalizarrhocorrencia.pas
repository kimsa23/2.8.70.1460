unit ulocalizarrhocorrencia;

interface

uses
  forms, sysutils, dialogs, Classes, StdCtrls, ComCtrls, ExtCtrls, Buttons, Mask,
  idglobal, Menus, ActnList, Controls, system.UITypes,
  DB,
  uregistro, ulocalizar, udatahora, urotinas, uconstantes, ulocalizarfornecedor,
  uexportarexcel,
  classeequipamento, ClasseOrdServ, classesqlmontar, classeRetornaSQL, classeform,
  classeempresa, classeaplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxGroupBox,
  dxStatusBar, cxLookAndFeels, cxPCdxBarPopupMenu, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxBar, dxCore, cxDateUtils, cxNavigator, dxBarBuiltInMenu,
  System.Actions, ClasseLocalizar;

type
  TfrmLocalizarRHOcorrencia = class(TForm)
    bvl: TBevel;
    Bevel1: TBevel;
    lbltprhocorrencia: TLabel;
    btnFind: TcxButton;
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDRHOCORRENCIA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMTPRHOCORRENCIA: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdtprhocorrencia: TcxLookupComboBox;
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
    lbl1: TLabel;
    edtdtemissaoi: TcxDateEdit;
    lbl2: TLabel;
    edtdtemissaof: TcxDateEdit;
    lblcdfuncionario: TLabel;
    tbvNMFUNCIONARIO: TcxGridDBColumn;
    tbvHREMISSAO: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdfuncionario: TcxButtonEdit;
    lblnmfuncionario: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

function LocalizarRHOCorrencia:integer;

var
  frmLocalizarRHOcorrencia: TfrmLocalizarRHOcorrencia;

implementation

uses uDtmMain, ulocalizarFuncionario;

{$R *.DFM}

function LocalizarRHOCorrencia:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_rhocorrencia) then
  begin
    frmLocalizarRHOcorrencia := TfrmLocalizarRHOcorrencia.Create(application);
  end;
  if frmLocalizarRHOcorrencia.q.q.Active then
  begin
    frmLocalizarRHOcorrencia.btnfindclick(frmLocalizarRHOcorrencia.btnfind);
  end;
  frmLocalizarRHOcorrencia.showmodal;
  if frmLocalizarRHOcorrencia.ModalResult = mrok then
  begin
    result := frmLocalizarRHOcorrencia.codigo;
  end;
end;

function TfrmLocalizarRHOcorrencia.makesql:string;
begin
  result := 'SELECT O.CDRHOCORRENCIA'+
                  ',O.DTEMISSAO'+
                  ',O.HREMISSAO'+
                  ',T.NMTPRHOCORRENCIA'+
                  ',FU.NMFUNCIONARIO '+
            'FROM RHOCORRENCIA O '+
            'LEFT JOIN FUNCIONARIO FU ON FU.CDFUNCIONARIO=O.CDFUNCIONARIO and O.cdempresa=FU.cdempresa '+
            'LEFT JOIN TPRHOCORRENCIA T ON T.CDTPRHOCORRENCIA=O.CDTPRHOCORRENCIA and O.cdempresa=T.cdempresa '+
            sqlwhere +
            ' group by O.CDRHOCORRENCIA'+
                  ',O.DTEMISSAO'+
                  ',O.HREMISSAO'+
                  ',T.NMTPRHOCORRENCIA'+
                  ',FU.NMFUNCIONARIO '+
            'order by O.CDRHOCORRENCIA desc';
end;

function TfrmLocalizarRHOcorrencia.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where O.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarcodigo(cbxcdtprhocorrencia.EditValue, _o, _cdtprhocorrencia, result);
  sqlmontarcodigo(edtcdfuncionario.text, _o, _cdfuncionario, result);
  sqlmontardata(edtdtEmissaoi.text, edtdtemissaof.text, _o, _dtemissao, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarRHOcorrencia.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarRHOcorrencia.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarRHOcorrencia.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdrhocorrencia).Asinteger;
end;

procedure TfrmLocalizarRHOcorrencia.AbrirTabelas;
begin
  cbxcdtprhocorrencia.Properties.ListSource := abrir_tabela(_tprhocorrencia);
end;

procedure TfrmLocalizarRHOcorrencia.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarRHOcorrencia.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarRHOcorrencia.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarRHOcorrencia.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarRHOcorrencia.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarRHOcorrencia.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarRHOcorrencia.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarRHOcorrencia.edtcdfuncionarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario);
  colorexit(sender);
end;

procedure TfrmLocalizarRHOcorrencia.edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarRHOcorrencia.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfuncionarioPropertiesButtonClick(edtcdfuncionario, lblnmfuncionario);
end;

procedure TfrmLocalizarRHOcorrencia.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarRHOcorrencia.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarRHOcorrencia.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarRHOcorrencia.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarRHOcorrencia.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarRHOcorrencia.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarRHOcorrencia.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarRHOcorrencia.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

end.


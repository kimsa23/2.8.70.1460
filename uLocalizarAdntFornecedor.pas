unit uLocalizarAdntFornecedor;

interface

uses
  forms, Buttons, StdCtrls, ComCtrls, Controls, Mask, Classes, ExtCtrls, dialogs,
  ActnList, Menus, sysutils, system.UITypes,
  DB,
  urotinas, udatahora, ustrings, uregistro, uconstantes,
  classesqlmontar, classeretornasql, classeempresa, classeform, classeAplicacao,
  classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCalc, cxLookAndFeelPainters, cxButtonEdit, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxGroupBox, dxStatusBar, cxLookAndFeels, cxLookupEdit, cxDBLookupEdit,
  dxBar, dxCore, cxDateUtils, cxNavigator, cxDBLookupComboBox, System.Actions,
  ClasseLocalizar;

type
  TfrmLocalizarAdntFornecedor = class(TForm)
    Bevel1: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    lblcodigo: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    edtdtnf: TcxDateEdit;
    edtdtni: TcxDateEdit;
    edtDteF: TcxDateEdit;
    edtdtEi: TcxDateEdit;
    edtvltotali: TcxCalcEdit;
    edtvltotalf: TcxCalcEdit;
    edtvlutilizadoi: TcxCalcEdit;
    edtvlutilizadof: TcxCalcEdit;
    edtvlsaldoi: TcxCalcEdit;
    edtvlsaldof: TcxCalcEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    btnFind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDADNTFORNECEDOR: TcxGridDBColumn;
    tbvCDFORNECEDOR: TcxGridDBColumn;
    tbvNMFORNECEDOR: TcxGridDBColumn;
    tbvVLADNTFORNECEDOR: TcxGridDBColumn;
    tbvVLUTILIZADO: TcxGridDBColumn;
    tbvVLSALDO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTENTRADA: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
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
    lblstspedido: TLabel;
    cbxcdstadntfornecedor: TcxLookupComboBox;
    tbvNMSTADNTFORNECEDOR: TcxGridDBColumn;
    dxBarButton3: TdxBarButton;
    actmodograde: TAction;
    lblnmfornecedor: TLabel;
    edtcdfornecedor: TcxButtonEdit;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
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
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

function Localizaradntfornecedor:integer;

var
  frmLocalizarAdntFornecedor: TfrmLocalizarAdntFornecedor;

implementation

uses ulocalizarFornecedor, uExportarExcel, uDtmMain;

{$R *.DFM}

function LocalizaradntFornecedor:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_adntFornecedor) then
  begin
    frmlocalizaradntFornecedor := TfrmlocalizaradntFornecedor.Create(application);
  end;
  if frmlocalizaradntfornecedor.q.q.Active then
  begin
    frmlocalizaradntfornecedor.btnfindclick(frmlocalizaradntfornecedor.btnfind);
  end;
  frmlocalizaradntFornecedor.showmodal;
  if frmlocalizaradntFornecedor.ModalResult = mrok then
  begin
    result := frmlocalizaradntFornecedor.codigo;
  end;
end;

function TfrmLocalizarAdntFornecedor.makesql:string;
begin
  result := 'SELECT CDADNTFornecedor'+
                  ',a.CDFornecedor'+
                  ',NMFornecedor'+
                  ',S.NMSTADNTFORNECEDOR'+
                  ',VLADNTFornecedor'+
                  ',VLUTILIZADO'+
                  ',VLSALDO'+
                  ',DTEMISSAO'+
                  ',DTENTRADA '+
            'FROM ADNTFornecedor a '+
            'LEFT JOIN STADNTFORNECEDOR S ON S.CDSTADNTFORNECEDOR=A.CDSTADNTFORNECEDOR AND S.CDEMPRESA=A.CDEMPRESA '+
            'INNER JOIN Fornecedor f ON F.CDFornecedor=A.CDFornecedor and f.cdempresa=a.cdempresa '+
            sqlwhere+
            ' order by cdadntfornecedor desc';
end;

function TfrmLocalizarAdntFornecedor.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where a.cdempresa=' + empresa.cdempresa.ToString + ' ';
  criterio := result;
  sqlmontarcodigo(edtcdfornecedor.text, _a, _cdfornecedor, result);
  sqlmontarcodigo(cbxcdstadntfornecedor.editvalue, _a, _cdstadntfornecedor, result);
  sqlmontardata(edtdtei.text, edtdtef.text, _a, _dtemissao, result);
  sqlmontardata(edtdtni.text, edtdtnf.text, _a, _dtentrada, result);
  sqlmontarvalor(edtvltotali.Value, edtvltotalf.Value, _a, _vl + _adntfornecedor, result);
  sqlmontarvalor(edtvlutilizadoi.Value, edtvlutilizadof.Value, _a, _vlutilizado, result);
  sqlmontarvalor(edtvlsaldoi.Value, edtvlsaldof.Value, _a, _vlsaldo, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarAdntFornecedor.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarAdntFornecedor.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarAdntFornecedor.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdadntfornecedor).asinteger;
end;

procedure TfrmLocalizarAdntFornecedor.AbrirTabelas;
begin
  cbxcdstadntfornecedor.Properties.ListSource := abrir_tabela(_stadntfornecedor);
end;

procedure TfrmLocalizarAdntFornecedor.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarAdntFornecedor.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarAdntFornecedor.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarAdntFornecedor.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarAdntFornecedor.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarAdntFornecedor.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarAdntFornecedor.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarAdntFornecedor.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarAdntFornecedor.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmLocalizarAdntFornecedor.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarAdntFornecedor.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarAdntFornecedor.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarAdntFornecedor.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarAdntFornecedor.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarAdntFornecedor.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarAdntFornecedor.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarAdntFornecedor.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarAdntFornecedor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

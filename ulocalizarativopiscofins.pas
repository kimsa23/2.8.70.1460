unit ulocalizarativopiscofins;

interface

uses
  forms, Buttons, StdCtrls, ComCtrls, Controls, Mask, Classes, ExtCtrls, dialogs,
  graphics, Menus, sysutils,
  DB,
  udatahora, uconstantes, uregistro, ustrings, urotinas,
  uexportarexcel, uLocalizar, ulocalizarFornecedor,
  classesqlmontar, classeempresa, classeretornasql, classeform, classeAplicacao,
  classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons,
  cxGroupBox, cxRadioGroup, cxPC, cxGraphics, dxStatusBar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid,
  cxLookAndFeels, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPCdxBarPopupMenu, ActnList, dxBar, cxNavigator, dxCore,
  cxDateUtils, System.Actions, ClasseLocalizar;

type
  TfrmLocalizarAtivoPISCOFINS = class(TForm)
    Bevel1: TBevel;
    lblfornecedor: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtvlentradai: TcxCalcEdit;
    edtvlentradaf: TcxCalcEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvNUDOCUMENTO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTINICIO: TcxGridDBColumn;
    tbvDTTERMINO: TcxGridDBColumn;
    tbvNMFORNECEDOR: TcxGridDBColumn;
    tbvVLENTRADA: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    tbvVLSALDO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tbvVLDEDUCAO: TcxGridDBColumn;
    Label8: TLabel;
    lbldtemissao: TLabel;
    edtdtEmissaoi: TcxDateEdit;
    lblentreemissao: TLabel;
    edtDtemissaof: TcxDateEdit;
    lbldtsaida: TLabel;
    edtdtinicioi: TcxDateEdit;
    lblentresaida: TLabel;
    edtdtiniciof: TcxDateEdit;
    Label3: TLabel;
    edtdtterminoi: TcxDateEdit;
    Label25: TLabel;
    edtdtterminof: TcxDateEdit;
    Label26: TLabel;
    edtvldeducaoi: TcxCalcEdit;
    Label27: TLabel;
    edtvldeducaof: TcxCalcEdit;
    Label28: TLabel;
    edtvlsaldoi: TcxCalcEdit;
    Label29: TLabel;
    edtvlsaldof: TcxCalcEdit;
    tbvCDATIVOPISCOFINS: TcxGridDBColumn;
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
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    edtcdfornecedor: TcxButtonEdit;
    lblnmfornecedor: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
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
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
  public    { Public declarations }
  end;

function LocalizarAtivoPISCOFINS:integer;

var
  frmLocalizarAtivoPISCOFINS: TfrmLocalizarAtivoPISCOFINS;

implementation

uses
  uDtmMain, ulocalizarproduto;

{$R *.DFM}

function LocalizarAtivoPISCOFINS:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_ativo+_pis+_cofins) then
  begin
    frmLocalizarAtivoPISCOFINS := TfrmLocalizarAtivoPISCOFINS.Create(application);
  end;
  with frmLocalizarAtivoPISCOFINS do
  begin
    if q.q.Active then
    begin
      btnfindclick(btnfind);
    end;
    showmodal;
    if ModalResult = mrok then
    begin
      result := codigo;
    end;
  end;
end;

procedure TfrmLocalizarAtivoPISCOFINS.btnFindClick(Sender: TObject);
  function sqlwhere:string;
  begin
    result := 'where a.cdempresa='+empresa.cdempresa.tostring+' ';
    sqlmontarcodigo(edtcdproduto.text      , _a , _cdproduto      , result);
    sqlmontarcodigo(edtcdfornecedor.text   , _a , _cdfornecedor   , result);
    sqlmontardata  (edtdtEmissaoi.text     , edtdtEmissaof.text , _a, _dtemissao, result);
    sqlmontardata  (edtdtinicioi.text      , edtdtiniciof.text  , _a, _dtinicio , result);
    sqlmontardata  (edtdtterminoi.text     , edtdtterminof.text , _a, _dttermino, result);
    sqlmontarvalor (edtvlentradai.Value    , edtvlentradaf.Value, _a, _vlentrada, result);
    sqlmontarvalor (edtvldeducaoi.Value    , edtvldeducaof.Value, _a, _vldeducao, result);
    sqlmontarvalor (edtvlsaldoi.Value      , edtvlsaldof.Value  , _a, _vlsaldo  , result);
  end;
  function Makesql:string;
  begin
    result := 'SELECT A.CDATIVOPISCOFINS'+
                    ',p.nmproduto'+
                    ',f.nmfornecedor'+
                    ',a.dtemissao'+
                    ',a.dtinicio'+
                    ',a.dttermino'+
                    ',a.vlentrada'+
                    ',a.vldeducao'+
                    ',a.vlsaldo'+
                    ',a.nudocumento '+
              'FROM ativopiscofins a '+
              'left join produto p on p.cdproduto=a.cdproduto and a.cdempresa=p.cdempresa '+
              'LEFT JOIN FORNECEDOR f ON F.CDFORNECEDOR=a.CDFORNECEDOR and f.cdempresa=a.cdempresa '+
              sqlwhere+' '+
              'order by a.cdativopiscofins';
  end;
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarAtivoPISCOFINS.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarAtivoPISCOFINS.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarAtivoPISCOFINS.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdativopiscofins).asInteger;
end;

procedure TfrmLocalizarAtivoPISCOFINS.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarAtivoPISCOFINS.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarAtivoPISCOFINS.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarAtivoPISCOFINS.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarAtivoPISCOFINS.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
end;

procedure TfrmLocalizarAtivoPISCOFINS.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarAtivoPISCOFINS.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarAtivoPISCOFINS.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarAtivoPISCOFINS.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmLocalizarAtivoPISCOFINS.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarAtivoPISCOFINS.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarAtivoPISCOFINS.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarAtivoPISCOFINS.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarAtivoPISCOFINS.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproduto.text    := cd.ToString;
  lblnmproduto.caption := qregistro.NomedoCodigo(_produto, cd);
end;

procedure TfrmLocalizarAtivoPISCOFINS.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarAtivoPISCOFINS.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarAtivoPISCOFINS.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarAtivoPISCOFINS.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarAtivoPISCOFINS.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarAtivoPISCOFINS.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarAtivoPISCOFINS.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

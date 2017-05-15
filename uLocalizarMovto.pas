unit uLocalizarMovto;

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
  TfrmLocalizarMovto = class(TForm)
    Bevel1: TBevel;
    Label7: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    edtDtemissaoFinal: TcxDateEdit;
    edtdtEmissao: TcxDateEdit;
    btnOk: TcxButton;
    btncancelar: TcxButton;
    btnFind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDMOVTO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMTPMOVTO: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdtpmovto: TcxLookupComboBox;
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
    cbxcdcntcusto: TcxLookupComboBox;
    Label1: TLabel;
    tbvNUSAIDA: TcxGridDBColumn;
    tbvCDPRODUTO: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    dxBarButton3: TdxBarButton;
    actmodograde: TAction;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdtpmovtoEnter(Sender: TObject);
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
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure set_exibir_campo_subproduto;
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarMovto:integer;

var
  frmLocalizarMovto: TfrmLocalizarMovto;

implementation

uses uLocalizar,
  uExportarExcel,
  uMain,
  uDtmMain,
  ulocalizarproduto;

{$R *.DFM}

function LocalizarMovto:integer;
begin
  result := 0;
  if frmlocalizarmovto = nil then
  begin
    frmlocalizarMovto := TfrmlocalizarMovto.Create(application);
  end;
  if frmlocalizarMovto.q.q.Active then
  begin
    frmlocalizarMovto.btnfindclick(frmlocalizarMovto.btnfind);
  end;
  frmlocalizarMovto.showmodal;
  if frmlocalizarMovto.ModalResult = mrok then
  begin
    result := frmlocalizarMovto.codigo;
  end;
end;

function TfrmLocalizarMovto.makesql:string;
begin
  result := 'SELECT m.CDMOVTO'+
                 ',M.DTEMISSAO'+
                 ',NMTPMOVTO';
  if empresa.material.movto.bosuproduto then
  begin
    result := result +
                 ',S.NUSAIDA'+
                 ',IT.CDPRODUTO'+
                 ',p.nmproduto';
  end;
  result := result +
                 ',sum(I.VLTOTAL) VLTOTAL'+
                 ',sum(I.qtitem) qtitem '+
            'FROM MOVTO M '+
            'LEFT JOIN TPMOVTO T ON T.CDTPMOVTO=M.CDTPMOVTO and m.cdempresa=t.cdempresa '+
            'left join itmovto I on i.cdmovto=m.cdmovto and m.cdempresa=i.cdempresa ';
  if empresa.material.movto.bosuproduto then
  begin
    result := result +
              'LEFT JOIN ITSAIDA IT ON IT.CDEMPRESA=M.CDEMPRESA AND IT.CDITSAIDA=M.CDITSAIDA '+
              'left join produto p on p.cdempresa=it.cdempresa and it.cdproduto=p.cdproduto '+
              'LEFT JOIN SAIDA S ON S.CDEMPRESA=IT.CDEMPRESA AND S.CDSAIDA=IT.CDSAIDA ';
  end;
  result := result + sqlwhere + ' group by m.CDMOVTO,M.DTEMISSAO,NMTPMOVTO';
  if empresa.material.movto.bosuproduto then
  begin
    result := result + ',S.NUSAIDA,IT.CDPRODUTO,p.nmproduto';
  end;
end;

function TfrmLocalizarMovto.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where m.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarcodigo(cbxcdtpmovto.EditValue , _m, _cdtpmovto, result);
  sqlmontarcodigo(edtcdproduto.text      , _i, _cdproduto, result);
  sqlmontarcodigo(cbxcdcntcusto.EditValue, _i, _cdcntcusto, result);
  sqlmontardata(edtdtEmissao.text, edtDtemissaoFinal.text, _m, _dtemissao, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarMovto.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0
end;

procedure TfrmLocalizarMovto.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarMovto.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarMovto.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarMovto.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarMovto.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarMovto.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
  set_exibir_campo_subproduto;
end;

procedure TfrmLocalizarMovto.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarMovto.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarMovto.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarMovto.cbxcdtpmovtoEnter(Sender: TObject);
begin
  abrir_tabela(_tpmovto);
  colorenter(sender);
end;

procedure TfrmLocalizarMovto.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarMovto.edtcdprodutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarMovto.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarMovto.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarMovto.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarMovto.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarMovto.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarMovto.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarMovto.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarMovto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarMovto.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdmovto).AsInteger;
end;

procedure TfrmLocalizarMovto.set_exibir_campo_subproduto;
begin
  tbvNUSAIDA.Visible   := empresa.material.movto.bosuproduto;
  tbvCDPRODUTO.Visible := empresa.material.movto.bosuproduto;
  tbvNMPRODUTO.Visible := empresa.material.movto.bosuproduto;
end;

procedure TfrmLocalizarMovto.AbrirTabelas;
begin
  cbxcdtpmovto.Properties.ListSource := abrir_tabela(_tpmovto);
  cbxcdcntcusto.Properties.ListSource := abrir_tabela(_cntcusto);
end;

end.

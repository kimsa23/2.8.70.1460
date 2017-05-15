unit ulocalizarrim;

interface

uses
  forms, Menus, Buttons, Mask, Classes, ExtCtrls, dialogs, sysutils, StdCtrls, ComCtrls,
  Controls, ActnList, system.UITypes,
  DB,
  uregistro, urotinas, ulocalizar, uconstantes, uexportarexcel, ulocalizarcliente,
  udatahora,
  classeempresa, classeform, classesqlmontar, classeAplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxStatusBar, cxGroupBox, cxLookAndFeels,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxCore,
  cxDateUtils, cxNavigator, System.Actions, ClasseLocalizar;

type
  TfrmLocalizarRIM = class(TForm)
    dts: TDataSource;
    Label11: TLabel;
    Bevel1: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    edtdtemissaoi: TcxDateEdit;
    edtdtemissaof: TcxDateEdit;
    btnfind: TcxButton;
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDRIM: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNUNIVEL: TcxGridDBColumn;
    tbvNMCNTCUSTO: TcxGridDBColumn;
    tbvNMSTRIM: TcxGridDBColumn;
    tbvNMTPRIM: TcxGridDBColumn;
    tbvNMTPAPLICACAO: TcxGridDBColumn;
    tbvNMFUNCIONARIO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cbxcdstrim: TcxLookupComboBox;
    cbxcdtprim: TcxLookupComboBox;
    cbxcdcntcusto: TcxLookupComboBox;
    cbxcdtpaplicacao: TcxLookupComboBox;
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
    dxBarButton1: TdxBarButton;
    actlimparcriterio: TAction;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    edtcdfuncionario: TcxButtonEdit;
    lblnmfuncionario: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure edtcdcontaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtprimEnter(Sender: TObject);
    procedure cbxcdcntcustoEnter(Sender: TObject);
    procedure cbxcdtpaplicacaoEnter(Sender: TObject);
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
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    q : TClasseQuery;
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarRIM:integer;

var
  frmLocalizarRIM: TfrmLocalizarRIM;

implementation

uses uDtmMain, ulocalizarproduto, ulocalizarFuncionario;

{$R *.DFM}

function LocalizarRIM:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_Localizar+_RIM) then
  begin
    frmLocalizarRIM := TfrmLocalizarRIM.Create(application);
  end;
  if frmLocalizarRIM.q.q.Active then
  begin
    frmLocalizarRIM.btnfindclick(frmLocalizarRIM.btnfind);
  end;
  frmLocalizarRIM.showmodal;
  if frmLocalizarRIM.ModalResult = mrok then
  begin
    result := frmLocalizarRIM.q.q.fieldbyname(_cdrim).AsInteger;
  end;
end;

function TfrmLocalizarRIM.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where r.cdempresa='+empresa.cdempresa.ToString+' ';
  criterio := result;
  sqlmontarcodigo(cbxcdtprim.EditValue                  , _r, _cdtprim      , result);
  sqlmontarcodigo(cbxcdstrim.EditValue                  , _r, _cdstrim      , result);
  sqlmontarcodigo(cbxcdcntcusto.EditValue               , _r, _cdcntcusto   , result);
  sqlmontarcodigo(cbxcdtpaplicacao.EditValue            , _r, _cdtpaplicacao, result);
  sqlmontarcodigo(edtcdproduto.text                , _i, _cdproduto    , result);
  sqlmontarcodigo(edtcdfuncionario.text            , _r, _cdfuncionario , result);
  sqlmontardata  (edtdtemissaoi.text, edtdtemissaof.text, _r, _dtemissao    , result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizarRIM.makesql:string;
begin
  result := 'SELECT r.CDRIM'+
                  ',r.dtemissao'+
                  ',c.nunivel'+
                  ',c.nmcntcusto'+
                  ',s.nmstrim'+
                  ',t.nmtprim'+
                  ',ta.nmtpaplicacao'+
                  ',F.nmfuncionario '+
            'FROM RIM R '+
            'left join cntcusto c on c.cdcntcusto=r.cdcntcusto and r.cdempresa=c.cdempresa '+
            'left join strim s on s.cdstrim=r.cdstrim '+
            'left join tpaplicacao ta on ta.cdtpaplicacao=r.cdtpaplicacao and r.cdempresa=ta.cdempresa '+
            'left join tprim t on t.cdtprim=r.cdtprim and r.cdempresa=t.cdempresa '+
            'left join funcionario f on f.cdfuncionario=r.cdfuncionario and r.cdempresa=f.cdempresa '+
            'left join itrim i on i.cdrim=r.cdrim and r.cdempresa=i.cdempresa ' +
            sqlwhere +' '+
            'group by r.CDRIM'+
                   ',r.dtemissao'+
                   ',c.nunivel'+
                   ',c.nmcntcusto'+
                   ',s.nmstrim'+
                   ',t.nmtprim'+
                   ',ta.nmtpaplicacao'+
                   ',f.nmfuncionario';
end;

procedure TfrmLocalizarRIM.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarRIM.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarRIM.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarRIM.edtcdcontaKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarRIM.edtcdfuncionarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario);
  colorexit(sender);
end;

procedure TfrmLocalizarRIM.edtcdfuncionarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarRIM.edtcdfuncionarioPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarfuncionario;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdfuncionario.text    := cd.ToString;
  lblnmfuncionario.caption := qregistro.NomedoCodigo(_funcionario, cd);
end;

procedure TfrmLocalizarRIM.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarRIM.edtcdprodutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarRIM.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizarproduto;
  if codigo = 0 then
  begin
    exit;
  end;
  edtcdproduto.text    := codigo.ToString;
  lblnmproduto.caption := qregistro.NomedoCodigo(_produto, codigo);
end;

procedure TfrmLocalizarRIM.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarRIM.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarRIM.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  TRegistro.SetQueryLocalizar(q, dts, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarRIM.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarRIM.AbrirTabelas;
begin
  cbxcdcntcusto.Properties.ListSource := abrir_tabela(_cntcusto);
  cbxcdtprim.Properties.ListSource := abrir_tabela(_tp + _rim);
  cbxcdstrim.Properties.ListSource := abrir_tabela(_st + _rim);
  cbxcdtpaplicacao.Properties.ListSource := abrir_tabela(_tpaplicacao);
end;

procedure TfrmLocalizarRIM.cbxcdtprimEnter(Sender: TObject);
begin
  abrir_tabela(_tprim);
  colorenter(sender);
end;

procedure TfrmLocalizarRIM.cbxcdcntcustoEnter(Sender: TObject);
begin
  abrir_tabela(_cntcusto);
  colorenter(sender);
end;

procedure TfrmLocalizarRIM.cbxcdtpaplicacaoEnter(Sender: TObject);
begin
  abrir_tabela(_tpaplicacao);
  colorenter(sender);
end;

procedure TfrmLocalizarRIM.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarRIM.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarRIM.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarRIM.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarRIM.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarRIM.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarRIM.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarRIM.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarRIM.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarRIM.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

end.

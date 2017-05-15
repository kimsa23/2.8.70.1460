unit uLocalizarConferenciaPedido;

interface

uses
  System.Actions, System.UITypes,
  forms, ActnList, Menus, Mask, Classes, ExtCtrls, dialogs, sysutils, Buttons,
  StdCtrls, ComCtrls, Controls,
  DB,
  uLocalizarPedido, uregistro, uconstantes, uexportarexcel, ustrings,
  classeempresa, classesqlmontar, classeform, classeAplicacao, classequery,
  cxTextEdit, cxDBLookupComboBox, cxContainer, cxEdit, cxButtonEdit, cxCalendar,
  cxButtons, cxStyles, cxGridTableView, cxGridDBTableView, cxGridLevel, cxGrid,
  dxBar, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, dxCore, cxDateUtils,
  cxClasses, cxDropDownEdit, cxGridCustomTableView, cxGridCustomView, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, ClasseLocalizar;

type
  TfrmLocalizarConferenciaPedido = class(TForm)
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    tbvCDCONFERENCIAPEDIDO: TcxGridDBColumn;
    tbvNUPEDIDO: TcxGridDBColumn;
    tbvNMSTCONFERENCIAPEDIDO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMFUNCIONARIO: TcxGridDBColumn;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    label10: TLabel;
    btnfind: TcxButton;
    btncancelar: TcxButton;
    btnok: TcxButton;
    edtdtEmissaof: TcxDateEdit;
    edtdtEmissaoi: TcxDateEdit;
    cbxcdstconferenciapedido: TcxLookupComboBox;
    Bevel1: TBevel;
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
    edtnupedido: TcxButtonEdit;
    lblorcamento: TLabel;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    lblnmfuncionario: TLabel;
    edtcdfuncionario: TcxButtonEdit;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnupedidoExit(Sender: TObject);
    procedure edtnupedidoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    function makesql:string;
    function sqlwhere:string;
    procedure AbrirTabelas;
  public    { Public declarations }
  end;

function LocalizarConferenciaPedido:integer;

var
  frmLocalizarConferenciaPedido: TfrmLocalizarConferenciaPedido;

implementation

uses uDtmMain,
  ulocalizarproduto,
  classeregistro,
  ulocalizarFuncionario;

{$R *.DFM}

function LocalizarConferenciaPedido:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_Localizar+_conferencia+_pedido) then
  begin
    frmLocalizarConferenciaPedido := TfrmLocalizarConferenciaPedido.Create(application);
  end;
  if frmLocalizarConferenciaPedido.q.q.Active then
  begin
    frmLocalizarConferenciaPedido.btnfindclick(frmLocalizarConferenciaPedido.btnfind);
  end;
  frmLocalizarConferenciaPedido.showmodal;
  if frmLocalizarConferenciaPedido.ModalResult = mrok then
  begin
    result := frmLocalizarConferenciaPedido.codigo;
  end;
end;

procedure TfrmLocalizarConferenciaPedido.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.Text := makesql;
  q.q.Open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarConferenciaPedido.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

function TfrmLocalizarConferenciaPedido.makesql: string;
begin
  Result := 'SELECT C.CDCONFERENCIAPEDIDO'+
                  ',s.nmstconferenciapedido'+
                  ',f.nmfuncionario'+
                  ',c.DTEMISSAO'+
                  ',c.nupedido '+
            'FROM CONFERENCIAPEDIDO C '+
            'left join stconferenciapedido s on s.cdstconferenciapedido=c.cdstconferenciapedido and s.cdempresa=c.cdempresa '+
            'left join funcionario f on f.cdfuncionario=c.cdfuncionario and f.cdempresa=c.cdempresa '+
            'left join itconferenciapedido i on i.cdconferenciapedido=c.cdconferenciapedido and i.cdempresa=c.cdempresa '+
            sqlwhere+
            'group by C.CDCONFERENCIAPEDIDO'+
                    ',s.nmstconferenciapedido'+
                    ',f.nmfuncionario'+
                    ',c.DTEMISSAO'+
                    ',c.nupedido';
end;

procedure TfrmLocalizarConferenciaPedido.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdconferenciapedido).AsInteger;
end;

function TfrmLocalizarConferenciaPedido.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where c.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontarcodigo(cbxcdstconferenciapedido.EditValue, _c, _cdstconferenciapedido, result);
  sqlmontarcodigo(edtcdfuncionario.text             , _c, _cdfuncionario        , result);
  sqlmontarcodigo(edtcdproduto.text                 , _i, _cdproduto            , result);
  sqlmontardata  (edtdtEmissaoi.Text, edtdtEmissaof.Text, _c, _dtemissao            , result);
  if edtnupedido.Text <> '' then
  begin
    result := result + ' and c.nupedido='+quotedstr(edtnupedido.Text)+' ';
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarConferenciaPedido.AbrirTabelas;
begin
  cbxcdstconferenciapedido.Properties.ListSource := abrir_tabela(_stconferenciapedido);
end;

procedure TfrmLocalizarConferenciaPedido.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarConferenciaPedido.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarConferenciaPedido.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarConferenciaPedido.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarConferenciaPedido.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarConferenciaPedido.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarConferenciaPedido.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarConferenciaPedido.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarConferenciaPedido.edtcdfuncionarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario);
  colorexit(sender);
end;

procedure TfrmLocalizarConferenciaPedido.edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarConferenciaPedido.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfuncionarioPropertiesButtonClick(edtcdfuncionario, lblnmfuncionario);
end;

procedure TfrmLocalizarConferenciaPedido.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarConferenciaPedido.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarConferenciaPedido.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdprodutoPropertiesButtonClick(edtcdproduto, lblnmproduto);
end;

procedure TfrmLocalizarConferenciaPedido.edtnupedidoExit(Sender: TObject);
var
  nu, cd: string;
begin
  nu := edtnupedido.text;
  if nu = '' then
  begin
    colorexit(sender);
    exit;
  end;
  cd := CodigodoCampo(_pedido, nu, _nupedido);
  if cd = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [nu, maiuscula(_pedido)]), mterror, [mbok], 0);
    edtnupedido.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarConferenciaPedido.edtnupedidoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtnupedidoPropertiesButtonClick(edtnupedido);
end;

procedure TfrmLocalizarConferenciaPedido.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarConferenciaPedido.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarConferenciaPedido.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarConferenciaPedido.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarConferenciaPedido.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarConferenciaPedido.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

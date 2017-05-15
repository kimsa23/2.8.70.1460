unit ulocalizarmovbancario;

interface

uses
  forms, StdCtrls, ComCtrls, Buttons, Controls, Classes, ExtCtrls, sysutils,
  Mask, Menus, ActnList, dialogs, system.UITypes,
  DB,
  uregistro, ulocalizar, ustrings, uconstantes, uexportarexcel,
  urotinas, udatahora, ulocalizarcliente, classesqlmontar, classeretornasql,
  classeempresa, classeform, classeAplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCalc, cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView,
  cxGrid, dxStatusBar, cxCheckBox, cxGroupBox, cxLookAndFeels, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxBar, dxCore, cxDateUtils, cxNavigator, System.Actions,
  ClasseLocalizar;

type
  TfrmLocalizarMovBancario = class(TForm)
    Bevel1: TBevel;
    lblvllancamento: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    lbldtemissao: TLabel;
    lblordpagto: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    edtvllancamentoi: TcxCalcEdit;
    edtdtEmissaoi: TcxDateEdit;
    edtdshistorico: TcxTextEdit;
    edtDtemissaoF: TcxDateEdit;
    edtvllancamentof: TcxCalcEdit;
    edtnumovbancario: TcxTextEdit;
    btnfind: TcxButton;
    btncancelar: TcxButton;
    btnok: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDMOVBANCARIO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvVLLANCAMENTO: TcxGridDBColumn;
    tbvDSHISTORICO: TcxGridDBColumn;
    tbvNMMOVIMENTACAO: TcxGridDBColumn;
    tbvNMCONTA: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    tbvBOCONCILIADO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdmovimentacao: TcxLookupComboBox;
    cbxcdconta: TcxLookupComboBox;
    tbvNUMOVBANCARIO: TcxGridDBColumn;
    Label5: TLabel;
    cbxcdnatureza: TcxComboBox;
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
    lblfornecedor: TLabel;
    tbvCDFORNECEDOR: TcxGridDBColumn;
    tbvNMFORNECEDOR: TcxGridDBColumn;
    tbvNMCONTADESTINO: TcxGridDBColumn;
    dxBarButton3: TdxBarButton;
    actmodograde: TAction;
    edtcdfornecedor: TcxButtonEdit;
    edtcdcliente: TcxButtonEdit;
    lblnmfornecedor: TLabel;
    lblnmcliente: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdcontaEnter(Sender: TObject);
    procedure cbxcdmovimentacaoEnter(Sender: TObject);
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

function LocalizarMovBancario:integer;

var
  frmLocalizarMovBancario: TfrmLocalizarMovBancario;

implementation

uses uDtmMain, ulocalizarfornecedor;

{$R *.DFM}

function LocalizarMovBancario:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_movbancario) then
  begin
    frmlocalizarMovBancario := TfrmlocalizarMovBancario.Create(application);
  end;
  if frmlocalizarMovBancario.q.q.Active then
  begin
    frmlocalizarMovBancario.btnfindclick(frmlocalizarMovBancario.btnfind);
  end;
  frmlocalizarMovBancario.showmodal;
  if frmlocalizarMovBancario.ModalResult = mrok then
  begin
    result := frmlocalizarMovBancario.codigo;
  end;
end;

function TfrmLocalizarMovBancario.makesql:string;
begin
  result := 'SELECT m.CDMOVBANCARIO'+
                 ',m.DTEMISSAO'+
                 ',m.VLLANCAMENTO'+
                 ',m.boconciliado'+
                 ',m.DSHISTORICO'+
                 ',mv.NMMOVIMENTACAO'+
                 ',M.NUMOVBANCARIO'+
                 ',CN.CDCONTA'+
                 ',CN.NMCONTA'+
                 ',CD.NMCONTA NMCONTADESTINO'+
                 ',F.CDFORNECEDOR'+
                 ',F.NMFORNECEDOR'+
                 ',M.CDCLIENTE'+
                 ',C.NMCLIENTE '+
            'FROM MOVBANCARIO m '+
            'LEFT JOIN MOVIMENTACAO mv ON Mv.CDMOVIMENTACAO=M.CDMOVIMENTACAO AND M.CDEMPRESA=MV.CDEMPRESA '+
            'LEFT JOIN CLIENTE C ON C.CDCLIENTE=M.CDCLIENTE AND C.CDEMPRESA=M.CDEMPRESA '+
            'LEFT JOIN FORNECEDOR F ON F.CDFORNECEDOR=M.CDFORNECEDOR AND F.CDEMPRESA=M.CDEMPRESA '+
            'LEFT JOIN CONTA CN ON CN.CDCONTA=M.CDCONTA AND CN.CDEMPRESA=M.CDEMPRESA '+
            'LEFT JOIN CONTA CD ON CD.CDCONTA=M.CDCONTADESTINO AND CD.CDEMPRESA=M.CDEMPRESA '+
            sqlwhere+
            ' order by m.dtemissao desc';
end;

function TfrmLocalizarMovBancario.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where m.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarvalor(edtvllancamentoi.Value, edtvllancamentof.Value, _M, _vllancamento, result);
  sqlmontardata(edtdtemissaoi.text, edtdtemissaof.text, _M, _dtemissao, result);
  sqlmontarnomelike(edtdshistorico.Text, _M, _dshistorico, result);
  sqlmontarcodigo(cbxcdmovimentacao.EditValue, _M, _cdmovimentacao, result);
  sqlmontarcodigo(edtcdcliente.text, _M, _cdcliente, result);
  sqlmontarcodigo(edtcdfornecedor.text, _M, _cdfornecedor, result);
  sqlmontarcodigo(cbxcdconta.EditValue, _M, _cdconta, result);
  if edtnumovbancario.text <> '' then
  begin
    result := result + 'and m.numovbancario=' + quotedstr(edtnumovbancario.text);
  end;
  if cbxcdnatureza.text <> '' then
  begin
    result := result + 'AND m.cdnatureza=' + quotedstr(Copy(cbxcdnatureza.Text, 1, 1));
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarMovBancario.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarMovBancario.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarMovBancario.FormShow(Sender: TObject);
begin
  edtvllancamentoi.SetFocus;
end;

procedure TfrmLocalizarMovBancario.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdmovbancario).asinteger;
end;

procedure TfrmLocalizarMovBancario.AbrirTabelas;
begin
  cbxcdmovimentacao.Properties.ListSource := abrir_tabela(_movimentacao);
  cbxcdconta.Properties.ListSource := abrir_tabela(_conta);
end;

procedure TfrmLocalizarMovBancario.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarMovBancario.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarMovBancario.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarMovBancario.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarMovBancario.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarMovBancario.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarMovBancario.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarMovBancario.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarMovBancario.cbxcdcontaEnter(Sender: TObject);
begin
  abrir_tabela(_conta);
  colorenter(sender);
end;

procedure TfrmLocalizarMovBancario.cbxcdmovimentacaoEnter(Sender: TObject);
begin
  abrir_tabela(_movimentacao);
  colorenter(sender);
end;

procedure TfrmLocalizarMovBancario.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarMovBancario.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarMovBancario.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarMovBancario.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmLocalizarMovBancario.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarMovBancario.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarMovBancario.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarMovBancario.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarMovBancario.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarMovBancario.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarMovBancario.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarMovBancario.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarMovBancario.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

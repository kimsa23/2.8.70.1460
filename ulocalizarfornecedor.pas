unit ulocalizarfornecedor;

interface

uses
  forms, Controls, StdCtrls, Buttons, ExtCtrls, ComCtrls, Classes, Grids,
  sysutils, Mask, ActnList, dialogs, system.UITypes,
  DBClient, DB,
  Menus,
  uconstantes, uexportarexcel, urotinas, ustrings, uregistro,
  classeempresa, classesqlmontar, classeretornasql, classeform, classeAplicacao, classequery,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit, cxDropDownEdit,
  cxContainer, cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeelPainters, cxGroupBox, cxRadioGroup, cxButtons, cxImageComboBox,
  dxStatusBar, cxLookAndFeels, cxPC, cxPCdxBarPopupMenu, dxBar, cxNavigator,
  dxBarBuiltInMenu, System.Actions;

type
  TfrmLocalizarFornecedor = class(TForm)
    dtst: TDataSource;
    dts: TDataSource;
    pgc: TcxPageControl;
    tbssimples: TcxTabSheet;
    tbsnormal: TcxTabSheet;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDFORNECEDOR: TcxGridDBColumn;
    tbvNMFORNECEDOR: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    lblnucnpjcpf: TLabel;
    lblnmmunicipio: TLabel;
    Label1: TLabel;
    Label20: TLabel;
    Label4: TLabel;
    edtNmBairro: TcxTextEdit;
    edtDsEndereco: TcxTextEdit;
    cbxTpPessoa: TcxComboBox;
    edtRzSocial: TcxTextEdit;
    edtNmfornecedor: TcxTextEdit;
    cbxcdmunicipio: TcxLookupComboBox;
    edtnucnpjcpf: TcxMaskEdit;
    cbxcduf: TcxLookupComboBox;
    edtnufone1: TcxMaskEdit;
    btnnovot: TcxButton;
    btnFind: TcxButton;
    btnCancelart: TcxButton;
    btnOkt: TcxButton;
    grdt: TcxGrid;
    tbvt: TcxGridDBTableView;
    tbvtCDFORNECEDOR: TcxGridDBColumn;
    tbvtNMFORNECEDOR: TcxGridDBColumn;
    tbvtRZSOCIAL: TcxGridDBColumn;
    tbvtDSENDERECO: TcxGridDBColumn;
    tbvtDSNUMERO: TcxGridDBColumn;
    tbvtNMBAIRRO: TcxGridDBColumn;
    tbvtNMMUNICIPIO: TcxGridDBColumn;
    tbvtSGUF: TcxGridDBColumn;
    tbvtNUCEP: TcxGridDBColumn;
    tbvtTPPESSOA: TcxGridDBColumn;
    grdtLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    bvl1: TBevel;
    Label2: TLabel;
    edtNome: TcxTextEdit;
    rdgopcoes: TcxRadioGroup;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnnovo: TcxButton;
    rdgnmpesquisa: TcxRadioGroup;
    tbvNUFONE1: TcxGridDBColumn;
    rdgcritico: TcxRadioGroup;
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
    dxBarManager1Bar2: TdxBar;
    dxBarDockControl2: TdxBarDockControl;
    btnfiltron: TdxBarButton;
    btnagruparn: TdxBarButton;
    btnexceln: TdxBarButton;
    dxBarButton5: TdxBarButton;
    actfiltron: TAction;
    actagruparn: TAction;
    actexceln: TAction;
    actLimparcriterio: TAction;
    tbvdocumento: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    actmodograde: TAction;
    actmodogradet: TAction;
    tbvtNUCNPJ: TcxGridDBColumn;
    tbvtNUCPF: TcxGridDBColumn;
    tmrnome: TTimer;
    procedure btnFindClick(Sender: TObject);
    procedure btnOktClick(Sender: TObject);
    procedure btnnovotClick(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rdgopcoesClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure tbvtDblClick(Sender: TObject);
    procedure cbxTpPessoaPropertiesChange(Sender: TObject);
    procedure edtNomePropertiesChange(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure rdgnmpesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actfiltronExecute(Sender: TObject);
    procedure actagruparnExecute(Sender: TObject);
    procedure actexcelnExecute(Sender: TObject);
    procedure actLimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qrytAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure actmodogradetExecute(Sender: TObject);
    procedure tmrnomeTimer(Sender: TObject);
  private   { Private declarations }
    nmpesquisa: string;
    codigo: Largeint;
    tbl : string;
    qry : tclassequery;
    qryt : tclassequery;
    procedure AbrirTabelas;
    function  makesqlsimples:string;
    function  makesqlnormal:string;
    procedure setMultiselect(bomultiselect:boolean);
    procedure SetEmpresa;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarFornecedor(novo:boolean=false):Largeint;
function LocalizarfornecedorMulti(novo:boolean=false):string;

var
  frmLocalizarFornecedor: TfrmLocalizarFornecedor;

implementation

uses uNovoFornecedor,
  uDtmMain,
  ClasseLocalizar,
  classeregistro;

{$R *.DFM}

function Localizarfornecedor(novo:boolean=false):Largeint;
begin
  if not TQForm.ExisteFormulario(_frm+_localizar+_fornecedor) then
  begin
    frmlocalizarfornecedor := Tfrmlocalizarfornecedor.Create(application);
    frmlocalizarfornecedor.tbl := Maiuscula(_fornecedor);
    frmlocalizarfornecedor.btnOk.Enabled := frmlocalizarfornecedor.qry.q.RecordCount > 0;
    frmlocalizarfornecedor.pgc.ActivePage := frmlocalizarfornecedor.tbssimples;
  end;
  frmlocalizarfornecedor.setMultiselect(false);
  frmlocalizarfornecedor.btnnovot.Visible := novo;
  frmlocalizarfornecedor.btnnovo.Visible  := novo;
  if frmlocalizarfornecedor.qry.q.Active  then
  begin
    frmlocalizarfornecedor.qry.q.close;
    frmlocalizarfornecedor.qry.q.open;
  end;
  if frmlocalizarfornecedor.qryt.q.Active then
  begin
    frmlocalizarfornecedor.btnfindclick(frmlocalizarfornecedor.btnfind);
  end;
  frmlocalizarfornecedor.btnOk.Enabled := frmlocalizarfornecedor.qry.q.RecordCount > 0;
  frmlocalizarfornecedor.showmodal;
  TClientDataSet(frmlocalizarfornecedor.cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  if frmlocalizarfornecedor.ModalResult <> mrok then
  begin
    result := 0;
    Exit;
  end;
  result := frmlocalizarfornecedor.codigo;
end;

function LocalizarfornecedorMulti(novo:boolean=false):string;
begin
  if not TQForm.ExisteFormulario(_frm+_localizar+_fornecedor) then
  begin
    frmlocalizarfornecedor := Tfrmlocalizarfornecedor.Create(application);
    frmlocalizarfornecedor.tbl := Maiuscula(_fornecedor);
    frmlocalizarfornecedor.btnOk.Enabled := frmlocalizarfornecedor.qry.q.RecordCount > 0;
    frmlocalizarfornecedor.pgc.ActivePage := frmlocalizarfornecedor.tbssimples;
  end;
  frmlocalizarfornecedor.setMultiselect(true);
  frmlocalizarfornecedor.btnnovot.Visible := novo;
  frmlocalizarfornecedor.btnnovo.Visible  := novo;
  if frmlocalizarfornecedor.qry.q.Active  then
  begin
    frmlocalizarfornecedor.qry.q.close;
    frmlocalizarfornecedor.qry.q.open;
  end;
  if frmlocalizarfornecedor.qryt.q.Active then
  begin
    frmlocalizarfornecedor.btnfindclick(frmlocalizarfornecedor.btnfind);
  end;
  frmlocalizarfornecedor.btnOk.Enabled := frmlocalizarfornecedor.qry.q.RecordCount > 0;
  frmlocalizarfornecedor.showmodal;
  TClientDataSet(frmlocalizarfornecedor.cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  if frmlocalizarfornecedor.ModalResult <> mrok then
  begin
    result := '';
    Exit;
  end;
  if frmlocalizarfornecedor.pgc.ActivePage = frmlocalizarfornecedor.tbssimples then
  begin
    result := TQForm.ObterMultiSelect(_fornecedor, frmlocalizarfornecedor.tbv)
  end
  else
  begin
    result := TQForm.ObterMultiSelect(_fornecedor, frmlocalizarfornecedor.tbvt);
  end;
end;

function TfrmLocalizarFornecedor.makesqlnormal:string;
begin
  result := 'SELECT F.CDFORNECEDOR'+
                  ',F.NMFORNECEDOR'+
                  ',F.RZSOCIAL'+
                  ',F.DSENDERECO'+
                  ',F.DSNUMERO'+
                  ',F.NMBAIRRO'+
                  ',M.NMMUNICIPIO'+
                  ',U.SGUF'+
                  ',F.NUCEP'+
                  ',F.NUCNPJ'+
                  ',F.NUCPF'+
                  ',F.TPPESSOA '+
            'FROM FORNECEDOR f '+
            'LEFT JOIN MUNICIPIO m ON M.CDMUNICIPIO=F.CDMUNICIPIO '+
            'LEFT JOIN UF u ON U.CDUF=F.CDUF '+
             sqlwhere;
end;

procedure TfrmLocalizarFornecedor.btnFindClick(Sender: TObject);
begin
  qryt.q.close;
  qryt.q.sql.text := makesqlnormal;
  qryt.q.open;
  btnOkt.Enabled := qryt.q.RecordCount > 0;
end;

procedure TfrmLocalizarFornecedor.btnOktClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarFornecedor.btnnovotClick(Sender: TObject);
begin
  codigo := frmNovofornecedor.Novo;
  if codigo <> 0 then
  begin
    modalresult := mrok;
  end;
end;

procedure TfrmLocalizarFornecedor.edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if qry.q.RecordCount = 0 then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    qry.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    qry.q.Prior;
    key := 0;
  end;
end;

procedure TfrmLocalizarFornecedor.rdgopcoesClick(Sender: TObject);
begin
  if rdgopcoes.ItemIndex = 0 then
  begin
    qry.q.Filtered := False;
  end;
  edtNomePropertiesChange(sender);
  edtnome.SetFocus;
end;

procedure TfrmLocalizarFornecedor.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure TfrmLocalizarFornecedor.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarFornecedor.tbvtDblClick(Sender: TObject);
begin
  if btnokt.enabled then
  begin
    btnOktClick(sender);
  end;
end;

procedure TfrmLocalizarFornecedor.tmrnomeTimer(Sender: TObject);
begin
  if rdgopcoes.ItemIndex = 0 then
  begin
    if edtnome.text <> '' then
    begin
      qry.q.close;
      qry.q.SQL.Text := format(makesqlsimples, ['where cdempresa='+empresa.cdempresa.tostring+' and '+nmpesquisa+' like ''%'+get_aspas(edtnome.text)+'''']);
      qry.q.Open;
    end;
  end
  else
  begin
    qry.q.close;
    qry.q.SQL.Text := format(makesqlsimples, ['where cdempresa='+empresa.cdempresa.tostring+' and '+nmpesquisa+' like ''%'+get_aspas(edtnome.text)+'%''']);
    qry.q.Open;
  end;
  btnOk.Enabled   := qry.q.RecordCount > 0;
  tmrnome.Enabled := False;
end;

function TfrmLocalizarFornecedor.makesqlsimples: string;
begin
  result := 'SELECT CDFORNECEDOR'+
                  ',NMFORNECEDOR'+
                  ',RZSOCIAL'+
                  ',coalesce(NUCPF,'''')||coalesce(NUCNPJ,'''') NUCNPJCPF'+
                  ',NUFONE1 '+
            'FROM FORNECEDOR '+
            '%s '+
            'ORDER BY NMFORNECEDOR';
end;

procedure TfrmLocalizarFornecedor.qryAfterScroll(DataSet: TDataSet);
begin
  codigo := Dataset.fields[0].AsLargeInt;
end;

procedure TfrmLocalizarFornecedor.qrytAfterScroll(DataSet: TDataSet);
begin
  codigo := Dataset.fields[0].AsLargeInt;
end;

procedure TfrmLocalizarFornecedor.cbxTpPessoaPropertiesChange(Sender: TObject);
begin
  if cbxTpPessoa.ItemIndex = 0 then
  begin
    lblnucnpjcpf.caption := 'CPF';
    lblnucnpjcpf.visible := true;
    edtnucnpjcpf.Visible := true;
    edtnucnpjcpf.Properties.EditMask := MascaraDocumento(lblnucnpjcpf.caption);
  end
  else if cbxtppessoa.ItemIndex = 1 then
  begin
    lblnucnpjcpf.caption := 'CNPJ';
    lblnucnpjcpf.visible := true;
    edtnucnpjcpf.visible := true;
    edtnucnpjcpf.Properties.EditMask := MascaraDocumento(lblnucnpjcpf.caption);
  end
  else
  begin
    lblnucnpjcpf.visible := false;
    edtnucnpjcpf.Visible := false;
  end;
end;

procedure TfrmLocalizarFornecedor.edtNomePropertiesChange(Sender: TObject);
begin
  tmrnome.Enabled := False;
  tmrnome.Enabled := True;
  {
  if rdgopcoes.ItemIndex = 0 then
  begin
    if edtnome.text <> '' then
    begin
      qry.q.close;
      qry.q.SQL.Text := format(makesqlsimples, ['where cdempresa='+empresa.cdempresa.tostring+' and '+nmpesquisa+' like ''%'+get_aspas(edtnome.text)+'''']);
      qry.q.Open;
    end;
  end
  else
  begin
    qry.q.close;
    qry.q.SQL.Text := format(makesqlsimples, ['where cdempresa='+empresa.cdempresa.tostring+' and '+nmpesquisa+' like ''%'+get_aspas(edtnome.text)+'%''']);
    qry.q.Open;
  end;
  btnok.Enabled := qry.q.RecordCount > 0;
  }
end;

procedure TfrmLocalizarFornecedor.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarFornecedor.AbrirTabelas;
begin
  cbxcduf.Properties.ListSource := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
end;

procedure TfrmLocalizarFornecedor.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarFornecedor.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarFornecedor.FormShow(Sender: TObject);
begin
  if pgc.ActivePage = tbssimples then
  begin
    edtNome.SetFocus;
  end;
end;

procedure TfrmLocalizarFornecedor.cbxcdufExit(Sender: TObject);
begin
  dtmMain.Municipio_Filtro_(cbxcduf.Text, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet), _nmuf);
  colorexit(sender);
end;

procedure TfrmLocalizarFornecedor.rdgnmpesquisaClick(Sender: TObject);
begin
  if rdgnmpesquisa.ItemIndex = 0 then
  begin
    nmpesquisa := _nmFornecedor;
    tbvNMFornecedor.Caption := Maiuscula(_Fornecedor);
  end
  else
  begin
    nmpesquisa := _rzsocial;
    tbvNMFornecedor.Caption := 'Razao Social';
  end;
  tbvNMFornecedor.DataBinding.FieldName := nmpesquisa;
  edtNomePropertiesChange(edtNome);
end;

procedure TfrmLocalizarFornecedor.FormCreate(Sender: TObject);
begin
  qry := tclassequery.create;
  qryt := tclassequery.create;
  TRegistro.SetQueryLocalizar(qry, dts, tbv);
  TRegistro.SetQueryLocalizar(qryt, dtst, tbvt);
  qry.q.afterScroll := qryAfterScroll;
  qryt.q.afterScroll := qrytAfterScroll;
  nmpesquisa := _nmFornecedor;
  AbrirTabelas;
  SetEmpresa;
end;

procedure TfrmLocalizarFornecedor.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(qryt);
end;

procedure TfrmLocalizarFornecedor.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarFornecedor.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarFornecedor.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarFornecedor.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarFornecedor.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarFornecedor.actfiltronExecute(Sender: TObject);
begin
  tbvt.FilterRow.Visible := btnfiltron.down;
end;

procedure TfrmLocalizarFornecedor.actagruparnExecute(Sender: TObject);
begin
  tbvt.OptionsView.GroupByBox := btnagruparn.down;
end;

procedure TfrmLocalizarFornecedor.actexcelnExecute(Sender: TObject);
begin
  exportarexcel(grdt);
end;

procedure TfrmLocalizarFornecedor.actLimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarFornecedor.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, qry, tbv);
end;

procedure TfrmLocalizarFornecedor.actmodogradetExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodogradet.Checked, qryt, tbv);
end;

procedure TfrmLocalizarFornecedor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if pgc.ActivePageIndex = 0 then
  begin
    if (not qry.q.Active) or (qry.q.RecordCount <= 0) then
    begin
      Exit;
    end;
    if key = 40 then
    begin
      qry.q.Next;
      key := 0;
    end
    else if key = 38 then
    begin
      qry.q.Prior;
      key := 0;
    end;
  end
  else
  begin
    if (not qryt.q.Active) or (qryt.q.RecordCount <= 0) then
    begin
      Exit;
    end;
    if key = 40 then
    begin
      qryt.q.Next;
      key := 0;
    end
    else if key = 38 then
    begin
      qryt.q.Prior;
      key := 0;
    end;
  end;
end;

procedure TfrmLocalizarFornecedor.setMultiselect(bomultiselect: boolean);
begin
  tbv.OptionsSelection.MultiSelect         := bomultiselect;
  tbvt.OptionsSelection.MultiSelect := bomultiselect;
end;

procedure TfrmLocalizarFornecedor.SetEmpresa;
begin
  rdgcritico.Visible := empresa.fornecedor.IQF.bo;
end;

function TfrmLocalizarFornecedor.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where f.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarnome(edtNmfornecedor.text, _f, _nm + tbl, result);
  sqlmontarnome(edtrzsocial.text, _f, _rzsocial, result);
  sqlmontarnome(edtdsendereco.text, _f, _dsendereco, result);
  sqlmontarnome(edtnmbairro.text, _f, _nmbairro, result);
  sqlmontarfonelike(edtnufone1.Text, _F, _nufone1 + ''#13'' + _nufone + _2 + ''#13'' + _nufone3, result);
  sqlmontartppessoa(cbxTpPessoa.Text, edtnucnpjcpf.Text, _f, result);
  sqlmontarcodigo(cbxcdmunicipio.EditValue, _f, _cdmunicipio, result);
  sqlmontarcodigo(cbxcduf.EditValue, _f, _cduf, result);
  if (rdgcritico.ItemIndex = 0) or (rdgcritico.ItemIndex = 1) then
  begin
    result := result + ' and ';
    if rdgcritico.ItemIndex = 0 then
    begin
      result := result + 'F.bocritico=''S'' ';
    end
    else if rdgcritico.ItemIndex = 1 then
    begin
      result := result + 'f.bocritico=''N'' ';
    end;
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

end.

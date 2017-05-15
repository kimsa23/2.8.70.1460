unit ulocalizarTransportadora;

interface

uses
  forms, Controls, Buttons, ExtCtrls, Classes, Grids, sysutils, Mask, dialogs,
  Menus, ActnList, StdCtrls, system.UITypes,
  DB, DBClient,
  idglobal,
  uconstantes, uexportarexcel, ustrings, uregistro, urotinas,
  classeempresa, classesqlmontar, classeform, classeAplicacao, classequery,
  classeregistro,
  cxLookAndFeelPainters, cxButtons, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxImageComboBox, dxStatusBar,
  cxRadioGroup, cxLookAndFeels, cxPC, cxPCdxBarPopupMenu, dxBar, cxNavigator,
  dxBarBuiltInMenu, System.Actions, ClasseLocalizar;

type
  TfrmLocalizarTransportadora = class(TForm)
    dts: TDataSource;
    dtst: TDataSource;
    pgc: TcxPageControl;
    tbssimples: TcxTabSheet;
    tbsnormal: TcxTabSheet;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    lblnucnpjcpf: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    lblnmmunicipio: TLabel;
    grdt: TcxGrid;
    tbvt: TcxGridDBTableView;
    tbvtCDTRANSPORTADORA: TcxGridDBColumn;
    tbvtNMTRANSPORTADORA: TcxGridDBColumn;
    tbvtRZSOCIAL: TcxGridDBColumn;
    tbvtDSENDERECO: TcxGridDBColumn;
    tbvtDSNUMERO: TcxGridDBColumn;
    tbvtNMBAIRRO: TcxGridDBColumn;
    tbvtNMMUNICIPIO: TcxGridDBColumn;
    tbvtSGUF: TcxGridDBColumn;
    tbvtNUCEP: TcxGridDBColumn;
    tbvtTPPESSOA: TcxGridDBColumn;
    grdtLevel1: TcxGridLevel;
    btnOkt: TcxButton;
    btnCancelart: TcxButton;
    btnFind: TcxButton;
    btnnovot: TcxButton;
    edtNmtransportadora: TcxTextEdit;
    edtRzSocial: TcxTextEdit;
    edtDsEndereco: TcxTextEdit;
    cbxTpPessoa: TcxComboBox;
    edtnucnpjcpf: TcxMaskEdit;
    edtnufone1: TcxMaskEdit;
    edtNmBairro: TcxTextEdit;
    cbxcdmunicipio: TcxLookupComboBox;
    cbxcduf: TcxLookupComboBox;
    Label2: TLabel;
    Bevel2: TBevel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDTRANSPORTADORA: TcxGridDBColumn;
    tbvNMTRANSPORTADORA: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    edtNome: TcxTextEdit;
    rdgopcoes: TcxRadioGroup;
    btnok: TcxButton;
    btncancelar: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tbvNUFONE1: TcxGridDBColumn;
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
    dxBarDockControl2: TdxBarDockControl;
    actfiltron: TAction;
    actagruparn: TAction;
    actexceln: TAction;
    actLimparcriterio: TAction;
    dxBarManager1Bar2: TdxBar;
    btnfiltron: TdxBarButton;
    btnagruparn: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    lblcdsttransportadora: TLabel;
    cbxcdsttransportadora: TcxLookupComboBox;
    tbvtNMSTTRANSPORTADORA: TcxGridDBColumn;
    btnnovo: TcxButton;
    actmodograde: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    actmodogradet: TAction;
    rdgnmpesquisa: TcxRadioGroup;
    procedure btnFindClick(Sender: TObject);
    procedure btnOktClick(Sender: TObject);
    procedure grdtDblClick(Sender: TObject);
    procedure btnnovotClick(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rdgopcoesClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure cbxTpPessoaPropertiesChange(Sender: TObject);
    procedure edtNomePropertiesChange(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvtDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qrytAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure actmodogradetExecute(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure rdgnmpesquisaClick(Sender: TObject);
  private   { Private declarations }
    nmpesquisa: string;
    codigo: LargeInt;
    tbl : string;
    qry : TClasseQuery;
    qryt : TClasseQuery;
    procedure AbrirTabelas;
    function makesqlsimples: string;
    function makesqlNormal: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarTransportadora(novo:boolean=false):LargeInt;

var
  frmLocalizarTransportadora: TfrmLocalizarTransportadora;

implementation

uses unovotransportadora, uDtmMain;

{$R *.DFM}

function Localizartransportadora(novo:boolean=false):LargeInt;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_Transportadora) then
  begin
    frmlocalizarTransportadora := TfrmlocalizarTransportadora.Create(application);
    frmlocalizarTransportadora.tbl := _Transportadora;
    frmlocalizarTransportadora.btnOk.Enabled := frmlocalizarTransportadora.qry.q.RecordCount > 0;
    frmlocalizarTransportadora.pgc.ActivePage := frmlocalizarTransportadora.tbssimples;
  end;
  frmlocalizarTransportadora.btnnovot.Visible := novo;
  frmlocalizarTransportadora.btnnovo.Visible  := novo;
  if frmlocalizarTransportadora.qry.q.Active  then
  begin
    frmlocalizarTransportadora.qry.q.close;
    frmlocalizarTransportadora.qry.q.open;
  end;
  if frmlocalizarTransportadora.qryt.q.Active then
  begin
    frmlocalizarTransportadora.btnfindclick(frmlocalizarTransportadora.btnfind);
  end;
  frmlocalizartransportadora.btnOk.Enabled := frmlocalizartransportadora.qry.q.RecordCount > 0;
  frmlocalizarTransportadora.showmodal;
  if frmlocalizarTransportadora.ModalResult = mrok then
  begin
    result := frmlocalizarTransportadora.codigo
  end;
end;

function TfrmlocalizarTransportadora.makesqlNormal:string;
begin
  result := 'SELECT CDTRANSPORTADORA'+
                 ',NMTRANSPORTADORA'+
                 ',RZSOCIAL'+
                 ',DSENDERECO'+
                 ',NMBAIRRO'+
                 ',NMMUNICIPIO'+
                 ',SGUF'+
                 ',NUCEP'+
                 ',TPPESSOA'+
                 ',sttransportadora.nmsttransportadora'+
                 ',NUCXPOSTAL '+
            'FROM TRANSPORTADORA '+
            'LEFT JOIN MUNICIPIO M ON M.CDMUNICIPIO=TRANSPORTADORA.CDMUNICIPIO '+
            'left join sttransportadora on sttransportadora.cdsttransportadora=transportadora.cdsttransportadora '+
            'LEFT JOIN UF ON UF.CDUF=TRANSPORTADORA.cduf '+
            sqlwhere+
            ' order by cdTRANSPORTADORA';
end;

function TfrmLocalizarTransportadora.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where TRANSPORTADORA.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarnomelike(edtnmtransportadora.Text, _TRANSPORTADORA, _nmTRANSPORTADORA, result);
  sqlmontarnomelike(edtrzsocial.Text, _TRANSPORTADORA, _rzsocial, result);
  sqlmontarnomelike(edtdsendereco.Text, _TRANSPORTADORA, _dsendereco, result);
  sqlmontarfonelike(edtnufone1.Text, _TRANSPORTADORA, _nufone1 + ''#13'' + _nufone + _2 + ''#13'' + _nufone3, result);
  sqlmontarcodigo(cbxcdsttransportadora.EditValue, _TRANSPORTADORA, _cdsttransportadora, result);
  sqlmontarnomelike(edtnmbairro.Text, _TRANSPORTADORA, _nmbairro, result);
  sqlmontarcodigo(cbxcdmunicipio.EditValue, _TRANSPORTADORA, _cdmunicipio, result);
  sqlmontartppessoa(cbxtppessoa.Text, edtnucnpjcpf.Text, _TRANSPORTADORA, result);
  sqlmontarcodigo(cbxcduf.EditValue, _TRANSPORTADORA, _cduf, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarTransportadora.btnFindClick(Sender: TObject);
begin
  qryt.q.close;
  qryt.q.sql.text := makesqlNormal;
  qryt.q.open;
  btnOkt.Enabled := qryt.q.RecordCount > 0;
end;

procedure TfrmLocalizarTransportadora.btnOktClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarTransportadora.btnnovotClick(Sender: TObject);
begin
  codigo := frmNovoTransportadora.Novo;
  if codigo <> 0 then
  begin
    modalresult := mrok;
  end;
end;

procedure TfrmLocalizarTransportadora.edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if qry.q.RecordCount = 0 then
  begin
    exit;
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

procedure TfrmLocalizarTransportadora.rdgopcoesClick(Sender: TObject);
begin
  if rdgopcoes.ItemIndex = 0 then
  begin
    qry.q.Filtered := False;
  end;
  edtNomePropertiesChange(sender);
  edtnome.SetFocus;
end;

procedure TfrmLocalizarTransportadora.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarTransportadora.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure TfrmLocalizarTransportadora.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarTransportadora.tbvtDblClick(Sender: TObject);
begin
  if btnokt.enabled then
  begin
    btnOktClick(sender);
  end;
end;

function TfrmlocalizarTransportadora.makesqlsimples: string;
begin
  result := 'SELECT CDTRANSPORTADORA'+
                  ',NMTRANSPORTADORA'+
                  ',RZSOCIAL'+
                  ',coalesce(NUCPF,'''')||coalesce(NUCNPJ,'''') NUCNPJCPF'+
                  ',NUFONE1 '+
            'FROM TRANSPORTADORA '+
            '%s '+
            'ORDER BY NMTRANSPORTADORA';
end;

procedure TfrmLocalizarTransportadora.qryAfterScroll(DataSet: TDataSet);
begin
  codigo := Dataset.fields[0].AsLargeInt;
end;

procedure TfrmLocalizarTransportadora.qrytAfterScroll(DataSet: TDataSet);
begin
  codigo := Dataset.fields[0].AsLargeInt;
end;

procedure TfrmLocalizarTransportadora.cbxTpPessoaPropertiesChange(Sender: TObject);
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

procedure TfrmLocalizarTransportadora.edtNomePropertiesChange(Sender: TObject);
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
  btnok.Enabled := qry.q.RecordCount > 0;
end;

procedure TfrmLocalizarTransportadora.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarTransportadora.AbrirTabelas;
begin
  cbxcduf.Properties.ListSource := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
  cbxcdsttransportadora.Properties.ListSource := abrir_tabela(_sttransportadora);
end;

procedure TfrmLocalizarTransportadora.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarTransportadora.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarTransportadora.FormShow(Sender: TObject);
begin
  if pgc.ActivePage = tbsnormal then
  begin
    edtNmtransportadora.SetFocus
  end
  else
  begin
    edtnome.SelectAll;
    edtNome.SetFocus;
  end;
end;

procedure TfrmLocalizarTransportadora.cbxcdufExit(Sender: TObject);
begin
  dtmMain.Municipio_Filtro_(cbxcduf.Text, TClientDataSet(cbxcduf.Properties.ListSource.DataSet), _nm+_uf);
  colorexit(sender);
end;

procedure TfrmLocalizarTransportadora.rdgnmpesquisaClick(Sender: TObject);
begin
  if rdgnmpesquisa.ItemIndex = 0 then
  begin
    nmpesquisa := _nmtransportadora;
    tbvNMtransportadora.Caption := Maiuscula(_transportadora);
  end
  else
  begin
    nmpesquisa := _rzsocial;
    tbvNMtransportadora.Caption := 'Razao Social';
  end;
  tbvNMtransportadora.DataBinding.FieldName := nmpesquisa;
  edtNomePropertiesChange(edtNome);
end;

procedure TfrmLocalizarTransportadora.FormCreate(Sender: TObject);
begin
  qry := tclassequery.create;
  qryt := tclassequery.create;
  TRegistro.SetQueryLocalizar(qry, dts, tbv);
  TRegistro.SetQueryLocalizar(qryt, dtst, tbvt);
  qry.q.afterScroll := qryAfterScroll;
  qryt.q.afterScroll := qrytAfterScroll;
  nmpesquisa := _nmtransportadora;
  AbrirTabelas;
end;

procedure TfrmLocalizarTransportadora.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(qryt);
end;

procedure TfrmLocalizarTransportadora.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarTransportadora.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarTransportadora.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarTransportadora.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarTransportadora.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarTransportadora.actfiltronExecute(Sender: TObject);
begin
  tbvt.FilterRow.Visible := btnfiltron.down;
end;

procedure TfrmLocalizarTransportadora.grdtDblClick(Sender: TObject);
begin
  if btnokt.enabled then
  begin
    btnOktClick(sender);
  end;
end;

procedure TfrmLocalizarTransportadora.actagruparnExecute(Sender: TObject);
begin
  tbvt.OptionsView.GroupByBox := btnagruparn.down;
end;

procedure TfrmLocalizarTransportadora.actexcelnExecute(Sender: TObject);
begin
  exportarexcel(grdt);
end;

procedure TfrmLocalizarTransportadora.actLimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarTransportadora.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, qry, tbv);
end;

procedure TfrmLocalizarTransportadora.actmodogradetExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodogradet.Checked, qryt, tbvt);
end;

procedure TfrmLocalizarTransportadora.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

end.

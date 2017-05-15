unit ulocalizarpaciente;

interface

uses
  forms, sysutils, Mask, dialogs, Buttons, Classes, ExtCtrls, Menus, Controls,
  ActnList, ComCtrls, graphics, StdCtrls, system.UITypes,
  DBClient, DB,
  idglobal, Grids,
  udatahora, uconstantes, uexportarexcel, ustrings, uregistro,
  urotinas,
  classesqlmontar, classeretornasql, classeempresa, classeform, classeaplicacao,
  classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxSpinEdit, cxButtonEdit, cxGraphics, cxLookAndFeelPainters, cxButtons,
  cxGroupBox, cxRadioGroup, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxCheckComboBox, dxStatusBar, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxLookAndFeels, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPCdxBarPopupMenu,
  dxBar, cxNavigator, dxCore, cxDateUtils, cxCurrencyEdit, cxCalc,
  dxBarBuiltInMenu, System.Actions, ClasseLocalizar;

type
  TfrmLocalizarPaciente = class(TForm)
    dts: TDataSource;
    dtst: TDataSource;
    pgc1: TcxPageControl;
    tbssimples: TcxTabSheet;
    tbsnormal: TcxTabSheet;
    Label2: TLabel;
    edtnome: TcxTextEdit;
    rdgopcoes: TcxRadioGroup;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    grd: TcxGrid;
    grdDBtvw: TcxGridDBTableView;
    grdDBtvwCDPACIENTE: TcxGridDBColumn;
    grdDBtvwNMPACIENTE: TcxGridDBColumn;
    grdDBtvwNMPROFISSAO: TcxGridDBColumn;
    grdDBtvwNMCLIENTE: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    Bevel2: TBevel;
    lblnmpaciente: TLabel;
    edtnmpaciente: TcxTextEdit;
    rdgnome: TcxRadioGroup;
    btnokt: TcxButton;
    btnCancelart: TcxButton;
    btnfind: TcxButton;
    Bevel1: TBevel;
    pgc: TcxPageControl;
    tbsendereco: TcxTabSheet;
    lbldsendereco: TLabel;
    lblnmbairro: TLabel;
    lblmunicipio: TLabel;
    lblsguf: TLabel;
    lblnufone: TLabel;
    edtnmbairro: TcxTextEdit;
    edtdsendereco: TcxTextEdit;
    edtnufone1: TcxMaskEdit;
    tbsdatas: TcxTabSheet;
    lbldtnascimento: TLabel;
    lbldtcontato: TLabel;
    lbldtcadastro: TLabel;
    lblentrenascimento: TLabel;
    lblentracontato: TLabel;
    lblentrecadastro: TLabel;
    edtdtdemissaoi: TcxDateEdit;
    edtdtadmissaoi: TcxDateEdit;
    edtdtnascimentoi: TcxDateEdit;
    edtdtdemissaof: TcxDateEdit;
    edtdtadmissaof: TcxDateEdit;
    edtdtnascimentof: TcxDateEdit;
    tbsdocumento: TcxTabSheet;
    lblnucnpjcpf: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    edtnuinss: TcxTextEdit;
    edtnuidentidade: TcxTextEdit;
    edtnucpf: TcxMaskEdit;
    edtnucracha: TcxTextEdit;
    edtnucarteiratrabalho: TcxTextEdit;
    edtnutituloeleitor: TcxTextEdit;
    tbsoutras: TcxTabSheet;
    Label7: TLabel;
    lblprofissao: TLabel;
    lblcor: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    lbltpsanguineo: TLabel;
    edtcdpacientei: TcxSpinEdit;
    edtcdpacientef: TcxSpinEdit;
    grdt: TcxGrid;
    grdtDBTableView1: TcxGridDBTableView;
    grdtDBTableView1CDPACIENTE: TcxGridDBColumn;
    grdtDBTableView1NMPACIENTE: TcxGridDBColumn;
    grdtDBTableView1DSENDERECO: TcxGridDBColumn;
    grdtDBTableView1DSNUMERO: TcxGridDBColumn;
    grdtDBTableView1NMBAIRRO: TcxGridDBColumn;
    grdtDBTableView1NMMUNICIPIO: TcxGridDBColumn;
    grdtDBTableView1SGUF: TcxGridDBColumn;
    grdtDBTableView1NUCEP: TcxGridDBColumn;
    grdtDBTableView1NMSTPACIENTE: TcxGridDBColumn;
    grdtLevel1: TcxGridLevel;
    rdg1: TcxRadioGroup;
    cbxcduf: TcxLookupComboBox;
    cbxcdmunicipio: TcxLookupComboBox;
    cbxcdstpaciente: TcxLookupComboBox;
    cbxcdprofissao: TcxLookupComboBox;
    cbxcdcor: TcxLookupComboBox;
    cbxcdtpsanguineo: TcxLookupComboBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grdDBtvwNMSTPACIENTE: TcxGridDBColumn;
    grdDBtvwNUCOR: TcxGridDBColumn;
    grdtDBTableView1NUCOR: TcxGridDBColumn;
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
    dxBarManager1Bar2: TdxBar;
    actfiltron: TAction;
    actagruparn: TAction;
    actexceln: TAction;
    actlimparcriterio: TAction;
    btnfiltron: TdxBarButton;
    btnagruparn: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    edtdsnumero: TcxTextEdit;
    lbldsnumero: TLabel;
    edtdscomplemento: TcxTextEdit;
    lbldscomplemento: TLabel;
    grdtDBTableView1dscomplemento: TcxGridDBColumn;
    grdtDBTableView1DTNASCIMENTO: TcxGridDBColumn;
    grdtDBTableView1DTADMISSAO: TcxGridDBColumn;
    grdtDBTableView1DTDEMISSAO: TcxGridDBColumn;
    grdtDBTableView1NUCPF: TcxGridDBColumn;
    grdtDBTableView1NUTITULOELEITOR: TcxGridDBColumn;
    grdtDBTableView1nucarteiratrabalho: TcxGridDBColumn;
    grdtDBTableView1NUIDENTID: TcxGridDBColumn;
    grdtDBTableView1NUINSS: TcxGridDBColumn;
    grdtDBTableView1NUCRACHA: TcxGridDBColumn;
    edtnucep: TcxTextEdit;
    lblnucep: TLabel;
    edtnucep1: TcxMaskEdit;
    grdtDBTableView1NUFONE1: TcxGridDBColumn;
    grdtDBTableView1NUFONE2: TcxGridDBColumn;
    grdtDBTableView1NUFONE3: TcxGridDBColumn;
    grdtDBTableView1NMPROFISSAO: TcxGridDBColumn;
    grdtDBTableView1NMCOR: TcxGridDBColumn;
    grdtDBTableView1NMTPSANGUINEO: TcxGridDBColumn;
    grdtDBTableView1NMESCOLARIDADE: TcxGridDBColumn;
    cbxcdescolaridade: TcxLookupComboBox;
    lblcdescolaridade: TLabel;
    tbspessoal: TcxTabSheet;
    edtnmmae: TcxTextEdit;
    lblnmmae: TLabel;
    edtnmpai: TcxTextEdit;
    lblnmpai: TLabel;
    grdtDBTableView1NMMAE: TcxGridDBColumn;
    grdtDBTableView1NMPAI: TcxGridDBColumn;
    grdtDBTableView1NMCONJUGE: TcxGridDBColumn;
    edtnmconjuge: TcxTextEdit;
    lblnmconjuge: TLabel;
    edtemail: TcxTextEdit;
    lblemail: TLabel;
    lblcdsexo: TLabel;
    cbxcdsexo: TcxComboBox;
    grdtDBTableView1CDSEXO: TcxGridDBColumn;
    cbxcdestcivil: TcxComboBox;
    lblcdestcivil: TLabel;
    grdtDBTableView1CDESTCIVIL: TcxGridDBColumn;
    btnnovo: TcxButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOktClick(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rdgopcoesClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdpacienteiExit(Sender: TObject);
    procedure edtcdpacientefExit(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure grdtDBTableView1DblClick(Sender: TObject);
    procedure grdDBtvwDblClick(Sender: TObject);
    procedure btnCancelartClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rdg1PropertiesChange(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdstpacienteEnter(Sender: TObject);
    procedure cbxcdtpsanguineoEnter(Sender: TObject);
    procedure cbxcdprofissaoEnter(Sender: TObject);
    procedure cbxcdcorEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure grdDBtvwCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdtDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfiltronExecute(Sender: TObject);
    procedure actagruparnExecute(Sender: TObject);
    procedure actexcelnExecute(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qrytAfterScroll(DataSet: TDataSet);
    procedure btnnovoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private   { Private declarations }
    cdcliente: string;
    codigo: integer;
    tbl, exibe : string;
    q : TClasseQuery;
    qt : TClasseQuery;
    function makesql1:string;
    procedure ativar_botao_novo(codigo:string);
    procedure AbrirTabelas;
    function makesql: string;
    procedure sqlwhere(var Result: string);
  public    { Public declarations }
  end;

function LocalizarPaciente(cdcliente:string=''):integer;

var
  frmLocalizarPaciente: TfrmLocalizarPaciente;

implementation

uses uDtmMain, unovopaciente;

{$R *.DFM}

function LocalizarPaciente(cdcliente:string=''):integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_paciente) then
  begin
    frmLocalizarPaciente      := tfrmLocalizarPaciente.Create(application);
    with frmLocalizarPaciente do
    begin
      tbl   := _paciente;
      exibe := UpperCase(_paciente);
      q.q.sql.text    := makesql1;
      q.q.open;
      btnOk.Enabled  := q.q.RecordCount > 0;
    end;
  end;
  frmlocalizarpaciente.ativar_botao_novo(cdcliente);
  frmLocalizarPaciente.rdg1PropertiesChange(nil);
  frmLocalizarPaciente.q.q.Refresh;
  frmLocalizarPaciente.qryAfterScroll(frmLocalizarPaciente.q.q);
  frmLocalizarPaciente.showmodal;
  TClientDataSet(frmLocalizarPaciente.cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  if frmLocalizarPaciente.ModalResult = mrok then
  begin
    result := frmLocalizarPaciente.codigo
  end;
end;

function TfrmLocalizarPaciente.makesql:string;
begin
  result := 'SELECT f.CDpaciente'+
                  ',f.NMpaciente'+
                  ',f.DSENDERECO'+
                  ',f.DSNUMERO'+
                  ',f.DSCOMPLEMENTO'+
                  ',f.NMBAIRRO'+
                  ',m.NMMUNICIPIO'+
                  ',f.DTADMISSAO'+
                  ',f.DTNASCIMENTO'+
                  ',f.DTDEMISSAO'+
                  ',u.SGUF'+
                  ',f.NUCPF'+
                  ',f.NUTITULOELEITOR'+
                  ',f.nucarteiratrabalho'+
                  ',f.NUIDENTID'+
                  ',f.NUINSS'+
                  ',f.NUCRACHA'+
                  ',S.NUCOR'+
                  ',F.NUFONE1'+
                  ',F.NUFONE2'+
                  ',F.NUFONE3'+
                  ',f.nmmae'+
                  ',f.nmpai'+
                  ',f.nmconjuge'+
                  ',f.email'+
                  ',f.NUCEP'+
                  ',f.cdsexo'+
                  ',f.cdestcivil'+
                  ',PROFISSAO.NMPROFISSAO'+
                  ',COR.NMCOR'+
                  ',ESCOLARIDADE.NMESCOLARIDADE'+
                  ',TPSANGUINEO.NMTPSANGUINEO'+
                  ',s.NMSTpaciente '+
            'FROM paciente f '+
            'LEFT JOIN STpaciente s ON S.CDSTpaciente=F.CDSTpaciente '+
            'LEFT JOIN profissao ON profissao.CDEMPRESA=F.CDEMPRESA AND profissao.CDprofissao=F.CDprofissao '+
            'LEFT JOIN cor ON cor.CDEMPRESA=F.CDEMPRESA AND cor.CDcor=F.CDcor '+
            'LEFT JOIN cliente ON cliente.CDEMPRESA=F.CDEMPRESA AND cliente.CDcliente=F.CDcliente '+
            'LEFT JOIN ESCOLARIDADE ON ESCOLARIDADE.CDEMPRESA=F.CDEMPRESA AND ESCOLARIDADE.CDESCOLARIDADE=F.CDESCOLARIDADE '+
            'left join tpsanguineo on tpsanguineo.cdtpsanguineo=f.cdtpsanguineo '+
            'LEFT JOIN UF u ON U.CDUF=F.CDUF '+
            'LEFT JOIN MUNICIPIO m ON M.CDMUNICIPIO=F.CDMUNICIPIO ';
  sqlwhere(Result);
  result := result + ' order by cd'+tbl;
end;

procedure TfrmLocalizarPaciente.sqlwhere(var Result: string);
var
  criterio : string;
begin
  result := 'where f.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  if cdcliente <> '' then
  begin
    result := result + 'and f.cdcliente=' + cdcliente + ' ';
  end;
  sqlmontarnomelike(edtNmpaciente.Text, _f, _nmpaciente, result, 0, rdgnome.itemindex);
  sqlmontarnomelike(edtdsendereco.Text, _f, _dsendereco, result);
  sqlmontarnomelike(edtnmmae.Text, _f, _nmmae, result);
  sqlmontarnomelike(edtnmpai.Text, _f, _nmpai, result);
  sqlmontarnomelike(edtemail.Text, _f, _email, result);
  sqlmontarnomelike(edtnmconjuge.Text, _f, _nmconjuge, result);
  sqlmontarnomelike(edtdsnumero.Text, _f, _dsnumero, result);
  sqlmontarnomelike(edtdscomplemento.Text, _f, _dscomplemento, result);
  sqlmontarnomelike(edtnmbairro.Text, _f, _nmbairro, result);
  sqlmontarfonelike(edtnufone1.Text, _f, _nufone1 + ''#13'' + _nufone + _2 + ''#13'' + _nufone3, result);
  if edtnucpf.Text <> _cpf_vazio then
  begin
    sqlmontarnomelike(edtnucpf.Text, _f, _nucpf, result);
  end;
  if cbxcdsexo.Text <> '' then
  begin
    sqlmontarnomelike(Copy(cbxcdsexo.Text, 1, 1), _f, _cdsexo, result);
  end;
  if cbxcdestcivil.Text <> '' then
  begin
    sqlmontarnomelike(Copy(cbxcdestcivil.Text, 1, 1), _f, _cdestcivil, result);
  end;
  sqlmontarnomelike(edtnutituloeleitor.Text, _f, _nutituloeleitor, result);
  sqlmontarnomelike(edtnuidentidade.Text, _f, _NUIDENTID, result);
  sqlmontarnomelike(edtnucarteiratrabalho.Text, _f, _nucarteiratrabalho, result);
  sqlmontarnomelike(edtnuinss.Text, _f, _NUINSS, result);
  sqlmontarnomelike(edtnucracha.Text, _f, _NU + _CRACHA, result);
  sqlmontarcodigo(cbxcdprofissao.EditValue, _f, _cdprofissao, result);
  sqlmontarcodigo(cbxcdcor.EditValue, _f, _cdcor, result);
  sqlmontarcodigo(cbxcdtpsanguineo.EditValue, _f, _cdtpsanguineo, result);
  sqlmontarcodigo(cbxcdescolaridade.EditValue, _f, _cdescolaridade, result);
  sqlmontarcodigo(cbxcdmunicipio.EditValue, _f, _cdmunicipio, result);
  sqlmontarcodigo(cbxcduf.EditValue, _f, _cduf, result);
  sqlmontarcodigo(cbxcdstpaciente.EditValue, _f, _cdstpaciente, result);
  sqlmontardata(edtdtadmissaoi.text, edtdtadmissaof.text, _f, _dtadmissao, result);
  sqlmontardata(edtdtdemissaoi.text, edtdtdemissaof.text, _f, _dtdemissao, result);
  sqlmontardata(edtdtnascimentoi.text, edtdtnascimentof.text, _f, _dtnascimento, result);
  if edtcdpacientei.Value > 0 then
  begin
    result := result + 'and f.cdpaciente between ' + edtcdpacientei.Text + ' and ' + edtcdpacientef.Text + ' ';
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarPaciente.btnFindClick(Sender: TObject);
begin
  qt.q.close;
  qt.q.sql.text := makesql;
  qt.q.open;
  btnOkt.Enabled := qt.q.RecordCount > 0;
end;

procedure TfrmLocalizarPaciente.btnOktClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarPaciente.edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if q.q.RecordCount <= 0 then
  begin
    exit;
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

procedure TfrmLocalizarPaciente.rdgopcoesClick(Sender: TObject);
begin
  if rdgopcoes.ItemIndex = 0 then
  begin
    q.q.Close;
    q.q.sql.text := makesql1;
    q.q.Open;
  end;
  edtnomePropertiesChange(sender);
  edtnome.SetFocus;
end;

procedure TfrmLocalizarPaciente.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarPaciente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure TfrmLocalizarPaciente.edtcdpacienteiExit(Sender: TObject);
begin
  if (edtcdpacientei.Value <> 0) and (edtcdpacientef.Value = 0) then
  begin
    edtcdpacientef.Value := edtcdpacientei.Value;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarPaciente.edtcdpacientefExit(Sender: TObject);
begin
  if (edtcdpacientef.Value <> 0) and (edtcdpacientei.Value = 0) then
  begin
    edtcdpacientei.Value := edtcdpacientef.Value;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarPaciente.edtnomePropertiesChange(Sender: TObject);
begin
  if rdgopcoes.ItemIndex = 0 then
  begin
    if edtnome.text <> '' then
    begin
      q.q.Locate(q.q.Fields[1].FieldName, edtnome.text, [loCaseInsensitive, loPartialKey]);
    end;
  end
  else
  begin
    q.q.Close;
    q.q.sql.text := makesql1 +' and NMPACIENTE like ''%'+edtnome.text+'%''';
    q.q.Open;
  end;
end;

procedure TfrmLocalizarPaciente.grdtDBTableView1DblClick(Sender: TObject);
begin
  if btnokt.enabled then
  begin
    btnOktClick(sender);
  end;
end;

function TfrmLocalizarPaciente.makesql1: string;
begin
  result := 'SELECT CDPACIENTE'+
                  ',NMPACIENTE'+
                  ',NMPROFISSAO'+
                  ',DTDEMISSAO'+
                  ',F.cdstPACIENTE'+
                  ',nmstPACIENTE'+
                  ',s.nucor'+
                  ',NMCLIENTE '+
            'FROM PACIENTE f '+
            'LEFT JOIN PROFISSAO fu ON FU.CDPROFISSAO=F.CDPROFISSAO and f.cdempresa=fu.cdempresa '+
            'left join stPACIENTE s on s.cdstPACIENTE=f.cdstPACIENTE AND S.CDEMPRESA=F.CDEMPRESA '+
            'LEFT JOIN CLIENTE l ON L.CDCLIENTE=F.CDCLIENTE and f.cdempresa=l.cdempresa '+
            'WHERE f.cdempresa='+empresa.cdempresa.tostring;
  if cdcliente <> '' then
  begin
    result := result + ' and f.cdcliente='+cdcliente;
  end;
end;

procedure TfrmLocalizarPaciente.qryAfterScroll(DataSet: TDataSet);
begin
  codigo := dataset.fieldbyname(_cdpaciente).AsInteger;
end;

procedure TfrmLocalizarPaciente.qrytAfterScroll(DataSet: TDataSet);
begin
  codigo := dataset.fieldbyname(_cdpaciente).AsInteger;
end;

procedure TfrmLocalizarPaciente.grdDBtvwDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarPaciente.btnCancelartClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarPaciente.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarPaciente.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarPaciente.rdg1PropertiesChange(Sender: TObject);
var
  filtro : string;
begin
  if rdg1.ItemIndex = 0 then
  begin
    filtro := _dtdemissao+'=' +_null+' or cdstpaciente in (1,2)'
  end
  else if rdg1.ItemIndex = 1 then
  begin
    filtro := _dtdemissao+'<>'+_null
  end
  else
  begin
    filtro := '';
  end;
  q.q.Filtered := false;
  q.q.Filter   := filtro;
  q.q.Filtered := True;
end;

procedure TfrmLocalizarPaciente.cbxcdufExit(Sender: TObject);
begin
  dtmMain.Municipio_Filtro_(qregistro.codigodonome(_uf, cbxcduf.Text), TClientDataSet(cbxcduf.Properties.ListSource.DataSet));
  colorexit(sender);
end;

procedure TfrmLocalizarPaciente.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  qt := tclassequery.create;
  dts.dataset := q.q;
  dtst.dataset := qt.q;
  q.q.AfterScroll := qryAfterScroll;
  qt.q.AfterScroll := qrytAfterScroll;
  AbrirTabelas;
end;

procedure TfrmLocalizarPaciente.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
  freeandnil(qt);
end;

procedure TfrmLocalizarPaciente.cbxcdstpacienteEnter(Sender: TObject);
begin
  abrir_tabela(_stpaciente);
  colorenter(sender);
end;

procedure TfrmLocalizarPaciente.cbxcdtpsanguineoEnter(Sender: TObject);
begin
  abrir_tabela(_cntcusto);
  colorenter(sender);
end;

procedure TfrmLocalizarPaciente.cbxcdprofissaoEnter(Sender: TObject);
begin
  abrir_tabela(_funcao);
  colorenter(sender);
end;

procedure TfrmLocalizarPaciente.cbxcdcorEnter(Sender: TObject);
begin
  abrir_tabela(_local+_trabalho);
  colorenter(Sender);
end;

procedure TfrmLocalizarPaciente.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarPaciente.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarPaciente.grdDBtvwCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  s : string;
  Column : TcxGridDBColumn;
begin
  Column := grdDBtvwNUCOR;
  s      := upperCase(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if (s <> _0) and (s<> '') then
  begin
    ACanvas.Font.Color := strtoint(s);
    if s = _2+_5+_0 then
    begin
      ACanvas.Font.Style := [fsStrikeOut, fsBold]
    end;
  end;
end;

procedure TfrmLocalizarPaciente.grdtDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  s : string;
  Column : TcxGridDBColumn;
begin
  Column := grdtDBTableView1NUCOR;
  s      := upperCase(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if (s <> _0) and (s <> '') then
  begin
    ACanvas.Font.Color := strtoint(s);
    if s = _2+_5+_0 then
    begin
      ACanvas.Font.Style := [fsStrikeOut, fsBold]
    end;
  end;
end;

procedure TfrmLocalizarPaciente.actagruparnExecute(Sender: TObject);
begin
  grdtDBTableView1.OptionsView.GroupByBox := btnagruparn.down;
end;

procedure TfrmLocalizarPaciente.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarPaciente.actexcelnExecute(Sender: TObject);
begin
  exportarexcel(grdt);
end;

procedure TfrmLocalizarPaciente.actagruparExecute(Sender: TObject);
begin
  grdDBtvw.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarPaciente.actfiltroExecute(Sender: TObject);
begin
  grdDBtvw.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarPaciente.actfiltronExecute(Sender: TObject);
begin
  grdtDBTableView1.FilterRow.Visible := btnfiltron.down;
end;

procedure TfrmLocalizarPaciente.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarPaciente.FormShow(Sender: TObject);
begin
  if pgc1.ActivePage = tbssimples then
  begin
    edtnome.SetFocus;
  end;
end;

procedure TfrmLocalizarPaciente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if pgc1.ActivePageIndex = 0 then
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
  end
  else
  begin
    if (not qt.q.Active) or (qt.q.RecordCount <= 0) then
    begin
      Exit;
    end;
    if key = 40 then
    begin
      qt.q.Next;
      key := 0;
    end
    else if key = 38 then
    begin
      qt.q.Prior;
      key := 0;
    end;
  end;
end;

procedure TfrmLocalizarPaciente.btnnovoClick(Sender: TObject);
begin
  codigo := frmNovopaciente.Novo(cdcliente);
  if codigo <> 0 then
  begin
    modalresult := mrok;
  end;
end;

procedure TfrmLocalizarPaciente.ativar_botao_novo(codigo: string);
begin
  cdcliente := codigo;
  btnnovo.visible := codigo <> '';
end;

procedure TfrmLocalizarPaciente.AbrirTabelas;
begin
  cbxcduf.Properties.ListSource := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
  cbxcdstpaciente.Properties.ListSource := abrir_tabela(_stpaciente);
  cbxcdprofissao.Properties.ListSource := abrir_tabela(_profissao);
  cbxcdcor.Properties.ListSource := abrir_tabela(_cor);
  cbxcdtpsanguineo.Properties.ListSource := abrir_tabela(_tpsanguineo);
  cbxcdescolaridade.Properties.ListSource := abrir_tabela(_escolaridade);
end;

end.

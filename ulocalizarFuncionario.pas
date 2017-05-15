unit ulocalizarFuncionario;

interface

uses
  forms, sysutils, Mask, dialogs, Buttons, Classes, ExtCtrls, Menus, Controls,
  ActnList, ComCtrls, graphics, StdCtrls, system.UITypes,
  DBClient, DB,
  udatahora, uconstantes, uexportarexcel, ustrings, uregistro,
  urotinas,
  classesqlmontar, classeretornasql, classeempresa, classeform, classeaplicacao, classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxSpinEdit, cxButtonEdit, cxGraphics, cxLookAndFeelPainters, cxButtons,
  cxGroupBox, cxRadioGroup, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxCheckComboBox, dxStatusBar, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxLookAndFeels, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPCdxBarPopupMenu,
  dxBar, cxNavigator, dxCore, cxDateUtils, cxCurrencyEdit, cxCalc,
  dxBarBuiltInMenu, System.Actions, ClasseLocalizar;

type
  TfrmLocalizarFuncionario = class(TForm)
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
    grdDBtvwCDFUNCIONARIO: TcxGridDBColumn;
    grdDBtvwNMFUNCIONARIO: TcxGridDBColumn;
    grdDBtvwNMFUNCAO: TcxGridDBColumn;
    grdDBtvwNMLOCALTRABALHO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    Bevel2: TBevel;
    lblnmfuncionario: TLabel;
    edtnmfuncionario: TcxTextEdit;
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
    lblfuncao: TLabel;
    lbllocaltrabalho: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    lblcntcusto: TLabel;
    edtcdfuncionarioi: TcxSpinEdit;
    edtcdfuncionariof: TcxSpinEdit;
    grdt: TcxGrid;
    grdtDBTableView1: TcxGridDBTableView;
    grdtDBTableView1CDFUNCIONARIO: TcxGridDBColumn;
    grdtDBTableView1NMFUNCIONARIO: TcxGridDBColumn;
    grdtDBTableView1DSENDERECO: TcxGridDBColumn;
    grdtDBTableView1DSNUMERO: TcxGridDBColumn;
    grdtDBTableView1NMBAIRRO: TcxGridDBColumn;
    grdtDBTableView1NMMUNICIPIO: TcxGridDBColumn;
    grdtDBTableView1SGUF: TcxGridDBColumn;
    grdtDBTableView1NUCEP: TcxGridDBColumn;
    grdtDBTableView1NMSTFUNCIONARIO: TcxGridDBColumn;
    grdtLevel1: TcxGridLevel;
    rdg1: TcxRadioGroup;
    cbxcduf: TcxLookupComboBox;
    cbxcdmunicipio: TcxLookupComboBox;
    cbxcdstfuncionario: TcxLookupComboBox;
    cbxcdfuncao: TcxLookupComboBox;
    cbxcdlocaltrabalho: TcxLookupComboBox;
    cbxcdcntcusto: TcxLookupComboBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grdDBtvwNMSTFUNCIONARIO: TcxGridDBColumn;
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
    grdtDBTableView1NMFUNCAO: TcxGridDBColumn;
    grdtDBTableView1NMCNTCUSTO: TcxGridDBColumn;
    grdtDBTableView1NMLOCALTRABALHO: TcxGridDBColumn;
    grdtDBTableView1NMESCOLARIDADE: TcxGridDBColumn;
    cbxcdescolaridade: TcxLookupComboBox;
    lblcdescolaridade: TLabel;
    cbxcdturno: TcxLookupComboBox;
    lblcdturno: TLabel;
    grdtDBTableView1NMTURNO: TcxGridDBColumn;
    cbxcdsetor: TcxLookupComboBox;
    lblcdsetor: TLabel;
    grdtDBTableView1NMSETOR: TcxGridDBColumn;
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
    tbsvalores: TcxTabSheet;
    edtvlsalariohoraf: TcxCalcEdit;
    Label24: TLabel;
    edtvlsalariohorai: TcxCalcEdit;
    Label21: TLabel;
    Label20: TLabel;
    edtvlsalarioi: TcxCalcEdit;
    Label23: TLabel;
    edtvlsalariof: TcxCalcEdit;
    edtprcomissaof: TcxCalcEdit;
    Label22: TLabel;
    edtprcomissaoi: TcxCalcEdit;
    Label19: TLabel;
    grdtDBTableView1VLSALARIO: TcxGridDBColumn;
    grdtDBTableView1VLSALARIOHORA: TcxGridDBColumn;
    grdtDBTableView1PRCOMISSAO: TcxGridDBColumn;
    actopcoes: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actfuncao: TAction;
    actdependente: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    actconvenio: TAction;
    dxBarButton6: TdxBarButton;
    actferias: TAction;
    dxBarButton7: TdxBarButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOktClick(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rdgopcoesClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdfuncionarioiExit(Sender: TObject);
    procedure edtcdfuncionariofExit(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure grdtDBTableView1DblClick(Sender: TObject);
    procedure grdDBtvwDblClick(Sender: TObject);
    procedure btnCancelartClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rdg1PropertiesChange(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdstfuncionarioEnter(Sender: TObject);
    procedure cbxcdcntcustoEnter(Sender: TObject);
    procedure cbxcdfuncaoEnter(Sender: TObject);
    procedure cbxcdlocaltrabalhoEnter(Sender: TObject);
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
    procedure actfuncaoExecute(Sender: TObject);
    procedure actdependenteExecute(Sender: TObject);
    procedure actconvenioExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actferiasExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private   { Private declarations }
    codigo:integer;
    tbl, exibe : string;
    qry : TClasseQuery;
    qryt : TClasseQuery;
    function makesql1:string;
    function makesql: string;
    procedure sqlwhere(var Result: string);
  public    { Public declarations }
  end;

function Localizarfuncionario:integer;
function Filtrarfuncionario  :string;

var
  frmLocalizarFuncionario: TfrmLocalizarFuncionario;

implementation

uses uDtmMain, udlgtabela;

{$R *.DFM}

function Localizarfuncionario:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_Funcionario) then
  begin
    frmlocalizarFuncionario      := TfrmlocalizarFuncionario.Create(application);
    with frmlocalizarFuncionario do
    begin
      tbl   := _funcionario;
      exibe := 'Funcionário';
      qry.q.Connection  := aplicacao.confire;
      qryt.q.Connection := aplicacao.confire;
      qry.q.sql.text    := makesql1;
      qry.q.open;
      btnOk.Enabled  := qry.q.RecordCount > 0;
    end;
  end;
  frmlocalizarFuncionario.rdg1PropertiesChange(nil);
  frmlocalizarFuncionario.qry.q.Refresh;
  frmlocalizarFuncionario.qryAfterScroll(frmlocalizarFuncionario.qry.q);
  frmlocalizarFuncionario.showmodal;
  TClientDataSet(frmlocalizarFuncionario.cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  if frmlocalizarFuncionario.ModalResult = mrok then
  begin
    result := frmlocalizarFuncionario.codigo
  end;
end;

function Filtrarfuncionario:string;
begin
  if not TQForm.ExisteFormulario(_frm+_localizar+_funcionario) then
  begin
    frmlocalizarfuncionario := Tfrmlocalizarfuncionario.Create(application);
    with frmlocalizarfuncionario do
    begin
      tbl   := _Funcionario;
      exibe := 'Funcionário';
      qry.q.Connection  := aplicacao.confire;
      qryt.q.Connection := aplicacao.confire;
      qry.q.sql.text    := makesql1;
      qry.q.open;
      btnOk.Enabled := qry.q.RecordCount > 0;
    end;
  end;
  if frmlocalizarfuncionario.qry.q.Active then
  begin
    frmlocalizarfuncionario.qry.q.Refresh;
  end;
  frmlocalizarfuncionario.showmodal;
  TClientDataSet(frmlocalizarFuncionario.cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  if frmlocalizarfuncionario.ModalResult = mrok then
  begin
    result := frmlocalizarfuncionario.qryt.q.sql.text
  end
  else
  begin
    result := '';
  end;
end;

function TfrmLocalizarFuncionario.makesql:string;
begin
  result := 'SELECT f.CDFUNCIONARIO'+
                  ',f.NMFUNCIONARIO'+
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
                  ',F.VLSALARIO'+
                  ',F.VLSALARIOHORA'+
                  ',F.PRCOMISSAO'+
                  ',f.cdestcivil'+
                  ',FUNCAO.NMFUNCAO'+
                  ',LOCALTRABALHO.NMLOCALTRABALHO'+
                  ',CNTCUSTO.NMCNTCUSTO'+
                  ',ESCOLARIDADE.NMESCOLARIDADE'+
                  ',turno.nmturno'+
                  ',setor.nmsetor'+
                  ',s.NMSTFUNCIONARIO '+
            'FROM FUNCIONARIO f '+
            'LEFT JOIN STFUNCIONARIO s ON S.CDSTFUNCIONARIO=F.CDSTFUNCIONARIO '+
            'LEFT JOIN FUNCAO ON FUNCAO.CDEMPRESA=F.CDEMPRESA AND FUNCAO.CDFUNCAO=F.CDFUNCAO '+
            'LEFT JOIN CNTCUSTO ON CNTCUSTO.CDEMPRESA=F.CDEMPRESA AND CNTCUSTO.CDCNTCUSTO=F.CDCNTCUSTO '+
            'LEFT JOIN LOCALTRABALHO ON LOCALTRABALHO.CDEMPRESA=F.CDEMPRESA AND LOCALTRABALHO.CDLOCALTRABALHO=F.CDLOCALTRABALHO '+
            'LEFT JOIN ESCOLARIDADE ON ESCOLARIDADE.CDEMPRESA=F.CDEMPRESA AND ESCOLARIDADE.CDESCOLARIDADE=F.CDESCOLARIDADE '+
            'left join turno on turno.cdempresa=f.cdempresa and turno.cdturno=f.cdturno '+
            'left join setor on setor.cdempresa=f.cdempresa and setor.cdsetor=f.cdsetor '+
            'LEFT JOIN UF u ON U.CDUF=F.CDUF '+
            'LEFT JOIN MUNICIPIO m ON M.CDMUNICIPIO=F.CDMUNICIPIO ';
  sqlwhere(Result);
  result := result + ' order by cd'+tbl;
end;

procedure TfrmLocalizarFuncionario.sqlwhere(var Result: string);
var
  criterio : string;
begin
  result := 'where f.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarnomelike(edtNmfuncionario.Text, _f, _nmfuncionario, result, 0, rdgnome.itemindex);
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
  sqlmontarcodigo(cbxcdfuncao.EditValue, _f, _cdfuncao, result);
  sqlmontarcodigo(cbxcdsetor.EditValue, _f, _cd + _setor, result);
  sqlmontarcodigo(cbxcdturno.EditValue, _f, _cd + _turno, result);
  sqlmontarcodigo(cbxcdescolaridade.EditValue, _f, _cd + _escolaridade, result);
  sqlmontarcodigo(cbxcdmunicipio.EditValue, _f, _cdmunicipio, result);
  sqlmontarcodigo(cbxcduf.EditValue, _f, _cduf, result);
  sqlmontarcodigo(cbxcdstfuncionario.EditValue, _f, _cdstfuncionario, result);
  sqlmontarcodigo(cbxcdlocaltrabalho.EditValue, _f, _cd + _local + _trabalho, result);
  sqlmontarcodigo(cbxcdcntcusto.EditValue, _f, _cdcntcusto, result);
  sqlmontarvalor(edtvlsalarioi.Value, edtvlsalariof.Value, _F, _vl + _salario, result);
  sqlmontarvalor(edtvlsalariohorai.Value, edtvlsalariohoraf.Value, _f, _vl + _salario + _hora, result);
  sqlmontarvalor(edtprcomissaoi.Value, edtprcomissaof.Value, _f, _prcomissao, result);
  sqlmontardata(edtdtadmissaoi.text, edtdtadmissaof.text, _f, _dtadmissao, result);
  sqlmontardata(edtdtdemissaoi.text, edtdtdemissaof.text, _f, _dtdemissao, result);
  sqlmontardata(edtdtnascimentoi.text, edtdtnascimentof.text, _f, _dtnascimento, result);
  if edtcdfuncionarioi.Value > 0 then
  begin
    result := result + 'and f.cdfuncionario between ' + edtcdfuncionarioi.Text + ' and ' + edtcdfuncionariof.Text + ' ';
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarFuncionario.btnFindClick(Sender: TObject);
begin
  qryt.q.close;
  qryt.q.sql.text := makesql;
  qryt.q.open;
  btnOkt.Enabled := qryt.q.RecordCount > 0;
end;

procedure TfrmLocalizarFuncionario.btnOktClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarFuncionario.edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if qry.q.RecordCount <= 0 then
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

procedure TfrmLocalizarFuncionario.rdgopcoesClick(Sender: TObject);
begin
  if rdgopcoes.ItemIndex = 0 then
  begin
    qry.q.Close;
    qry.q.sql.text := makesql1;
    qry.q.Open;
  end;
  edtnomePropertiesChange(sender);
  edtnome.SetFocus;
end;

procedure TfrmLocalizarFuncionario.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarFuncionario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure TfrmLocalizarFuncionario.edtcdfuncionarioiExit(Sender: TObject);
begin
  if (edtcdfuncionarioi.Value <> 0) and (edtcdfuncionariof.Value = 0) then
  begin
    edtcdfuncionariof.Value := edtcdfuncionarioi.Value;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarFuncionario.edtcdfuncionariofExit(Sender: TObject);
begin
  if (edtcdfuncionariof.Value <> 0) and (edtcdfuncionarioi.Value = 0) then
  begin
    edtcdfuncionarioi.Value := edtcdfuncionariof.Value;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarFuncionario.edtnomePropertiesChange(Sender: TObject);
begin
  if rdgopcoes.ItemIndex = 0 then
  begin
    if edtnome.text <> '' then
    begin
      qry.q.Locate(qry.q.Fields[1].FieldName, edtnome.text, [loCaseInsensitive, loPartialKey]);
    end;
  end
  else
  begin
    qry.q.Close;
    qry.q.sql.text := makesql1 +' and NMFUNCIONARIO like ''%'+edtnome.text+'%''';
    qry.q.Open;
  end;
end;

procedure TfrmLocalizarFuncionario.grdtDBTableView1DblClick(Sender: TObject);
begin
  if btnokt.enabled then
  begin
    btnOktClick(sender);
  end;
end;

function TfrmLocalizarFuncionario.makesql1: string;
begin
  result := 'SELECT CDFUNCIONARIO'+
                  ',NMFUNCIONARIO'+
                  ',NMFUNCAO'+
                  ',DTDEMISSAO'+
                  ',F.cdstfuncionario'+
                  ',nmstfuncionario'+
                  ',s.nucor'+
                  ',NMLOCALTRABALHO '+
            'FROM FUNCIONARIO f '+
            'LEFT JOIN FUNCAO fu ON FU.CDFUNCAO=F.CDFUNCAO and f.cdempresa=fu.cdempresa '+
            'left join stfuncionario s on s.cdstfuncionario=f.cdstfuncionario '+
            'LEFT JOIN LOCALTRABALHO l ON L.CDLOCALTRABALHO=F.CDLOCALTRABALHO and f.cdempresa=l.cdempresa '+
            'WHERE f.cdempresa='+empresa.cdempresa.tostring;
end;

procedure TfrmLocalizarFuncionario.qryAfterScroll(DataSet: TDataSet);
begin
  codigo := dataset.fieldbyname(_cdfuncionario).AsInteger;
end;

procedure TfrmLocalizarFuncionario.qrytAfterScroll(DataSet: TDataSet);
begin
  codigo := Dataset.fields[0].AsInteger;
end;

procedure TfrmLocalizarFuncionario.grdDBtvwDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarFuncionario.btnCancelartClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarFuncionario.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarFuncionario.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarFuncionario.rdg1PropertiesChange(Sender: TObject);
var
  filtro : string;
begin
       if rdg1.ItemIndex = 0 then filtro := _dtdemissao+'=' +_null+' or cdstfuncionario in (1,2)'
  else if rdg1.ItemIndex = 1 then filtro := _dtdemissao+'<>'+_null
  else                            filtro := '';
  qry.q.Filtered := false;
  qry.q.Filter   := filtro;
  qry.q.Filtered := True;
end;

procedure TfrmLocalizarFuncionario.cbxcdufExit(Sender: TObject);
begin
  dtmMain.Municipio_Filtro_(qregistro.CodigodoNome(_uf, cbxcduf.Text), TClientDataSet(cbxcduf.Properties.ListSource.DataSet));
  colorexit(sender);
end;

procedure TfrmLocalizarFuncionario.FormCreate(Sender: TObject);
begin
  qry := tclassequery.create;
  qryt := tclassequery.create;
  dts.dataset := qry.q;
  dtst.dataset := qryt.q;
  qry.q.afterScroll := qryAfterScroll;
  qryt.q.afterScroll := qrytAfterScroll;
  cbxcduf.Properties.ListSource            := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource     := abrir_tabela(_municipio);
  cbxcdcntcusto.Properties.ListSource      := abrir_tabela(_cntcusto);
  cbxcdlocaltrabalho.Properties.ListSource := abrir_tabela(_local+_trabalho);
  cbxcdfuncao.Properties.ListSource        := abrir_tabela(_funcao);
  cbxcdsetor.Properties.ListSource         := abrir_tabela(_setor);
  cbxcdturno.Properties.ListSource         := abrir_tabela(_turno);
  cbxcdescolaridade.Properties.ListSource  := abrir_tabela(_escolaridade);
  cbxcdstfuncionario.Properties.ListSource := abrir_tabela(_stfuncionario);
end;

procedure TfrmLocalizarFuncionario.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(qryt);
end;

procedure TfrmLocalizarFuncionario.cbxcdstfuncionarioEnter(Sender: TObject);
begin
  abrir_tabela(_stfuncionario);
  colorenter(sender);
end;

procedure TfrmLocalizarFuncionario.cbxcdcntcustoEnter(Sender: TObject);
begin
  abrir_tabela(_cntcusto);
  colorenter(sender);
end;

procedure TfrmLocalizarFuncionario.cbxcdfuncaoEnter(Sender: TObject);
begin
  abrir_tabela(_funcao);
  colorenter(sender);
end;

procedure TfrmLocalizarFuncionario.cbxcdlocaltrabalhoEnter(Sender: TObject);
begin
  abrir_tabela(_local+_trabalho);
  colorenter(Sender);
end;

procedure TfrmLocalizarFuncionario.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarFuncionario.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarFuncionario.grdDBtvwCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TfrmLocalizarFuncionario.grdtDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TfrmLocalizarFuncionario.actagruparnExecute(Sender: TObject);
begin
  grdtDBTableView1.OptionsView.GroupByBox := btnagruparn.down;
end;

procedure TfrmLocalizarFuncionario.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarFuncionario.actexcelnExecute(Sender: TObject);
begin
  exportarexcel(grdt);
end;

procedure TfrmLocalizarFuncionario.actagruparExecute(Sender: TObject);
begin
  grdDBtvw.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarFuncionario.actfiltroExecute(Sender: TObject);
begin
  grdDBtvw.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarFuncionario.actfiltronExecute(Sender: TObject);
begin
  grdtDBTableView1.FilterRow.Visible := btnfiltron.down;
end;

procedure TfrmLocalizarFuncionario.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarFuncionario.FormShow(Sender: TObject);
begin
  if pgc1.ActivePage = tbssimples then
  begin
    edtnome.SetFocus;
  end;
end;

procedure TfrmLocalizarFuncionario.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if pgc1.ActivePageIndex = 0 then
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

procedure TfrmLocalizarFuncionario.actfuncaoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itfuncionariofuncao))), qry.q.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmLocalizarFuncionario.actdependenteExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itfuncionariodependente))), qry.q.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmLocalizarFuncionario.actconvenioExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_funcionariotpconvenio))), qry.q.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmLocalizarFuncionario.actopcoesExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarFuncionario.actferiasExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_funcionarioferias))), qry.q.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

end.

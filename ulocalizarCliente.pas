unit ulocalizarCliente;

interface

uses
  forms, sysutils, Mask, dialogs, Classes, Buttons, ExtCtrls, Controls,
  Menus, graphics, ComCtrls, Spin, StdCtrls,
  system.UITypes,
  DB, dbclient,
  urotinas, uconstantes, udatahora, uexportarexcel, ustrings,
  uregistro,
  classesqlmontar, classeretornasql, classeempresa, classeform, classeAplicacao, classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLookAndFeelPainters, cxButtons, cxGraphics, cxPC, cxGroupBox,
  cxImageComboBox, dxStatusBar, cxRadioGroup, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxButtonEdit, cxSpinEdit,
  cxLookAndFeels, cxPCdxBarPopupMenu, ActnList, dxBar, cxNavigator, dxCore,
  cxDateUtils, dxBarBuiltInMenu, System.Actions;

type
  TfrmLocalizarcliente = class(TForm)
    dts: TDataSource;
    dtst: TDataSource;
    pgc1: TcxPageControl;
    tbssimples: TcxTabSheet;
    tbsnormal: TcxTabSheet;
    Bevel3: TBevel;
    Label2: TLabel;
    rdgopcoes: TcxRadioGroup;
    edtNome: TcxTextEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    btnnovo: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDCLIENTE: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvNMSTCLIENTE: TcxGridDBColumn;
    tbvNMTPCLIENTE: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    Bevel1: TBevel;
    lblnmcliente: TLabel;
    lblrzsocial: TLabel;
    rdgrzsocial: TcxRadioGroup;
    rdgnome: TcxRadioGroup;
    btnOkt: TcxButton;
    btnCancelart: TcxButton;
    btnFind: TcxButton;
    btnnovot: TcxButton;
    pgc: TcxPageControl;
    tbsendereco: TcxTabSheet;
    lbltppessoa: TLabel;
    lblnucnpjcpf: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    lblnmmunicipio: TLabel;
    Label20: TLabel;
    cbxTpPessoa: TcxComboBox;
    edtnucnpjcpf: TcxMaskEdit;
    edtDsEndereco: TcxTextEdit;
    edtNmBairro: TcxTextEdit;
    edtnufone1: TcxMaskEdit;
    cbxcdmunicipio: TcxLookupComboBox;
    cbxcduf: TcxLookupComboBox;
    tbsdatas: TcxTabSheet;
    lbldtnascimento: TLabel;
    lblentrenascimento: TLabel;
    lblentracontato: TLabel;
    lbldtcontato: TLabel;
    lbldtcadastro: TLabel;
    lblentrecadastro: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    edtdtnascimentoi: TcxDateEdit;
    edtdtnascimentof: TcxDateEdit;
    edtdtcontatof: TcxDateEdit;
    edtdtcontatoi: TcxDateEdit;
    edtdtcadastroi: TcxDateEdit;
    edtdtcadastrof: TcxDateEdit;
    edtdtcadastrosociof: TcxDateEdit;
    edtdtcadastrosocioi: TcxDateEdit;
    tbsoutras: TcxTabSheet;
    Label7: TLabel;
    lblrepresentante: TLabel;
    lblrmatividade: TLabel;
    lbltpcliente: TLabel;
    lbltpclientemensalidade: TLabel;
    grdt: TcxGrid;
    tbvt: TcxGridDBTableView;
    tbvtCDCLIENTE: TcxGridDBColumn;
    tbvtNMCLIENTE: TcxGridDBColumn;
    tbvtRZSOCIAL: TcxGridDBColumn;
    tbvtDSENDERECO: TcxGridDBColumn;
    tbvtDSNUMERO: TcxGridDBColumn;
    tbvtNMBAIRRO: TcxGridDBColumn;
    tbvtNMMUNICIPIO: TcxGridDBColumn;
    tbvtSGUF: TcxGridDBColumn;
    tbvtNUCEP: TcxGridDBColumn;
    tbvtTPPESSOA: TcxGridDBColumn;
    tbvtNMSTCLIENTE: TcxGridDBColumn;
    grdtLevel1: TcxGridLevel;
    tbvtNUFONE1: TcxGridDBColumn;
    lblnuinscest: TLabel;
    edtnuinscest: TcxTextEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    rdgnmpesquisa: TcxRadioGroup;
    tbvNUFONE1: TcxGridDBColumn;
    cbxcdstcliente: TcxLookupComboBox;
    cbxcdrepresentante: TcxLookupComboBox;
    cbxcdrmatividade: TcxLookupComboBox;
    cbxcdtpcliente: TcxLookupComboBox;
    cbxcdtpclientemensalidade: TcxLookupComboBox;
    tbvtNMRMATIVIDADE: TcxGridDBColumn;
    tbsfaixa: TcxTabSheet;
    Label1: TLabel;
    edtcdclientei: TcxSpinEdit;
    Label3: TLabel;
    edtcdclientef: TcxSpinEdit;
    lblcontrato: TLabel;
    cbxcdcontrato: TcxLookupComboBox;
    edtNmcliente: TcxTextEdit;
    edtrzsocial: TcxTextEdit;
    tbvNUCNPJ: TcxGridDBColumn;
    tmrnome: TTimer;
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
    actfiltron: TAction;
    actagruparn: TAction;
    actexceln: TAction;
    actlimparcriterio: TAction;
    btnfiltron: TdxBarButton;
    btnagruparn: TdxBarButton;
    btnexceln: TdxBarButton;
    dxBarButton5: TdxBarButton;
    tbvNUCOR: TcxGridDBColumn;
    lbl1: TLabel;
    edtdtconsultaspci: TcxDateEdit;
    lbl2: TLabel;
    edtdtconsultaspcf: TcxDateEdit;
    tbvtNUCOR: TcxGridDBColumn;
    actestatistica: TAction;
    dxBarButton1: TdxBarButton;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    actmodogradet: TAction;
    dxBarButton4: TdxBarButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOktClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnnovotClick(Sender: TObject);
    procedure cbxTpPessoaChange(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure btnCancelartClick(Sender: TObject);
    procedure cbxTpPessoaPropertiesChange(Sender: TObject);
    procedure edtcdclienteiExit(Sender: TObject);
    procedure edtcdclientefExit(Sender: TObject);
    procedure edtNomePropertiesChange(Sender: TObject);
    procedure rdgopcoesClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvtDblClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rdgnmpesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdstclienteEnter(Sender: TObject);
    procedure cbxcdrepresentanteEnter(Sender: TObject);
    procedure cbxcdrmatividadeEnter(Sender: TObject);
    procedure cbxcdtpclienteEnter(Sender: TObject);
    procedure cbxcdtpclientemensalidadeEnter(Sender: TObject);
    procedure cbxcdcontratoEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure tmrnomeTimer(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actfiltronExecute(Sender: TObject);
    procedure actagruparnExecute(Sender: TObject);
    procedure actexcelnExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvtCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actestatisticaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure actmodogradetExecute(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
  private   { Private declarations }
    qry : TClasseQuery;
    qryt : TClasseQuery;
    nmpesquisa, tbl : string;
    codigo : LargeInt;
    procedure setEmpresa;
    procedure ConfiguraTpPessoa(tipo:string='');
    procedure getAbrirTabela;
    function  makesqlsimples:string;
    function  makesqlnormal:string;
    procedure setMultiselect(bomultiselect:boolean);
    function sqlwhere: string;
  public    { Public declarations }
  end;

function Localizarcliente(novo:boolean=false):LargeInt;
function LocalizarclienteMulti(novo:boolean=false):String;

var
  frmLocalizarcliente: TfrmLocalizarcliente;

implementation

uses uNovoCliente,
  uDtmMain,
  udlgclientefinanceiro,
  ClasseLocalizar,
  classeregistro;

{$R *.DFM}

function Localizarcliente(novo:boolean=false):LargeInt;
begin
  if not TQForm.ExisteFormulario(_frm+_Localizar+_Cliente) then
  begin
    frmlocalizarCliente := TfrmlocalizarCliente.Create(application);
    frmlocalizarCliente.tbl := Maiuscula(_Cliente);
    frmlocalizarCliente.btnOk.Enabled   := frmlocalizarCliente.qry.q.RecordCount > 0;
    frmlocalizarCliente.pgc1.ActivePage := frmlocalizarCliente.tbssimples;
  end;
  frmlocalizarcliente.setMultiselect(false);
  frmlocalizarCliente.btnnovot.Visible := novo;
  frmlocalizarCliente.btnnovo.Visible  := novo;
  //
  if frmlocalizarCliente.qry.q.Active  then
  begin
    frmlocalizarCliente.qry.q.close;
    frmlocalizarCliente.qry.q.open;
  end;
  if frmlocalizarCliente.qryt.q.Active then
  begin
    frmlocalizarCliente.btnfindclick(frmlocalizarCliente.btnfind);
  end;
  frmlocalizarcliente.btnOk.Enabled := frmlocalizarcliente.qry.q.RecordCount > 0;
  frmlocalizarcliente.codigo := 0;
  frmlocalizarCliente.showmodal;
  if frmlocalizarcliente.ModalResult <> mrok then
  begin
    result := 0;
    Exit;
  end;
  if frmlocalizarcliente.codigo <> 0 then
  begin
    result := frmlocalizarcliente.codigo;
    Exit;
  end;
  if frmlocalizarcliente.pgc1.ActivePage = frmlocalizarcliente.tbssimples then
  begin
    result := frmlocalizarcliente.qry.q.fieldbyname(_cdcliente).AsLargeInt;
  end
  else
  begin
    result := frmlocalizarcliente.qryt.q.fieldbyname(_cdcliente).AsLargeInt;
  end;
end;

function LocalizarclienteMulti(novo:boolean=false):String;
begin
  if not TQForm.ExisteFormulario(_frm+_Localizar+_Cliente) then
  begin
    frmlocalizarCliente := TfrmlocalizarCliente.Create(application);
    frmlocalizarCliente.tbl := Maiuscula(_Cliente);
    frmlocalizarCliente.btnOk.Enabled   := frmlocalizarCliente.qry.q.RecordCount > 0;
    frmlocalizarCliente.pgc1.ActivePage := frmlocalizarCliente.tbssimples;
  end;
  frmlocalizarcliente.setMultiselect(true);
  frmlocalizarCliente.btnnovot.Visible := novo;
  frmlocalizarCliente.btnnovo.Visible  := novo;
  //
  if frmlocalizarCliente.qry.q.Active  then
  begin
    frmlocalizarCliente.qry.q.close;
    frmlocalizarCliente.qry.q.open;
  end;
  if frmlocalizarCliente.qryt.q.Active then
  begin
    frmlocalizarCliente.btnfindclick(frmlocalizarCliente.btnfind);
  end;
  frmlocalizarcliente.btnOk.Enabled := frmlocalizarcliente.qry.q.RecordCount > 0;
  frmlocalizarcliente.codigo := 0;
  frmlocalizarCliente.showmodal;
  if frmlocalizarcliente.ModalResult <> mrok then
  begin
    result := '';
    Exit;
  end;
  if frmlocalizarcliente.pgc1.ActivePage = frmlocalizarcliente.tbssimples then
  begin
    result := TQForm.ObterMultiSelect(_cliente, frmlocalizarcliente.tbv)
  end
  else
  begin
    result := TQForm.ObterMultiSelect(_cliente, frmlocalizarcliente.tbvt);
  end;
end;

function TfrmLocalizarcliente.makesqlnormal:string;
begin
  result := 'SELECT CDCLIENTE'+
                 ',NMCLIENTE'+
                 ',RZSOCIAL'+
                 ',DSENDERECO'+
                 ',NMRMATIVIDADE'+
                 ',DSNUMERO'+
                 ',NMBAIRRO'+
                 ',NMMUNICIPIO'+
                 ',SGUF'+
                 ',NUCEP'+
                 ',nufone1'+
                 ',TPPESSOA'+
                 ',NUCXPOSTAL'+
                 ',S.NUCOR'+
                 ',NMSTCLIENTE '+
            'FROM CLIENTE c '+
            'LEFT JOIN UF u ON U.CDUF=C.CDUF '+
            'LEFT JOIN MUNICIPIO m ON M.CDMUNICIPIO=C.CDMUNICIPIO '+
            'LEFT JOIN RMATIVIDADE R ON R.CDRMATIVIDADE=C.CDRMATIVIDADE and r.cdempresa=c.cdempresa '+
            'LEFT JOIN STCLIENTE s ON S.CDSTCLIENTE=C.CDSTCLIENTE and s.cdempresa=c.cdempresa '+
            sqlwhere+
            ' order by cdcliente';
end;

procedure TfrmLocalizarcliente.btnFindClick(Sender: TObject);
begin
  qryt.q.close;
  qryt.q.SQL.Text := makesqlnormal;
  qryt.q.open;
  btnOkt.Enabled := qryt.q.RecordCount > 0;
end;

procedure TfrmLocalizarcliente.btnOktClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarcliente.FormShow(Sender: TObject);
begin
  if pgc1.ActivePage = tbsnormal then
  begin
    edtNmCliente.SetFocus
  end
  else
  begin
    edtnome.SelectAll;
    edtNome.SetFocus;
  end;
end;

procedure TfrmLocalizarcliente.btnnovotClick(Sender: TObject);
begin
  codigo := frmNovocliente.Novo;
  if codigo <> 0 then
  begin
    modalresult := mrok;
  end;
end;

procedure TfrmLocalizarcliente.cbxTpPessoaChange(Sender: TObject);
begin
  if cbxTpPessoa.ItemIndex = 0 then
  begin
    configuraTpPessoa('CPF')
  end
  else if cbxtppessoa.ItemIndex = 1 then
  begin
    configuraTpPessoa('CNPJ')
  end
  else
  begin
    configuraTpPessoa;
  end;
end;

procedure TfrmLocalizarcliente.edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarcliente.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarcliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 119 then
  begin
    if pgc1.ActivePage = tbsnormal then
    begin
      pgc1.ActivePage := tbssimples
    end
    else
    begin
      pgc1.ActivePage := tbsnormal;
    end;
  end;
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

procedure TfrmLocalizarcliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure TfrmLocalizarcliente.setEmpresa;
begin
  lblrepresentante.Visible := Empresa.comercial.representante.bo;
  cbxcdrepresentante.Visible := Empresa.comercial.representante.bo;
  lblrmatividade.Visible := Empresa.cliente.bormatividade;
  cbxcdrmatividade.Visible := Empresa.cliente.bormatividade;
  lbltpcliente.Visible := Empresa.cliente.botpcliente;
  cbxcdtpcliente.Visible := Empresa.cliente.botpcliente;
  lbltpclientemensalidade.Visible := Empresa.cliente.bomensalidade;
  cbxcdtpclientemensalidade.Visible := Empresa.cliente.bomensalidade;
end;

procedure TfrmLocalizarcliente.ConfiguraTpPessoa(tipo:string='');
begin
  if tipo = UpperCase(_CPF) then
  begin
    lblnucnpjcpf.caption       := tipo;
    lblnucnpjcpf.visible       := true;
    edtnucnpjcpf.Visible       := true;
    lbldtnascimento.Visible    := true;
    lblentrenascimento.Visible := true;
    edtdtnascimentoi.Visible   := true;
    edtdtnascimentof.visible   := true;
    edtnucnpjcpf.Properties.EditMask := MascaraDocumento(tipo);
  end
  else if tipo = UpperCase(_CNPJ) then
  begin
    lblnucnpjcpf.caption       := tipo;
    lblnucnpjcpf.visible       := true;
    edtnucnpjcpf.visible       := true;
    lbldtnascimento.Visible    := false;
    lblentrenascimento.Visible := false;
    edtdtnascimentoi.Visible   := false;
    edtdtnascimentof.visible   := false;
    edtnucnpjcpf.Properties.EditMask := MascaraDocumento(tipo);
  end
  else
  begin
    lblnucnpjcpf.visible       := false;
    edtnucnpjcpf.Visible       := false;
    lbldtnascimento.Visible    := false;
    lblentrenascimento.Visible := false;
    edtdtnascimentoi.Visible   := false;
    edtdtnascimentof.visible   := false;
  end;
end;

procedure TfrmLocalizarcliente.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarcliente.btnCancelartClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarcliente.cbxTpPessoaPropertiesChange(Sender: TObject);
begin
  if cbxTpPessoa.ItemIndex = 0 then
  begin
    lblnucnpjcpf.caption := UpperCase(_CPF);
    lblnucnpjcpf.visible := true;
    edtnucnpjcpf.Visible := true;
    edtnucnpjcpf.Properties.EditMask := MascaraDocumento(lblnucnpjcpf.caption);
  end
  else if cbxtppessoa.ItemIndex = 1 then
  begin
    lblnucnpjcpf.caption := UpperCase(_CNPJ);
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

procedure TfrmLocalizarcliente.edtcdclienteiExit(Sender: TObject);
begin
  if (edtcdclientei.Value <> 0) and (edtcdclientef.Value = 0) then
  begin
    edtcdclientef.Value := edtcdclientei.Value;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarcliente.edtcdclientefExit(Sender: TObject);
begin
  if (edtcdclientef.Value <> 0) and (edtcdclientei.Value = 0) then
  begin
    edtcdclientei.Value := edtcdclientef.Value;
  end;
  colorexit(Sender);
end;

procedure TfrmLocalizarcliente.edtNomePropertiesChange(Sender: TObject);
begin
  tmrnome.Enabled := False;
  tmrnome.Enabled := True;
end;

procedure TfrmLocalizarcliente.rdgopcoesClick(Sender: TObject);
begin
  if rdgopcoes.ItemIndex = 0 then
  begin
    qry.q.Filtered := false;
  end;
  edtNomePropertiesChange(sender);
  edtnome.SetFocus;
end;

procedure TfrmLocalizarcliente.setMultiselect(bomultiselect: boolean);
begin
  tbv.OptionsSelection.MultiSelect  := bomultiselect;
  tbvt.OptionsSelection.MultiSelect := bomultiselect;
end;

function TfrmLocalizarcliente.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where c.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarnomelike(edtNmCliente.Text, _c, _nmcliente, result, 0, rdgnome.itemindex);
  sqlmontarnomelike(edtrzsocial.Text, _c, _rzsocial, result, 0, rdgrzsocial.itemindex);
  sqlmontarnomelike(edtdsendereco.Text, _c, _dsendereco, result);
  sqlmontarnomelike(edtnmbairro.Text, _c, _nmbairro, result);
  sqlmontarfonelike(edtnufone1.Text, _c, _nufone1 + ''#13'' + _nufone + _2 + ''#13'' + _nufone3, result);
  sqlmontarnomedireto(edtnuinscest.Text, _c, _nuinscest, Result);
  sqlmontardata(edtdtconsultaspci.text, edtdtconsultaspcf.text, _c, _dtconsultaspc, result);
  sqlmontardata(edtdtcontatoi.text, edtdtcontatof.text, _c, _dtcontato, result);
  sqlmontardata(edtdtcadastroi.text, edtdtcadastrof.text, _c, _dtcadastro, result);
  sqlmontardata(edtdtcadastrosocioi.text, edtdtcadastrosociof.text, _c, _dtcadastrosocio, result);
  sqlmontardata(edtdtnascimentoi.text, edtdtnascimentof.text, _c, _dtnascimento, result);
  sqlmontartppessoa(cbxtppessoa.Text, edtnucnpjcpf.Text, _c, result);
  sqlmontarcodigo(cbxcduf.EditValue, _c, _cduf, result);
  sqlmontarcodigo(cbxcdstcliente.EditValue, _c, _cdstcliente, result);
  sqlmontarcodigo(cbxcdcontrato.EditValue, _c, _cdcontrato, result);
  sqlmontarcodigo(cbxcdtpclientemensalidade.EditValue, _c, _cdtpclientemensalidade, result);
  sqlmontarcodigo(cbxcdtpcliente.EditValue, _c, _cdtpcliente, result);
  sqlmontarcodigo(cbxcdrmatividade.EditValue, _c, _cdrmatividade, result);
  sqlmontarcodigo(cbxcdrepresentante.EditValue, _c, _cdrepresentante, result);
  sqlmontarcodigo(cbxcdmunicipio.EditValue, _c, _cdmunicipio, result);
  if edtcdclientei.Value > 0 then
  begin
      result := result + 'and c.cdcliente between ' + edtcdclientei.Text + ' and ' + edtcdclientef.Text + ' ';
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarcliente.btnCancelarClick(Sender: TObject);
begin
  close
end;

procedure TfrmLocalizarcliente.tbvtDblClick(Sender: TObject);
begin
  if btnokt.enabled then
  begin
    btnOktClick(sender);
  end;
end;

procedure TfrmLocalizarcliente.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarcliente.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarcliente.rdgnmpesquisaClick(Sender: TObject);
begin
  if rdgnmpesquisa.ItemIndex = 0 then
  begin
    nmpesquisa := _nmcliente;
    tbvNMCLIENTE.Caption := Maiuscula(_Cliente);
  end
  else
  begin
    nmpesquisa := _rzsocial;
    tbvNMCLIENTE.Caption := 'Razao Social';
  end;
  tbvNMCLIENTE.DataBinding.FieldName := nmpesquisa;
  edtNomePropertiesChange(edtNome);
end;

procedure TfrmLocalizarcliente.FormCreate(Sender: TObject);
begin
  qry := TClasseQuery.create;
  qryt := tclassequery.create;
  TRegistro.SetQueryLocalizar(qry, dts, tbv);
  TRegistro.SetQueryLocalizar(qryt, dtst, tbvt);
  nmpesquisa := _nmcliente;
  getAbrirTabela;
  setEmpresa;
end;

procedure TfrmLocalizarcliente.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(qryt);
end;

procedure TfrmLocalizarcliente.cbxcdstclienteEnter(Sender: TObject);
begin
  abrir_tabela(_stcliente);
  colorenter(sender);
end;

procedure TfrmLocalizarcliente.cbxcdrepresentanteEnter(Sender: TObject);
begin
  abrir_tabela(_representante);
  colorenter(sender);
end;

procedure TfrmLocalizarcliente.cbxcdrmatividadeEnter(Sender: TObject);
begin
  abrir_tabela(_rmatividade);
  colorenter(Sender);
end;

procedure TfrmLocalizarcliente.cbxcdtpclienteEnter(Sender: TObject);
begin
  abrir_tabela(_tpcliente);
  colorenter(sender);
end;

procedure TfrmLocalizarcliente.cbxcdtpclientemensalidadeEnter(Sender: TObject);
begin
  abrir_tabela(_tpcliente+_mensalidade);
  colorenter(Sender);
end;

procedure TfrmLocalizarcliente.cbxcdufExit(Sender: TObject);
begin
  dtmMain.Municipio_Filtro_(cbxcduf.Text, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet), _nmuf);
  colorexit(sender);
end;

procedure TfrmLocalizarcliente.cbxcdcontratoEnter(Sender: TObject);
begin
  abrir_tabela(_contrato);
  colorenter(sender);
end;

procedure TfrmLocalizarcliente.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarcliente.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

function TfrmLocalizarcliente.makesqlsimples: string;
begin
  result := 'SELECT CDCLIENTE' +
                  ',NMCLIENTE'+
                  ',RZSOCIAL'+
                  ',NMTPCLIENTE'+
                  ',coalesce(NUCPF,'''')||coalesce(NUCNPJ,'''') NUCNPJCPF'+
                  ',NUFONE1'+
                  ',S.NUCOR'+
                  ',NMSTCLIENTE '+
             'FROM CLIENTE c '+
             'LEFT JOIN TPCLIENTE t ON T.CDTPCLIENTE=C.CDTPCLIENTE and t.cdempresa=c.cdempresa '+
             'LEFT JOIN STCLIENTE s ON S.CDSTCLIENTE=C.CDSTCLIENTE and s.cdempresa=c.cdempresa '+
             '%S '+
             'ORDER BY NMCLIENTE';
end;

procedure TfrmLocalizarcliente.tmrnomeTimer(Sender: TObject);
begin
  if rdgopcoes.ItemIndex = 0 then
  begin
    if edtnome.text <> '' then
    begin
      qry.q.close;
      qry.q.SQL.Text := format(makesqlsimples, ['where c.cdempresa='+empresa.cdempresa.tostring+' and '+nmpesquisa+' like ''%'+get_aspas(edtnome.text)+'''']);
      qry.q.Open;
    end;
  end
  else
  begin
    qry.q.close;
    qry.q.SQL.Text := format(makesqlsimples, ['where c.cdempresa='+empresa.cdempresa.tostring+' and '+nmpesquisa+' like ''%'+get_aspas(edtnome.text)+'%''']);
    qry.q.Open;
  end;
  btnOk.Enabled   := qry.q.RecordCount > 0;
  tmrnome.Enabled := False;
end;

procedure TfrmLocalizarcliente.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarcliente.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarcliente.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarcliente.actfiltronExecute(Sender: TObject);
begin
  tbvt.FilterRow.Visible := btnfiltron.down;
end;

procedure TfrmLocalizarcliente.actagruparnExecute(Sender: TObject);
begin
  tbvt.OptionsView.GroupByBox := btnagruparn.down;
end;

procedure TfrmLocalizarcliente.actexcelnExecute(Sender: TObject);
begin
  exportarexcel(grdt);
end;

procedure TfrmLocalizarcliente.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarcliente.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, qry, tbv);
end;

procedure TfrmLocalizarcliente.actmodogradetExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodogradet.Checked, qryt, tbvt);
end;

procedure TfrmLocalizarcliente.getAbrirTabela;
begin
  cbxcduf.Properties.ListSource := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
  cbxcdtpclientemensalidade.Properties.ListSource := abrir_tabela(_tpclientemensalidade);
  cbxcdtpcliente.Properties.ListSource := abrir_tabela(_tpcliente);
  cbxcdrmatividade.Properties.ListSource := abrir_tabela(_rmatividade);
  cbxcdrepresentante.Properties.ListSource := abrir_tabela(_representante);
  cbxcdstcliente.Properties.ListSource := abrir_tabela(_stcliente);
  cbxcdcontrato.Properties.ListSource := abrir_tabela(_contrato);
end;

procedure TfrmLocalizarcliente.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCOR;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if ACanvas.Font.Color = clred then
  begin
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end
  else if ACanvas.Font.Color = clblue then
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmLocalizarcliente.tbvtCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvtNUCOR;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if ACanvas.Font.Color = clred  then
  begin
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end
  else if ACanvas.Font.Color = clblue then
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmLocalizarcliente.actestatisticaExecute(Sender: TObject);
begin
  if qry.q.Active and (qry.q.fieldbyname(_cdcliente).AsString <> '') then
  begin
    dlgclientefinanceiro(qry.q.fieldbyname(_cdcliente).AsLargeInt);
  end;
end;

end.

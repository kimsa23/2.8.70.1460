unit upaciente;

interface

uses
  System.Actions, System.UITypes,
  Mask, Windows, Buttons, ExtCtrls, Controls, ComCtrls, sysutils, dialogs, Menus, ToolWin,
  Classes, ActnList, StdCtrls, forms,
  DB,
  DBClient,
  FireDAC.Comp.Client,
  urotinas, uregistroib, uregistro, ulocalizar, uconstantes, uProtector,
  udatahora, uexportarexcel, ustrings,
  classeempresa, classeconsiste, classeusuario, classegerar,
  classeRegistro, classeregistrainformacao, classeform, classecliente, classequery,
  classeaplicacao,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls, dxBar, cxClasses, cxGraphics,
  cxLookAndFeels, cxLabel, cxPCdxBarPopupMenu, cxTextEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxDBLookupComboBox, cxCalendar, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxCalc,
  cxInplaceContainer, cxVGrid, cxDBVGrid, cxCheckGroup, cxCheckBox, cxMemo,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit,
  cxTimeEdit, DBCtrls, cxNavigator, uMenuRelatorio,
  dxBarBuiltInMenu, cxButtons, cxButtonEdit;

type
  TfrmPaciente = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actAssinatura: TAction;
    actFoto: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actfechar: TAction;
    pgc: TcxPageControl;
    tbscadastro: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    gbxcadastro: TcxGroupBox;
    Label1: TLabel;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnNovo: TdxBarLargeButton;
    dxbrlrgbtnEditar: TdxBarLargeButton;
    dxbrlrgbtnAbrir: TdxBarLargeButton;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtncancelar: TdxBarLargeButton;
    dxbrlrgbtnexcluir: TdxBarLargeButton;
    dxbrsprtr1: TdxBarSeparator;
    dxbrlrgbtnprimeiro: TdxBarLargeButton;
    dxbrlrgbtnanterior: TdxBarLargeButton;
    dxbrlrgbtnproximo: TdxBarLargeButton;
    dxbrlrgbtnultimo: TdxBarLargeButton;
    dxbrsprtr2: TdxBarSeparator;
    btnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dts: TDataSource;
    memdsobservacao: TcxDBMemo;
    gbxComercial: TcxGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label23: TLabel;
    lbl2: TLabel;
    edtnufone2: TcxDBMaskEdit;
    edtnufone1: TcxDBMaskEdit;
    edtnucxpostal: TcxDBMaskEdit;
    edtnucep: TcxDBMaskEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    edtnufone3: TcxDBMaskEdit;
    cbxcdpais: TcxDBLookupComboBox;
    cxGroupBox1: TcxGroupBox;
    Label27: TLabel;
    Label61: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtnmconjuge: TcxDBTextEdit;
    edtdtnascimento: TcxDBDateEdit;
    cbxcdestcivil: TcxDBComboBox;
    cbxcdsexo: TcxDBComboBox;
    edtnmpai: TcxDBTextEdit;
    edtnmmae: TcxDBTextEdit;
    edtNUINSS: TcxDBTextEdit;
    edtnuidentid: TcxDBTextEdit;
    edtnucpf: TcxDBMaskEdit;
    lbl3: TLabel;
    lbl5: TLabel;
    edtNUCRACHA: TcxDBTextEdit;
    edtNUCARTEIRATRABALHO: TcxDBTextEdit;
    edtNUTITULOELEITOR: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label38: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    lblfuncao: TLabel;
    edthomepage: TcxDBTextEdit;
    edtemail: TcxDBTextEdit;
    cbxcdstpaciente: TcxDBLookupComboBox;
    cbxcdprofissao: TcxDBLookupComboBox;
    edtDTADMISSAO: TcxDBDateEdit;
    cbxcdescolaridade: TcxDBLookupComboBox;
    lblescolaridade: TLabel;
    pumimprimir: TdxBarPopupMenu;
    lbl4: TLabel;
    Label2: TLabel;
    edtDTDEMISSAO: TcxDBDateEdit;
    Label35: TLabel;
    edtdtcadastro: TcxDBDateEdit;
    actabrircliente: TAction;
    lblorgaoemissor: TLabel;
    edtnmorgaoemissor: TcxDBTextEdit;
    lblsetor: TLabel;
    cbxcdsetor: TcxDBLookupComboBox;
    pnltop: TPanel;
    pnl: TcxLabel;
    Label12: TLabel;
    edtcodigo: TcxTextEdit;
    Label3: TLabel;
    edtnome: TcxDBTextEdit;
    lblcliente: TLabel;
    edtCDCLIENTE: TcxDBButtonEdit;
    txtnmcliente: TDBText;
    lblcdfilial: TLabel;
    edtcdclientefilial: TcxDBButtonEdit;
    txtnmclientefilial: TDBText;
    lblnmnaturalidade: TLabel;
    edtnmnaturalidade: TcxDBTextEdit;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxcdufExit(Sender: TObject);
    procedure cbxcdstpacienteEnter(Sender: TObject);
    procedure cbxcdescolaridadeEnter(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
    procedure txtnmclienteDblClick(Sender: TObject);
    procedure edtcdclientefilialKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientefilialPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdclientefilialPropertiesEditValueChanged(Sender: TObject);
    procedure cbxcdsetorEnter(Sender: TObject);
    procedure edtnufone1PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtnufone2PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtnufone3PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtCDCLIENTEPropertiesChange(Sender: TObject);
    procedure edtcdclientefilialPropertiesChange(Sender: TObject);
    procedure cbxcdufPropertiesChange(Sender: TObject);
    procedure edtdtnascimentoPropertiesChange(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
    procedure set_mascara_numero_fone_de_acordo_com_estado;
    procedure check_nome;
    procedure check_nuidentid;
    procedure check_nufone1;
    procedure check_dtnascimento;
    procedure check_profissao;
    procedure check_cdsexo;
    procedure check_cdestcivil;
    procedure check_cliente;
    procedure check_nmnaturalidade;
  public  { Public declarations }
    registro : TRegistro;
    cliente : TCliente;
    function Abrir(codigo:Integer):boolean;
  end;

var
  frmPaciente: TfrmPaciente;

implementation

uses uDtmMain, uMain, Variants, ulocalizarCliente, Math;

const
  tbl      = _paciente;
  exibe    = 'Paciente';
  artigoI  = 'o';
  _sql = 'SELECT P.*'+
               ',C.NMCLIENTE'+
               ',F.NMCLIENTE NMCLIENTEFILIAL '+
         'FROM PACIENTE P '+
         'LEFT JOIN CLIENTE C ON C.CDCLIENTE=P.CDCLIENTE AND C.CDEMPRESA=P.CDEMPRESA '+
         'LEFT JOIN CLIENTE F ON F.CDEMPRESA=P.CDEMPRESA AND F.CDCLIENTE=P.CDCLIENTEFILIAL '+
         'WHERE P.CDEMPRESA=:CDEMPRESA AND P.CDPACIENTE=:CDPACIENTE';

{$R *.DFM}

procedure TfrmPaciente.set_mascara_numero_fone_de_acordo_com_estado;
var
  cduf : string;
begin
  cduf := '';
  if not varisnull(cbxcduf.EditValue) then
  begin
    cduf := cbxcduf.EditValue;
  end;
  if BooleandoCodigo(_uf, cduf, _bodigito9) then
  begin
    edtnufone1.Properties.EditMask := _99_99999_9999;
    edtnufone2.Properties.EditMask := _99_99999_9999;
    edtnufone3.Properties.EditMask := _99_99999_9999;
  end
  else
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
  end;
end;

function TfrmPaciente.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmPaciente.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir;
end;

procedure TfrmPaciente.actNovoExecute(Sender: TObject);
begin
  if registro.Novo(sender) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmPaciente.actSalvarExecute(Sender: TObject);
begin
  check_nome;
  check_cliente;
  check_nufone1;
  check_nuidentid;
  check_cdsexo;
  check_cdestcivil;
  check_dtnascimento;
  check_nmnaturalidade;
  check_profissao;
  registro.Salvar;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmPaciente.actExcluirExecute(Sender: TObject);
begin                                                
  registro.Excluir;
end;

procedure TfrmPaciente.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmPaciente.actCancelarExecute(Sender: TObject);
begin
  registro.Cancelar;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmPaciente.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
end;

procedure TfrmPaciente.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.CodigoKeyPress(Sender, Key, actNovo.Enabled);
end;

procedure TfrmPaciente.edtdtnascimentoPropertiesChange(Sender: TObject);
begin
  registro.consistir_data_nascimento(edtdtnascimento);
end;

procedure TfrmPaciente.edtnufone1PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  registro.check_numero_telefone(edtnufone1);
end;

procedure TfrmPaciente.edtnufone2PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  registro.check_numero_telefone(edtnufone2);
end;

procedure TfrmPaciente.edtnufone3PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  registro.check_numero_telefone(edtnufone3);
end;

procedure TfrmPaciente.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmPaciente.FormShow(Sender: TObject);
begin
  configurarPermissoes(self);
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmPaciente.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmPaciente.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure TfrmPaciente.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure TfrmPaciente.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure TfrmPaciente.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure TfrmPaciente.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure TfrmPaciente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmPaciente.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmPaciente.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(cliente);
  freeandnil(registro);
end;

procedure TfrmPaciente.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmPaciente.FormCreate(Sender: TObject);
begin
  qry := tFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := _sql;;
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  qry.AfterScroll := qryAfterScroll;

  cliente  := TCliente.create;
  
  cbxcduf.Properties.ListSource            := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource     := abrir_tabela(_municipio);
  cbxcdescolaridade.Properties.ListSource  := abrir_tabela(_escolaridade);
  cbxcdstpaciente.Properties.ListSource    := abrir_tabela(_stpaciente);
  cbxcdprofissao.Properties.ListSource     := abrir_tabela(_profissao);
  cbxcdpais.Properties.ListSource          := abrir_tabela(_pais);
  cbxcdsetor.Properties.ListSource         := abrir_tabela(_setor);

  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 55, qry, _paciente);
end;

procedure TfrmPaciente.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmPaciente.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmPaciente.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmPaciente.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((qry.State = dsinsert) or (qry.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet));
  end;
end;

procedure TfrmPaciente.cbxcdufPropertiesChange(Sender: TObject);
begin
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmPaciente.cbxcdstpacienteEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_stpaciente);
end;

procedure TfrmPaciente.cbxcdescolaridadeEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_escolaridade);
end;

procedure TfrmPaciente.qryAfterScroll(DataSet: TDataSet);
begin
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmPaciente.qryBeforePost(DataSet: TDataSet);
begin
  ConsisteCPF (dataset, tbl, exibe, True);
  if DataSet.State = dsinsert then
  begin
    if qry.fieldbyname(_dtcadastro).isnull then
    begin
      qry.fieldbyname(_dtcadastro).asdatetime := dtbanco;
    end;
  end;
  registro.set_update(dataset);
end;

procedure TfrmPaciente.qryNewRecord(DataSet: TDataSet);
begin
  qry.fieldbyname(_CDSTPACIENTE).AsInteger := qregistro.Codigo_status_novo(tbl);
end;

procedure TfrmPaciente.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qry);
end;

procedure TfrmPaciente.edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmPaciente.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmPaciente.edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtCDCLIENTEPropertiesButtonClick(self, qry);
end;

procedure TfrmPaciente.edtCDCLIENTEPropertiesChange(Sender: TObject);
begin
  if not (dts.state in [dsinsert, dsedit]) then
  begin
    exit;
  end;
  if qry.FieldByName(_NMcliente+_filial).ReadOnly then
  begin
    qry.FieldByName(_NMcliente+_filial).ReadOnly := false;
  end;
  qry.fieldbyname(_cdclientefilial).Clear;
  qry.fieldbyname(_NMCLIENTE+_filial).Clear;
  if qry.FieldByName(_NMcliente).ReadOnly then
  begin
    qry.FieldByName(_NMcliente).ReadOnly := false;
  end;
  if edtcdcliente.text = '' then
  begin
    qry.FieldByName(_NMcliente).clear;
    exit;
  end;
  if not cliente.Select(strtoint64(edtcdcliente.text)) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdcliente.text, maiuscula(_cliente)]), mterror, [mbok], 0);
    edtcdcliente.SetFocus;
    Abort;
  end;
  cliente.stcliente.Select(cliente.cdstcliente);
  if cliente.stcliente.bogerarinfo <> _s then
  begin
    messagedlg('Cliente está no status '+cliente.stcliente.nmstcliente+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    edtcdcliente.SetFocus;
    abort;
  end;
  qry.fieldbyname(_NMCLIENTE).AsString := cliente.nmcliente;
end;

procedure TfrmPaciente.edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
begin
  if (qry.State = dsedit) or (qry.State = dsinsert) then
  begin
    txtnmcliente.Hint :=cliente.hint_rzsocial;
  end;
end;

procedure TfrmPaciente.txtnmclienteDblClick(Sender: TObject);
begin
  actAbrircliente.onExecute(actAbrircliente);
end;

procedure TfrmPaciente.edtcdclientefilialKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientefilialPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmPaciente.edtcdclientefilialPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (qry.State <> dsedit) and (qry.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarCliente;
  if cd <> 0 then
  begin
    if (qry.State <> dsinsert) and (qry.State <> dsedit) then
    begin
     qry.Edit;
    end;
    qry.fieldbyname(_CDCLIENTEfilial).asinteger := cd;
  end
end;

procedure TfrmPaciente.edtcdclientefilialPropertiesChange(Sender: TObject);
begin
  if not (dts.state in [dsinsert, dsedit]) then
  begin
    exit;
  end;
  if qry.FieldByName(_NMCLIENTE+_FILIAL).ReadOnly then
  begin
    qry.FieldByName(_NMCLIENTE+_FILIAL).ReadOnly := false;
  end;
  if edtcdclientefilial.text = '' then
  begin
    qry.FieldByName(_NMCLIENTE+_FILIAL).clear;
    exit;
  end;
  if qry.fieldbyname(_CDCLIENTE).IsNull then
  begin
    MessageDlg('Preencha o cliente antes de preencher a filial.', mtInformation, [mbOK], 0);
    edtcdclientefilial.Clear;
    qry.fieldbyname(_CDCLIENTE).FocusControl;
  end;

  if cliente.select(strtoint64(edtcdclientefilial.text)) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdclientefilial.text, maiuscula(_cliente)]), mterror, [mbok], 0);
    edtcdclientefilial.SetFocus;
    Abort;
  end;
  cliente.stcliente.Select(cliente.cdstcliente);
  if cliente.stcliente.bogerarinfo <> _s then
  begin
    messagedlg('Cliente está no status '+cliente.stcliente.nmstcliente+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    edtcdclientefilial.SetFocus;
    abort;
  end;
  if not RegistroExiste(_clientefilial, 'cdcliente='+qry.FieldByName(_CDCLIENTE).asstring+' and cdclientefilial='+cliente.cdcliente.tostring) then
  begin
    MessageDlg('Filial não pertence ao cliente.', mtInformation, [mbOK], 0);
    edtcdclientefilial.SetFocus;
    Abort;
  end;
  qry.fieldbyname(_NMCLIENTE+_FILIAL).AsString := cliente.nmcliente;
end;

procedure TfrmPaciente.edtcdclientefilialPropertiesEditValueChanged(Sender: TObject);
begin
  if (qry.State = dsedit) or (qry.State = dsinsert) then
  begin
    txtnmclientefilial.Hint :=cliente.hint_rzsocial;
  end;
end;

procedure TfrmPaciente.check_nome;
begin
  if edtnome.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    edtnome.SetFocus;
    Abort;
  end;
end;

procedure TfrmPaciente.check_cliente;
begin
  if edtCDCLIENTE.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_Cliente]), mtinformation, [mbok], 0);
    edtCDCLIENTE.SetFocus;
    Abort;
  end;
end;

procedure TfrmPaciente.check_dtnascimento;
begin
  if edtdtnascimento.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+_Nascimento]), mtinformation, [mbok], 0);
    edtdtnascimento.SetFocus;
    Abort;
  end;
end;

procedure TfrmPaciente.check_profissao;
begin
  if cbxcdprofissao.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Profissao]), mtinformation, [mbok], 0);
    cbxcdprofissao.SetFocus;
    Abort;
  end;
end;

procedure TfrmPaciente.cbxcdsetorEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_setor);
end;

procedure TfrmPaciente.check_cdestcivil;
begin
  if cbxcdestcivil.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, ['Estado Cívil']), mtinformation, [mbok], 0);
    cbxcdestcivil.SetFocus;
    Abort;
  end;
end;

procedure TfrmPaciente.check_cdsexo;
begin
  if cbxcdsexo.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Sexo]), mtinformation, [mbok], 0);
    cbxcdsexo.SetFocus;
    Abort;
  end;
end;

procedure TfrmPaciente.check_nufone1;
begin
  if removercaracteres(edtnufone1.Text) = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_telefone]), mtinformation, [mbok], 0);
    edtnufone1.SetFocus;
    Abort;
  end;
end;

procedure TfrmPaciente.check_nuidentid;
begin
  if edtnuidentid.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Identidade]), mtinformation, [mbok], 0);
    edtnuidentid.SetFocus;
    Abort;
  end;
end;

procedure TfrmPaciente.check_nmnaturalidade;
begin
  if edtnmnaturalidade.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Naturalidade]), mtinformation, [mbok], 0);
    edtnmnaturalidade.SetFocus;
    Abort;
  end;
end;

end.

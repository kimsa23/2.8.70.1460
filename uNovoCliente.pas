unit uNovoCliente;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Classes, ActnList, ComCtrls, sysutils, StdCtrls, ToolWin, Variants,
  Windows, dialogs, Controls, Buttons, Mask, ExtCtrls,
  ustrings, ulocalizar, urotinas, uregistro, uconstantes, udatahora,
  classeempresa, classeconsiste, classegerar, classeendereco,
  classeRetornaSql, classeform, classeRegistro, classeregistrainformacao, classecliente,
  DB, DBClient,
  cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxLookAndFeelPainters, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtons, cxCalendar, cxGroupBox, cxRadioGroup, cxLookAndFeels, cxPC,
  cxSpinEdit, cxCheckBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmNovoCliente = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actSalvar1: TAction;
    actCancelar1: TAction;
    dts: TDataSource;
    Label3: TLabel;
    lblrzsocial: TLabel;
    Bevel1: TBevel;
    gbxFisica: TcxGroupBox;
    Label27: TLabel;
    Label61: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    Label13: TLabel;
    edtnucpf: TcxDBMaskEdit;
    edtnmconjuge: TcxDBTextEdit;
    edtdtnascimento: TcxDBDateEdit;
    cbxcdestcivil: TcxDBComboBox;
    cbxcdsexo: TcxDBComboBox;
    edtnmpai: TcxDBTextEdit;
    edtnmmae: TcxDBTextEdit;
    edtnuinscest2: TcxDBTextEdit;
    edtnuidentid: TcxDBTextEdit;
    gbxJuridica: TcxGroupBox;
    Label24: TLabel;
    Label29: TLabel;
    edtnucnpj: TcxDBMaskEdit;
    edtnuinscest: TcxDBTextEdit;
    edtRzSocial: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
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
    Label20: TLabel;
    edtnucxpostal: TcxDBMaskEdit;
    edtnufax: TcxDBMaskEdit;
    edtnufone1: TcxDBMaskEdit;
    edtnufone2: TcxDBMaskEdit;
    edtnucep: TcxDBMaskEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    rdbtppessoa: TcxDBRadioGroup;
    lblcodigo: TLabel;
    edtcodigo: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label38: TLabel;
    Label1: TLabel;
    Label60: TLabel;
    lblrmatividade: TLabel;
    lblrepresentante: TLabel;
    lblcdtpcliente: TLabel;
    Label35: TLabel;
    lbltecnico: TLabel;
    lblnucntcontabil: TLabel;
    lbltpregimne: TLabel;
    edthomepage: TcxDBTextEdit;
    cbxcdstcliente: TcxDBLookupComboBox;
    cbxcdrmatividade: TcxDBLookupComboBox;
    chkBOCONSUMIDORFINAL: TcxDBCheckBox;
    edtnucntcontabil: TcxDBTextEdit;
    edtdtcadastro: TcxDBDateEdit;
    cbxcdfuncionariovendedor: TcxDBLookupComboBox;
    cbxcdtpcliente: TcxDBLookupComboBox;
    cbxcdrepresentante: TcxDBLookupComboBox;
    cbxcdtpregime: TcxDBLookupComboBox;
    edtemail: TcxDBTextEdit;
    edtnufone3: TcxDBMaskEdit;
    btnrmatividade: TcxButton;
    Label26: TLabel;
    edtdtfundacao: TcxDBDateEdit;
    lblCDINDIEDEST: TLabel;
    cbxcdindiedest: TcxDBLookupComboBox;
    Label115: TLabel;
    edtnuinscmunicipal: TcxDBTextEdit;
    Label116: TLabel;
    edtnucae: TcxDBTextEdit;
    qry: TFDQuery;
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelar1Execute(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure edtNomeExit(Sender: TObject);
    procedure edtNomePropertiesChange(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure rdbtppessoaPropertiesChange(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtcodigoExit(Sender: TObject);
    procedure edtnufaxKeyPress(Sender: TObject; var Key: Char);
    procedure cbxcdrmatividadeEnter(Sender: TObject);
    procedure cbxcdrepresentanteEnter(Sender: TObject);
    procedure cbxcdtpclienteEnter(Sender: TObject);
    procedure cbxcdfuncionariovendedorEnter(Sender: TObject);
    procedure edtnucepExit(Sender: TObject);
    procedure btnrmatividadeClick(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
  private      { Private declarations }
    cliente : TCliente;
    registro : TRegistro;
    procedure set_mascara_numero_fone_de_acordo_com_estado;
    procedure set_abrirtabela;
  public  { Public declarations }
    function Novo:Largeint;
  end;

var
  frmNovoCliente: TfrmNovoCliente;

implementation

uses uDtmMain, uNovoTabela;

{$R *.DFM}

const
  tbl      = 'Cliente';
  exibe    = 'Cliente';

procedure TfrmNovocliente.set_mascara_numero_fone_de_acordo_com_estado;
begin
  if varisnull(cbxcduf.EditValue) or (not BooleandoCodigo(_uf, cbxcduf.EditValue, _bodigito9)) then
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
    edtnufax.Properties.EditMask   := _99_9999_9999;
  end
  else
  begin
    edtnufone1.Properties.EditMask := _99_99999_9999;
    edtnufone2.Properties.EditMask := _99_99999_9999;
    edtnufone3.Properties.EditMask := _99_99999_9999;
    edtnufax.Properties.EditMask   := _99_99999_9999;
  end;
end;

function TfrmNovocliente.Novo:Largeint;
begin
  frmNovocliente := TFrmNovocliente.create(self);
  try
    frmNovocliente.registro := tregistro.create(frmNovocliente, tbl, exibe, _o, frmNovocliente.qry, frmNovocliente.dts, nil);
    frmNovocliente.ShowModal;
    if frmnovocliente.ModalResult = mrok then
    begin
      result := frmnovocliente.qry.fieldbyname(_cdcliente).AsLargeInt;
    end;
  finally
    freeandnil(frmnovocliente);
  end;
end;

procedure TfrmNovoCliente.qryBeforePost(DataSet: TDataSet);
begin
  ConsisteCNPJ(dataset, tbl, exibe, empresa.cliente.BOCNPJrepetido);
  ConsisteCPF (dataset, tbl, exibe, empresa.cliente.BOcpfrepetido);
  if Dataset.fieldbyname(_tppessoa).AsString = _J then
  begin
    if empresa.cliente.bocnpjobrigatorio and (Dataset.fieldbyname(_nucnpj).asstring = '') then
    begin
      gbxJuridica.BringToFront;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CNPJ]), mtinformation, [mbok], 0);
      Dataset.fieldbyname(_nucnpj).FocusControl;
      abort;
    end;
    Dataset.fieldbyname(_nucpf).Clear;
    Dataset.fieldbyname(_nuidentid).clear;
    Dataset.fieldbyname(_dtnascimento).clear;
    Dataset.fieldbyname(_nmmae).Clear;
    Dataset.fieldbyname(_nmpai).clear;
    Dataset.fieldbyname(_cdsexo).clear;
    Dataset.fieldbyname(_cdestcivil).clear;
    Dataset.fieldbyname(_nmconjuge).clear;
  end
  else if Dataset.fieldbyname(_tppessoa).AsString = _F then // Pessoa Física - obrigatóriedade de CPF
  begin
    if empresa.cliente.bocpfobrigatorio and (Dataset.fieldbyname(_nucpf).asstring = '') then
    begin
      gbxFisica.BringToFront;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CPF]), mtinformation, [mbok], 0);
      Dataset.fieldbyname(_nucpf).FocusControl;
      abort;
    end;
    Dataset.fieldbyname(_nucnpj).Clear
  end;
  ConsisteInscricaoEstadual(dataset, gbxJuridica, gbxFisica, tedit(edtnuinscest), tedit(edtnuinscest2));
  if not DataSet.fieldbyname(_DTCADASTRO).IsNull then
  begin
    if DataSet.fieldbyname(_DTCADASTRO).AsDateTime > dtbanco then
    begin
      messagedlg('Data do Cadastro do Cliente não pode ser maior do que a data atual.'#13'Digite outra data para continuar.', mtinformation, [mbok], 0);
      DataSet.fieldbyname(_DTCADASTRO).FocusControl;
      abort;
    end;
  end
  else
  begin
    DataSet.fieldbyname(_DTCADASTRO).AsDateTime := dtbanco;
  end;
  qendereco.check_municipio_uf(dataset);
  if (dataset.fieldbyname(_bopendente+_cobranca).IsNull) and (dataset.State = dsinsert) then
  begin
    dataset.fieldbyname(_bopendente+_cobranca).asstring := _N;
  end;
  if Dataset.FieldByName(_cdcliente).AsString = '' then
  begin
    if empresa.cliente.bocdreduzido or empresa.livro.bopdv or
       (((not empresa.cliente.bocnpjobrigatorio) or (not empresa.cliente.bocpfobrigatorio)) and (DataSet.fieldbyname(_nucnpj).AsString = '') and (DataSet.fieldbyname(_nucpf).AsString = '')) then
    begin
      Dataset.FieldByName(_cdcliente).asstring := GerarCodigo(tbl);
    end
    else
    begin
      if DataSet.fieldbyname(_nucnpj).AsString <> '' then
      begin
        Dataset.fieldbyname(_cd+tbl).asstring := removercaracteres(DataSet.fieldbyname(_nucnpj).AsString);
      end
      else
      begin
        Dataset.fieldbyname(_cd+tbl).asstring := removercaracteres(DataSet.fieldbyname(_nucpf).AsString);
      end;
    end;
  end;
  if dataset.fieldbyname(_cdindiedest).isnull then
  begin
    dataset.fieldbyname(_cdindiedest).asinteger := cliente.get_cdindiedest(dataset.fieldbyname(_cduf).asinteger, dataset.fieldbyname(_tppessoa).asstring, dataset.fieldbyname(_nuinscest).asstring);
  end;
  registro.set_update(DataSet);
end;

procedure TfrmNovoCliente.qryNewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname(_nmcliente).FocusControl;
  edtnome.SelectAll;
  dataset.fieldbyname(_CDSTcliente).AsInteger := qregistro.Codigo_status_novo(tbl);
  dataset.fieldbyname(_tppessoa).asstring    := _J;
  dataset.FieldByName(_cdpais).asinteger := _nscpais;

  gbxJuridica.BringToFront;
  gbxJuridica.Enabled := true;
  gbxJuridica.Visible := true;
  lblrzsocial.visible := true;
  edtrzsocial.Visible := true;
  gbxFisica.Enabled   := False;
  gbxFisica.Visible   := false;
  if empresa.cliente.novopadraotppessoa <> '' then
  begin
    dataset.fieldbyname(_tppessoa).asstring := empresa.cliente.novopadraotppessoa;
  end;
  cbxcdufExit(nil);
  DataSet.fieldbyname(_DTCADASTRO).AsDateTime := dtbanco;
end;

procedure TfrmNovoCliente.actNovoExecute(Sender: TObject);
begin
  if registro.Novo(nil) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmNovoCliente.actSalvar1Execute(Sender: TObject);
begin
  if qry.FieldByName(_nmcliente).AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    qry.FieldByName(_nmcliente).FocusControl;
    Abort;
  end;
  if (qry.FieldByName(_tppessoa).AsString = _j) and (qry.FieldByName(_rzsocial).AsString = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Razao+' '+_Social]), mtinformation, [mbok], 0);
    qry.FieldByName(_rzsocial).FocusControl;
    Abort;
  end;
  if qry.FieldByName(_tppessoa).AsString = _f then
  begin
    qry.FieldByName(_rzsocial).AsString := qry.fieldbyname(_nmcliente).AsString;
  end;
  if empresa.cliente.boenderecoobrigatorio then
  begin
    if qry.FieldByName(_nucep).AsString = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CEP]), mtinformation, [mbok], 0);
      qry.FieldByName(_nucep).FocusControl;
      Abort;
    end;
    if qry.FieldByName(_dsendereco).AsString = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__endereco]), mtinformation, [mbok], 0);
      qry.FieldByName(_dsendereco).focuscontrol;
      Abort;
    end;
    if qry.FieldByName(_dsnumero).AsString = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_do+' '+__endereco]), mtinformation, [mbok], 0);
      qry.FieldByName(_dsnumero).focuscontrol;
      Abort;
    end;
    if qry.FieldByName(_nmbairro).AsString = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Bairro]), mtinformation, [mbok], 0);
      qry.FieldByName(_nmbairro).focuscontrol;
      Abort;
    end;
    if qry.FieldByName(_cduf).AsString = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Unidade_Federativa]), mtinformation, [mbok], 0);
      qry.FieldByName(_cduf).focuscontrol;
      Abort;
    end;
    if qry.FieldByName(_cdmunicipio).AsString = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Municipio]), mtinformation, [mbok], 0);
      qry.FieldByName(_cdmunicipio).focuscontrol;
      Abort;
    end;
  end;
  if empresa.cliente.boemailjuridicaobrigatorio and (qry.FieldByName(_email).AsString = '') and (qry.FieldByName(_tppessoa).AsString = _j) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Email]), mtinformation, [mbok], 0);
    qry.FieldByName(_email).focuscontrol;
    Abort;
  end;
  if empresa.cliente.botpobrigatorio and (cbxcdtpcliente.Text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cbxcdtpcliente.SetFocus;
    abort;
  end;
  qry.ApplyUpdates(0);
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  self.ModalResult := mrok;
end;

procedure TfrmNovoCliente.actCancelar1Execute(Sender: TObject);
begin
  qry.CancelUpdates;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  close;
end;

procedure TfrmNovoCliente.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmNovoCliente.edtNomeExit(Sender: TObject);
begin
  if (qry.fieldbyname(_rzsocial).IsNull) and (not qry.fieldbyname(_nmcliente).isnull) then
  begin
    qry.fieldbyname(_rzsocial).asstring := qry.fieldbyname(_nmcliente).asstring;
  end;
  colorexit(sender);
end;

procedure TfrmNovoCliente.edtNomePropertiesChange(Sender: TObject);
begin
  if qry.State <> dsInsert then
  begin
    Exit;
  end;
  if qry.fieldbyname(_tppessoa).AsString = _F then
  begin
    qry.fieldbyname(_rzsocial).asstring := tedit(sender).text;
  end;
end;

procedure TfrmNovoCliente.rdbtppessoaPropertiesChange(Sender: TObject);
begin
  if rdbTpPessoa.ItemIndex = -1 then
  begin
    exit
  end;
  if rdbTpPessoa.ItemIndex = 0 then
  begin
    gbxJuridica.BringToFront;
  end
  else if rdbTpPessoa.ItemIndex = 1 then
  begin
    gbxFisica.BringToFront;
  end;
  gbxJuridica.Enabled := rdbTpPessoa.ItemIndex = 0;
  gbxJuridica.Visible := rdbTpPessoa.ItemIndex = 0;
  lblrzsocial.visible := rdbTpPessoa.ItemIndex = 0;
  edtrzsocial.Visible := rdbTpPessoa.ItemIndex = 0;
  gbxFisica.Enabled   := rdbTpPessoa.ItemIndex <> 0;
  gbxFisica.Visible   := rdbTpPessoa.ItemIndex <> 0;
end;

procedure TfrmNovoCliente.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((qry.State = dsinsert) or (qry.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet));
  end;
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmNovoCliente.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmNovoCliente.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmNovoCliente.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmNovoCliente.FormCreate(Sender: TObject);
begin
  cliente := Tcliente.create;
  cbxcdrmatividade.Visible := empresa.cliente.bormatividade;
  lblrmatividade.Visible := empresa.cliente.bormatividade;

  lblrepresentante.Visible := Empresa.comercial.representante.bo;
  cbxcdrepresentante.Visible := Empresa.comercial.representante.bo;

  lblnucntcontabil.Visible := empresa.bocodigocontabil;
  edtnucntcontabil.visible := empresa.bocodigocontabil;

  lblcdtpcliente.Visible := empresa.cliente.botpcliente;
  cbxcdtpcliente.Visible := empresa.cliente.botpcliente;

  cbxcdfuncionariovendedor.Visible := empresa.cliente.bofuncionariovendedor;
  lbltecnico.Visible := empresa.cliente.bofuncionariovendedor;
  set_abrirtabela;

  lbltpregimne.Visible  := empresa.tpregime <> _S;
  cbxcdtpregime.Visible := empresa.tpregime <> _S;
end;

procedure TfrmNovoCliente.FormDestroy(Sender: TObject);
begin
  freeandnil(cliente);
  freeandnil(registro);
end;

procedure TfrmNovoCliente.FormShow(Sender: TObject);
begin
  actNovoExecute(nil);
  edtNome.SetFocus;
end;

procedure TfrmNovoCliente.edtcodigoExit(Sender: TObject);
begin
  if (edtcodigo.Text <> '') and CodigoExiste(_CLIENTE, edtcodigo.Text) then
  begin
    MessageDlg('Código do Cliente já existe.', mtInformation, [mbOK], 0);
    edtcodigo.SetFocus;
    Abort;
  end;
  colorexit(sender);
end;

procedure TfrmNovoCliente.edtnucepExit(Sender: TObject);
begin
  if (not edtnucep.DataBinding.Field.IsNull) and (edtnucep.DataBinding.Field.AsString <> '') and
     (edtnucep.DataBinding.Field.Value <> edtnucep.DataBinding.Field.OldValue) and consistircep(edtnucep.DataBinding.Field) then
  begin
    cbxcdufExit(nil);
  end;
  colorexit(sender);
end;

procedure TfrmNovoCliente.edtnufaxKeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #13 then
  begin
    Exit;
  end;
  if qry.fieldbyname(_tppessoa).asstring = _J then
  begin
    edtnucnpj.SetFocus;
  end
  else
  begin
    edtnucpf.SetFocus;
  end;
end;

procedure TfrmNovoCliente.cbxcdrmatividadeEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_rmatividade);
end;

procedure TfrmNovoCliente.cbxcdrepresentanteEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_representante);
end;

procedure TfrmNovoCliente.cbxcdtpclienteEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpcliente);
end;

procedure TfrmNovoCliente.cbxcdfuncionariovendedorEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure TfrmNovoCliente.btnrmatividadeClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_rmatividade, Maiuscula(_ramo+' '+_atividade));
  if codigo <> '' then
  begin
    abrir_tabela(_rmatividade);
    cbxcdrmatividade.EditValue := codigo;
  end;
end;

procedure TfrmNovoCliente.set_abrirtabela;
begin
  cbxcduf.Properties.ListSource        := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);

  cbxcdstcliente.Properties.ListSource            := abrir_tabela(_stcliente);
  cbxcdtpregime.Properties.ListSource             := abrir_tabela(_tpregime);
  cbxcdtpcliente.Properties.ListSource            := abrir_tabela(_tpcliente);
  cbxcdrmatividade.Properties.ListSource          := abrir_tabela(_rmatividade);
  cbxcdfuncionariovendedor.Properties.ListSource  := abrir_tabela(_funcionario);
  cbxcdrepresentante.Properties.ListSource        := abrir_tabela(_representante);
  cbxcdindiedest.Properties.ListSource            := abrir_tabela(_indiedest);
end;

end.

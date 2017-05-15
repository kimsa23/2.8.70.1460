unit unovofornecedor;

interface

uses
  System.Actions, System.UITypes, System.Variants,
  forms, Menus, Classes, ActnList, ComCtrls, sysutils, StdCtrls, ToolWin, Controls,
  windows, dialogs, Mask, Buttons, ExtCtrls,
  DB, DBClient,
  udatahora, ustrings, urotinas, uregistro, uvalidadocumento, uconstantes, ulocalizar,
  classeempresa, classeconsiste,
  classeRegistro, classegerar, classeregistrainformacao, classeretornasql, classefornecedor,
  cxLookAndFeelPainters, cxDBEdit, cxButtons, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxCalendar,
  cxCheckComboBox, cxDBCheckComboBox, cxMRUEdit, cxRadioGroup, cxLookAndFeels,
  cxTextEdit, cxPC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmNovoFornecedor = class(TForm)
    act: TActionList;
    actSalvar1: TAction;
    actCancelar1: TAction;
    dts: TDataSource;
    Label3: TLabel;
    lblrzsocial: TLabel;
    gbxJuridica: TcxGroupBox;
    Label24: TLabel;
    Label29: TLabel;
    edtnucnpj: TcxDBMaskEdit;
    edtnuinscest: TcxDBTextEdit;
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
    edtnmconjuge: TcxDBTextEdit;
    edtdtnascimento: TcxDBDateEdit;
    cbxcdestcivil: TcxDBComboBox;
    cbxcdsexo: TcxDBComboBox;
    edtnmpai: TcxDBTextEdit;
    edtnmmae: TcxDBTextEdit;
    edtnuinscest2: TcxDBTextEdit;
    edtnuidentid: TcxDBTextEdit;
    edtnucpf: TcxDBMaskEdit;
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
    lbl1: TLabel;
    edtnufax: TcxDBMaskEdit;
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
    edtemail: TcxDBTextEdit;
    edtnufone3: TcxDBMaskEdit;
    rdbtppessoa: TcxDBRadioGroup;
    edtRzSocial: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    btncancelar: TcxButton;
    btnsalvar: TcxButton;
    Label35: TLabel;
    edtdtcadastro: TcxDBDateEdit;
    lblCDINDIEDEST: TLabel;
    cbxcdindiedest: TcxDBLookupComboBox;
    qry: TFDQuery;
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelar1Execute(Sender: TObject);
    procedure edtNuFaxKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeExit(Sender: TObject);
    procedure edtNomePropertiesChange(Sender: TObject);
    procedure rdbtppessoaPropertiesChange(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure edtnucepExit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private      { Private declarations }
    fornecedor : TFornecedor;
    registro : TRegistro;
    procedure set_mascara_numero_fone_de_acordo_com_estado;
    procedure set_abrirtabela;
  public  { Public declarations }
    function Novo(fornecedor : TFornecedor=nil):Largeint;
  end;

var
  frmNovoFornecedor: TfrmNovoFornecedor;

implementation

uses
  uDtmMain;

{$R *.DFM}

const
  exibe    = 'Fornecedor';
  artigoI  = 'o';

function TfrmNovoFornecedor.Novo(fornecedor : TFornecedor=nil):Largeint;
begin
  result := 0;
  frmNovofornecedor            := TFrmNovofornecedor.create(self);
  //frmNovofornecedor.fornecedor := TFornecedor.create;
  try
    frmNovoFornecedor.fornecedor := fornecedor;
    frmNovofornecedor.registro := tregistro.create(frmNovofornecedor, _fornecedor, exibe, _o, frmNovofornecedor.qry, frmNovofornecedor.dts, nil);
    frmNovofornecedor.ShowModal;
    if frmnovofornecedor.ModalResult = mrok then
    begin
      result := frmnovofornecedor.qry.fieldbyname(_cdfornecedor).AsLargeInt;
    end;
  finally
    //freeandnil(frmnovofornecedor.fornecedor);
    freeandnil(frmnovofornecedor);
  end;
end;

procedure TfrmNovoFornecedor.qryBeforePost(DataSet: TDataSet);
begin
  ConsisteCNPJ(dataset, _fornecedor, exibe, Empresa.fornecedor.bocnpjrepetido);
  ConsisteCPF (dataset, _fornecedor, exibe, Empresa.fornecedor.bocpfrepetido);
  if Dataset.fieldbyname(_tppessoa).AsString = _J then
  begin
    if empresa.fornecedor.bocnpjobrigatorio then
    begin
      if Dataset.fieldbyname(_nucnpj).asstring = '' then
      begin
        gbxJuridica.BringToFront;
        messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CNPJ]), mtinformation, [mbok], 0);
        Dataset.fieldbyname(_nucnpj).FocusControl;
        abort;
      end;
      if Dataset.fieldbyname(_nuinscest).asstring = '' then
      begin
        gbxJuridica.BringToFront;
        messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Inscricao_estadual]), mtinformation, [mbok], 0);
        Dataset.fieldbyname(_nuinscest).FocusControl;
        abort;
      end;
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
    if empresa.fornecedor.bocpfobrigatorio and (Dataset.fieldbyname(_nucpf).asstring = '') then
    begin
      gbxFisica.BringToFront;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CPF]), mtinformation, [mbok], 0);
      Dataset.fieldbyname(_nucpf).FocusControl;
      abort;
    end;
    Dataset.fieldbyname(_nucnpj).Clear;
  end;
  ConsisteInscricaoEstadual(dataset, gbxjuridica, gbxfisica, tedit(edtnuinscest), tedit(edtnuinscest2));
  if not qry.fieldbyname(_DTCADASTRO).IsNull then
  begin
    if qry.fieldbyname(_DTCADASTRO).AsDateTime > dtbanco then
    begin
      messagedlg('Data do Cadastro do Fornecedor não pode ser maior do que a data atual.'#13'Digite outra data para continuar.', mtinformation, [mbok], 0);
      qry.fieldbyname(_DTCADASTRO).FocusControl;
      abort;
    end;
  end
  else
  begin
    qry.fieldbyname(_DTCADASTRO).AsDateTime := dtbanco;
  end;
  if (empresa.fornecedor.bocdreduzido) or
     ((not empresa.fornecedor.bocnpjobrigatorio) and (DataSet.fieldbyname(_nucnpj).AsString = '')) or
     ((not empresa.fornecedor.bocpfobrigatorio) and (DataSet.fieldbyname(_nucpf).AsString = '')) then
  begin
    Dataset.FieldByName(_cdfornecedor).asstring := GerarCodigo(_fornecedor);
  end
  else if DataSet.fieldbyname(_nucnpj).AsString <> '' then
  begin
    Dataset.fieldbyname(_cdfornecedor).asstring := removercaracteres(DataSet.fieldbyname(_nucnpj).AsString)
  end
  else
  begin
    Dataset.fieldbyname(_cdfornecedor).asstring := removercaracteres(DataSet.fieldbyname(_nucpf).AsString);
  end;
  registro.set_update(qry);
end;

procedure TfrmNovoFornecedor.qryNewRecord(DataSet: TDataSet);
begin
  dataset.FieldByName(_cdpais).asinteger         := _nscpais;
  dataset.fieldbyname(_CDSTfornecedor).AsInteger := qregistro.Codigo_status_novo(_fornecedor);
  dataset.fieldbyname(_tppessoa).asstring        := _J;
  if dataset.fieldbyname(_tppessoa).asstring = ''  then
  begin
    exit
  end
  else if dataset.fieldbyname(_tppessoa).asstring = _J then
  begin
    gbxJuridica.BringToFront
  end
  else if dataset.fieldbyname(_tppessoa).asstring = _F then
  begin
    gbxFisica.BringToFront;
  end;
  gbxJuridica.Enabled := dataset.fieldbyname(_tppessoa).asstring = _J;
  gbxJuridica.Visible := dataset.fieldbyname(_tppessoa).asstring = _J;
  lblrzsocial.visible := dataset.fieldbyname(_tppessoa).asstring = _J;
  edtrzsocial.Visible := dataset.fieldbyname(_tppessoa).asstring = _J;
  gbxFisica.Enabled   := dataset.fieldbyname(_tppessoa).asstring <> _J;
  gbxFisica.Visible   := dataset.fieldbyname(_tppessoa).asstring <> _J;
  qry.fieldbyname(_DTCADASTRO).AsDateTime := dtbanco;
end;

procedure TfrmNovoFornecedor.actSalvar1Execute(Sender: TObject);
begin
  qry.ApplyUpdates(0);
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  self.ModalResult := mrok;
end;

procedure TfrmNovoFornecedor.actCancelar1Execute(Sender: TObject);
begin
  qry.CancelUpdates;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  close;
end;

procedure TfrmNovoFornecedor.edtNuFaxKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if qry.fieldbyname(_tppessoa).asstring = _J then
    begin
      edtnucnpj.SetFocus
    end
    else
    begin
      edtnucpf.SetFocus;
    end;
  end;
end;

procedure TfrmNovoFornecedor.edtNomeExit(Sender: TObject);
begin
  if (qry.fieldbyname(_rzsocial).IsNull) and (not qry.fieldbyname(_nmfornecedor).isnull) then
  begin
    qry.fieldbyname(_rzsocial).asstring := qry.fieldbyname(_nmfornecedor).asstring;
  end;
  colorexit(sender);
end;

procedure TfrmNovoFornecedor.edtNomePropertiesChange(Sender: TObject);
begin
  if qry.fieldbyname(_tppessoa).AsString = _F then
  begin
    qry.fieldbyname(_rzsocial).asstring := tedit(sender).text;
  end;
end;

procedure TfrmNovoFornecedor.rdbtppessoaPropertiesChange(Sender: TObject);
begin
  if rdbTpPessoa.ItemIndex = -1 then
  begin
    exit
  end;
  if rdbTpPessoa.ItemIndex = 0 then
  begin
    gbxJuridica.BringToFront;
    edtnucpf.Clear;
  end
  else if rdbTpPessoa.ItemIndex = 1 then
  begin
    gbxFisica.BringToFront;
    edtnucnpj.Clear;
  end;
  gbxJuridica.Enabled := rdbTpPessoa.ItemIndex = 0;
  gbxJuridica.Visible := rdbTpPessoa.ItemIndex = 0;
  lblrzsocial.visible := rdbTpPessoa.ItemIndex = 0;
  edtrzsocial.Visible := rdbTpPessoa.ItemIndex = 0;
  gbxFisica.Enabled   := rdbTpPessoa.ItemIndex <> 0;
  gbxFisica.Visible   := rdbTpPessoa.ItemIndex <> 0;
end;

procedure TfrmNovoFornecedor.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((qry.State = dsinsert) or (qry.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet)); //dtmmain.cdsmunicipio);
  end;
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmNovoFornecedor.edtnucepExit(Sender: TObject);
begin
  if (not edtnucep.DataBinding.Field.IsNull) and (edtnucep.DataBinding.Field.AsString <> '') and
     (edtnucep.DataBinding.Field.Value <> edtnucep.DataBinding.Field.OldValue) and
      consistircep(edtnucep.DataBinding.Field) then
  begin
    cbxcdufExit(nil);
  end;
  colorexit(sender);
end;

procedure TfrmNovoFornecedor.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmNovoFornecedor.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmNovoFornecedor.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmNovoFornecedor.FormCreate(Sender: TObject);
begin
  set_abrirtabela;
end;

procedure TfrmNovoFornecedor.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure TfrmNovoFornecedor.FormShow(Sender: TObject);
begin
  qry.Open;
  if registro.Novo(nil) then
  begin
    cbxcdufExit(frmNovofornecedor.cbxcduf);
    //frmNovofornecedor.qry.open;
    qry.fieldbyname(_NMFORNECEDOR).AsString := fornecedor.nmfornecedor;
    qry.fieldbyname(_rzsocial).AsString     := fornecedor.rzsocial;
    qry.fieldbyname(_dsendereco).AsString   := fornecedor.dsendereco;
    qry.fieldbyname(_dsnumero).AsString     := RemoverCaracterInicio(fornecedor.dsnumero, _0);
    qry.fieldbyname(_dscomplemento).AsString:= fornecedor.dscomplemento;
    qry.fieldbyname(_nmbairro).AsString     := fornecedor.nmbairro;
    qry.fieldbyname(_cduf).AsInteger        := fornecedor.cduf;
    qry.fieldbyname(_cdmunicipio).AsInteger := fornecedor.cdmunicipio;
    qry.fieldbyname(_nucep).AsString        := fornecedor.nucep;
    qry.fieldbyname(_nufone1).AsString      := fornecedor.nufone1;
    qry.fieldbyname(_nucnpj).AsString       := fornecedor.nucnpj;
    qry.fieldbyname(_nuinscest).AsString    := fornecedor.nuinscest;
  end;
end;

procedure TfrmNovoFornecedor.set_mascara_numero_fone_de_acordo_com_estado;
begin
  if varisnull(cbxcduf.EditValue) or (not BooleandoCodigo(_uf, cbxcduf.EditValue, _bodigito9)) then
  begin
    edtnufone1.Properties.EditMask := _99_99999_9999;
    edtnufone2.Properties.EditMask := _99_99999_9999;
    edtnufone3.Properties.EditMask := _99_99999_9999;
    edtnufax.Properties.EditMask   := _99_99999_9999;
  end
  else
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
    edtnufax.Properties.EditMask   := _99_9999_9999;
  end;
end;

procedure TfrmNovoFornecedor.set_abrirtabela;
begin
  cbxcduf.Properties.ListSource        := abrir_tabela(_uf);
  cbxcdindiedest.Properties.ListSource := abrir_tabela(_indiedest);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
end;

end.

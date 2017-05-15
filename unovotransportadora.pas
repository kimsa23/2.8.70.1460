unit unovotransportadora;

interface

uses
  system.UITypes,
  forms, Menus, Classes, ActnList, ComCtrls, ToolWin, sysutils, StdCtrls,
  dialogs, Controls, Mask, Buttons, ExtCtrls,
  ustrings, uConstantes, urotinas, uregistro, udatahora,
  classeTransportadora, classeconsiste, classegerar, classeendereco,
  classeRegistro, classeregistrainformacao, classeempresa,
  cxLookAndFeelPainters, cxGraphics,
  cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, cxGroupBox, cxRadioGroup, cxDBEdit,
  cxDropDownEdit, cxMaskEdit, cxCalendar, cxTextEdit, cxControls,
  cxContainer, cxEdit,
  DB, dbclient,
  cxLookAndFeels,
  System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmNovoTransportadora = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actSalvar1: TAction;
    actCancelar1: TAction;
    dts: TDataSource;
    Bevel1: TBevel;
    Label3: TLabel;
    lblrzsocial: TLabel;
    gbxJuridica: TcxGroupBox;
    Label24: TLabel;
    Label29: TLabel;
    edtnuinscest: TcxDBTextEdit;
    edtnucnpj: TcxDBMaskEdit;
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
    rdbtppessoa: TcxDBRadioGroup;
    edtRzSocial: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    btncancelar: TcxButton;
    btnsalvar: TcxButton;
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
    edtnufax: TcxDBMaskEdit;
    edtnufone2: TcxDBMaskEdit;
    edtnufone1: TcxDBMaskEdit;
    edtNuCxPostal: TcxDBTextEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    edtnucep: TcxDBMaskEdit;
    edtnufone3: TcxDBMaskEdit;
    qry: TFDQuery;
    procedure nextcontrol(Sender: TObject; var Key: Char);
    procedure edtNuFaxKeyPress(Sender: TObject; var Key: Char);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelar1Execute(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure rdbtppessoaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtnucepExit(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
  private      { Private declarations }
    Transportadora : TTransportadora;
    registro : TRegistro;
    procedure set_mascara_numero_fone_de_acordo_com_estado;
  public  { Public declarations }
    function Novo:LargeInt;
  end;

var
  frmNovoTransportadora: TfrmNovoTransportadora;

implementation

uses uDtmMain, Variants;

{$R *.DFM}

const
  tbl      = _TRANSPORTADORA;
  exibe    = 'Transportadora';
  artigoI  = 'a';

function TfrmNovoTransportadora.Novo:LargeInt;
begin
  frmNovoTransportadora := TFrmNovoTransportadora.create(self);
  frmNovoTransportadora.Transportadora := TTransportadora.create;
  try
    frmNovoTransportadora.ShowModal;
    TClientDataSet(frmNovoTransportadora.cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
    if frmnovoTransportadora.ModalResult = mrok then
    begin
      result := frmnovoTransportadora.qry.fieldbyname(_CDTRANSPORTADORA).AsLargeInt;
    end;
  finally
    freeandnil(frmnovoTransportadora.Transportadora);
    freeandnil(frmnovoTransportadora);
  end;
end;

procedure TfrmNovoTransportadora.qryBeforePost(DataSet: TDataSet);
begin
  ConsisteCNPJ( dataset, tbl, exibe);
  ConsisteCPF ( dataset, tbl, exibe, false);
  if dataset.FieldByName(_tppessoa).AsString = _J then
  begin
    if dataset.FieldByName(_nucnpj).asstring = '' then
    begin
      gbxJuridica.BringToFront;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CNPJ]), mtinformation, [mbok], 0);
      dataset.FieldByName(_nucnpj).FocusControl;
      abort;
    end;
    dataset.FieldByName(_nucpf).Clear;
    dataset.FieldByName(_nuidentid).clear;
    dataset.FieldByName(_dtnascimento).clear;
    dataset.FieldByName(_nmmae).Clear;
    dataset.FieldByName(_nmpai).clear;
    dataset.FieldByName(_cdsexo).clear;
    dataset.FieldByName(_cdestcivil).clear;
    dataset.FieldByName(_nmconjuge).clear;
  end
  else if dataset.FieldByName(_tppessoa).AsString = _F then // Pessoa Física - obrigatóriedade de CPF
  begin
    if empresa.fornecedor.bocpfobrigatorio and (dataset.FieldByName(_nucpf).asstring = '') then
    begin
      gbxFisica.BringToFront;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CPF]), mtinformation, [mbok], 0);
      dataset.FieldByName(_nucpf).FocusControl;
      abort;
    end;
    dataset.FieldByName(_nucnpj).Clear;
  end;
  ConsisteInscricaoEstadual( dataset, gbxjuridica, gbxfisica, tedit(edtnuinscest), tedit(edtnuinscest2));
  qendereco.check_municipio_obrigatorio(dataset);
  qendereco.check_municipio_uf         ( dataset);
  // gera codigo do fornecedor automaticamente
  if empresa.transportadora.bocdreduzido or ((DataSet.fieldbyname(_nucnpj).AsString = '') and (DataSet.fieldbyname(_nucpf).AsString = '')) then
  begin
    Dataset.FieldByName(_cdtransportadora).asstring := GerarCodigo( tbl);
  end
  else if DataSet.fieldbyname(_nucnpj).AsString <> '' then
  begin
    Dataset.fieldbyname(_cd+tbl).asstring := removercaracteres(DataSet.fieldbyname(_nucnpj).AsString)
  end
  else
  begin
    Dataset.fieldbyname(_cd+tbl).asstring := removercaracteres(DataSet.fieldbyname(_nucpf).AsString);
  end;
  dataset.FieldByName(_dtcadastro).AsDateTime := dtbanco;
  registro.set_update(dataset);
end;

procedure TfrmNovoTransportadora.qryNewRecord(DataSet: TDataSet);
begin
  dataset.FieldByName(_NMTRANSPORTADORA).FocusControl;
  edtnome.SelectAll;
  dataset.FieldByName(_CDSTTRANSPORTADORA).AsInteger := qregistro.Codigo_status_novo( tbl);
  dataset.FieldByName(_tppessoa).asstring := _J;
  gbxJuridica.Enabled := dataset.FieldByName(_tppessoa).asstring = _J;
  lblrzsocial.visible := dataset.FieldByName(_tppessoa).asstring = _J;
  edtrzsocial.Visible := dataset.FieldByName(_tppessoa).asstring = _J;
  gbxFisica.Enabled   := dataset.FieldByName(_tppessoa).asstring <> _J;
end;

procedure TfrmNovoTransportadora.actNovoExecute(Sender: TObject);
begin
  qry.open;
  registro.Novo(Sender);
  //cds.Insert;
  cbxcdufExit(cbxcduf); 
end;

procedure TfrmNovoTransportadora.actSalvar1Execute(Sender: TObject);
begin
  qry.ApplyUpdates(0);
  self.ModalResult := mrok;
end;

procedure TfrmNovoTransportadora.actCancelar1Execute(Sender: TObject);
begin
  qry.CancelUpdates;
  close;
end;

procedure TfrmNovoTransportadora.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure TfrmNovoTransportadora.edtNuFaxKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if qry.FieldByName(_TPPESSOA).asstring = _J then
    begin
      edtnucnpj.SetFocus
    end
    else
    begin
      edtnucpf.SetFocus;
    end;
  end;
end;

procedure TfrmNovoTransportadora.edtNomeExit(Sender: TObject);
begin
  if (qry.FieldByName(_rzsocial).IsNull) and (not qry.FieldByName(_NMTRANSPORTADORA).isnull) then
  begin
    qry.FieldByName(_rzsocial).asstring := qry.FieldByName(_NMTRANSPORTADORA).asstring;
  end;
end;

procedure TfrmNovoTransportadora.edtnucepExit(Sender: TObject);
begin
  if (not edtnucep.DataBinding.Field.IsNull) and (edtnucep.DataBinding.Field.AsString <> '') and
     (edtnucep.DataBinding.Field.Value <> edtnucep.DataBinding.Field.OldValue) and consistircep( edtnucep.DataBinding.Field) then
  begin
    cbxcdufExit(nil);
  end;
end;

procedure TfrmNovoTransportadora.FormShow(Sender: TObject);
begin
  registro := tregistro.create(self,  tbl, exibe, _o, qry, dts, nil);
  actNovoExecute(nil);
end;

procedure TfrmNovoTransportadora.rdbtppessoaPropertiesChange(Sender: TObject);
begin
  if rdbTpPessoa.ItemIndex = -1 then
  begin
    exit
  end;
  if rdbTpPessoa.ItemIndex = 0 then
  begin
    gbxJuridica.BringToFront
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

procedure TfrmNovoTransportadora.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    //colorexit(Sender);
  end;
  if ((qry.State = dsinsert) or (qry.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet));
  end;
  set_mascara_numero_fone_de_acordo_com_estado;

  {
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcduf.Properties.ListSource.DataSet)); //dtmmain.cdsmunicipio);
  end;
  set_mascara_numero_fone_de_acordo_com_estado;
  }
end;

procedure TfrmNovoTransportadora.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure TfrmNovoTransportadora.FormCreate(Sender: TObject);
begin
  cbxcduf.Properties.ListSource        := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
end;

procedure TfrmNovoTransportadora.set_mascara_numero_fone_de_acordo_com_estado;
begin
  if VarIsNull(cbxcduf.EditValue) then
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
    edtnufax.Properties.EditMask   := _99_9999_9999;
    Exit;
  end;
  if qregistro.BooleandoCodigo( _uf, cbxcduf.EditValue, _bodigito9) then
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

end.

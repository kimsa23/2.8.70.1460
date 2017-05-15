unit unovopaciente;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Classes, ActnList, ComCtrls, sysutils, StdCtrls, ToolWin, Variants,
  Windows, dialogs, Controls, Buttons, Mask, ExtCtrls,
  ustrings, ulocalizar, urotinas, uregistro, uconstantes, udatahora,
  classeempresa, classeconsiste, classegerar, classeendereco,
  classeRetornaSql, classeform, classeRegistro, classeregistrainformacao, classepaciente,
  DB, DBClient, Provider, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxLookAndFeelPainters, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtons, cxCalendar, cxGroupBox, cxRadioGroup, cxLookAndFeels, cxPC,
  cxSpinEdit, cxCheckBox, SqlExpr, DBCtrls, cxButtonEdit, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmNovoPaciente = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actSalvar1: TAction;
    actCancelar1: TAction;
    dts: TDataSource;
    Label3: TLabel;
    Bevel1: TBevel;
    gbxFisica: TcxGroupBox;
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
    edtnucxpostal: TcxDBMaskEdit;
    edtnufone1: TcxDBMaskEdit;
    edtnufone2: TcxDBMaskEdit;
    edtnucep: TcxDBMaskEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    lblcodigo: TLabel;
    edtcodigo: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    edtnufone3: TcxDBMaskEdit;
    lbl2: TLabel;
    cbxcdpais: TcxDBLookupComboBox;
    Label27: TLabel;
    Label61: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl4: TLabel;
    edtnmconjuge: TcxDBTextEdit;
    edtdtnascimento: TcxDBDateEdit;
    cbxcdestcivil: TcxDBComboBox;
    cbxcdsexo: TcxDBComboBox;
    edtnmpai: TcxDBTextEdit;
    edtnmmae: TcxDBTextEdit;
    edtNUINSS: TcxDBTextEdit;
    edtnuidentid: TcxDBTextEdit;
    edtnucpf: TcxDBMaskEdit;
    edtNUCRACHA: TcxDBTextEdit;
    edtNUCARTEIRATRABALHO: TcxDBTextEdit;
    edtNUTITULOELEITOR: TcxDBTextEdit;
    Label38: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    lblfuncao: TLabel;
    lblescolaridade: TLabel;
    edthomepage: TcxDBTextEdit;
    edtemail: TcxDBTextEdit;
    cbxcdstpaciente: TcxDBLookupComboBox;
    cbxcdprofissao: TcxDBLookupComboBox;
    cbxcdescolaridade: TcxDBLookupComboBox;
    gbxcadastro: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label35: TLabel;
    edtDTADMISSAO: TcxDBDateEdit;
    edtDTDEMISSAO: TcxDBDateEdit;
    edtdtcadastro: TcxDBDateEdit;
    qry: TFDQuery;
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelar1Execute(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure cbxcdufExit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtcodigoExit(Sender: TObject);
    procedure edtnucepExit(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
  private      { Private declarations }
    paciente : TPaciente;
    registro : TRegistro;
    cdcliente : string;
    procedure set_mascara_numero_fone_de_acordo_com_estado;
  public  { Public declarations }
    function Novo(cdcliente:string):integer;
  end;

var
  frmNovoPaciente: TfrmNovoPaciente;

implementation

uses uDtmMain;

{$R *.DFM}

const
  tbl      = 'Paciente';
  exibe    = 'Paciente';

procedure TfrmNovoPaciente.set_mascara_numero_fone_de_acordo_com_estado;
begin
  if varisnull(cbxcduf.EditValue) or (not BooleandoCodigo(_uf, cbxcduf.EditValue, _bodigito9)) then
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
  end
  else
  begin
    edtnufone1.Properties.EditMask := _99_99999_9999;
    edtnufone2.Properties.EditMask := _99_99999_9999;
    edtnufone3.Properties.EditMask := _99_99999_9999;
  end;
end;

function TfrmNovoPaciente.Novo(cdcliente:string):integer;
begin
  frmNovoPaciente := TfrmNovoPaciente.create(self);
  try
    frmNovoPaciente.cdcliente := cdcliente;
    frmNovoPaciente.registro := tregistro.create(frmNovoPaciente, tbl, exibe, _o, frmNovoPaciente.qry, frmNovoPaciente.dts, nil);
    frmNovoPaciente.paciente := tpaciente.create;
    frmNovoPaciente.ShowModal;
    if frmNovoPaciente.ModalResult = mrok then
    begin
      result := frmNovoPaciente.qry.fieldbyname(_cd+tbl).asinteger;
    end;
  finally
    frmNovoPaciente.paciente.Free;
    freeandnil(frmNovoPaciente);
  end;
end;

procedure TfrmNovoPaciente.qryBeforePost(DataSet: TDataSet);
begin
  ConsisteCPF (dataset, tbl, exibe, true);
  if not DataSet.fieldbyname(_DTCADASTRO).IsNull then
  begin
    if DataSet.fieldbyname(_DTCADASTRO).AsDateTime > dtbanco then
    begin
      messagedlg('Data do Cadastro do Paciente não pode ser maior do que a data atual.', mtinformation, [mbok], 0);
      DataSet.fieldbyname(_DTCADASTRO).FocusControl;
      abort;
    end;
  end
  else
  begin
    DataSet.fieldbyname(_DTCADASTRO).AsDateTime := dtbanco;
  end;
  qendereco.check_municipio_uf(dataset);
  if Dataset.FieldByName(_cdpaciente).AsString = '' then
  begin
    Dataset.FieldByName(_cdpaciente).asstring := GerarCodigo(tbl);
  end;
  DataSet.FieldByName(_cdcliente).AsString := cdcliente;
  registro.set_update(DataSet);
end;

procedure TfrmNovoPaciente.qryNewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname(_nmpaciente).FocusControl;
  edtnome.SelectAll;
  dataset.fieldbyname(_cdstpaciente).AsInteger := qregistro.Codigo_status_novo(tbl);
  cbxcdufExit(nil);
  DataSet.fieldbyname(_DTCADASTRO).AsDateTime := dtbanco;
end;

procedure TfrmNovoPaciente.actNovoExecute(Sender: TObject);
begin
  if registro.Novo(nil) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmNovoPaciente.actSalvar1Execute(Sender: TObject);
begin
  if qry.FieldByName(_nmpaciente).AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    qry.FieldByName(_nmpaciente).FocusControl;
    Abort;
  end;
  qry.ApplyUpdates(0);
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  self.ModalResult := mrok;
end;

procedure TfrmNovoPaciente.actCancelar1Execute(Sender: TObject);
begin
  qry.CancelUpdates;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  close;
end;

procedure TfrmNovoPaciente.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmNovoPaciente.cbxcdufExit(Sender: TObject);
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

procedure TfrmNovoPaciente.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmNovoPaciente.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmNovoPaciente.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmNovoPaciente.FormCreate(Sender: TObject);
begin
  cbxcduf.Properties.ListSource            := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource     := abrir_tabela(_municipio);
  cbxcdescolaridade.Properties.ListSource  := abrir_tabela(_escolaridade);
  cbxcdstpaciente.Properties.ListSource    := abrir_tabela(_stpaciente);
  cbxcdprofissao.Properties.ListSource     := abrir_tabela(_profissao);
  cbxcdpais.Properties.ListSource          := abrir_tabela(_pais);
end;

procedure TfrmNovoPaciente.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure TfrmNovoPaciente.FormShow(Sender: TObject);
begin
  actNovoExecute(nil);
  edtcodigo.SetFocus;  
end;

procedure TfrmNovoPaciente.edtcodigoExit(Sender: TObject);
begin
  if (edtcodigo.Text <> '') and CodigoExiste(_paciente, edtcodigo.Text) then
  begin
    MessageDlg('Código do Paciente já existe.', mtInformation, [mbOK], 0);
    edtcodigo.SetFocus;
    Abort;
  end;
  colorexit(sender);
end;

procedure TfrmNovoPaciente.edtnucepExit(Sender: TObject);
begin
  if (not edtnucep.DataBinding.Field.IsNull) and (edtnucep.DataBinding.Field.AsString <> '') and
     (edtnucep.DataBinding.Field.Value <> edtnucep.DataBinding.Field.OldValue) and consistircep(edtnucep.DataBinding.Field) then
  begin
    cbxcdufExit(nil);
  end;
  colorexit(sender);
end;

end.

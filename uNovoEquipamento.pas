unit uNovoEquipamento;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Classes, ActnList, Mask, Buttons, Controls, ExtCtrls, dialogs,
  windows, sysutils, ComCtrls, ToolWin, StdCtrls,
  DB,
  uconstantes, urotinas, uregistroib, uregistro, ustrings,
  ulocalizar, ulocalizarcliente,
  classeequipamento, classeform, classeregistro, classeretornasql, classeconsiste, classegerar, classeregistrainformacao, classeempresa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxButtons, cxGroupBox, cxCalendar, cxDBEdit, cxDropDownEdit, cxCalc, cxSpinEdit,
  cxMaskEdit, cxButtonEdit, cxTextEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmNovoEquipamento = class(TForm)
    act: TActionList;
    actSalvar1: TAction;
    actCancelar1: TAction;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    gbxautorizada: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    cxGroupBox1: TcxGroupBox;
    lblmarca: TLabel;
    lblmodelo: TLabel;
    lblcor: TLabel;
    lblcontrato: TLabel;
    lblnuano: TLabel;
    lblcdtpeletricpneum: TLabel;
    lblnuserie: TLabel;
    lblnupatrimonio: TLabel;
    dts: TDataSource;
    edtnuserie: TcxDBTextEdit;
    edtnupatrimonio: TcxDBTextEdit;
    edtnuano: TcxDBSpinEdit;
    edtnunf: TcxDBTextEdit;
    edtvlcompra: TcxDBCalcEdit;
    edtdtcompra: TcxDBDateEdit;
    edtNUCERTIFICADOGARANTIA: TcxDBTextEdit;
    edtNMREVENDEDOR: TcxDBTextEdit;
    edtDTFABRICACAO: TcxDBDateEdit;
    btnmarca: TcxButton;
    btnmodelo: TcxButton;
    btncor: TcxButton;
    btntpeletricpneum: TcxButton;
    cbxcdmarca: TcxDBLookupComboBox;
    cbxcdmodelo: TcxDBLookupComboBox;
    cbxcdcor: TcxDBLookupComboBox;
    cbxcdcontrato: TcxDBLookupComboBox;
    cbxcdtpeletricpneum: TcxDBLookupComboBox;
    cbxcdfabricante: TcxDBLookupComboBox;
    edtcdmarca: TcxDBTextEdit;
    edtcdmodelo: TcxDBTextEdit;
    lblcliente: TLabel;
    lbltpordserv: TLabel;
    edtcdtpequipamento: TcxDBTextEdit;
    cbxcdtpequipamento: TcxDBLookupComboBox;
    btn1: TcxButton;
    lblnmequipamento: TLabel;
    edtnmequipamento: TcxDBTextEdit;
    cbxCDTPEQUIPAMENTO2: TcxDBLookupComboBox;
    btntpequipamento2: TcxButton;
    lblcdtpequipamento2: TLabel;
    edtCDCLIENTE: TcxDBButtonEdit;
    edtcdfornecedor: TcxDBButtonEdit;
    lblnmcliente: TLabel;
    lblnmfornecedor: TLabel;
    qry: TFDQuery;
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelar1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnmarcaClick(Sender: TObject);
    procedure btnmodeloClick(Sender: TObject);
    procedure btncorClick(Sender: TObject);
    procedure btntpeletricpneumClick(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure edtcdmodeloEnter(Sender: TObject);
    procedure edtcdmarcaEnter(Sender: TObject);
    procedure edtcdtpequipamentoEnter(Sender: TObject);
    procedure edtcdmodeloExit(Sender: TObject);
    procedure edtcdmarcaExit(Sender: TObject);
    procedure edtcdtpequipamentoExit(Sender: TObject);
    procedure cbxcdtpequipamentoEnter(Sender: TObject);
    procedure cbxcdmarcaEnter(Sender: TObject);
    procedure cbxcdmodeloEnter(Sender: TObject);
    procedure cbxcdtpequipamentoExit(Sender: TObject);
    procedure cbxcdmarcaExit(Sender: TObject);
    procedure cbxcdmodeloExit(Sender: TObject);
    procedure edtcdtpequipamentoPropertiesEditValueChanged(Sender: TObject);
    procedure btntpequipamento2Click(Sender: TObject);
    procedure edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCDCLIENTEExit(Sender: TObject);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
  private      { Private declarations }
    tbl : string;
    exibe : string;
    equipamento : TEquipamento;
    cdcliente, nuserie, nupatrimonio, cdtpequipamento, cdmarca, cdmodelo, cdcor : string;
    registro : tregistro;
    procedure setrecord;
  public  { Public declarations }
  end;

var
  frmNovoEquipamento: TfrmNovoEquipamento;

function equipamento_novo(cdcliente, nuserie, nupatrimonio, cdtpequipamento, cdmarca, cdmodelo, cdcor:string):integer;

implementation

uses ulocalizarfornecedor, uNovoTabela, uDtmMain;

{$R *.DFM}

function equipamento_novo(cdcliente, nuserie, nupatrimonio, cdtpequipamento, cdmarca, cdmodelo, cdcor:string):integer;
begin
  frmNovoequipamento := TFrmNovoEquipamento.create(nil);
  try
    frmnovoequipamento.cdcliente         := cdcliente;
    frmnovoequipamento.nuserie           := nuserie;
    frmnovoequipamento.nupatrimonio      := nupatrimonio;
    frmnovoequipamento.cdtpequipamento   := cdtpequipamento;
    frmnovoequipamento.cdmarca           := cdmarca;
    frmnovoequipamento.cdmodelo          := cdmodelo;
    frmnovoequipamento.cdcor             := cdcor;
    frmNovoEquipamento.ShowModal;
    if frmnovoEquipamento.ModalResult = mrok then
    begin
      result                         := frmnovoequipamento.qry.fieldbyname(_cdequipamento).AsInteger;
      frmnovoequipamento.modalresult := mrok;
    end;
  finally
    freeandnil(frmNovoequipamento);
  end;
end;

procedure TfrmNovoEquipamento.actSalvar1Execute(Sender: TObject);
begin
  if (equipamento.tpequipamento.bonuserieduplicado<> _s) and (codigoexiste(_equipamento, _nuserie, _string, qry.fieldbyname(_nuserie).asstring)) then
  begin
    messagedlg('Número de série duplicado com o equipamento '+CodigodoCampo(_equipamento, qry.fieldbyname(_nuserie).asstring, _nuserie)+'.'#13+
               'Digite outro número de série ou utilize o código acima.', mtinformation, [mbok], 0);
    exit;
  end;
  qry.ApplyUpdates(0);
  self.ModalResult := mrok;
end;

procedure TfrmNovoEquipamento.actCancelar1Execute(Sender: TObject);
begin
  qry.CancelUpdates;
  close;
end;

procedure TfrmNovoEquipamento.FormShow(Sender: TObject);
begin
  registro := tregistro.create(self, tbl, exibe, _o, qry, dts, nil);
  if not qry.Active then
  begin
    qry.sql.text := QRetornaSQL.get_select_from(_equipamento, _0);
    qry.Open;
  end;
  registro.Novo(Sender);
  if nuserie <> '' then
  begin
    qry.fieldbyname(_nuserie).AsString := nuserie;
  end;
  if nupatrimonio <> '' then
  begin
    qry.fieldbyname(_nu+_patrimonio).Asstring  := nupatrimonio;
  end;
  if cdtpequipamento <> '' then
  begin
    cbxcdtpequipamento.EditValue := cdtpequipamento;
  end;
  if cdmarca <> '' then
  begin
    cbxcdmarca.EditValue := cdmarca;
  end;
  if cdmodelo <> '' then
  begin
    cbxcdmodelo.EditValue := cdmodelo;
  end;
  if cdcor <> '' then
  begin
    cbxcdcor.EditValue := cdcor;
  end;
end;

procedure TfrmNovoEquipamento.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmNovoEquipamento.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmNovoEquipamento.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmNovoEquipamento.qryBeforePost(DataSet: TDataSet);
begin
  if lblnuserie.Visible and (equipamento.tpequipamento.bonuserieo = _s) and Dataset.Fieldbyname(_nuserie).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Serie]), mtinformation, [mbok], 0);
    Dataset.Fieldbyname(_nuserie).FocusControl;
    abort;
  end;
  if cbxcdtpequipamento.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo_de_Equipamento]), mtinformation, [mbok], 0);
    Dataset.Fieldbyname(_cdtpequipamento).FocusControl;
    abort;
  end;
  if (cbxcdmarca.Text = '') and (equipamento.tpequipamento.bomarcaobrigatorio = _s) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Marca]), mtinformation, [mbok], 0);
    Dataset.Fieldbyname(_cdmarca).FocusControl;
    abort;
  end;
  if (cbxcdmodelo.Text = '') and (equipamento.tpequipamento.bomodeloobrigatorio = _s) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Modelo]), mtinformation, [mbok], 0);
    Dataset.Fieldbyname(_cd+_modelo).FocusControl;
    abort;
  end;
  Dataset.fieldbyname(_cdequipamento).asstring := GerarCodigo(tbl);
  if Dataset.fieldbyname(_nmequipamento).Asstring = '' then
  begin
    if Dataset.fieldbyname(_nuserie).Asstring = '' then
    begin
      Dataset.fieldbyname(_nmequipamento).Asstring := Dataset.fieldbyname(_cdequipamento).asstring
    end
    else
    begin
      Dataset.fieldbyname(_nmequipamento).Asstring := Dataset.fieldbyname(_nuserie).Asstring;
    end;
  end;
  registro.set_update(dataset);
end;

procedure TfrmNovoEquipamento.qryNewRecord(DataSet: TDataSet);
begin
  dataset.FieldByName(_qtitem).AsInteger         := 1;
  dataset.FieldByName(_qtsaldo).AsInteger        := 0;
  dataset.FieldByName(_CDSTEQUIPAMENTO).AsInteger := qregistro.Codigo_status_novo(_equipamento);
end;

procedure TfrmNovoEquipamento.FormCreate(Sender: TObject);
begin
  tbl      := _Equipamento;
  exibe    := maiuscula(_Equipamento);
  lblnuserie.Caption                        := Empresa.equipamento.dsnuserie;
  lblnupatrimonio.Caption                   := empresa.equipamento.dsnupatrimonio;
  cbxcdtpequipamento.Properties.ListSource  := abrir_tabela(_tpequipamento);
  cbxcdtpequipamento2.Properties.ListSource := abrir_tabela(_tpequipamento2);
  cbxcdmarca.Properties.ListSource          := abrir_tabela(_marca);
  cbxcdmodelo.Properties.ListSource         := abrir_tabela(_modelo);
  cbxcdcor.Properties.ListSource            := abrir_tabela(_cor);
  cbxcdcontrato.Properties.ListSource       := abrir_tabela(_contrato);
  cbxCDTPELETRICPNEUM.Properties.ListSource := abrir_tabela(_tpeletricpneum);
  cbxcdfabricante.Properties.ListSource     := abrir_tabela(_fabricante);
  equipamento := tequipamento.create;
end;

procedure TfrmNovoEquipamento.FormDestroy(Sender: TObject);
begin
  freeandnil(registro);
  freeandnil(equipamento);
end;

procedure TfrmNovoEquipamento.btn1Click(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_tpequipamento, maiuscula(_Tipo+' '+_Equipamento));
  if codigo <> '' then
  begin
    abrir_tabela(_tpequipamento);
    cbxcdtpequipamento.EditValue := codigo;
    edtcdtpequipamento.Text      := codigo;
  end;
end;

procedure TfrmNovoEquipamento.btnmarcaClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_marca, maiuscula(_Marca));
  if codigo <> '' then
  begin
    abrir_tabela(_marca);
    cbxcdmarca.EditValue := codigo;
    edtcdmarca.Text      := codigo;
  end;
end;

procedure TfrmNovoEquipamento.btnmodeloClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_modelo, maiuscula(_Modelo));
  if codigo <> '' then
  begin
    abrir_tabela(_modelo);
    cbxcdmodelo.EditValue := codigo;
    edtcdmodelo.Text      := codigo;
  end;
end;

procedure TfrmNovoEquipamento.btncorClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_cor, maiuscula(_Cor));
  if codigo <> '' then
  begin
    abrir_tabela(_cor);
    cbxcdcor.EditValue := codigo;
  end;
end;

procedure TfrmNovoEquipamento.btntpeletricpneumClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_tpeletricpneum, maiuscula(_Tipo+' '+__Eletrico+' '+__Pneumatico));
  if codigo <> '' then
  begin
    abrir_tabela(_tpeletricpneum);
    cbxcdtpeletricpneum.EditValue := codigo;
  end;
end;

procedure TfrmNovoEquipamento.btntpequipamento2Click(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_tpequipamento2, maiuscula(_Tipo+' '+_Equipamento+' '+_2));
  if codigo <> '' then
  begin
    abrir_tabela(_tpequipamento2);
    cbxcdtpequipamento2.EditValue := codigo;
  end;
end;

procedure TfrmNovoEquipamento.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmNovoEquipamento.edtcdmodeloEnter(Sender: TObject);
begin
  abrir_tabela(_modelo);
  colorenter(sender);
end;

procedure TfrmNovoEquipamento.edtCDCLIENTEExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmNovoEquipamento.edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtCDCLIENTEPropertiesButtonClick(self, qry);
end;

procedure TfrmNovoEquipamento.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmNovoEquipamento.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, qry);
end;

procedure TfrmNovoEquipamento.edtcdmarcaEnter(Sender: TObject);
begin
  abrir_tabela(_marca);
  colorenter(sender);
end;

procedure TfrmNovoEquipamento.edtcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento);
  colorenter(sender);
end;

procedure TfrmNovoEquipamento.edtcdmodeloExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, _modelo, _modelo) then
  begin
    cbxcdmodelo.EditValue := edtcdmodelo.Text
  end
  else
  begin
    cbxcdmodelo.Clear;
  end;
  colorexit(Sender);
end;

procedure TfrmNovoEquipamento.edtcdmarcaExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, _marca, _marca) then
  begin
    cbxcdmarca.EditValue := edtcdmarca.Text
  end
  else
  begin
    cbxcdmarca.Clear;
  end;
  colorexit(Sender);
end;

procedure TfrmNovoEquipamento.edtcdtpequipamentoExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, _tpequipamento, _tpequipamento) then
  begin
    cbxcdtpequipamento.EditValue := edtcdtpequipamento.Text
  end
  else
  begin
    cbxcdtpequipamento.Clear;
  end;
  colorexit(Sender);
end;

procedure TfrmNovoEquipamento.cbxcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento);
  colorenter(sender);
end;

procedure TfrmNovoEquipamento.cbxcdmarcaEnter(Sender: TObject);
begin
  abrir_tabela(_marca);
  colorenter(sender);
end;

procedure TfrmNovoEquipamento.cbxcdmodeloEnter(Sender: TObject);
begin
  abrir_tabela(_modelo);
  colorenter(sender);
end;

procedure TfrmNovoEquipamento.cbxcdtpequipamentoExit(Sender: TObject);
begin
  if cbxcdtpequipamento.Text = '' then
  begin
    edtcdtpequipamento.Clear
  end
  else
  begin
    edtcdtpequipamento.Text := cbxcdtpequipamento.EditValue;
  end;
  colorexit(sender);
end;

procedure TfrmNovoEquipamento.cbxcdmarcaExit(Sender: TObject);
begin
  if cbxcdmarca.Text = '' then
  begin
    edtcdmarca.Clear
  end
  else
  begin
    edtcdmarca.Text := cbxcdmarca.EditValue;
  end;
  colorexit(sender);
end;

procedure TfrmNovoEquipamento.cbxcdmodeloExit(Sender: TObject);
begin
  if cbxcdmodelo.Text = '' then
  begin
    edtcdmodelo.Clear
  end
  else
  begin
    edtcdmodelo.Text := cbxcdmodelo.EditValue;
  end;
  colorexit(sender);
end;

procedure TfrmNovoEquipamento.edtcdtpequipamentoPropertiesEditValueChanged(Sender: TObject);
begin
  setrecord;
end;

procedure TfrmNovoEquipamento.setrecord;
begin
  equipamento.tpequipamento.Select(StrToInt(edtcdtpequipamento.Text));

  lblcdtpequipamento2.visible := equipamento.tpequipamento.botpequipamento2 = _s;
  cbxcdtpequipamento2.visible := equipamento.tpequipamento.botpequipamento2 = _s;

  lblcliente.Visible          := equipamento.tpequipamento.bocliente = _s;
  edtcdcliente.Visible        := equipamento.tpequipamento.bocliente = _s;

  lblcontrato.Visible         := Empresa.bocontrato;
  cbxcdcontrato.Visible       := lblcontrato.Visible;

  cbxcdtpeletricpneum.Visible := equipamento.tpequipamento.boeletricpneum = _s;
  lblcdtpeletricpneum.Visible := equipamento.tpequipamento.boeletricpneum = _s;
  btntpeletricpneum.Visible   := equipamento.tpequipamento.boeletricpneum = _s;

  gbxAutorizada.Visible       := equipamento.tpequipamento.boautorizada = _s;

  lblnuserie.Visible          := equipamento.tpequipamento.bonuserie = _s;
  edtnuserie.Visible          := equipamento.tpequipamento.bonuserie = _s;

  lblnupatrimonio.Visible     := equipamento.tpequipamento.bonupatrimonio = _s;
  edtNUPATRIMONIO.Visible     := equipamento.tpequipamento.bonupatrimonio = _s;

  lblcor.Visible              := equipamento.tpequipamento.bocor = _s;
  cbxcdcor.Visible            := equipamento.tpequipamento.bocor = _s;
  btncor.Visible              := equipamento.tpequipamento.bocor = _s;

  lblmarca.Visible            := equipamento.tpequipamento.bomarca = _s;
  edtcdmarca.Visible          := equipamento.tpequipamento.bomarca = _s;
  cbxcdmarca.Visible          := equipamento.tpequipamento.bomarca = _s;
  btnmarca.Visible            := equipamento.tpequipamento.bomarca = _s;

  lblmodelo.Visible           := equipamento.tpequipamento.bomodelo = _s;
  edtcdmodelo.Visible         := equipamento.tpequipamento.bomodelo = _s;
  cbxcdmodelo.Visible         := equipamento.tpequipamento.bomodelo = _s;
  btnmodelo.Visible           := equipamento.tpequipamento.bomodelo = _s;

  edtnuano.Visible    := equipamento.tpequipamento.bonuano = _s;
  lblnuano.visible    := equipamento.tpequipamento.bonuano = _s;

  if (equipamento.tpequipamento.bocliente = _s) and (cdcliente <> '') then
  begin
    qry.fieldbyname(_cdcliente).Asstring := cdcliente;
  end;
end;

end.

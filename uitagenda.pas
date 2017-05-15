unit uitagenda;

interface

uses
  System.Actions, System.UITypes, FireDAC.Stan.Param,FireDAC.Comp.Client,
  forms, Windows, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls,
  ComCtrls, Controls, Menus, ActnList, Graphics, Variants, Math,
  DBCtrls, DB,
  ustrings, uregistro, uconstantes, udatahora, ulocalizarcliente,
  classesaida, classeusuario, classeregistrainformacao, classegerar, classeform,
  classeexecutasql, classeempresa, classeretornasql, classeregistro, classeaplicacao,
  classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxButtons, cxLabel, cxCheckListBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxDBEdit,
  cxCalendar, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxSpinEdit, cxTimeEdit, dxBar, cxPCdxBarPopupMenu,
  cxBlobEdit, cxGroupBox, cxListView, cxDBLabel;

type
  Tfrmdlgitagenda = class(TForm)
    dts: TDataSource;
    lblsttarefa: TLabel;
    cbxcdstitagenda: TcxDBLookupComboBox;
    act: TActionList;
    actok: TAction;
    actcancelar: TAction;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnnovo: TcxButton;
    actnovo: TAction;
    btncopiar: TcxButton;
    actcopiar: TAction;
    lblfuncionario: TLabel;
    lblequipamento: TLabel;
    cbxcdequipamento: TcxDBLookupComboBox;
    lbltsinicio: TLabel;
    lbltsfim: TLabel;
    lblproduto: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lbldtemissao: TLabel;
    edthrinicio: TcxDBTimeEdit;
    edthrfim: TcxDBTimeEdit;
    ckbbocliente: TcxDBCheckBox;
    edtnufone1: TcxDBMaskEdit;
    edtnufone2: TcxDBMaskEdit;
    lblregiaocorpo: TLabel;
    cbxcdregiaocorpo: TcxDBLookupComboBox;
    memdsobservacao: TcxDBMemo;
    lbldsobservacao: TLabel;
    lblnusaida: TLabel;
    edtnusaida: TcxDBButtonEdit;
    txtnufone1c: TDBText;
    txtnufone2c: TDBText;
    edtnmcliente: TcxDBTextEdit;
    edtCDCLIENTE: TcxDBButtonEdit;
    lblNMCLIENTE: TDBText;
    edtcdfuncionario: TcxDBButtonEdit;
    edtcdproduto: TcxDBButtonEdit;
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtptarefaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actokExecute(Sender: TObject);
    procedure actcancelarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actnovoExecute(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure ckbboclienteClick(Sender: TObject);
    procedure edtnusaidaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnusaidaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnusaidaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnusaidaExit(Sender: TObject);
    procedure qryCDEQUIPAMENTOValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    registro : TRegistro;
    qry : TFDQuery;
    function get_cdagenda:string;
    function inserir_agenda(dtdia:TDate):string;
    function existe_outro_agendamento_mesmo_horario:Boolean;
    function get_state:string;
  public    { Public declarations }
  end;

function ShowItAgenda(codigo: string; dtemissao: TDate=0; hrinicio : TTime=0; cdcliente:string=''; cdcontrato:string=''; cdequipamento:string=''; cdfuncionario:string=''):boolean;

var
  frmdlgitagenda: Tfrmdlgitagenda;

implementation

uses uMain, uDtmMain, ulocalizarsaida;

{$R *.DFM}

function ShowItAgenda(codigo: string; dtemissao: TDate=0; hrinicio : TTime=0; cdcliente:string=''; cdcontrato:string=''; cdequipamento:string=''; cdfuncionario:string=''):boolean;
begin
  result := False;
  frmdlgitagenda             := Tfrmdlgitagenda.Create(Application);
  frmdlgitagenda.BorderStyle := bsDialog;
  with frmdlgitagenda do
  begin
    if CodigoExiste(_it+_agenda, codigo) then
    begin
      qry.ParamByName(_cd+_it+_agenda).AsString := codigo;
      qry.ParamByName(_cdempresa).AsLargeint      := empresa.cdempresa;
    end;
    qry.Open;
    registro.set_readonly_dados(frmdlgitagenda, false);
    registro.set_grade_item(frmdlgitagenda, true);
    if qry.RecordCount = 0 then
    begin
      qry.Insert;
      qry.FieldByName(_cd+_it+_agenda).AsString := codigo;
      if cdcliente <> '' then
      begin
        qry.FieldByName(_cdempresa).AsLargeInt := empresa.cdempresa;
        qry.FieldByName(_CDCLIENTE).AsString := cdcliente;
      end;
      if cdequipamento         <> '' then
      begin
        qry.fieldbyname(_CDEQUIPAMENTO).AsString  := cdequipamento;
      end;
      if usuario.funcionario.cdfuncionario <> 0  then
      begin
        qry.fieldbyname(_CDFUNCIONARIO).AsInteger := usuario.funcionario.cdfuncionario;
      end;
      if hrinicio > 0  then
      begin
        qry.fieldbyname(_HRINICIO).AsDateTime     := hrinicio;
      end;
      if dtemissao > 0 then
      begin
        qry.fieldbyname(_DTEMISSAO).AsDateTime    := dtemissao;
      end;
      qry.fieldbyname(_BOCLIENTE).AsString := _s;
    end
    else
    begin
      qry.Edit;
      edtnusaida.Enabled := False;
      if edtnusaida.Text <> '' then
      begin
        ckbbocliente.Enabled := False;
        edtcdcliente.Enabled := False;
      end;
    end;
    ckbboclienteClick(ckbbocliente);
    caption := get_state+' Agenda '+qry.fieldbyname(_CDITAGENDA).AsString+' - Criada por '+edtcdfuncionario.Text;
    ShowModal;
    if ModalResult = mrok then
    begin
      Result := True;
    end;
  end;
end;

procedure Tfrmdlgitagenda.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdlgitagenda.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmdlgitagenda.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmdlgitagenda.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;

  registro                               := tregistro.create(self, _tarefa, _tarefa, _o, qry, dts, nil, true);
  cbxcdregiaocorpo.Properties.ListSource := abrir_tabela(_regiao+_corpo);
  cbxcdequipamento.Properties.ListSource := abrir_tabela(_equipamento);
  cbxcdstitagenda.Properties.ListSource  := abrir_tabela(_st+_it+_agenda);
end;

procedure Tfrmdlgitagenda.cbxcdtptarefaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tptarefa);
end;

procedure Tfrmdlgitagenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmdlgitagenda.FormDestroy(Sender: TObject);
begin
  if BorderStyle = bsnone then
  begin
    TcxTabSheet(Self.Parent).TabVisible := false;
  end;
  freeandnil(qry);
  freeandnil(registro);
end;

procedure Tfrmdlgitagenda.actokExecute(Sender: TObject);
begin
  if ckbbocliente.Checked and (edtcdcliente.Text = '') then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Cliente]), mtInformation, [mbOK], 0);
    edtcdcliente.SetFocus;
    Abort;
  end;
  if (not ckbbocliente.Checked) and (edtnmcliente.Text = '') then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Cliente]), mtInformation, [mbOK], 0);
    edtnmcliente.SetFocus;
    Abort;
  end;
  if cbxcdstitagenda.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Status]), mtInformation, [mbOK], 0);
    cbxcdstitagenda.SetFocus;
    Abort;
  end;
  if edtcdfuncionario.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [__funcionario]), mtInformation, [mbOK], 0);
    edtcdfuncionario.SetFocus;
    Abort;
  end;
  if edtdtemissao.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Data]), mtInformation, [mbOK], 0);
    edtdtemissao.SetFocus;
    Abort;
  end;
  if edtHRinicio.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Hora+' '+_de+' '+__inicio]), mtInformation, [mbOK], 0);
    edthrinicio.SetFocus;
    Abort;
  end;
  if edthrfim.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Hora+' '+_Fim]), mtInformation, [mbOK], 0);
    edthrfim.SetFocus;
    Abort;
  end;
  if (not BooleandoCodigo(_st+_it+_agenda, cbxcdstitagenda.EditValue, _bo+_agendar+_mesmo+_horario)) and existe_outro_agendamento_mesmo_horario then
  begin
    MessageDlg('Já existe agendamento neste mesmo horário.'#13'Favor alterar o agendamento.', mtInformation, [mbOK], 0);
    edthrinicio.SetFocus;
    Abort;
  end;
  modalresult := mrok;
  if cbxcdstitagenda.EditValue <> _2 then
  begin
    //cdsDTTERMINO.Clear;
    //cdsHRTERMINO.Clear;
  end;
  qry.ApplyUpdates(0);
end;

procedure Tfrmdlgitagenda.actcancelarExecute(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlgitagenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Close;
  end;
end;

procedure Tfrmdlgitagenda.actnovoExecute(Sender: TObject);
var
  codigo : string;
begin
  codigo := gerarcodigo(_it+_agenda);
  ShowItAgenda(codigo);
end;

procedure Tfrmdlgitagenda.actcopiarExecute(Sender: TObject);
var
  codigo : string;
begin
  codigo := gerarcodigo(_it+_agenda);
  ShowItAgenda(codigo, 0, 0, qry.FieldByName(_CDCLIENTE).asstring, qry.fieldbyname(_CDITCONTRATO).AsString, qry.fieldbyname(_CDITCONTRATO).AsString);
end;

procedure Tfrmdlgitagenda.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmdlgitagenda.qryBeforePost(DataSet: TDataSet);
begin
  qry.fieldbyname(_TSINICIO).AsDateTime := qry.fieldbyname(_DTEMISSAO).AsDateTime+qry.fieldbyname(_HRINICIO).AsDateTime;
  qry.fieldbyname(_TSFIM).AsDateTime    := qry.fieldbyname(_DTEMISSAO).AsDateTime+qry.fieldbyname(_HRFIM).AsDateTime;
  qry.fieldbyname(_CDAGENDA).AsString   := get_cdagenda;
  if qry.fieldbyname(_BOCLIENTE).AsString = _S then
  begin
    qry.fieldbyname(_NMCLIENTE).Clear;
    qry.fieldbyname(_NUFONE1).Clear;
    qry.fieldbyname(_NUFONE2).Clear;
  end
  else
  begin
    qry.fieldbyname(_CDCLIENTE).Clear;
  end;
  registro.set_update(qry);
end;

function Tfrmdlgitagenda.get_cdagenda: string;
begin
  result := RetornaSQLString('select cdagenda from agenda where cdempresa='+empresa.cdempresa.tostring+' and cdtpagenda=1 and dtdia='+GetDtBanco(qry.fieldbyname(_TSINICIO).AsDateTime));
  if result = '' then
  begin
    result := inserir_agenda(qry.fieldbyname(_TSINICIO).asdatetime);
  end;
end;

function Tfrmdlgitagenda.inserir_agenda(dtdia: TDate): string;
var
  cdagenda : string;
  function makesql:string;
  begin
    result := 'INSERT INTO AGENDA '+
              '(CDEMPRESA,CDAGENDA,CDTPAGENDA,DTDIA,CDUSUARIOI,CDUSUARIOA,CDCOMPUTADORI,CDCOMPUTADORA,TSINCLUSAO,TSALTERACAO)VALUES'+
              '('+empresa.cdempresa.tostring+','+cdagenda+',1,'+GetDtBanco(dtdia)+','+inttostr(usuario.cdusuario)+','+inttostr(usuario.cdusuario)+','+vgcdcomputador+','+vgcdcomputador+','+quotedstr(tsBancos)+','+quotedstr(tsBancos)+')';
  end;
begin
  cdagenda := GerarCodigo(_agenda);
  ExecutaSQL(makesql);
  result := cdagenda;
end;

procedure Tfrmdlgitagenda.qryNewRecord(DataSet: TDataSet);
begin
  qry.fieldbyname(_CDSTITAGENDA).AsInteger := qregistro.Codigo_status_novo(_itagenda);
end;

procedure Tfrmdlgitagenda.ckbboclienteClick(Sender: TObject);
begin
  edtcdcliente.Visible := ckbbocliente.Checked;
  edtnmcliente.Visible := not ckbbocliente.Checked;
  edtnufone1.Visible   := not ckbbocliente.Checked;
  edtnufone2.Visible   := not ckbbocliente.Checked;
  edtnusaida.Visible   := ckbbocliente.Checked;
  lblnusaida.visible   := ckbbocliente.Checked;
end;

function Tfrmdlgitagenda.existe_outro_agendamento_mesmo_horario: Boolean;
  function makesql:string;
  var
    cdequipamento, cdfuncionario, dtemissao, hrinicio, hrfinal : string;
  begin
    cdequipamento := cbxcdequipamento.EditValue;
    cdfuncionario := edtcdfuncionario.EditValue;
    dtemissao     := GetDtBanco(edtdtemissao.Date);
    hrinicio      := GethrBanco(edthrinicio.Time);
    hrfinal       := GethrBanco(edthrfim.Time);
    result := 'select count(*) '+
              'from itagenda i '+
              'left join stitagenda s on s.cdstitagenda=i.cdstitagenda and s.cdempresa=i.cdempresa '+
              'where i.cdempresa='+empresa.cdempresa.tostring+' '+
              'and s.boagendarmesmohorario<>''S'' '+
              'and i.cditagenda<>'+qry.fieldbyname(_cditagenda).AsString+' '+
              'and (i.cdequipamento='+cdequipamento+' or i.cdfuncionario='+cdfuncionario+') '+
              'and i.dtemissao='+GetDtBanco(edtdtemissao.Date)+' '+
              'and ((i.hrinicio<='+GethrBanco(edthrinicio.Time)+' and i.hrfim>='+GethrBanco(edthrinicio.Time)+') '+
               'or  (i.hrinicio<='+GethrBanco(edthrfim.Time)+' and i.hrfim>='+GethrBanco(edthrfim.Time)+'))';
  end;
begin
  result := RetornaSQLInteger(makesql) > 0;
end;

procedure Tfrmdlgitagenda.edtnusaidaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cdsaida: integer;
  cdcliente : string;
begin
  if edtcdcliente.text = '' then
  begin
    exit;
  end;
  cdcliente := edtcdcliente.text;
  if cdcliente = '' then
  begin
    Exit;
  end;
  cdsaida := Localizarsaida(cdcliente);
  if cdsaida = 0 then
  begin
    exit;
  end;
  edtnusaida.Text := qregistro.StringdoCodigo(_saida, cdsaida, _nusaida);
  qry.fieldbyname(_NUSAIDA).AsString := edtnusaida.Text;
  qry.fieldbyname(_CDSAIDA).asinteger := cdsaida;
end;

procedure Tfrmdlgitagenda.edtnusaidaKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmdlgitagenda.edtnusaidaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnusaidaPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmdlgitagenda.edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
  nextcontrol(Sender, Key, shift);
end;

procedure Tfrmdlgitagenda.edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtCDCLIENTEPropertiesButtonClick(self, dts.dataset);
end;

procedure Tfrmdlgitagenda.edtnusaidaExit(Sender: TObject);
var
  cdsaida : integer;
  saida : TSaida;
  function qtdisponivel:Integer;
  begin
    result := RetornaSQLInteger('select first 1 qtitem from itsaida where cdempresa='+empresa.cdempresa.tostring+' and cdsaida='+cdsaida.ToString);
  end;
  function qtagendada:Integer;
  begin
    result := RetornaSQLInteger('select count(*) '+
                                'from itagenda i '+
                                'left join stitagenda s on s.cdempresa=i.cdempresa and s.cdstitagenda=i.cdstitagenda '+
                                'where s.boagendarmesmohorario<>''S'' and i.cdempresa='+empresa.cdempresa.tostring+' and i.cdsaida='+cdsaida.ToString);
  end;
begin
  saida := TSaida.create;
  try
    if edtnusaida.text = '' then
    begin
      colorexit(sender);
      exit;
    end;
    cdsaida := tsaida.CodigoNotaFiscal(edtnusaida.text);
    if cdsaida = -1 then
    begin
      edtnusaida.clear;
      exit;
    end;
    if not qregistro.CodigoExiste(_saida, cdsaida) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnusaida.Text, maiuscula(_nota+' '+_fiscal)]), mterror, [mbok], 0);
      edtnusaida.setfocus;
      abort;
    end;
    if qtagendada = qtdisponivel then
    begin
      MessageDlg('Não existe disponibilidade de sessão para esta nota.', mtInformation, [mbOK], 0);
      edtnusaida.SetFocus;
      Abort;
    end;
    qry.fieldbyname(_CDSAIDA).asinteger := cdsaida;
    // verificar se existem quantidade
    colorexit(sender);
  finally
    freeandnil(saida);
  end;
end;

procedure Tfrmdlgitagenda.qryCDEQUIPAMENTOValidate(Sender: TField);
var
  hrtempo : TTime;
begin
  if (qry.fieldbyname(_CDEQUIPAMENTO).IsNull) then
  begin
    Exit;
  end;
  hrtempo             := HoradoCodigo(_equipamento, qry.fieldbyname(_CDEQUIPAMENTO).AsString, _hr+_tempo+_agenda);
  qry.fieldbyname(_HRFIM).AsDateTime := qry.fieldbyname(_HRINICIO).AsDateTime + hrtempo;
end;

function Tfrmdlgitagenda.get_state: string;
begin
  if qry.State = dsinsert then
  begin
    result := 'Inserir'
  end
  else if qry.State = dsedit   then
  begin
    result := 'Editar';
  end;
end;

end.

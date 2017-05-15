unit ucheque;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, Classes, ActnList, StdCtrls, Menus, Mask, ComCtrls, ToolWin, Controls,
  ExtCtrls, Buttons, dialogs, sysutils, graphics,
  Grids,
  ACBrValidador,
  urotinas, uregistro, ulocalizar, uconstantes, uvalidadocumento,
  uexportarexcel, udatahora, ustrings,
  classeempresa, classeretornasql, classeconsiste, classeusuario,
  classeRegistro, classegerar, classeregistrainformacao, classeform, classecliente,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGroupBox, cxLabel, dxBar,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxCalc, cxButtonEdit, DBCtrls,
  cxRadioGroup, cxPCdxBarPopupMenu, dxBarBuiltInMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmcheque = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actfechar: TAction;
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
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dts: TDataSource;
    pnltop: TPanel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    lbldtemissao: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lbldtentrada: TLabel;
    edtdtentrada: TcxDBDateEdit;
    lbldtvencimento: TLabel;
    edtdtvencimento: TcxDBDateEdit;
    lbldtprorrogacao: TLabel;
    edtdtprorrogacao: TcxDBDateEdit;
    lblstcheque: TLabel;
    cbxcdstcheque: TcxDBLookupComboBox;
    lblbancodevolucao: TLabel;
    lbldsbancodevolucao: TLabel;
    pnl: TcxLabel;
    gbxemitente: TcxGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edtnucpfcnpj2: TcxDBMaskEdit;
    edtnucpfcnpj: TcxDBMaskEdit;
    edtnmemitente2: TcxDBTextEdit;
    edtnmemitente: TcxDBTextEdit;
    rdgtppessoa: TcxDBRadioGroup;
    gbxcliente: TcxGroupBox;
    lblcodigocliente: TLabel;
    edtcdcliente: TcxDBButtonEdit;
    gbxconta: TcxGroupBox;
    Label8: TLabel;
    Label21: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbxcdbanco: TcxDBLookupComboBox;
    edtnucheque: TcxDBTextEdit;
    edtnucontacorrente: TcxDBTextEdit;
    edtnuagencia: TcxDBTextEdit;
    gbxvalor: TcxGroupBox;
    Label16: TLabel;
    Label7: TLabel;
    edtvlsaldo: TcxDBCalcEdit;
    edtvlcheque: TcxDBCalcEdit;
    memdsobservacao: TcxDBMemo;
    lblNMCLIENTE: TDBText;
    qry: TFDQuery;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCODIGOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dtsStateChange(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure rdgtppessoaPropertiesChange(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure edtcdclienteExit(Sender: TObject);
    procedure qryAfterOpen(DataSet: TDataSet);
  private      { Private declarations }
    cliente : TCliente;
    procedure check_cpf_cnpj(sender:TField);
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

const
  tbl      = 'cheque';
  exibe    = 'Cheque';
  artigoI  = 'o';
var
  frmcheque: Tfrmcheque;

implementation

uses uDtmMain, uMain, ulocalizarCliente;

{$R *.DFM}

function Tfrmcheque.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmcheque.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmcheque.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmcheque.actSalvarExecute(Sender: TObject);
begin
  if (qry.FieldByName(_dtemissao).AsDateTime > qry.FieldByName(_dtvencimento).AsDateTime) and (not qry.FieldByName(_dtvencimento).IsNull) then
  begin
    messagedlg('Data de vencimento maior do que a data de emissão.', mtinformation, [mbok], 0);
    abort;
  end;
  if (qry.FieldByName(_dtemissao).AsDateTime > qry.FieldByName(_dtprorrogacao).AsDateTime) and (not qry.FieldByName(_dtprorrogacao).IsNull) then
  begin
    messagedlg('Data de Prorrogação maior do que a data de emissão.', mtinformation, [mbok], 0);
    abort;
  end;
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmcheque.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmcheque.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmcheque.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure Tfrmcheque.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmcheque.edtCODIGOKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmcheque.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmcheque.FormShow(Sender: TObject);
begin
  cliente := TCliente.create;
  edtCodigo.SetFocus;
end;

procedure Tfrmcheque.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmcheque.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmcheque.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmcheque.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmcheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcheque.edtCODIGOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmcheque.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmcheque.FormDestroy(Sender: TObject);
begin
  registro.destroy;
  cliente.free;
end;

procedure Tfrmcheque.edtcdclienteExit(Sender: TObject);
begin
  if not ((qry.State = dsedit) or (qry.State = dsinsert)) then
  begin
    colorexit(sender);
    Exit;
  end;
  if edtcdcliente.Text = '' then
  begin
    qry.FieldByName(_nmcliente).Clear;
    colorexit(sender);
    Exit;
  end;
  if not CodigoExiste(_cliente, edtcdcliente.text) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdcliente.Text, maiuscula(_cliente)]), mterror, [mbok], 0);
    edtcdcliente.clear;
    qry.FieldByName(_cdcliente).clear;
    edtcdcliente.setfocus;
    Abort;
  end;
  qry.FieldByName(_nmcliente).AsString := NomedoCodigo(_cliente, qry.fieldbyname(_cdcliente).AsString);
  colorexit(sender);
end;

procedure Tfrmcheque.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, Shift);
  end;
end;

procedure Tfrmcheque.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdclientePropertiesButtonClick(self, qry);
end;

procedure Tfrmcheque.check_cpf_cnpj(sender: TField);
var
  mensagem, numero: string;
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  numero := removercaracteres(sender.AsString);
  if numero = '' then
  begin
    sender.clear;
    Exit;
  end;
  if (qry.FieldByName(_TPPESSOA).AsString = _F) then
  begin
    mensagem := ValidarCPF(sender.asstring);
    if mensagem <> '' then
    begin
      MessageDlg(mensagem, mtInformation, [mbOK], 0);
      sender.FocusControl;
      Abort;
    end;
  end;
  if qry.FieldByName(_TPPESSOA).AsString = _J then
  begin
    mensagem := ValidarCNPJ(sender.asstring);
    if mensagem <> '' then
    begin
      MessageDlg(mensagem, mtInformation, [mbOK], 0);
      sender.FocusControl;
      Abort;
    end;
  end;
end;

procedure Tfrmcheque.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmcheque.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmcheque.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmcheque.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmcheque.qryAfterOpen(DataSet: TDataSet);
begin
  if DataSet.FieldByName(_nmcliente).ReadOnly then
  begin
    DataSet.FieldByName(_nmcliente).ReadOnly := false;
  end;
end;

procedure Tfrmcheque.qryAfterScroll(DataSet: TDataSet);
begin
  lbldsbancodevolucao.Visible := qry.FieldByName(_CDBANCODEVOLUCAO).asstring <> '';
  lblbancodevolucao.Visible   := qry.FieldByName(_CDBANCODEVOLUCAO).asstring <> '';
  rdgtppessoaPropertiesChange(rdgtppessoa);
  if qry.FieldByName(_CD+_BANCO+_DEVOLUCAO).asstring <> '' then
  begin
    lbldsbancodevolucao.Caption := NomedoCodigo(_banco, qry.FieldByName(_CD+_BANCO+_DEVOLUCAO).asstring);
  end;
end;

procedure Tfrmcheque.qryBeforePost(DataSet: TDataSet);
begin
  if qry.FieldByName(_cdbanco).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Banco]), mtinformation, [mbok], 0);
    qry.FieldByName(_cdbanco).FocusControl;
    abort;
  end;
  if qry.FieldByName(_vlcheque).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Valor]), mtinformation, [mbok], 0);
    qry.FieldByName(_vlcheque).FocusControl;
    abort;
  end;
  if qry.FieldByName(_vlsaldo).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Saldo]), mtinformation, [mbok], 0);
    qry.FieldByName(_vlsaldo).FocusControl;
    abort;
  end;
  check_cpf_cnpj(qry.fieldbyname(_NUCPF+_CNPJ));
  check_cpf_cnpj(qry.fieldbyname(_NUCPF+_CNPJ+_2));
  registro.set_update(qry);
end;

procedure Tfrmcheque.qryNewRecord(DataSet: TDataSet);
begin
  qry.FieldByName(_dtentrada).asdatetime := dtbanco;
  qry.FieldByName(_dtemissao).asdatetime := dtbanco;
  qry.FieldByName(_CDSTcheque).AsInteger  := qregistro.Codigo_status_novo(tbl);
end;

procedure Tfrmcheque.FormCreate(Sender: TObject);
begin
  cbxcdbanco.Properties.ListSource    := abrir_tabela(_banco);
  cbxcdstcheque.Properties.ListSource := abrir_tabela(_stcheque);
  registro                            := TRegistro.create(Self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure Tfrmcheque.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmcheque.rdgtppessoaPropertiesChange(Sender: TObject);
begin
  if rdgtppessoa.ItemIndex = 1 then 
  begin
    edtnucpfcnpj.Properties.EditMask  := _99_999_999_9999_99;
    edtnucpfcnpj2.Properties.EditMask := _99_999_999_9999_99;
  end
  else if rdgtppessoa.ItemIndex = 0 then
  begin
    edtnucpfcnpj.Properties.EditMask  := _999_999_999_99;
    edtnucpfcnpj2.Properties.EditMask := _999_999_999_99;
  end
  else
  begin
    edtnucpfcnpj.Properties.EditMask  := '';
    edtnucpfcnpj2.Properties.EditMask := '';
  end;
end;

end.

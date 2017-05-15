unit utpsaida;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, StdCtrls, Menus, Mask, Buttons, ExtCtrls,
  Controls, ComCtrls, ToolWin, dialogs, sysutils, graphics,
  FireDAC.Comp.Client,
  urotinas, uconstantes, ustrings, uregistro, udatahora,
  classecopiarregistro, classeusuario, classeempresa, classeconsiste,
  classeretornasql, classeregistrainformacao, classeform, classeRegistro, classequery,
  classeaplicacao,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls,
  cxTextEdit, cxDBEdit, cxRadioGroup, cxMemo, cxCheckBox, cxMaskEdit, cxButtonEdit,
  dxBar, cxClasses, cxGraphics, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeels, cxLabel,
  cxDBLabel, cxPCdxBarPopupMenu, cxStyles, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxCalc, cxBlobEdit, cxSpinEdit, dxBarBuiltInMenu, DB;

type
  Tfrmtpsaida = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actPrimeiro: TAction;
    actfechar: TAction;
    dts: TDataSource;
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
    actcopiar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    pnlTOP: TPanel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    Label3: TLabel;
    edtnome: TcxDBTextEdit;
    Label2: TLabel;
    edtNMREDUZIDO: TcxDBTextEdit;
    Label4: TLabel;
    cbxcdserie: TcxDBLookupComboBox;
    pnl: TcxLabel;
    trv: TcxDBVerticalGrid;
    trvCategoryRow1: TcxCategoryRow;
    trvDBEditorRow22: TcxDBEditorRow;
    trvDBEditorRow58: TcxDBEditorRow;
    trvDBEditorRow19: TcxDBEditorRow;
    trvtpentsai: TcxDBEditorRow;
    trvDBEditorRow14: TcxDBEditorRow;
    trvDBEditorRow24: TcxDBEditorRow;
    trvDBEditorRow6: TcxDBEditorRow;
    trvDBEditorRow3: TcxDBEditorRow;
    trvDBEditorRow7: TcxDBEditorRow;
    trvCategoryRow6: TcxCategoryRow;
    trvDBEditorRow8: TcxDBEditorRow;
    trvDBEditorRow9: TcxDBEditorRow;
    trvDBEditorRow10: TcxDBEditorRow;
    trvDBEditorRow20: TcxDBEditorRow;
    trvDBEditorRow27: TcxDBEditorRow;
    trvDBEditorRow26: TcxDBEditorRow;
    trvDBEditorRow17: TcxDBEditorRow;
    trvDBEditorRow21: TcxDBEditorRow;
    trvbolocacao: TcxDBEditorRow;
    trvNUCASADECIMALQUANTIDADE: TcxDBEditorRow;
    trvDBEditorRow25: TcxDBEditorRow;
    trvDBEditorRow23: TcxDBEditorRow;
    trvDBEditorRow38: TcxDBEditorRow;
    trvCategoryRow2: TcxCategoryRow;
    trvDBEditorRow45: TcxDBEditorRow;
    trvDBEditorRow57: TcxDBEditorRow;
    trvDBEditorRow4: TcxDBEditorRow;
    trvDBEditorRow47: TcxDBEditorRow;
    trvDBEditorRow56: TcxDBEditorRow;
    trvDBEditorRow55: TcxDBEditorRow;
    trvDBEditorRow54: TcxDBEditorRow;
    trvDBEditorRow53: TcxDBEditorRow;
    trvDBEditorRow50: TcxDBEditorRow;
    trvDBEditorRow52: TcxDBEditorRow;
    trvDBEditorRow51: TcxDBEditorRow;
    trvDBEditorRow49: TcxDBEditorRow;
    trvDBEditorRow46: TcxDBEditorRow;
    trvDBEditorRow44: TcxDBEditorRow;
    trvDBEditorRow43: TcxDBEditorRow;
    trvDBEditorRow42: TcxDBEditorRow;
    trvDBEditorRow41: TcxDBEditorRow;
    trvDBEditorRow40: TcxDBEditorRow;
    trvDBEditorRow39: TcxDBEditorRow;
    trvDBEditorRow37: TcxDBEditorRow;
    trvDBEditorRow36: TcxDBEditorRow;
    trvDBEditorRow35: TcxDBEditorRow;
    trvDBEditorRow34: TcxDBEditorRow;
    trvDBEditorRow33: TcxDBEditorRow;
    trvDBEditorRow32: TcxDBEditorRow;
    trvDBEditorRow29: TcxDBEditorRow;
    trvDBEditorRow30: TcxDBEditorRow;
    trvDBEditorRow28: TcxDBEditorRow;
    trvDBEditorRow16: TcxDBEditorRow;
    trvDBEditorRow31: TcxDBEditorRow;
    trvDBEditorRow12: TcxDBEditorRow;
    trvDBEditorRow11: TcxDBEditorRow;
    trvDBEditorRow13: TcxDBEditorRow;
    trvDBEditorRow5: TcxDBEditorRow;
    trvCategoryRow3: TcxCategoryRow;
    trvCategoryRow5: TcxCategoryRow;
    trvCDCFOPDUF: TcxDBEditorRow;
    trvCDCFOPDUFSUBTRIB: TcxDBEditorRow;
    trvCategoryRow4: TcxCategoryRow;
    trvCDCFOPFUF: TcxDBEditorRow;
    trvCDCFOPFUFSUBTRIB: TcxDBEditorRow;
    trvpdv: TcxCategoryRow;
    trvDBEditorRow1: TcxDBEditorRow;
    trvDBEditorRow2: TcxDBEditorRow;
    trvcdmodelo: TcxDBEditorRow;
    trvCategoryRow7: TcxCategoryRow;
    trvDBEditorRow15: TcxDBEditorRow;
    trvDBEditorRow18: TcxDBEditorRow;
    trvDBEditorRow59: TcxDBEditorRow;
    trvDBEditorRow60: TcxDBEditorRow;
    trvDBEditorRow61: TcxDBEditorRow;
    trvDBEditorRow62: TcxDBEditorRow;
    trvDBEditorRow63: TcxDBEditorRow;
    trvcdtpitem: TcxDBEditorRow;
    trvCDTPITEMOUTRO: TcxDBEditorRow;
    trvCategoryRow8: TcxCategoryRow;
    trvCategoryRow9: TcxCategoryRow;
    trvCDCFOPDUFSUBTRIBOUTRO: TcxDBEditorRow;
    trvCDCFOPDUFOUTRO: TcxDBEditorRow;
    trvCDCFOPFUFOUTRO: TcxDBEditorRow;
    trvCDCFOPFUFSUBTRIBOUTRO: TcxDBEditorRow;
    trvDBEditorRow64: TcxDBEditorRow;
    trvDBEditorRow65: TcxDBEditorRow;
    trvDBEditorRow66: TcxDBEditorRow;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdserieEnter(Sender: TObject);
    procedure cbxcdseriePropertiesEditValueChanged(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Char);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qry : TFDQuery;
    procedure abrirtabela;
  public  { Public declarations }
    registro : tregistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmtpsaida: Tfrmtpsaida;

implementation

uses uDtmMain, uLocalizar, uMain, Variants;

{$R *.DFM}

const
  tbl      = 'tpsaida';
  exibe    = 'Tipo Nota Fiscal';
  artigoI  = 'o';
  artigoII = 'e';

function Tfrmtpsaida.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpsaida.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpsaida.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpsaida.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  key := #13;
  nextcontrol(Self.ActiveControl, key);
  if edtnome.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    edtnome.SetFocus;
    Abort;
  end;
  if edtNMREDUZIDO.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_nome+' '+_reduzido]), mtinformation, [mbok], 0);
    edtNMREDUZIDO.SetFocus;
    Abort;
  end;
  if cbxcdserie.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Serie]), mtinformation, [mbok], 0);
    qry.FieldByName(_cdserie).FocusControl;
    Abort;
  end;
  if (NomedoCodigo(_serie, qregistro.codigodonome(_serie, cbxcdserie.Text), _nudocfiscalicms) = _2d) and (not empresa.livro.bopdv) then
  begin
    MessageDlg('Empresa não está configurada como emissor de PDV.'#13'Altere as configurações no cadastro=>empresa para continuar.', mtInformation, [mbOK], 0);
    cbxcdserie.SetFocus;
    Abort;
  end;
  if (qry.FieldByName(_boicms).AsString = _s) and (qry.FieldByName(_boiss).AsString = _s) then
  begin
    MessageDlg('Não é permitido marcar ICMS e ISS no mesmo tipo de documento.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (qry.FieldByName(_boipi).AsString = _s) and (qry.FieldByName(_boiss).AsString = _s) then
  begin
    MessageDlg('Não é permitido marcar IPI e ISS no mesmo tipo de documento.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if not VarIsNull(trvcdcfopduf.Properties.Value) then
  begin
    if (trvtpentsai.Properties.Value = _e) and (Copy(trvcdcfopduf.Properties.value, 1, 1) <> _1) then
    begin
      MessageDlg('CFOP de dentro do estado deve começar com 1.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if (trvtpentsai.Properties.Value = _s) and (Copy(trvcdcfopduf.Properties.value, 1, 1) <> _5) then
    begin
      MessageDlg('CFOP de dentro do estado deve começar com 5.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  if not VarIsNull(trvCDCFOPDUFSUBTRIB.Properties.Value) then
  begin
    if (trvtpentsai.Properties.Value = _e) and (Copy(trvCDCFOPDUFSUBTRIB.Properties.value, 1, 1) <> _1) then
    begin
      MessageDlg('CFOP de dentro do estado deve começar com 1.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if (trvtpentsai.Properties.Value = _s) and (Copy(trvCDCFOPDUFSUBTRIB.Properties.value, 1, 1) <> _5) then
    begin
      MessageDlg('CFOP de dentro do estado deve começar com 5.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  if not VarIsNull(trvcdcfopfuf.Properties.Value) then
  begin
    if (trvtpentsai.Properties.Value = _e) and (Copy(trvcdcfopfuf.Properties.Value, 1, 1) <> _2) then
    begin
      MessageDlg('CFOP de fora do estado deve começar com 2.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if (trvtpentsai.Properties.Value = _s) and (Copy(trvcdcfopfuf.Properties.Value, 1, 1) <> _6) then
    begin
      MessageDlg('CFOP de fora do estado deve começar com 6.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  if not VarIsNull(trvCDCFOPFUFSUBTRIB.Properties.Value) then
  begin
    if (trvtpentsai.Properties.Value = _e) and (Copy(trvCDCFOPFUFSUBTRIB.Properties.Value, 1, 1) <> _2) then
    begin
      MessageDlg('CFOP de fora do estado deve começar com 2.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if (trvtpentsai.Properties.Value = _s) and (Copy(trvCDCFOPFUFSUBTRIB.Properties.Value, 1, 1) <> _6) then
    begin
      MessageDlg('CFOP de fora do estado deve começar com 6.'#13'Altere o CFOP para continuar.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  edtnome.SetFocus;
  if (not VarIsNull(trvcdcfopduf.Properties.Value)) and (VarIsNull(trvcdcfopfuf.Properties.Value)) then
  begin
    MessageDlg('CFOP de fora do estado é obrigatório caso preencha o CFOP de dentro do estado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (VarIsNull(trvcdcfopduf.Properties.Value)) and (not VarIsNull(trvcdcfopfuf.Properties.Value)) then
  begin
    MessageDlg('CFOP de dentro do estado é obrigatório caso preencha o CFOP de fora do estado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (not VarIsNull(trvCDCFOPDUFSUBTRIB.Properties.Value)) and (VarIsNull(trvCDCFOPFUFSUBTRIB.Properties.Value)) then
  begin
    MessageDlg('CFOP de substituição tributária de fora do estado é obrigatório caso preencha o CFOP de substituição tributária de dentro do estado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (VarIsNull(trvCDCFOPDUFSUBTRIB.Properties.Value)) and (not VarIsNull(trvCDCFOPFUFSUBTRIB.Properties.Value)) then
  begin
    MessageDlg('CFOP de substituição tributária de dentro do estado é obrigatório caso preencha o CFOP de substituição tributária de fora do estado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmtpsaida.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpsaida.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpsaida.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure Tfrmtpsaida.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpsaida.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpsaida.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpsaida.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpsaida.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpsaida.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpsaida.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpsaida.FormShow(Sender: TObject);
begin
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpsaida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpsaida.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpsaida.FormDestroy(Sender: TObject);
begin
  registro.destroy;
  qry.Close;
end;

procedure Tfrmtpsaida.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmtpsaida.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ qry.fieldbyname(_CDTPSAIDA).asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpsaida.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpsaida.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPSAIDA WHERE CDEMPRESA=:CDEMPRESA AND CDTPSAIDA=:CDTPSAIDA';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  qry.AfterScroll := qryAfterScroll;
  trvbolocacao.Visible := empresa.bolocacao;
  abrirtabela;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure Tfrmtpsaida.cbxcdserieEnter(Sender: TObject);
begin
  abrir_tabela(_serie);
  colorenter(sender);
end;

procedure Tfrmtpsaida.cbxcdseriePropertiesEditValueChanged(Sender: TObject);
begin
  trvpdv.Visible := NomedoCodigo(_serie, qregistro.codigodonome(_serie, cbxcdserie.Text), _nudocfiscalicms) = _2d;
end;

procedure Tfrmtpsaida.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmtpsaida.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmtpsaida.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmtpsaida.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure Tfrmtpsaida.qryAfterScroll(DataSet: TDataSet);
begin
  trvpdv.Visible := NomedoCodigo(_serie, qry.fieldbyname(_cdserie).AsString, _nudocfiscalicms) = _2d;
end;

procedure Tfrmtpsaida.qryBeforePost(DataSet: TDataSet);
begin
  if not trvpdv.Visible then
  begin
    DataSet.FieldByName(_cd+_modelo).Clear;
    DataSet.FieldByName(_nuserie).Clear;
    DataSet.FieldByName(_nucaixa).Clear;
  end;
  if (not DataSet.FieldByName(_cdcfop+_F+_uf).IsNull) and BooleandoCodigo(_cfop, DataSet.fieldbyname(_cdcfop+_F+_uf).AsString, _BOICMSSUBTRIB) then
  begin
    MessageDlg('CFOP '+DataSet.fieldbyname(_cdcfop+_F+_uf).AsString+' é de substituição tributária.'#13'Escolha cfop que não seja de substituição tributária para continuar.', mtInformation, [mbOK], 0);
    abort;
  end;
  if (not DataSet.FieldByName(_cdcfop+_d+_uf).IsNull) and BooleandoCodigo(_cfop, DataSet.fieldbyname(_cdcfop+_d+_uf).AsString, _BOICMSSUBTRIB) then
  begin
    MessageDlg('CFOP '+DataSet.fieldbyname(_cdcfop+_d+_uf).AsString+' é de substituição tributária.'#13'Escolha cfop que não seja de substituição tributária para continuar.', mtInformation, [mbOK], 0);
    abort;
  end;
  if (not DataSet.FieldByName(_cdcfop+_F+_uf+_subtrib).IsNull) and (not BooleandoCodigo(_cfop, DataSet.fieldbyname(_cdcfop+_F+_uf+_subtrib).AsString, _BOICMSSUBTRIB)) and (not BooleandoCodigo(_cfop, DataSet.fieldbyname(_cdcfop+_f+_uf+_subtrib).AsString, _BO+_ACEITA+_ICMS+_SUBTRIB)) then
  begin
    MessageDlg('CFOP '+DataSet.fieldbyname(_cdcfop+_F+_uf+_subtrib).AsString+' não é de substituição tributária.'#13'Escolha cfop de substituição tributária para continuar.', mtInformation, [mbOK], 0);
    abort;
  end;
  if (not DataSet.FieldByName(_cdcfop+_d+_uf+_subtrib).IsNull) and (not BooleandoCodigo(_cfop, DataSet.fieldbyname(_cdcfop+_d+_uf+_subtrib).AsString, _BOICMSSUBTRIB)) and (not BooleandoCodigo(_cfop, DataSet.fieldbyname(_cdcfop+_d+_uf+_subtrib).AsString, _BO+_ACEITA+_ICMS+_SUBTRIB)) then
  begin
    MessageDlg('CFOP '+DataSet.fieldbyname(_cdcfop+_d+_uf+_subtrib).AsString+' não é de substituição tributária.'#13'Escolha cfop de substituição tributária para continuar.', mtInformation, [mbOK], 0);
    abort;
  end;
  registro.set_update(dataset);
end;

procedure Tfrmtpsaida.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  qry.FieldByName(_tpentsai).AsString      := _S;
  qry.FieldByName(_TPFORNCLIENTE).AsString := _c;
  qry.FieldByName(_nu+_casa+_decimal+_quantidade).AsInteger := 3;
end;

procedure Tfrmtpsaida.abrirtabela;
begin
  TcxLookupComboBoxProperties(trvcdtpitem.Properties.EditProperties).ListSource      := abrir_tabela(_tpitem);
  TcxLookupComboBoxProperties(trvcdtpitemoutro.Properties.EditProperties).ListSource := abrir_tabela(_tpitem);

  TcxLookupComboBoxProperties(trvcdcfopduf.Properties.EditProperties).ListSource        := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(trvcdcfopfuf.Properties.EditProperties).ListSource        := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(trvCDCFOPDUFSUBTRIB.Properties.EditProperties).ListSource := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(trvCDCFOPFUFSUBTRIB.Properties.EditProperties).ListSource := abrir_tabela(_cfop);

  TcxLookupComboBoxProperties(trvcdcfopdufoutro.Properties.EditProperties).ListSource        := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(trvcdcfopfufoutro.Properties.EditProperties).ListSource        := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(trvCDCFOPDUFSUBTRIBoutro.Properties.EditProperties).ListSource := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(trvCDCFOPFUFSUBTRIBoutro.Properties.EditProperties).ListSource := abrir_tabela(_cfop);

  cbxcdserie.Properties.ListSource                                                      := abrir_tabela(_serie);
  TcxLookupComboBoxProperties(trvcdmodelo.Properties.EditProperties).ListSource         := abrir_tabela(_modelo);
end;

end.

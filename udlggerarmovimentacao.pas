unit udlggerarmovimentacao;

interface

uses
  System.Actions, System.UITypes,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Menus, Buttons,
  ExtCtrls, Mask, Spin, ComCtrls, dialogs, Variants, Math,
  DB,
  ustrings, unumero, udatahora, ulocalizarfornecedor, uconstantes,
  uregistro,
  classeaplicacao, classegerar, classeexecutasql, classeempresa, classeregistrainformacao,
  classeform, classeretornasql, classemovbancario, classequery,
  cxGroupBox, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLookAndFeels, cxCurrencyEdit, cxPC, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, cxNavigator, dxCore, cxDateUtils, cxMemo;

type
  TfrmdlgDespesa = class(TForm)
    lblfornecedor: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    lblplconta: TLabel;
    lblnmplconta: TLabel;
    lblcntcusto: TLabel;
    edtnuplconta: TcxButtonEdit;
    edtdshistorico: TcxTextEdit;
    edtvalor: TcxCalcEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    edtdtemissao: TcxDateEdit;
    lbldtemissao: TLabel;
    lblnmfornecedor: TLabel;
    edtcdfornecedor: TcxButtonEdit;
    Label2: TLabel;
    cbxcdconta: TcxLookupComboBox;
    Label5: TLabel;
    cbxcdmovimentacao: TcxLookupComboBox;
    memdsobservacao: TcxMemo;
    Label6: TLabel;
    lblnumovbancario: TLabel;
    edtnumovbancario: TcxTextEdit;
    edtdtvencimento: TcxDateEdit;
    Label4: TLabel;
    Label8: TLabel;
    edtdtbaixa: TcxDateEdit;
    edtnucntcusto: TcxButtonEdit;
    lblnmcntcusto: TLabel;
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure edtnuplcontaExit(Sender: TObject);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnokClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure cbxcdmovimentacaoPropertiesChange(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtdtemissaoExit(Sender: TObject);
    procedure cbxcdcontaExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxcdcontaEnter(Sender: TObject);
    procedure edtnucntcustoExit(Sender: TObject);
    procedure edtnucntcustoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtnucntcustoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtnumovbancarioKeyPress(Sender: TObject; var Key: Char);
  private { Private declarations }
    pessoa, tipo : string;
    movbancario : TMovBancario;
    function  inserir_registros:boolean;
    procedure set_configuracao_pessoa(codigo:LargeInt);
    procedure settipo(tipo_:string);
    function  get_cdtpmodulo:string;
    function  get_cdnatureza:string;
    function  get_vlpagamento:Currency;
    function  get_vldeposito:Currency;
    procedure gerar_autpagto(q: TClasseQuery; cdautpagto, cdcntcusto, cdplconta:string);
    procedure gerar_movbancario(q: TClasseQuery; cdmovbancario: string);
    procedure gerar_baixa(q: TClasseQuery; cdmovbancario, cdautpagto: string);
  public { Public declarations }
  end;

var
  frmdlgDespesa: TfrmdlgDespesa;

function Gerar_Movimentacao(tipo, cdconta:string):boolean;

implementation

uses uDtmMain, ulocalizarCliente;

{$R *.dfm}

function Gerar_Movimentacao(tipo, cdconta:string):boolean;
begin
  result := false;
  frmdlgDespesa := tfrmdlgdespesa.create(nil);
  try
    frmdlgdespesa.edtdtemissao.Date    := DtBanco;
    frmdlgdespesa.edtdtvencimento.Date := frmdlgdespesa.edtdtemissao.Date;
    frmdlgdespesa.edtdtbaixa.Date      := frmdlgdespesa.edtdtemissao.Date;
    if cdconta <> '' then
    begin
      frmdlgdespesa.cbxcdconta.EditValue := cdconta;
    end;
    frmdlgdespesa.settipo(tipo);
    if frmdlgdespesa.ShowModal = mrok then
    begin
      result := frmdlgdespesa.inserir_registros;
    end;
  finally
    freeandnil(frmdlgdespesa);
  end;
end;

procedure TfrmdlgDespesa.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmdlgDespesa.gerar_autpagto(q: TClasseQuery; cdautpagto, cdcntcusto, cdplconta:string);
begin
  q.q.Close;
  q.q.SQL.Text := QRetornaSQL.get_select_from(tipo, _0);
  q.q.Open;
  q.q.Insert;
  q.q.FieldByName(_cd+tipo).AsString   := cdautpagto;
  q.q.FieldByName(_cdst+tipo).AsString := _1;
  q.q.FieldByName(_cd+pessoa).AsString := edtcdfornecedor.text;
  if cdplconta <> '' then
  begin
    q.q.FieldByName(_cdplconta).AsString    := cdplconta;
    q.q.FieldByName(_nuplconta).AsString    := edtnuplconta.text;
  end;
  if cdcntcusto <> '' then
  begin
    q.q.FieldByName(_cdcntcusto).AsString    := cdcntcusto;
    q.q.FieldByName(_nucntcusto).AsString    := edtnucntcusto.text;
  end;
  q.q.FieldByName(_nu+tipo).AsString         := cdautpagto;
  q.q.FieldByName(_dtemissao).AsDateTime     := edtdtemissao.Date;
  q.q.FieldByName(_dtentrada).Asdatetime     := edtdtemissao.Date;
  q.q.FieldByName(_dtvencimento).Asdatetime  := edtdtvencimento.Date;
  q.q.FieldByName(_dtprorrogacao).Asdatetime := edtdtvencimento.Date;
  q.q.FieldByName(_vl+tipo).AsCurrency       := edtvalor.Value;
  if edtDSHISTORICO.text <> '' then
  begin
    q.q.FieldByName(_dshistorico).AsString    := edtDSHISTORICO.text;
  end;
  q.q.FieldByName(_vlbaixa).AsCurrency      := 0;
  q.q.FieldByName(_vldesconto).AsCurrency   := 0;
  q.q.FieldByName(_vldevolucao).AsCurrency  := 0;
  q.q.FieldByName(_VLABATIMENTO).AsCurrency := 0;
  q.q.FieldByName(_PRMORADIARIA).AsCurrency := 0;
  q.q.FieldByName(_VLSALDO).AsCurrency      := edtvalor.Value;
  q.q.FieldByName(_VLDEDUCAO).AsCurrency    := 0;
  q.q.FieldByName(_VLACRESCIMO).AsCurrency  := 0;
  q.q.FieldByName(_VLRECEBIDO).AsCurrency   := 0;
  q.q.FieldByName(_PRMULTA).AsCurrency      := 0;
  q.q.FieldByName(_VLMULTA).AsCurrency      := 0;
  q.q.FieldByName(_VLJUROS).AsCurrency      := 0;
  q.q.FieldByName(_VLDEDUCAO).AsCurrency    := 0;
  if memdsobservacao.lines.text <> '' then
  begin
    q.q.FieldByName(_dsobservacao).AsString    := memdsobservacao.lines.text;
  end;
  if tipo = _duplicata then
  begin
    q.q.FieldByName(_cdtpduplicata).asstring := _1;
  end;
  RegistraInformacao_(q.q);
  aplicacao.aplyupdates(q.q);
end;

procedure TfrmdlgDespesa.gerar_movbancario(q: TClasseQuery; cdmovbancario: string);
begin
  q.q.Close;
  q.q.SQL.Text := QRetornaSQL.get_select_from(_MOVBANCARIO, _0);
  q.q.Open;
  q.q.Insert;
  q.q.FieldByName(_cdmovbancario).AsString  := cdmovbancario;
  q.q.FieldByName(_cdconta).AsString        := cbxcdconta.EditValue;
  q.q.FieldByName(_cdmovimentacao).AsString := cbxcdmovimentacao.editvalue;
  q.q.FieldByName(_dtemissao).AsDateTime    := edtdtbaixa.Date;
  q.q.FieldByName(_vllancamento).AsCurrency := edtvalor.Value;
  q.q.FieldByName(_vlpagamento).AsCurrency  := get_vlpagamento;
  q.q.FieldByName(_vldeposito).AsCurrency   := get_vldeposito;
  q.q.FieldByName(_BOCONCILIADO).AsString   := _n;
  q.q.FieldByName(_cdnatureza).AsString     := get_cdnatureza;
  if edtnumovbancario.Text      <> '' then
  begin
    q.q.FieldByName(_numovbancario).AsString := edtnumovbancario.text;
  end;
  if edtDSHISTORICO.text        <> '' then
  begin
    q.q.FieldByName(_dshistorico).AsString   := edtDSHISTORICO.text;
  end;
  if memdsobservacao.lines.text <> '' then
  begin
    q.q.FieldByName(_dsobservacao).AsString  := memdsobservacao.lines.text;
  end;
  RegistraInformacao_(q.q);
  aplicacao.aplyupdates(q.q);
end;

procedure TfrmdlgDespesa.gerar_baixa(q: TClasseQuery; cdmovbancario, cdautpagto:string);
begin
  q.q.Close;
  q.q.SQL.Text := QRetornaSQL.get_select_from(_BAIXA, _0);
  q.q.Open;
  q.q.Insert;
  q.q.FieldByName(_cdbaixa).AsString               := GerarCodigo(_baixa);
  q.q.FieldByName(_cdmovbancario).AsString         := cdmovbancario;
  q.q.FieldByName(_cd+tipo).AsString               := cdautpagto;
  q.q.FieldByName(_nubaixa).AsString               := cdautpagto;
  q.q.FieldByName(_dtbaixa).AsDateTime             := edtdtbaixa.Date;
  q.q.FieldByName(_VLMULTA).AsCurrency             := 0;
  q.q.FieldByName(_VLJURO).AsCurrency              := 0;
  q.q.FieldByName(_VLBAIXA).AsCurrency             := edtvalor.Value;
  q.q.FieldByName(_VLDESCONTO).AsCurrency          := 0;
  q.q.FieldByName(_VLABATIMENTO).AsCurrency        := 0;
  q.q.FieldByName(_VLDEVOLUCAO).AsCurrency         := 0;
  q.q.FieldByName(_VLLIQUIDO).AsCurrency           := edtvalor.Value;
  q.q.FieldByName(_VLJURO+_N+_RECEBIDO).AsCurrency := 0;
  RegistraInformacao_(q.q);
  aplicacao.aplyupdates(q.q);
end;

function TfrmdlgDespesa.inserir_registros:boolean;
var
  cdmovbancario, cdplconta, cdcntcusto, sqlregistras, cdautpagto : string;
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('', true);
  try
    cdplconta       := CodigodoCampo(_plconta, edtnuplconta.text, _nunivel);
    cdcntcusto      := CodigodoCampo(_cntcusto, edtnucntcusto.text, _nunivel);
    sqlregistras    := SQLRegistra;
    cdautpagto      := GerarCodigo(tipo);
    cdmovbancario   := GerarCodigo(_movbancario);
    gerar_autpagto(q, cdautpagto, cdcntcusto, cdplconta);
    gerar_movbancario(q, cdmovbancario);
    gerar_baixa(q, cdmovbancario, cdautpagto);
    result := true;
  finally
    FreeAndNil(q);
  end;
end;

procedure TfrmdlgDespesa.edtnucntcustoExit(Sender: TObject);
begin
  if tedit(sender).text = '' then
  begin
    lblnmcntcusto.Caption := '';
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_cntcusto, _nunivel, _string, tedit(sender).text) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [tedit(sender).text, maiuscula(_centro+' '+_custo)]), mterror, [mbok], 0);
    tedit(sender).setfocus;
    abort;
  end;
  lblnmcntcusto.Caption := NomedoCodigo(_cntcusto, CodigodoCampo(_cntcusto, edtnucntcusto.text, _nunivel));
  colorexit(sender);
end;

procedure TfrmdlgDespesa.edtnucntcustoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmdlgDespesa.edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TQForm.btnfindclick(TEdit(edtnucntcusto), lblnmcntcusto);
end;

procedure TfrmdlgDespesa.edtnumovbancarioKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmdlgDespesa.edtnuplcontaExit(Sender: TObject);
begin
  if tedit(sender).text = '' then
  begin
    lblnmplconta.Caption := '';
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_plconta, _nunivel, _string, tedit(sender).text) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [tedit(sender).text, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    tedit(sender).setfocus;
    abort;
  end;
  lblnmplconta.Caption := NomedoCodigo(_plconta, CodigodoCampo(_plconta, edtnuplconta.text, _nunivel));
  colorexit(sender);
end;

procedure TfrmdlgDespesa.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TQForm.btnfindclick(TEdit(edtnuplconta), lblnmplconta);
end;

procedure TfrmdlgDespesa.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmdlgDespesa.btnokClick(Sender: TObject);
var
  cdconta : string;
begin
  if cbxcdconta.text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Conta]), mtInformation, [mbOK], 0);
    cbxcdconta.SetFocus;
    Abort;
  end;
  if edtdtemissao.Text = ''then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__emissao]), mtInformation, [mbOK], 0);
    edtdtemissao.SetFocus;
    Abort;
  end;
  if edtcdfornecedor.Text = ''then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [pessoa]), mtInformation, [mbOK], 0);
    edtcdfornecedor.SetFocus;
    Abort;
  end;
  if edtvalor.Value = 0 then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Valor]), mtInformation, [mbOK], 0);
    edtvalor.SetFocus;
    Abort;
  end;
  if edtvalor.Value < 0 then
  begin
    MessageDlg('Valor não pode ser negativo.', mtInformation, [mbOK], 0);
    edtvalor.SetFocus;
    Abort;
  end;
  if cbxcdmovimentacao.text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [__Movimentacao]), mtInformation, [mbOK], 0);
    cbxcdmovimentacao.SetFocus;
    Abort;
  end;
  if edtnumovbancario.Enabled and (edtnumovbancario.Text = '') then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_do+' '+_Cheque]), mtInformation, [mbOK], 0);
    edtnumovbancario.SetFocus;
    Abort;
  end;
  cdconta := cbxcdconta.EditValue;
  if (edtnumovbancario.Text <> '') and RegistroExiste(_movbancario, _cdconta+'='+cdconta+' and numovbancario='+QuotedStr(edtnumovbancario.Text)) then
  begin
    MessageDlg('Número do cheque já foi usado nesta conta.', mtInformation, [mbOK], 0);
    edtnumovbancario.SetFocus;
    Abort;
  end;
  if empresa.financeiro.bocntcusto and (edtnucntcusto.text = '') then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Centro_de_Custo]), mtInformation, [mbOK], 0);
    edtnucntcusto.SetFocus;
    Abort;
  end;
  if empresa.financeiro.boplconta and (edtnuplconta.Text = '') then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Plano_de_Contas]), mtInformation, [mbOK], 0);
    edtnuplconta.SetFocus;
    Abort;
  end;
  modalresult := mrok;
end;

procedure TfrmdlgDespesa.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmdlgDespesa.FormCreate(Sender: TObject);
begin
  movbancario := TMovBancario.create;
  cbxcdconta.Properties.ListSource := abrir_tabela(_conta);
  lblcntcusto.Visible := empresa.financeiro.bocntcusto;
  edtnucntcusto.Visible := empresa.financeiro.bocntcusto;
  lblplconta.Visible := empresa.financeiro.boplconta;
  edtnuplconta.Visible := empresa.financeiro.boplconta;
  lblnmplconta.Visible := empresa.financeiro.boplconta;
end;

procedure TfrmdlgDespesa.cbxcdmovimentacaoPropertiesChange(Sender: TObject);
begin
  edtnumovbancario.Enabled := cbxcdmovimentacao.EditValue = _7;
end;

procedure TfrmdlgDespesa.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmdlgDespesa.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmdlgDespesa.edtcdfornecedorExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, pessoa, pessoa, _fornecedor) then
  begin
    set_configuracao_pessoa(strtoint64(edtcdfornecedor.Text));
  end;
  colorexit(Sender);
end;

procedure TfrmdlgDespesa.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  if tipo = _autpagto then
  begin
    cd := Localizarfornecedor(true)
  end
  else if tipo = _duplicata then
  begin
    cd := Localizarcliente(true);
  end;
  if cd = 0 then
  begin
    Exit;
  end;
  edtcdfornecedor.Text := cd.tostring;
  set_configuracao_pessoa(cd);
end;

procedure TfrmdlgDespesa.set_configuracao_pessoa(codigo: LargeInt);
var
  cdcntcusto, nuplconta: string;
begin
  nuplconta := qregistro.StringdoCodigo(pessoa, codigo, _nuplconta);
  if nuplconta <> '' then
  begin
    edtnuplconta.Text := nuplconta;
    edtnuplcontaExit(edtnuplconta);
  end;
  cdcntcusto := qregistro.StringdoCodigo(pessoa, codigo, _cdcntcusto);
  if cdcntcusto <> '' then
  begin
    edtnucntcusto.text := cdcntcusto;
  end;
end;

procedure TfrmdlgDespesa.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmdlgDespesa.settipo(tipo_: string);
begin
  tipo := tipo_;
  if tipo = _duplicata then
  begin
    pessoa  := Maiuscula(_cliente);
    caption := Maiuscula(_receita);
  end
  else if tipo = _autpagto  then
  begin
    pessoa  := maiuscula(_fornecedor);
    caption := Maiuscula(_despesa);
  end;
  lblnumovbancario.Visible := tipo = _autpagto;
  edtnumovbancario.Visible := tipo = _autpagto;
  lblfornecedor.Caption := Maiuscula(pessoa);
  cbxcdmovimentacao.Properties.ListSource := abrir_tabela(_movimentacao, get_cdtpmodulo, _CDTPMODULO, '=', tipo);
end;

function TfrmdlgDespesa.get_cdtpmodulo: string;
begin
  if tipo = _autpagto then
  begin
    result := _4
  end
  else if tipo = _duplicata then
  begin
    result := _3;
  end;
end;

function TfrmdlgDespesa.get_cdnatureza: string;
begin
  if tipo = _autpagto  then
  begin
    result := _D
  end
  else if tipo = _duplicata then
  begin
    result := _C;
  end;
end;

function TfrmdlgDespesa.get_vldeposito: Currency;
begin
  result := 0;
  if tipo = _duplicata then
  begin
    result := edtvalor.Value;
  end;
end;

function TfrmdlgDespesa.get_vlpagamento: Currency;
begin
  result := 0;
  if tipo = _autpagto  then
  begin
    result := edtvalor.Value;
  end;
end;

procedure TfrmdlgDespesa.edtdtemissaoExit(Sender: TObject);
var
  cdconta : string;
begin
  cdconta := cbxcdconta.EditValue;
  if not movbancario.CaixaAberto(cdconta, edtdtemissao.Date) then
  begin
    MessageDlg('Caixa encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, edtdtemissao.Date)+'.', mtInformation, [mbOK], 0);
    edtdtemissao.SetFocus;
    Abort;
  end;
  colorexit(sender);
end;

procedure TfrmdlgDespesa.cbxcdcontaExit(Sender: TObject);
var
  cdconta : string;
begin
  cdconta := cbxcdconta.EditValue;
  if not movbancario.CaixaAberto(cdconta, edtdtemissao.Date) then
  begin
    MessageDlg('Caixa encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, edtdtemissao.Date)+'.', mtInformation, [mbOK], 0);
    cbxcdconta.SetFocus;
    Abort;
  end;
  colorexit(sender);
end;

procedure TfrmdlgDespesa.FormDestroy(Sender: TObject);
begin
  movbancario.Free;
end;

procedure TfrmdlgDespesa.cbxcdcontaEnter(Sender: TObject);
begin
  abrir_tabela(_conta);
  colorenter(Sender);
end;

end.

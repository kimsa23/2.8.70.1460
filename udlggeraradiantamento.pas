unit udlggeraradiantamento;

interface

uses
  System.Actions, System.UITypes,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Menus, Buttons,
  ComCtrls, ExtCtrls, Mask, Spin, dialogs,
  DB,
  ustrings, unumero, udatahora, ulocalizarcliente, uconstantes,
  uregistro,
  classeaplicacao, classegerar, classeexecutasql, classeempresa, classeregistrainformacao,
  classeform, classeretornasql, classequery, classemovbancario, classeadntcliente, classeadntfornecedor,
  cxGroupBox, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLookAndFeels, cxCurrencyEdit, cxPC, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCalendar, cxNavigator, dxCore, cxDateUtils, cxMemo;

type
  TfrmdlgAdntcliente = class(TForm)
    lblcliente: TLabel;
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
    cbxcdcntcusto: TcxLookupComboBox;
    edtdtemissao: TcxDateEdit;
    lbldtemissao: TLabel;
    lblnmcliente: TLabel;
    edtcdcliente: TcxButtonEdit;
    Label2: TLabel;
    cbxcdconta: TcxLookupComboBox;
    lblrepresentante: TLabel;
    cbxcdrepresentante: TcxLookupComboBox;
    memdsobservacao: TcxMemo;
    Label6: TLabel;
    lblprcomissao: TLabel;
    edtprcomissao: TcxCalcEdit;
    edtvlcomissao: TcxCurrencyEdit;
    lblvlcomissao: TLabel;
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure edtnuplcontaExit(Sender: TObject);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnokClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure cbxcdmovimentacaoPropertiesChange(Sender: TObject);
    procedure edtprcomissaoPropertiesChange(Sender: TObject);
    procedure edtdtemissaoExit(Sender: TObject);
    procedure cbxcdcontaExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxcdrepresentanteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private { Private declarations }
    movbancario : TMovBancario;
    baixa : TBaixa;
    adntcliente : TAdntcliente;
    adntfornecedor : TAdntfornecedor;
    codigo : integer;
    tipo: string;
    bofechado : boolean;
    vlutilizado : Currency;
    procedure AbrirRegistro;
    procedure ExibirComissao(bovisible:boolean);
    procedure settipo(tipo_: string; codigo_:integer; bofechado_:boolean);
    function  InserirRegistros:boolean;
    procedure ConfiguracaoPessoa(codigo:LargeInt);
    procedure ConfigurarEmpresa;
    procedure set_stcaixa;
    procedure ConsistirDtemissao;
    procedure ConsistirCdcliente;
    procedure ConsistirValor;
    procedure ConsistirPrcomissao;
    procedure ConsistirCdconta;
    procedure ConsistirPlconta;
    procedure ConsistirCntcusto;
    function ObterVldeposito:Currency;
    function ObterVlpagamento:Currency;
    function GerarAdntcliente:string;
    function GerarAdntFornecedor:string;
    function GerarMovbancario:string;
    function GerarBaixa:string;
    function get_boconciliado: string;
    procedure AbrirTabelas;
  public { Public declarations }
  end;

var
  frmdlgAdntcliente: TfrmdlgAdntcliente;

function GerarAdiantamento(tipo: string; cdconta:integer; codigo:integer=0; bofechado:boolean=false):boolean;

implementation

uses uDtmMain, Variants, Math, ulocalizarfornecedor;

{$R *.dfm}

function GerarAdiantamento(tipo: string; cdconta:integer; codigo:integer=0; bofechado:boolean=false):boolean;
begin
  result := false;
  frmdlgAdntcliente := tfrmdlgAdntcliente.create(nil);
  try
    frmdlgAdntcliente.settipo(tipo, codigo, bofechado);
    frmdlgAdntcliente.cbxcdconta.EditValue := cdconta;
    if (frmdlgAdntcliente.ShowModal = mrok) and (not bofechado) then
    begin
      result := frmdlgAdntcliente.InserirRegistros;
    end;
  finally
    freeandnil(frmdlgAdntcliente);
  end;
end;

procedure TfrmdlgAdntcliente.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmdlgAdntcliente.ExibirComissao(bovisible: boolean);
begin
  edtprcomissao.visible := bovisible;
  edtvlcomissao.visible := bovisible;
  lblprcomissao.visible := bovisible;
  lblvlcomissao.visible := bovisible;
end;

function TfrmdlgAdntcliente.GerarAdntcliente:string;
begin
  adntcliente.cdcliente := strtoint64(edtcdcliente.text);
  adntcliente.cdstadntcliente := 1;
  adntcliente.dtemissao := edtdtemissao.Date;
  adntcliente.dtentrada := edtdtemissao.Date;
  adntcliente.vladntcliente := edtvalor.Value;
  adntcliente.vlsaldo := edtvalor.Value;
  adntcliente.vlutilizado := 0;
  if cbxcdrepresentante.text <> '' then
  begin
    adntcliente.cdrepresentante := cbxcdrepresentante.editvalue;
    adntcliente.prcomissao := edtprcomissao.Value;
    adntcliente.vlcomissao := edtvlcomissao.value;
  end
  else
  begin
    adntcliente.cdrepresentante := 0;
    adntcliente.prcomissao := 0;
    adntcliente.vlcomissao := 0;
  end;
  adntcliente.dshistorico := edtDSHISTORICO.text;
  adntcliente.dsobservacao := memdsobservacao.lines.text;
  if adntcliente.cdadntcliente = 0 then
  begin
    adntcliente.cdadntcliente := qgerar.GerarCodigo(_adntcliente);
    adntcliente.cdmovbancario := movbancario.cdmovbancario;
    result := adntcliente.insert(true);
  end
  else
  begin
    result := adntcliente.update(true);
  end;
end;

function TfrmdlgAdntcliente.GerarAdntFornecedor:string;
begin
  adntfornecedor.cdfornecedor := strtoint64(edtcdcliente.text);
  adntfornecedor.cdstadntfornecedor := 1;
  adntfornecedor.dtemissao := edtdtemissao.Date;
  adntfornecedor.dtentrada := edtdtemissao.Date;
  adntfornecedor.vladntfornecedor := edtvalor.Value;
  adntfornecedor.vlsaldo := edtvalor.Value;
  adntfornecedor.vlutilizado := 0;
  adntfornecedor.dshistorico := edtDSHISTORICO.text;
  adntfornecedor.dsobservacao := memdsobservacao.lines.text;
  if adntfornecedor.cdadntfornecedor = 0 then
  begin
    adntfornecedor.cdadntfornecedor := qgerar.GerarCodigo(_adntfornecedor);
    adntfornecedor.cdmovbancario := movbancario.cdmovbancario;
    result := adntfornecedor.insert(true);
  end
  else
  begin
    result := adntfornecedor.update(true);
  end;
end;

function TfrmdlgAdntcliente.get_boconciliado:string;
begin
  result := _N;
  if qregistro.InteirodoCodigo(_conta, movbancario.cdconta, _cdtpconta) = 2 then
  begin
    result := _s;
  end;
end;

procedure TfrmdlgAdntcliente.AbrirTabelas;
begin
  cbxcdcntcusto.Properties.ListSource := abrir_tabela(_cntcusto);
  if empresa.comercial.representante.bo then
  begin
    cbxcdrepresentante.Properties.ListSource := abrir_tabela(_representante);
  end;
  cbxcdconta.Properties.ListSource := abrir_tabela(_conta);
end;

function TfrmdlgAdntcliente.GerarMovbancario:string;
var
  cdplconta : string;
begin
  cdplconta := CodigodoCampo(_plconta, edtnuplconta.text, _nunivel);
  movbancario.cdconta        := cbxcdconta.EditValue;
  if tipo = _adntcliente then
  begin
    movbancario.cdcliente := strtoint64(edtcdcliente.Text);
  end
  else if tipo = _adntfornecedor then
  begin
    movbancario.cdfornecedor := strtoint64(edtcdcliente.Text);
  end;
  movbancario.dtemissao      := edtdtemissao.Date;
  movbancario.BOCONCILIADO   := get_boconciliado;
  movbancario.vllancamento   := edtvalor.Value;
  movbancario.vldeposito     := ObterVldeposito;
  movbancario.vlpagamento    := ObterVlpagamento;
  movbancario.dshistorico    := edtDSHISTORICO.text;
  movbancario.dsobservacao := memdsobservacao.lines.text;
  if cdplconta <> '' then
  begin
    movbancario.cdplconta := strtoint(cdplconta);
    movbancario.nuplconta := edtnuplconta.text;
  end;
  if cbxcdcntcusto.text <> '' then
  begin
    movbancario.cdcntcusto := cbxcdcntcusto.editvalue;
  end;
  if movbancario.cdmovbancario = 0 then
  begin
    movbancario.cdmovbancario := qgerar.gerarcodigo(_movbancario);
    result := movbancario.insert(true);
  end
  else
  begin
    result := movbancario.update(true);
  end;
end;

function TfrmdlgAdntcliente.GerarBaixa:string;
begin
  baixa.select(_cdmovbancario+'='+inttostr(movbancario.cdmovbancario));
  if tipo = _adntcliente then
  begin
    baixa.cdadntcliente := adntcliente.cdadntcliente;
    baixa.nubaixa := inttostr(baixa.cdadntcliente);
  end
  else
  begin
    baixa.cdadntfornecedor := adntfornecedor.cdadntfornecedor;
    baixa.nubaixa := baixa.cdadntfornecedor.ToString;
  end;
  baixa.dtbaixa := edtdtemissao.Date;
  baixa.vlbaixa := edtvalor.Value;
  baixa.vlliquido := edtvalor.Value;
  if baixa.cdbaixa = 0 then
  begin
    baixa.cdbaixa := qgerar.GerarCodigo(_baixa);
    baixa.cdmovbancario := movbancario.cdmovbancario;
    result := baixa.insert(true);
  end
  else
  begin
    result := baixa.update(true);
  end;
end;

function TfrmdlgAdntcliente.InserirRegistros:boolean;
var
  sql : TStrings;
begin
  sql := tstringlist.create;
  try
    sql.add(GerarMovbancario);
    if tipo = _adntcliente then
    begin
      sql.add(GerarAdntcliente);
    end
    else
    begin
      sql.add(GerarAdntfornecedor);
    end;
    sql.add(GerarBaixa);
    result := ExecutaScript(sql);;
  finally
    freeandnil(sql);
  end;
end;

procedure TfrmdlgAdntcliente.edtnuplcontaExit(Sender: TObject);
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

procedure TfrmdlgAdntcliente.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TQForm.btnfindclick(TEdit(edtnuplconta), lblnmplconta);
end;

procedure TfrmdlgAdntcliente.edtprcomissaoPropertiesChange(Sender: TObject);
begin
  edtvlcomissao.Value := edtvalor.Value * edtprcomissao.Value / 100;
end;

procedure TfrmdlgAdntcliente.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmdlgAdntcliente.btnokClick(Sender: TObject);
begin
  ConsistirDtemissao;
  ConsistirCdcliente;
  ConsistirValor;
  ConsistirCdconta;
  if tipo = _adntcliente then
  begin
    ConsistirPrcomissao;
  end;
  ConsistirCntcusto;
  ConsistirPlconta;
  modalresult := mrok;
end;

procedure TfrmdlgAdntcliente.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmdlgAdntcliente.FormCreate(Sender: TObject);
begin
  edtdtemissao.Date := DtBanco;
  movbancario := TMovBancario.create;
  baixa := tbaixa.create;
  adntcliente := tadntcliente.create;
  adntfornecedor := tadntfornecedor.create;
  AbrirTabelas;
  ConfigurarEmpresa;
end;

procedure TfrmdlgAdntcliente.cbxcdmovimentacaoPropertiesChange(Sender: TObject);
begin
  edtprcomissao.Enabled := cbxcdrepresentante.Text <> '';
end;

procedure TfrmdlgAdntcliente.ConsistirCdcliente;
begin
  if edtcdcliente.Text = ''then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [lblcliente.Caption]), mtInformation, [mbOK], 0);
    edtcdcliente.SetFocus;
    Abort;
  end;
end;

procedure TfrmdlgAdntcliente.ConsistirCdconta;
begin
  if cbxcdconta.text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Conta]), mtInformation, [mbOK], 0);
    cbxcdconta.SetFocus;
    Abort;
  end;
end;

procedure TfrmdlgAdntcliente.ConsistirCntcusto;
begin
  if empresa.financeiro.bocntcusto and (cbxcdcntcusto.text = '') then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_centro_de_custo]), mtInformation, [mbOK], 0);
    cbxcdcntcusto.SetFocus;
    Abort;
  end;
end;

procedure TfrmdlgAdntcliente.ConsistirDtemissao;
begin
  if edtdtemissao.Text = ''then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__emissao]), mtInformation, [mbOK], 0);
    edtdtemissao.SetFocus;
    Abort;
  end;
end;

procedure TfrmdlgAdntcliente.ConsistirPlconta;
begin
  if edtnuplconta.visible and (edtnuplconta.Text = '') then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_plano_de_contas]), mtInformation, [mbOK], 0);
    edtnuplconta.SetFocus;
    Abort;
  end;
end;

procedure TfrmdlgAdntcliente.ConsistirPrcomissao;
begin
  if (not edtprcomissao.visible) or (cbxcdrepresentante.Text = '') then
  begin
    exit;
  end;
  if edtprcomissao.Value = 0 then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, ['%'+' '+__Comissao]), mtInformation, [mbOK], 0);
    edtprcomissao.SetFocus;
    Abort;
  end;
  if edtprcomissao.Value < 0 then
  begin
    MessageDlg('% Comissão não pode ser negativo.', mtInformation, [mbOK], 0);
    edtprcomissao.SetFocus;
    Abort;
  end;
end;

procedure TfrmdlgAdntcliente.ConsistirValor;
begin
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
end;

procedure TfrmdlgAdntcliente.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmdlgAdntcliente.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmdlgAdntcliente.edtcdclienteExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, lblcliente.Caption, lblcliente.Caption, _cliente) then
  begin
    ConfiguracaoPessoa(StrToInt64(edtcdcliente.Text));
  end;
  colorexit(Sender);
end;

procedure TfrmdlgAdntcliente.ConfiguracaoPessoa(codigo: LargeInt);
var
  cdcntcusto, nuplconta: string;
begin
  nuplconta := qregistro.StringdoCodigo(lblcliente.Caption, codigo, _nuplconta);
  if nuplconta <> '' then
  begin
    edtnuplconta.Text := nuplconta;
    edtnuplcontaExit(edtnuplconta);
  end;
  cdcntcusto := qregistro.StringdoCodigo(lblcliente.Caption, codigo, _cdcntcusto);
  if cdcntcusto <> '' then
  begin
    cbxcdcntcusto.EditValue := cdcntcusto;
  end;
end;

procedure TfrmdlgAdntcliente.ConfigurarEmpresa;
begin
  lblplconta.Visible         := empresa.financeiro.boplconta;
  edtnuplconta.Visible       := empresa.financeiro.boplconta;
  lblnmplconta.Visible       := empresa.financeiro.boplconta;
  lblcntcusto.Visible        := empresa.financeiro.bocntcusto;
  cbxcdcntcusto.Visible      := empresa.financeiro.bocntcusto;
  lblrepresentante.visible   := empresa.comercial.representante.bo;
  cbxcdrepresentante.Visible := empresa.comercial.representante.bo;
end;

procedure TfrmdlgAdntcliente.settipo(tipo_: string; codigo_:integer; bofechado_: boolean);
begin
  tipo       := tipo_;
  codigo     := codigo_;
  bofechado    := bofechado_;
  lblrepresentante.Visible   := (tipo = _adntcliente) and empresa.comercial.representante.bo;
  cbxcdrepresentante.Visible := (tipo = _adntcliente) and empresa.comercial.representante.bo;
  AbrirRegistro;
  set_stcaixa;
end;

function TfrmdlgAdntcliente.ObterVldeposito: Currency;
begin
  result := 0;
  if tipo = _adntcliente then
  begin
    result := edtvalor.Value;
  end;
end;

function TfrmdlgAdntcliente.ObterVlpagamento: Currency;
begin
  result := 0;
  if tipo = _adntfornecedor then
  begin
    result := edtvalor.Value;
  end;
end;

procedure TfrmdlgAdntcliente.AbrirRegistro;
begin
  movbancario.select(codigo);
  if tipo = _adntcliente then
  begin
    movbancario.cdmovimentacao := 13;
    movbancario.cdnatureza     := _c;
    if movbancario.cdcliente <> 0 then
    begin
      edtcdcliente.Text          := movbancario.cdcliente.ToString;
    end;
    adntcliente.select(_cdmovbancario+'='+inttostr(codigo));
    cbxcdrepresentante.EditValue := adntcliente.cdrepresentante;
    ExibirComissao(adntcliente.cdrepresentante <> 0);
    edtprcomissao.Value          := adntcliente.prcomissao;
    edtvlcomissao.Value          := adntcliente.vlcomissao;
    vlutilizado                  := adntcliente.vlutilizado;
    lblcliente.Caption           := Maiuscula(_cliente);
    caption                      := Caption + ' - '+adntcliente.cdadntcliente.ToString;
  end
  else
  begin
    movbancario.cdmovimentacao := 14;
    movbancario.cdnatureza     := _d;
    if movbancario.cdfornecedor <> 0 then
    begin
      edtcdcliente.Text          := movbancario.cdfornecedor.ToString;
    end;
    adntfornecedor.select(_cdmovbancario+'='+inttostr(codigo));
    vlutilizado                := adntfornecedor.vlutilizado;
    lblcliente.Caption         := maiuscula(_fornecedor);
    caption                    := Caption + ' - '+adntfornecedor.cdadntfornecedor.ToString;
  end;
  caption := qregistro.nomedocodigo(_movimentacao, movbancario.cdmovimentacao);

  if movbancario.cdmovbancario <> 0 then
  begin
    edtdtemissao.Date := movbancario.dtemissao;
  end
  else
  begin
    edtdtemissao.Date := dtbanco;
  end;
  edtvalor.Value             := movbancario.vllancamento;
  cbxcdconta.EditValue       := movbancario.cdconta;
  cbxcdcntcusto.EditValue    := movbancario.cdcntcusto;
  edtdshistorico.Text        := movbancario.dshistorico;
  memdsobservacao.Lines.Text := movbancario.dsobservacao;
  edtnuplconta.Text          := movbancario.NUPLCONTA;
  edtcdclienteExit(edtcdcliente);
  edtnuplcontaExit(edtnuplconta);
  if (vlutilizado > 0) and (movbancario.cdmovbancario <> 0) then
  begin
    bofechado := true;
  end;
end;

procedure TfrmdlgAdntcliente.set_stcaixa;
begin
  edtdtemissao.Enabled       := not bofechado;
  edtcdcliente.Enabled       := not bofechado;
  edtvalor.Enabled           := not bofechado;
  cbxcdconta.Enabled         := not bofechado;
  cbxcdrepresentante.Enabled := not bofechado;
  edtprcomissao.Enabled      := not bofechado;
  cbxcdcntcusto.Enabled      := not bofechado;
  edtnuplconta.Enabled       := not bofechado;
  edtdshistorico.Enabled     := not bofechado;
  edtdshistorico.Enabled     := not bofechado;
  memdsobservacao.Enabled    := not bofechado;
end;

procedure TfrmdlgAdntcliente.edtdtemissaoExit(Sender: TObject);
var
  cdconta : string;
begin
  cdconta := cbxcdconta.EditValue;
  if not tmovbancario.CaixaAberto(cdconta, edtdtemissao.Date) then
  begin
    MessageDlg('Caixa encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, edtdtemissao.Date)+'.', mtInformation, [mbOK], 0);
    edtdtemissao.SetFocus;
    Abort;
  end;
  colorexit(sender);
end;

procedure TfrmdlgAdntcliente.cbxcdcontaExit(Sender: TObject);
var
  cdconta : string;
begin
  cdconta := cbxcdconta.EditValue;
  if not tmovbancario.CaixaAberto(cdconta, edtdtemissao.Date) then
  begin
    MessageDlg('Caixa encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, edtdtemissao.Date)+'.', mtInformation, [mbOK], 0);
    cbxcdconta.SetFocus;
    Abort;
  end;
  colorexit(sender);
end;

procedure TfrmdlgAdntcliente.FormDestroy(Sender: TObject);
begin
  freeandnil(movbancario);
  freeandnil(adntcliente);
  freeandnil(adntfornecedor);
  freeandnil(baixa);
end;

procedure TfrmdlgAdntcliente.cbxcdrepresentanteExit(Sender: TObject);
begin
  ExibirComissao(cbxcdrepresentante.Text <> '');
  colorexit(sender);
  if cbxcdrepresentante.Text <> '' then
  begin
    edtprcomissao.SetFocus;
  end;
end;

procedure TfrmdlgAdntcliente.edtcdclienteKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmdlgAdntcliente.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  if tipo = _adntcliente then
  begin
    cd := LocalizarCliente
  end
  else if tipo = _adntfornecedor then
  begin
    cd := localizarfornecedor;
  end;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdcliente.Text      := cd.tostring;
  lblnmcliente.caption   := qregistro.Stringdocodigo(lblcliente.caption, cd, _rzsocial);
  ConfiguracaoPessoa(cd);
end;

end.

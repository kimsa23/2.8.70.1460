unit ubaixa;

interface

uses
  System.Actions, System.UITypes,
  Controls, Classes, SysUtils, Dialogs, forms, StdCtrls, Buttons, ComCtrls,
  Menus, Variants, math, Mask, ExtCtrls, midaslib,
  db, DBClient,
  uexportarexcel, ustrings, uconstantes, uregistro, udatahora,
  classeretornasql, classegerar, classeexecutasql, classemovbancario, classeusuario,
  classeregistrainformacao, classeempresa, classeform, classeaplicacao, classeduplicata,
  classequery, classeautpagto,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, cxGraphics, cxLookAndFeels, cxLabel,
  cxPC, cxButtonEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCalendar, cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPCdxBarPopupMenu, cxMemo, cxNavigator, dxCore, cxDateUtils,
  dxBarBuiltInMenu;

type
  TDocumento=record
    vlmulta : Currency;
    vladiantamento : Currency;
    vlliquido : Currency;
    vlbaixa : Currency;
    vldesconto : currency;
    vlabatimento : currency;
    vldevolucao : currency;
    vlsaldojuros : Currency;
    vljurosreduzido : Currency;
    vljuros : Currency;
    vlsaldo : Currency;
    vloriginal : Currency;
    dtprorrogacao: TDate;
    dtemissao: TDate;
    dtbaixa : TDate;
    prmulta : double;
    prmoradiaria : double;
    cdsaida : string;
    dshistorico : string;
    dsobservacao : string;
    cdcliente : string;
    rzsocial : string;
    tabela : string;
    numovbancario : string;
    dsnominal : string;
    tipo : string;
    cdconta : integer;
    cddocumento : integer;
    cddocumentorigem : integer;
    cdadiantamento : integer;
    cdmovimentacao : integer;
  end;
  Tfrmbaixa = class(TForm)
    cds: TClientDataSet;
    dts: TDataSource;
    cdscdautpagto: TIntegerField;
    cdsvlautpagto: TCurrencyField;
    cdsvlsaldo: TCurrencyField;
    cdsvlbaixa: TCurrencyField;
    cdsvlmulta: TCurrencyField;
    cdsvljuros: TCurrencyField;
    cdsvldesconto: TCurrencyField;
    cdsvldevolucao: TCurrencyField;
    cdsvlabatimento: TCurrencyField;
    cdsvlrecebido: TCurrencyField;
    cdsnuduplicata: TStringField;
    cdsdtprorrogacao: TDateField;
    cdsPRMORADIARIA: TCurrencyField;
    bvlliquido: TBevel;
    lblmovimentacao: TLabel;
    lblconta: TLabel;
    lblnumero: TLabel;
    lblhistorico: TLabel;
    lblnominal: TLabel;
    lblmovimento: TLabel;
    lbldata1: TLabel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    edtnumovbancario: TcxTextEdit;
    edtdshistorico: TcxTextEdit;
    edtdsnominal: TcxTextEdit;
    pgc: TcxPageControl;
    tbslista: TcxTabSheet;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvcdautpagto: TcxGridDBColumn;
    tbvvlautpagto: TcxGridDBColumn;
    tbvvlsaldo: TcxGridDBColumn;
    tbvvlbaixa: TcxGridDBColumn;
    tbvvlmulta: TcxGridDBColumn;
    tbvvljuros: TcxGridDBColumn;
    tbvvldesconto: TcxGridDBColumn;
    tbvvldevolucao: TcxGridDBColumn;
    tbvvlabatimento: TcxGridDBColumn;
    tbvvlrecebido: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    tbs1: TcxTabSheet;
    Bevel3: TBevel;
    Bevel1: TBevel;
    bvldeducoes: TBevel;
    bvlacrescimo: TBevel;
    Bevel2: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblacrescimo: TLabel;
    lblmulta: TLabel;
    lbljuros: TLabel;
    lbldeducoes: TLabel;
    lbldescontos: TLabel;
    lblabatimentos: TLabel;
    lbldevolucao: TLabel;
    Label15: TLabel;
    lblliquido: TLabel;
    lblvlliquido: TLabel;
    lbvljurosreduzido: TLabel;
    lblsaldo: TLabel;
    lblvlsaldoorigem: TLabel;
    lblnome: TLabel;
    lblcodigo: TLabel;
    edtvljurosreduzido: TcxCalcEdit;
    edtvldevolucao: TcxCalcEdit;
    edtvlabatimento: TcxCalcEdit;
    edtvldesconto: TcxCalcEdit;
    edtvljuros: TcxCalcEdit;
    edtvlmulta: TcxCalcEdit;
    edtvlbaixa: TcxCalcEdit;
    edtcodigo: TcxButtonEdit;
    edtdata: TcxDateEdit;
    cbxcdconta: TcxLookupComboBox;
    cbxcdmovimentacao: TcxLookupComboBox;
    memdsobservacao: TcxMemo;
    lbldsobservacao: TLabel;
    cdsprmulta: TFloatField;
    edtvlsaldo: TcxCurrencyEdit;
    edtvloriginal: TcxCurrencyEdit;
    edtdtprorrogacao: TcxDateEdit;
    lbldtprorrogacao: TLabel;
    procedure edtvlbaixaEnter(Sender: TObject);
    procedure edtvlmultaExit(Sender: TObject);
    procedure edtvljurosExit(Sender: TObject);
    procedure edtvldescontoExit(Sender: TObject);
    procedure edtvlabatimentoExit(Sender: TObject);
    procedure edtvldevolucaoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtdtbaixaChange(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure edtvlbaixaPropertiesChange(Sender: TObject);
    procedure edtvljurosreduzidoPropertiesChange(Sender: TObject);
    procedure edtcodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcodigoClick(Sender: TObject);
    procedure edtcodigoExit(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsvlbaixaValidate(Sender: TField);
    procedure cdsvljurosValidate(Sender: TField);
    procedure edtdataPropertiesChange(Sender: TObject);
    procedure edtdataPropertiesEditValueChanged(Sender: TObject);
    procedure cbxcdcontaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxcdmovimentacaoPropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private    { Private declarations }
    documento : TDocumento;
    cdadiantamento: integer;
    tbladnt : string;
    tbl: string;
    nmexibe : string;
    tvw: TcxGridDBTableView;
    autpagto : tautpagto;
    duplicata : TDuplicata;
    procedure ConsisteValorBaixa;
    procedure ConsistirValor(sender:Tobject);
    procedure AtualizarValorLiquido;
    procedure AtualizarJuros(recalcular : boolean = true);
    procedure AtualizarSaldo(codigo: integer; tipo :string);
    procedure LimparCampos;
    function  InserirBaixa:Boolean;
    function  InserirBaixaAdiantamento:boolean;
    function  habilitabotao:boolean;
    procedure ConfigurarMovbancario;
    procedure RecalcularJuros;
    procedure ConfigurarTela;
    procedure ConfigurarDocumento;
    procedure ConfigurarRegistro;
    procedure CarregarDuplicataNota;
    function campoleitura(nmcampo:string):Boolean;
    function InserirBaixaEncontrocontas:boolean;
    procedure AtribuirTelaObjeto;
    procedure ConfigurarEncontroContas(tipo: string; cddocumento:integer);
  public { Public declarations }
  end;

function BaixarAdiantamento  (cddocumento: integer; tipo: string; cdadiantamento : Integer; tbladnt:string=''):boolean;
function BaixarEncontroContas(tipo: string; cddocumento : integer):boolean;
function BaixarDocumento     (tipo: string; cddocumento : integer; vladiantamento:Currency=0; vlsaldofrete: currency=0):boolean;overload;
function BaixarDocumento     (tipo: string; cddocumento : integer; tvw: TcxGridDBTableView; cdsaida:string=''):boolean;overload;

var
  frmbaixa: Tfrmbaixa;

implementation

uses uLocalizarDuplicata, uLocalizarAutPagto, cxGridDBDataDefinitions, uDtmMain;

{$R *.dfm}

function BaixarEncontroContas(tipo: string; cddocumento : integer):boolean;
begin
  result   := false;
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  frmbaixa := TFrmbaixa.Create(application);
  try
    frmbaixa.ConfigurarEncontroContas(tipo, cddocumento);
    frmbaixa.ShowModal;
    if (frmbaixa.ModalResult = mrok) and (frmbaixa.habilitabotao)then
    begin
      frmbaixa.documento.dtbaixa := frmbaixa.edtdata.Date;
      if frmbaixa.documento.tipo = _duplicata then
      begin
        frmbaixa.documento.cddocumentorigem := strtoint(frmbaixa.edtcodigo.Text);
        if frmbaixa.edtvlbaixa.Value > frmbaixa.edtvlsaldo.Value then
        begin
          messagedlg('Valor da baixa '+FormatFloat(__moeda,frmbaixa.edtvlbaixa.value)+', maior que o saldo da '#13'Conta a Pagar '+FormatFloat(__moeda,frmbaixa.edtvlsaldo.Value)+'.', mterror, [mbok], 0);
          abort;
        end;
      end;
      if frmbaixa.documento.tipo = _autpagto then
      begin
        frmbaixa.documento.cddocumentorigem := qregistro.CodigodoString(_duplicata, frmbaixa.edtcodigo.text, _nuduplicata);
        if frmbaixa.edtvlbaixa.Value > frmbaixa.edtvloriginal.Value then
        begin
          messagedlg('Valor da baixa '+FormatFloat(__moeda,frmbaixa.edtvlbaixa.value)+', maior que o saldo da '#13'Conta a Receber '+frmbaixa.lblvlsaldoorigem.Caption+'.', mterror, [mbok], 0);
          abort;
        end;
      end;
      if frmbaixa.edtvlbaixa.Value > frmbaixa.documento.vlsaldo then
      begin
        messagedlg('Valor da baixa '+FormatFloat(__moeda,frmbaixa.edtvlbaixa.value)+', maior que o saldo '+ FormatFloat(__moeda,frmbaixa.documento.vlsaldo)+'.', mterror, [mbok], 0);
        abort;
      end;
      frmbaixa.AtribuirTelaObjeto;
      frmbaixa.documento.cddocumento := cddocumento;
      frmbaixa.InserirBaixaEncontrocontas;
      result := true;
    end;
  finally
    freeandnil(frmbaixa);
  end;
end;

function BaixarAdiantamento(cddocumento: integer; tipo: string; cdadiantamento : Integer; tbladnt:string=''):boolean;
begin
  result := false;
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if tbladnt = '' then
  begin
    if tipo = _duplicata then
    begin
      tbladnt := _adntcliente
    end
    else
    begin
      tbladnt := _adntfornecedor;
    end;
  end;
  frmbaixa := TFrmbaixa.Create(application);
  try
    frmbaixa.edtcodigo.Enabled := false;
    frmbaixa.documento.vlsaldo        := qregistro.ValordoCodigo(tipo, cddocumento, _vlsaldo);
    frmbaixa.documento.vloriginal     := qregistro.valordocodigo(tipo, cddocumento, _vl+tipo);
    frmbaixa.documento.vladiantamento := qregistro.ValordoCodigo(tbladnt, cdadiantamento, _vlsaldo);
    if tipo = _duplicata then
    begin
      frmbaixa.documento.cdcliente := qregistro.Stringdocodigo(_duplicata, cddocumento, _cdcliente);
      frmbaixa.documento.rzsocial  := Nomedocodigo(_cliente  , frmbaixa.documento.cdcliente  , _rzsocial);
      frmbaixa.edtdtprorrogacao.Date := qregistro.DatadoCodigo(_duplicata, cddocumento, _dtprorrogacao);
    end
    else if tipo = _autpagto then
    begin
      frmbaixa.documento.cdcliente := qregistro.StringdoCodigo(tipo, cddocumento, _cdfornecedor);
      frmbaixa.documento.rzsocial  := Nomedocodigo(_fornecedor, frmbaixa.documento.cdcliente  , _rzsocial);
      frmbaixa.edtdtprorrogacao.Date := qregistro.DatadoCodigo(_autpagto, cddocumento, _dtprorrogacao);
    end;

    frmbaixa.cdadiantamento      := cdadiantamento;
    frmbaixa.tbladnt             := tbladnt;
    frmbaixa.tbslista.TabVisible := False;
    frmbaixa.ConfigurarMovbancario;
    frmbaixa.pgc.ActivePage := frmbaixa.tbs1;
    if tipo = _duplicata then
    begin
      frmbaixa.tbs1.Caption := 'Baixar Contas a Receber com Adiantamento de '
    end
    else
    begin
      frmbaixa.tbs1.Caption := 'Baixar Contas a Pagar com Adiantamento de ';
    end;
    if tbladnt = _adntcliente then
    begin
      frmbaixa.tbs1.Caption := frmbaixa.tbs1.Caption + Maiuscula(_Cliente)
    end
    else
    begin
      frmbaixa.tbs1.Caption := frmbaixa.tbs1.Caption + Maiuscula(_Fornecedor);
    end;
    // atribui valores
    frmbaixa.edtcodigo.Text            := frmbaixa.documento.cdcliente;
    frmbaixa.lblnome.Caption           := frmbaixa.documento.rzsocial;
    frmbaixa.edtvlsaldo.Value          := frmbaixa.documento.vlsaldo;
    frmbaixa.edtvloriginal.Value       := frmbaixa.documento.vloriginal;
    frmbaixa.documento.vloriginal      := frmbaixa.documento.vloriginal;
    frmbaixa.documento.vlsaldo         := frmbaixa.documento.vlsaldo;
    frmbaixa.documento.vladiantamento  := frmbaixa.documento.vladiantamento;
    frmbaixa.lblvlsaldoorigem.caption  := formatfloat(__moeda, frmbaixa.documento.vladiantamento);
    frmbaixa.tbl                       := tipo;
    frmbaixa.documento.cddocumento     := cddocumento;
    frmbaixa.edtvlbaixa.Properties.OnChange := nil;
    if frmbaixa.documento.vladiantamento < frmbaixa.documento.vlsaldo then
    begin
      frmbaixa.edtvlbaixa.Value := frmbaixa.documento.vladiantamento
    end
    else
    begin
      frmbaixa.edtvlbaixa.Value := frmbaixa.documento.vlsaldo;
    end;
    frmbaixa.edtvlbaixa.Properties.OnChange := frmbaixa.edtvlbaixaPropertiesChange;
    frmbaixa.AtualizarValorLiquido;
    frmbaixa.btnok.Enabled := frmbaixa.habilitabotao;
    frmbaixa.ShowModal;
    if frmbaixa.ModalResult = mrok then
    begin
      frmbaixa.documento.cddocumento    := cddocumento;
      frmbaixa.documento.tipo           := tipo;
      frmbaixa.documento.cdadiantamento := cdadiantamento;
      frmbaixa.atribuirTelaObjeto;
      frmbaixa.InserirBaixaAdiantamento;
      result := true;
    end;
  finally
    freeandnil(frmbaixa);
  end;
end;

function BaixarDocumento(tipo: string; cddocumento:Integer; tvw: TcxGridDBTableView; cdsaida:string=''):boolean;
var
  saldorestante : currency;
begin
  result := false;
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  frmbaixa := TFrmbaixa.Create(application);
  try
    frmbaixa.documento.tipo                  := tipo;
    frmbaixa.tbl                   := tipo;
    frmbaixa.documento.cddocumento := cddocumento;
    frmbaixa.documento.cdsaida     := cdsaida;
    frmbaixa.ConfigurarDocumento;
    frmbaixa.tbs1.Caption := 'Baixar Contas a ';
    if frmbaixa.tbl = _duplicata then
    begin
      frmbaixa.tbs1.Caption := frmbaixa.tbs1.Caption + 'Receber'
    end
    else
    begin
      frmbaixa.tbs1.Caption := frmbaixa.tbs1.Caption + 'Pagar';
    end;

    if tipo = _duplicata then
    begin
      frmbaixa.tbvcdautpagto.DataBinding.FieldName := _nuduplicata;
    end;
    frmbaixa.cds.Open;
    if frmbaixa.documento.cdsaida <> '' then
    begin
      frmbaixa.CarregarDuplicataNota;
    end
    else
    begin
      frmbaixa.tvw := tvw;
      frmbaixa.ConfigurarRegistro;
    end;
    if frmbaixa.cds.RecordCount > 1 then
    begin
      frmbaixa.pgc.ActivePage   := frmbaixa.tbslista;
      frmbaixa.lbldata1.Visible := true;
      frmbaixa.tbs1.TabVisible  := False;
    end
    else
    begin
      frmbaixa.pgc.ActivePage      := frmbaixa.tbs1;
      frmbaixa.tbslista.TabVisible := False;
    end;
    frmbaixa.lblsaldo.visible  := False;
    frmbaixa.lblcodigo.Caption := frmbaixa.documento.tabela;
    frmbaixa.edtcodigo.Enabled := False;
    // atribui valores
    frmbaixa.edtcodigo.Text            := frmbaixa.documento.cdcliente;
    frmbaixa.lblnome.Caption           := frmbaixa.documento.rzsocial;
    frmbaixa.edtvlsaldo.Value          := frmbaixa.documento.vlsaldo;
    frmbaixa.edtvloriginal.Value       := frmbaixa.documento.vloriginal;
    frmbaixa.documento.vloriginal      := frmbaixa.documento.vloriginal;
    frmbaixa.documento.vlsaldo         := frmbaixa.documento.vlsaldo;
    frmbaixa.documento.vljurosreduzido := frmbaixa.documento.vlsaldojuros;
    frmbaixa.documento.prmoradiaria    := frmbaixa.documento.prmoradiaria;
    frmbaixa.edtdtprorrogacao.Date     := frmbaixa.documento.dtprorrogacao;
    frmbaixa.edtvljuros.Value          := frmbaixa.documento.vljuros;
    frmbaixa.edtvlbaixa.Value          := frmbaixa.documento.vlsaldo;
    if dtbanco > frmbaixa.documento.dtprorrogacao then
    begin
      frmbaixa.edtvlmulta.value := roundto(frmbaixa.documento.vlsaldo * frmbaixa.documento.prmulta / 100, -2);
    end;
    frmbaixa.AtualizarValorLiquido;
    frmbaixa.btnok.Enabled := frmbaixa.habilitabotao;
    frmbaixa.grd.Refresh;
    frmbaixa.ShowModal;
    if frmbaixa.ModalResult = mrok then
    begin
      saldorestante                      := frmbaixa.documento.vlsaldo - frmbaixa.edtvlbaixa.Value;
      frmbaixa.documento.vljurosreduzido := frmbaixa.edtvljurosreduzido.value;
      if (saldorestante = 0) and (frmbaixa.documento.vljurosreduzido > 0) and (tipo = _duplicata) then
      begin
        exit;
      end;
      frmbaixa.documento.cdconta        := frmbaixa.cbxcdconta.EditValue;
      frmbaixa.documento.numovbancario  := frmbaixa.edtnumovbancario.Text;
      frmbaixa.documento.cdmovimentacao := frmbaixa.cbxcdmovimentacao.EditValue;
      frmbaixa.documento.dsnominal      := frmbaixa.edtdsnominal.Text;
      frmbaixa.documento.dshistorico    := frmbaixa.edtdshistorico.Text;
      frmbaixa.documento.dsobservacao   := frmbaixa.memdsobservacao.Lines.Text;
      frmbaixa.documento.dtbaixa      := frmbaixa.edtdata.Date;
      frmbaixa.documento.vlmulta        := frmbaixa.edtvlmulta.Value;
      frmbaixa.documento.vljuros        := frmbaixa.edtvljuros.Value;
      frmbaixa.documento.vlbaixa        := frmbaixa.edtvlbaixa.Value;
      frmbaixa.documento.vldesconto     := frmbaixa.edtvldesconto.Value;
      frmbaixa.documento.vlabatimento   := frmbaixa.edtvlabatimento.Value;
      frmbaixa.documento.vldevolucao    := frmbaixa.edtvldevolucao.Value;
      frmbaixa.InserirBaixa;
      result := true;
    end;
  finally
    if not (frmbaixa.cbxcdmovimentacao.Properties.ListSource = nil) then
    begin
      TClientDataSet(frmbaixa.cbxcdmovimentacao.Properties.ListSource.DataSet).Filtered := False;
    end;
    freeandnil(frmbaixa);
  end;
end;

function BaixarDocumento(tipo: string; cddocumento : integer; vladiantamento:Currency=0; vlsaldofrete: currency=0):boolean;
begin
  result := false;
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  frmbaixa := TFrmbaixa.Create(application);
  try
    frmbaixa.documento.tipo        := tipo;
    frmbaixa.tbl                   := tipo;
    frmbaixa.documento.cddocumento := cddocumento;
    frmbaixa.ConfigurarDocumento;
    frmbaixa.pgc.ActivePage      := frmbaixa.tbs1;
    frmbaixa.tbslista.TabVisible := False;
    frmbaixa.lblsaldo.visible    := False;
    frmbaixa.lblcodigo.Caption   := frmbaixa.documento.tabela;
    frmbaixa.edtcodigo.Enabled   := False;
    frmbaixa.ConfigurarTela;
    frmbaixa.tbs1.Caption := 'Baixar Contas a ';
    if frmbaixa.tbl = _duplicata then
    begin
      frmbaixa.tbs1.Caption := frmbaixa.tbs1.Caption + 'Receber'
    end
    else
    begin
      frmbaixa.tbs1.Caption := frmbaixa.tbs1.Caption + 'Pagar';
    end;
    frmbaixa.edtdata.Date := dtbanco;
    frmbaixa.AtualizarValorLiquido;
    frmbaixa.btnok.Enabled := frmbaixa.habilitabotao;
    if (tipo = _autpagto) and ((vladiantamento > 0) or (vlsaldofrete > 0)) and (frmbaixa.documento.vlsaldo = frmbaixa.documento.vloriginal) and (vladiantamento > 0) then
    begin
      frmbaixa.edtvlbaixa.Value := vladiantamento;
      frmbaixa.AtualizarValorLiquido;
    end;
    frmbaixa.ShowModal;
    if frmbaixa.ModalResult = mrok then
    begin
      frmbaixa.documento.tipo           := frmbaixa.tbl;
      frmbaixa.documento.cdconta        := frmbaixa.cbxcdconta.EditValue;
      frmbaixa.documento.numovbancario  := frmbaixa.edtnumovbancario.Text;
      frmbaixa.documento.cdmovimentacao := frmbaixa.cbxcdmovimentacao.EditValue;
      frmbaixa.documento.dsnominal      := frmbaixa.edtdsnominal.Text;
      frmbaixa.documento.dshistorico    := frmbaixa.edtdshistorico.Text;
      frmbaixa.documento.dsobservacao   := frmbaixa.memdsobservacao.Lines.Text;
      frmbaixa.documento.dtbaixa        := frmbaixa.edtdata.Date;
      frmbaixa.documento.vlmulta        := frmbaixa.edtvlmulta.Value;
      frmbaixa.documento.vljuros        := frmbaixa.edtvljuros.Value;
      frmbaixa.documento.vlbaixa        := frmbaixa.edtvlbaixa.Value;
      frmbaixa.documento.vldesconto     := frmbaixa.edtvldesconto.Value;
      frmbaixa.documento.vlabatimento   := frmbaixa.edtvlabatimento.Value;
      frmbaixa.documento.vldevolucao    := frmbaixa.edtvldevolucao.Value;
      frmbaixa.documento.vloriginal     := frmbaixa.edtvloriginal.value;
      frmbaixa.documento.vlsaldo        := frmbaixa.edtvlsaldo.Value;
      frmbaixa.InserirBaixa;
      result := true;
    end;
  finally
    if not (frmbaixa.cbxcdmovimentacao.Properties.ListSource = nil) then
    begin
      TClientDataSet(frmbaixa.cbxcdmovimentacao.Properties.ListSource.DataSet).Filtered := False;
    end;
    freeandnil(frmbaixa);
  end;
end;

function TFrmBaixa.InserirBaixa:boolean;
  function ObterValor:currency;
  begin
    if (cds.RecordCount = 1) or (cds.RecordCount = 0) then
    begin
      result := documento.vlliquido;
    end
    else
    begin
      result := cds.Aggregates[0].Value;
    end;
  end;
var
  movbancario : TMovbancario;
begin
  movbancario := tmovbancario.create;
  try
    if documento.cdconta <> 0 then
    begin
      movbancario.cdmovbancario := qgerar.gerarcodigo(_movbancario);
      movbancario.boconciliado  := _n;
      movbancario.cdconta       := documento.cdconta;
      movbancario.conta.select(documento.cdconta);
      movbancario.cdmovimentacao := documento.cdmovimentacao;
      movbancario.numovbancario  := documento.numovbancario;
      movbancario.dtemissao      := documento.dtbaixa;
      movbancario.vllancamento   := Obtervalor;
      movbancario.cdnatureza     := Qregistro.StringdoCodigo(_tpmodulo, qregistro.Inteirodocodigo(_movimentacao, documento.cdmovimentacao, _cdtpmodulo), _cdnatureza);
      movbancario.vlpagamento    := 0;
      movbancario.vldeposito     := 0;
      if movbancario.cdnatureza = _D then
      begin
        movbancario.vlpagamento := movbancario.vllancamento;
        movbancario.conta.vlsaldo := movbancario.conta.vlsaldo - movbancario.vllancamento;
      end
      else
      begin
        movbancario.vldeposito  := movbancario.vllancamento;
        movbancario.conta.vlsaldo := movbancario.conta.vlsaldo + movbancario.vllancamento;
      end;
      movbancario.dshistorico  := documento.dshistorico;
      movbancario.dsobservacao := documento.dsobservacao;
      movbancario.dsnominal    := documento.dsnominal;
      movbancario.vlsaldo      := movbancario.conta.vlsaldo;
      movbancario.insert;
      movbancario.conta.update;
      if cds.RecordCount > 1 then
      begin
        cds.First;
        while not cds.Eof do
        begin
          movbancario.baixa.new;
          movbancario.baixa.items[movbancario.baixa.count-1].cdmovbancario := movbancario.cdmovbancario;
          movbancario.baixa.items[movbancario.baixa.count-1].dtbaixa       := documento.dtbaixa;
          movbancario.baixa.items[movbancario.baixa.count-1].vlmulta       := cds.fieldbyname(_vlmulta).ascurrency;
          movbancario.baixa.items[movbancario.baixa.count-1].vljuro        := cds.fieldbyname(_vljuros).ascurrency;
          movbancario.baixa.items[movbancario.baixa.count-1].vlbaixa       := cds.fieldbyname(_vlbaixa).ascurrency;
          movbancario.baixa.items[movbancario.baixa.count-1].vldesconto    := cds.fieldbyname(_vldesconto).ascurrency;
          movbancario.baixa.items[movbancario.baixa.count-1].vlabatimento  := cds.fieldbyname(_vlabatimento).ascurrency;
          movbancario.baixa.items[movbancario.baixa.count-1].vldevolucao   := cds.fieldbyname(_vldevolucao).ascurrency;
          movbancario.baixa.items[movbancario.baixa.count-1].vlliquido     := cds.fieldbyname(_vlrecebido).ascurrency;
          if documento.tipo = _duplicata then
          begin
            movbancario.baixa.items[movbancario.baixa.count-1].cdduplicata := cds.fieldbyname(_cdautpagto).AsInteger;
            movbancario.baixa.items[movbancario.baixa.count-1].vlcomissao  := movbancario.baixa.items[movbancario.baixa.count-1].ObterVlComissao;
            movbancario.baixa.items[movbancario.baixa.count-1].nubaixa     := qregistro.Stringdocodigo(_duplicata, cds.fieldbyname(_cdautpagto).AsInteger, _nuduplicata);
          end
          else
          begin
            movbancario.baixa.items[movbancario.baixa.count-1].cdautpagto := cds.fieldbyname(_cdautpagto).AsInteger;
            movbancario.baixa.items[movbancario.baixa.count-1].nubaixa    := cds.fieldbyname(_cdautpagto).AsString;
          end;
          movbancario.baixa.items[movbancario.baixa.count-1].insert;
          cds.Next;
        end;
      end;
    end;
    if cds.RecordCount < 2 then
    begin
      movbancario.baixa.new;
      movbancario.baixa.items[movbancario.baixa.count-1].cdmovbancario := movbancario.cdmovbancario;
      movbancario.baixa.items[movbancario.baixa.count-1].dtbaixa       := documento.dtbaixa;
      movbancario.baixa.items[movbancario.baixa.count-1].vlmulta       := documento.vlmulta;
      movbancario.baixa.items[movbancario.baixa.count-1].vljuro        := documento.vljuros;
      movbancario.baixa.items[movbancario.baixa.count-1].vlbaixa       := documento.vlbaixa;
      movbancario.baixa.items[movbancario.baixa.count-1].vldesconto    := documento.vldesconto;
      movbancario.baixa.items[movbancario.baixa.count-1].vlabatimento  := documento.vlabatimento;
      movbancario.baixa.items[movbancario.baixa.count-1].vldevolucao   := documento.vldevolucao;
      movbancario.baixa.items[movbancario.baixa.count-1].vlliquido     := documento.vlliquido;
      if documento.tipo = _duplicata then
      begin
        movbancario.baixa.items[movbancario.baixa.count-1].cdduplicata := documento.cddocumento;
        movbancario.baixa.items[movbancario.baixa.count-1].vlcomissao  := movbancario.baixa.items[movbancario.baixa.count-1].ObterVlComissao;
        movbancario.baixa.items[movbancario.baixa.count-1].nubaixa     := qregistro.Stringdocodigo(_duplicata, documento.cddocumento, _nuduplicata);
      end
      else
      begin
        movbancario.baixa.items[movbancario.baixa.count-1].cdautpagto := documento.cddocumento;
        movbancario.baixa.items[movbancario.baixa.count-1].nubaixa    := inttostr(documento.cddocumento);
      end;
      movbancario.baixa.items[movbancario.baixa.count-1].insert;
    end;
    result := true;
  finally
    freeandnil(movbancario);
  end;
end;

function TFrmBaixa.InserirBaixaAdiantamento:boolean;
var
  baixa : TBaixa;
begin
  baixa := tbaixa.create;
  try
    baixa.dtbaixa      := documento.dtbaixa;
    baixa.vlmulta      := documento.vlmulta;
    baixa.vljuro       := documento.vljuros;
    baixa.vlbaixa      := documento.vlbaixa;
    baixa.vldesconto   := documento.vldesconto;
    baixa.vlabatimento := documento.vlabatimento;
    baixa.vldevolucao  := documento.vldevolucao;
    baixa.vlliquido    := documento.vlliquido;
    baixa.nubaixa      := inttostr(documento.cddocumento);
    if documento.tipo = _duplicata then
    begin
      baixa.cdduplicata := documento.cddocumento;
      baixa.nubaixa     := qregistro.stringdocodigo(_duplicata, documento.cddocumento, _nuduplicata);
      baixa.cdadntcliente := cdadiantamento;
      baixa.vlcomissao := baixa.ObterVlComissao;
    end
    else
    begin
      baixa.cdautpagto := documento.cddocumento;
      baixa.cdadntfornecedor := cdadiantamento;
    end;
    result := ExecutaSQL(baixa.insert(true));
  finally
    freeandnil(baixa);
  end;
end;

function TFrmBaixa.InserirBaixaEncontrocontas:boolean;
var
  baixa : TBaixa;
begin
  if empresa.get_bloqueado then
  begin
    result := false;
    exit;
  end;
  baixa := TBaixa.create;
  try
    baixa.cdtpbaixa    := 4;
    baixa.dtbaixa      := documento.dtbaixa;
    baixa.vlbaixa      := documento.vlbaixa;
    baixa.vldesconto   := documento.vldesconto;
    baixa.vlabatimento := documento.vlabatimento;
    baixa.vldevolucao  := documento.vldevolucao;
    baixa.vlmulta      := documento.vlmulta;
    baixa.vljuro       := documento.vljuros;
    baixa.vlliquido    := documento.vlliquido;
    if documento.tipo = _duplicata then
    begin
      baixa.cdduplicata := documento.cddocumento;
      baixa.cdautpagto  := documento.cddocumentorigem;
      baixa.nubaixa     := qregistro.stringdocodigo(_duplicata, baixa.cdduplicata, _nuduplicata);
      baixa.vlcomissao := baixa.ObterVlComissao;
    end
    else
    begin
      baixa.cdduplicata := documento.cddocumentorigem;
      baixa.cdautpagto  := documento.cddocumento;
    end;
    result := executasql(baixa.insert(true));
  finally
    freeandnil(baixa);
  end;
end;

procedure Tfrmbaixa.AtribuirTelaObjeto;
begin
  documento.dtbaixa      := edtdata.Date;
  documento.vlmulta      := edtvlmulta.Value;
  documento.vljuros      := edtvljuros.Value;
  documento.vlbaixa      := edtvlbaixa.Value;
  documento.vldesconto   := edtvldesconto.Value;
  documento.vlabatimento := edtvlabatimento.Value;
  documento.vldevolucao  := edtvldevolucao.Value;
end;

procedure Tfrmbaixa.CarregarDuplicataNota;
var
  duplicata : TDuplicataList;
  I: Integer;
begin
  duplicata := tduplicatalist.create;
  try
    duplicata.ler(_cdstduplicata+'=1 and '+_cdsaida+'='+documento.cdsaida);
    for I := 0 to duplicata.count - 1 do
    begin
      cds.append;
      cds.FieldByName(_cdautpagto).asinteger     := duplicata.items[i].cdduplicata;
      cds.FieldByName(_vlautpagto).ascurrency    := duplicata.items[i].vlduplicata;
      cds.FieldByName(_vlsaldo).ascurrency       := duplicata.items[i].vlsaldo;
      cds.FieldByName(_vlbaixa).AsCurrency       := duplicata.items[i].vlsaldo;
      cds.FieldByName(_vlrecebido).AsCurrency    := duplicata.items[i].vlsaldo;
      cds.FieldByName(_nuduplicata).AsString     := duplicata.items[i].nuduplicata;
      cds.FieldByName(_dtprorrogacao).AsDateTime := duplicata.items[i].dtprorrogacao;
      cds.FieldByName(_prmoradiaria).Asfloat     := duplicata.items[i].prmoradiaria;
      cds.FieldByName(_vlmulta).AsCurrency       := 0;
      cds.FieldByName(_vldesconto).AsCurrency    := 0;
      cds.FieldByName(_vldevolucao).AsCurrency   := 0;
      cds.FieldByName(_vlabatimento).AsCurrency  := 0;
      cds.FieldByName(_vljuros).AsCurrency       := 0;
      if duplicata.items[i].prmoradiaria > 0 then
      begin
        cds.FieldByName(_vljuros).ascurrency := Tmovbancario.JuroDocumento(dtbanco, duplicata.items[i].dtprorrogacao, duplicata.items[i].prmoradiaria, duplicata.items[i].vlsaldo);
      end;
      if dtbanco > duplicata.items[i].dtprorrogacao then
      begin
        cds.FieldByName(_vlmulta).AsCurrency  := roundto(duplicata.items[i].vlsaldo * duplicata.items[i].prmulta / 100, -2);
      end;
      cds.post;
    end;
  finally
    freeandnil(duplicata);
  end;
end;

procedure TFrmBaixa.AtualizarSaldo(codigo: integer; tipo :string);
var
  vlsaldo : currency;
begin
  documento.cddocumento := codigo;
  // informacoes do documento
  vlsaldo    := qregistro.ValordoCodigo(tipo, codigo, _vlsaldo);
  // atribui valores
  if tipo = _duplicata then
  begin
    lblvlsaldoorigem.Caption := formatfloat(__moeda, vlsaldo)
  end
  else if tipo = _autpagto  then
  begin
    edtvlsaldo.Value         := vlsaldo;
  end;

  edtvlbaixa.Value      := 0;
  edtvlmulta.Value      := 0;
  edtvljuros.Value      := 0;
  edtvldesconto.Value   := 0;
  edtvlabatimento.Value := 0;
  edtvldevolucao.Value  := 0;
  AtualizarValorLiquido;
  btnok.Enabled           := habilitabotao;
  edtvlbaixa.enabled      := true;
  edtvlmulta.enabled      := true;
  edtvljuros.enabled      := true;
  edtvldesconto.enabled   := true;
  edtvlabatimento.enabled := true;
  edtvldevolucao.enabled  := true;
end;

procedure TFrmBaixa.AtualizarValorLiquido;
begin
  documento.vlliquido  := edtvlbaixa.Value + edtvlmulta.Value + edtvljuros.Value - edtvldesconto.Value - edtvlabatimento.Value - edtvldevolucao.Value;
  documento.vlbaixa    := edtvlbaixa.Value;
  lblvlliquido.Caption := FormatCurr(__moeda, documento.vlliquido);
end;

procedure TFrmBaixa.ConsistirValor(sender:tobject);
begin
  if documento.vlsaldo <= documento.vladiantamento then
  begin
    if documento.vlbaixa > documento.vlsaldo then
    begin
      messagedlg('Valor da baixa é maior do que o saldo.'#13'Digite um valor menor para continuar.', mtinformation, [mbok], 0);
      TcxCalcEdit(sender).SetFocus;
      abort;
    end;
    if documento.vlliquido <= 0 then
    begin
      messagedlg('Valor liquido não pode ser menor do zero.', mtinformation, [mbok], 0);
      TcxCalcEdit(sender).SetFocus;
      abort;
    end;
  end
  else
  begin
    if (tbs1.Caption = _adiantamento) and  (documento.vlliquido > documento.vladiantamento) and (documento.vladiantamento > 0) then
    begin
      messagedlg('Valor da baixa é maior do que o adiantamento.'#13'Digite um valor menor para continuar.', mtinformation, [mbok], 0);
      TcxCalcEdit(sender).SetFocus;
      abort;
    end;
    if documento.vlliquido < 0 then
    begin
      messagedlg('Valor liquido não pode ser menor do zero.', mtinformation, [mbok], 0);
      TcxCalcEdit(sender).SetFocus;
      abort;
    end;
  end;
end;

procedure Tfrmbaixa.edtvlbaixaEnter(Sender: TObject);
begin
  atualizarValorLiquido;
end;

procedure TFrmBaixa.ConsisteValorBaixa;
var
  vlsaldo : Double;
begin
  vlsaldo := 0;
  if tbl <> '' then
  begin
    vlsaldo := qregistro.ValordoCodigo(tbl, documento.cddocumento, _vlsaldo);
  end;
  if edtvlbaixa.Value > vlsaldo then
  begin
    messagedlg('Valor da baixa não pode ser maior do que o saldo.'#13'Digite um valor menor ou igual a '+formatfloat(__moeda, vlsaldo)+' para continuar.', mtinformation, [mbok], 0);
    edtvlbaixa.Value := vlsaldo;
    edtvlbaixa.SetFocus;
    abort;
  end;
end;

procedure Tfrmbaixa.edtvlmultaExit(Sender: TObject);
begin
  btnok.Enabled := habilitabotao;
  if edtvlmulta.Value < 0 then
  begin
    messagedlg('Valor da multa não pode ser menor do zero.', mtinformation, [mbok], 0);
    TcxCalcEdit(sender).SetFocus;
    abort;
  end;
  atualizarValorLiquido;
  consistirvalor(sender);
  btnok.Enabled := habilitabotao;
end;

procedure Tfrmbaixa.edtvljurosExit(Sender: TObject);
begin
  btnok.Enabled := habilitabotao;
  if edtvljuros.Value < 0 then
  begin
    messagedlg('Valor do juros não pode ser menor do zero.', mtinformation, [mbok], 0);
    TcxCalcEdit(sender).SetFocus;
    abort;
  end;
  AtualizarJuros(false);
  atualizarValorLiquido;
  consistirvalor(sender);
  btnok.Enabled := habilitabotao;
end;

procedure Tfrmbaixa.edtvldescontoExit(Sender: TObject);
begin
  btnok.Enabled := habilitabotao;
  if edtvldesconto.Value < 0 then
  begin
    messagedlg('Valor do desconto não pode ser menor do zero.', mtinformation, [mbok], 0);
    TcxCalcEdit(sender).SetFocus;
    abort;
  end;
  atualizarValorLiquido;
  consistirvalor(sender);
  btnok.Enabled := habilitabotao;
end;

procedure Tfrmbaixa.edtvlabatimentoExit(Sender: TObject);
begin
  btnok.Enabled := habilitabotao;
  if edtvlabatimento.Value < 0 then
  begin
    messagedlg('Valor do abatimento não pode ser menor do zero.', mtinformation, [mbok], 0);
    TcxCalcEdit(sender).SetFocus;
    abort;
  end;
  atualizarValorLiquido;
  consistirvalor(sender);
  btnok.Enabled := habilitabotao;
end;

procedure Tfrmbaixa.edtvldevolucaoExit(Sender: TObject);
begin
  btnok.Enabled := habilitabotao;
  if edtvldevolucao.Value < 0 then
  begin
    messagedlg('Valor da devolucao não pode ser menor do zero.', mtinformation, [mbok], 0);
    TcxCalcEdit(sender).SetFocus;
    abort;
  end;
  atualizarValorLiquido;
  consistirvalor(sender);
  btnok.Enabled := habilitabotao;
end;

procedure Tfrmbaixa.FormShow(Sender: TObject);
  function get_tipo:string;
  begin
    if tbl = _duplicata then
    begin
      result := _3;
    end
    else
    begin
      result := _4;
    end;
  end;
begin
  cbxcdmovimentacao.Properties.ListSource := abrir_tabela(_movimentacao, get_tipo, _CDTPMODULO, '=', tbl);
  lblnominal.Visible                      := tbl = _autpagto;
  edtdsnominal.Visible                    := tbl = _autpagto;
  edtdata.Date                            := dtbanco;
end;

procedure Tfrmbaixa.edtdtbaixaChange(Sender: TObject);
begin
  AtualizarJuros;
end;

function Tfrmbaixa.habilitabotao:boolean;
begin
  result := false;
  if (edtvlbaixa.Text <> _0) and (edtvlbaixa.Text <> '' ) then
  begin
    result := true;
  end;
end;

procedure Tfrmbaixa.btnokClick(Sender: TObject);
var
  data, cdmovimentacao, cdconta, nucheque :string;
begin
  atualizarValorLiquido;
  if (cbxcdconta.Text = '') and cbxcdconta.Visible then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_conta]), mtinformation, [mbok], 0);
    cbxcdconta.SetFocus;
    Abort;
  end;
  if (cbxcdmovimentacao.Text = '') and cbxcdmovimentacao.Visible then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__movimentacao]), mtinformation, [mbok], 0);
    cbxcdmovimentacao.SetFocus;
    Abort;
  end;
  if (tbl = _duplicata) and cbxcdmovimentacao.Visible and (NomedoCodigo(_movimentacao, cbxcdmovimentacao.EditValue, _cdtpmodulo) <> _3) then
  begin
    MessageDlg('Código da movimentação inválido para Contas a Receber.'#13'Selecione outro código antes de continuar.', mtInformation, [mbOK], 0);
    cbxcdmovimentacao.SetFocus;
    Abort;
  end;
  if (tbs1.caption <> 'Baixar Contas a Pagar com Adiantamento de Fornecedor') and
     (tbs1.caption <> 'Baixar Contas a Pagar com Adiantamento de Cliente') and
     (tbs1.caption <> 'Baixar Contas a Pagar com encontro de contas') and
     (tbl = _autpagto) and
     (NomedoCodigo(_movimentacao, cbxcdmovimentacao.EditValue, _cdtpmodulo) <> _4) then
  begin
    MessageDlg('Código da movimentação inválido para Contas a Pagar.'#13'Selecione outro código antes de continuar.', mtInformation, [mbOK], 0);
    cbxcdmovimentacao.SetFocus;
    Abort;
  end;
  if (cbxcdmovimentacao.Visible) and (cbxcdmovimentacao.EditValue = _7) and (edtnumovbancario.Text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__numero]), mtinformation, [mbok], 0);
    edtnumovbancario.SetFocus;
    Abort;
  end;
  if cbxcdmovimentacao.Visible then
  begin
    cdmovimentacao := cbxcdmovimentacao.EditValue;
  end;
  if cbxcdconta.Visible        then
  begin
    cdconta := cbxcdconta.EditValue;
  end;
  nucheque := edtnumovbancario.Text;
  if (cdmovimentacao = _7) and
     (RetornaSQLInteger('select count(*) from movbancario where cdempresa='+empresa.cdempresa.tostring+' and cdconta='+cdconta+' and numovbancario='+quotedstr(nucheque)) > 0) then
  begin
    messagedlg('Número do cheque '+edtnumovbancario.Text+' repetido!'#13'Digite outro número para continuar.', mtinformation, [mbok], 0);
    edtnumovbancario.SetFocus;
    abort;
  end;
  if not habilitabotao then
  begin
    messagedlg('Valor da baixa não pode ser zero.',mtError,[mbok],0);
    abort;
  end;
  if cdadiantamento <> 0 then
  begin
    if tbladnt = '' then
    begin
      if tbl = _duplicata then
      begin
        tbladnt := _adntcliente
      end
      else
      begin
        tbladnt := _adntfornecedor;
      end;
    end;
    if edtdata.Date < qregistro.DatadoCodigo(tbladnt, cdadiantamento, _dtemissao) then
    begin
      messagedlg('Data da baixa não pode ser menor que a data de emissão do adiantamento.'#13'Altere a data para continuar.', mtinformation,[mbok], 0);
      edtdata.SetFocus;
      abort;
    end;
    if edtdata.Date < qregistro.DatadoCodigo(tbl, documento.cddocumento, _dtemissao) then
    begin
      messagedlg('Data da baixa não pode ser menor que a data de emissão do documento.'#13'Altere a data para continuar.', mtinformation,[mbok], 0);
      edtdata.SetFocus;
      abort;
    end;
  end;
  if edtdata.Date < (DtBanco - empresa.financeiro.caixafinanceiro.nudiasanterior)  then
  begin
    MessageDlg('Data de emissão menor do que '+inttostr(empresa.financeiro.caixafinanceiro.nudiasanterior)+' dia(s) de lançamento anterior a data atual.'#13'Altere a data para poder continuar.', mtInformation, mbOKCancel, 0);
    edtdata.SetFocus;
    abort;
  end;
  if edtdata.Date > (DtBanco + empresa.financeiro.caixafinanceiro.nudiasposterior)  then
  begin
    MessageDlg('Data de emissão maior do que '+inttostr(empresa.financeiro.caixafinanceiro.nudiasposterior)+' dia(s) de lançamento posterior a data atual.'#13'Altere a data para poder continuar.', mtInformation, mbOKCancel, 0);
    edtdata.SetFocus;
    abort;
  end;
  if Length(edtdshistorico.Text)>100 then
  begin
    MessageDlg('Histórico não pode ter mais que 100 caracteres.'#13'Altere o histórico para poder continuar.', mtInformation, mbOKCancel, 0);
    edtdshistorico.SetFocus;
    abort;
  end;
  if Length(edtdsnominal.Text)>100 then
  begin
    MessageDlg('Nominal não pode ter mais que 100 caracteres.'#13'Altere o campo nominal para poder continuar.', mtInformation, mbOKCancel, 0);
    edtdsnominal.SetFocus;
    abort;
  end;
  if not VarIsNull(cbxcdconta.EditValue) then
  begin
    data    := GetDtBanco(edtdata.Date);
    cdconta := cbxcdconta.EditValue;
    if (cdconta <> '') and (RetornaSQLInteger('select count(*) from contafechada where cdempresa='+empresa.cdempresa.tostring+' and cdconta='+cdconta+' and dtemissao='+data)>0) then
    begin
      MessageDlg('Caixa encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, edtdata.Date)+'.'#13'Altere a data para poder continuar.', mtInformation, [mbOK], 0);
      edtdata.SetFocus;
      Abort;
    end;
  end;
  ModalResult := mrOk;
end;

procedure Tfrmbaixa.AtualizarJuros(recalcular : boolean = true);
var
  vljuro : currency;
begin
  if (tbl <> _duplicata) and (tbl <> _autpagto) then
  begin
    exit;
  end;
  if documento.prmoradiaria = 0 then
  begin
    Exit;
  end;
  vljuro := Tmovbancario.JuroDocumento(edtdata.Date, edtdtprorrogacao.Date, documento.prmoradiaria, edtvlbaixa.Value) + documento.vljurosreduzido;
  if recalcular then
  begin
    edtvljuros.Value         := vljuro;
    edtvljurosreduzido.Value := 0;
  end
  else if vljuro < edtvljuros.value then
  begin
    edtvljurosreduzido.Value := 0
  end
  else
  begin
    edtvljurosreduzido.Value := RoundTo(vljuro - edtvljuros.Value,-2);
  end;
  if tbl = _duplicata then
  begin
    if (edtdata.Date > edtdtprorrogacao.Date) and (not Tmovbancario.vencimentoferiadopagamentoproximodiautil(edtdtprorrogacao.Date, edtdata.Date)) then
    begin
      edtvlmulta.Value := roundto(edtvlbaixa.Value * documento.prmulta / 100, -2)
    end
    else
    begin
      edtvlmulta.Value := 0;
    end;
  end;
end;

procedure Tfrmbaixa.edtvlbaixaPropertiesChange(Sender: TObject);
begin
  btnok.Enabled := habilitabotao;
  if TcxCalcEdit(Sender).Value < 0 then
  begin
    messagedlg('Valor da baixa não pode ser menor do zero.', mtinformation, [mbok], 0);
    TcxCalcEdit(sender).SetFocus;
    abort;
  end;
  consistevalorbaixa;
  AtualizarJuros;
  AtualizarValorLiquido;
  consistirvalor(sender);
  btnok.Enabled := habilitabotao;
end;

procedure Tfrmbaixa.edtvljurosreduzidoPropertiesChange(Sender: TObject);
begin
  TCxcalcedit(Sender).Visible := TCxcalcedit(Sender).Value <> 0;
  lbvljurosreduzido.Visible   := TCxcalcedit(Sender).Value <> 0;
  Refresh;
end;

procedure Tfrmbaixa.edtcodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: Integer;
  vlsaldo : currency;
begin
  if tbl = _duplicata then
  begin
    cd := LocalizarDuplicata;
    if cd = 0 then
    begin
      exit;
    end;
    vlsaldo := qregistro.ValordoCodigo(tbl, cd, _vlsaldo);
    if vlsaldo <= 0 then
    begin
      messagedlg('Saldo da Conta a Receber '+formatfloat(__moeda, vlsaldo)+' não permite realizar baixa!', mterror, [mbok], 0);
      edtcodigo.setfocus;
      abort;
    end;
    edtcodigo.text := qregistro.Stringdocodigo(tbl, cd, _nuduplicata);
    AtualizarSaldo(cd, tbl);
    cd              := qregistro.Inteirodocodigo(tbl, cd, _cdcliente);
    lblnome.caption := qregistro.Nomedocodigo(_cliente, cd);
  end
  else if tbl = _autpagto then
  begin
    cd := Localizarautpagto;
    if cd = 0 then
    begin
      exit;
    end;
    vlsaldo := qregistro.ValordoCodigo(tbl, cd, _vlsaldo);
    if vlsaldo <= 0 then
    begin
      messagedlg('Saldo da Contas a Pagar '+formatfloat(__moeda, vlsaldo)+' não permite realizar baixa!', mterror, [mbok], 0);
      edtcodigo.setfocus;
      abort;
    end;
    edtcodigo.text := cd.tostring;
    AtualizarSaldo(cd, tbl);
    lblnome.caption := qregistro.Nomedocodigo(_fornecedor, qregistro.Inteirodocodigo(tbl, cd, _cdfornecedor));
  end;
end;

procedure Tfrmbaixa.edtcodigoClick(Sender: TObject);
begin
  LimparCampos;
end;

procedure Tfrmbaixa.edtcodigoExit(Sender: TObject);
var
  cd : string;
  vlsaldo : currency;
begin
  if tbl = _duplicata then
  begin
    if edtcodigo.text = '' then
    begin
      lblnome.caption := '';
      exit;
    end;
    cd := CodigodoCampo(tbl, edtcodigo.text, _nu+tbl);
    if cd = '' then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcodigo.text, maiuscula(_contas+' '+_receber)]), mterror, [mbok], 0);
      edtcodigo.setfocus;
      abort;
    end;
    vlsaldo := RetornaSQLCurrency('select vlsaldo from duplicata where cdempresa='+empresa.cdempresa.tostring+' and cdduplicata='+cd);
    if vlsaldo <= 0 then
    begin
      messagedlg('Saldo da Conta a Receber '+formatfloat(__moeda, vlsaldo)+' não permite realizar baixa!', mterror, [mbok], 0);
      edtcodigo.setfocus;
      abort;
    end;
    AtualizarSaldo(strtoint(cd), tbl);
    lblnome.Caption := RetornaSQLString('select nmcliente from cliente C left join duplicata D on d.cdcliente=c.cdcliente where c.cdempresa='+empresa.cdempresa.tostring+' and cdduplicata='+cd);
  end
  else if tbl = _autpagto then
  begin
    cd := edtcodigo.text;
    if cd <> '' then
    begin
      if not codigoexiste(tbl, cd) then
      begin
        MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_contas+' '+_pagar)]), mterror, [mbok], 0);
        edtcodigo.setfocus;
        abort;
      end;
      vlsaldo := ValordoCodigo(tbl, cd, _vlsaldo);
      if vlsaldo <= 0 then
      begin
        messagedlg('Saldo da Conta a Pagar '+formatfloat(__moeda, vlsaldo)+' não permite realizar baixa!', mterror, [mbok], 0);
        edtcodigo.setfocus;
        abort;
      end;
      AtualizarSaldo(strtoint(cd), tbl);
      lblnome.Caption := RetornaSQLString('select nmfornecedor from fornecedor F left join autpagto A on a.cdfornecedor=f.cdfornecedor where f.cdempresa='+empresa.cdempresa.tostring+' and f.cdfornecedor='+cd);
    end
    else
    begin
      lblnome.caption := '';
    end;
  end;
end;

procedure Tfrmbaixa.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcodigoPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmbaixa.cdsvlbaixaValidate(Sender: TField);
begin
  if Sender.AsCurrency > Sender.DataSet.FieldByName(_vlsaldo).AsCurrency then
  begin
    MessageDlg('Valor da baixa não pode ser maior do que o saldo.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
  if cds.fieldbyname(_prmoradiaria).ascurrency > 0 then
  begin
    cds.FieldByName(_vljuros).ascurrency  := Tmovbancario.JuroDocumento(edtdata.Date, cds.fieldbyname(_dtprorrogacao).asdatetime, cds.fieldbyname(_prmoradiaria).ascurrency, cds.fieldbyname(_vlbaixa).ascurrency);
  end;
  if edtdata.Date > cds.fieldbyname(_dtprorrogacao).asdatetime then
  begin
    cds.FieldByName(_vlmulta).AsCurrency    := roundto(cds.fieldbyname(_vlbaixa).AsCurrency * cds.fieldbyname(_prmulta).AsFloat / 100, -2);
  end;
  cdsvljurosValidate(Sender);
end;

procedure Tfrmbaixa.cdsvljurosValidate(Sender: TField);
begin
  Sender.DataSet.FieldByName(_vlrecebido).AsCurrency := Sender.DataSet.FieldByName(_vlbaixa).AsCurrency +
                                                        Sender.DataSet.FieldByName(_vlmulta).AsCurrency +
                                                        Sender.DataSet.FieldByName(_vljuros).AsCurrency -
                                                        Sender.DataSet.FieldByName(_vldesconto).AsCurrency -
                                                        Sender.DataSet.FieldByName(_vlabatimento).AsCurrency -
                                                        Sender.DataSet.FieldByName(_vldevolucao).AsCurrency;
end;

procedure Tfrmbaixa.ConfigurarDocumento;
  function makesql:string;
  begin
    result := 'select '+documento.tipo+'.vlsaldo'+
                    ','+documento.tipo+'.vl'+documento.tipo+
                    ','+documento.tipo+'.dtprorrogacao'+
                    ','+documento.tipo+'.DTEMISSAO'+
                    ','+documento.tipo+'.prmoradiaria'+
                    ','+documento.tipo+'.dshistorico'+
                    ','+documento.tabela+'.cd'+documento.tabela+
                    ','+documento.tabela+'.rzsocial'+
                    ','+documento.tipo+'.prmulta ';
    if documento.tipo = _duplicata then
    begin
      result := result + ',nuduplicata,s.nudocfiscalicms,s.nuchavenfe ';
    end;
    result := result +
              'from '+documento.tipo+' '+
              'left join '+documento.tabela+' on '+documento.tabela+'.cd'+documento.tabela+'='+documento.tipo+'.cd'+documento.tabela+' '+
                                            'and '+documento.tabela+'.cdempresa='+documento.tipo+'.cdempresa ';
    if documento.tipo = _duplicata then
    begin
      result := result + 'left join saida s on s.cdempresa='+documento.tipo+'.cdempresa and s.cdsaida='+documento.tipo+'.cdsaida ';
    end;
    result := result + 'where '+documento.tipo+'.cdempresa='+empresa.cdempresa.tostring+' and '+documento.tipo+'.cd'+documento.tipo+'='+inttostr(documento.cddocumento);
  end;
var
  q : TClasseQuery;
begin
  if documento.tipo = _duplicata then
  begin
    documento.tabela := Maiuscula(_Cliente)
  end
  else
  begin
    documento.tabela := Maiuscula(_Fornecedor);
  end;
  q := TClasseQuery.Create(makesql);
  try
    if (documento.tipo = _duplicata) and (q.q.FieldByName(_nudocfiscalicms).AsString = _55) and (q.q.fieldbyname(_nuchavenfe).AsString = '') then
    begin
      messagedlg('Não é possível baixar contas a receber '+q.q.fieldbyname(_nuduplicata).AsString+
                 ' de uma nota fiscal eletrônica que não tenha sido enviada.'#13+
                 'Favor enviar a nota antes de baixar o contas a receber.', mtInformation, [mbOK], 0);
      Abort;
    end;
    documento.vlsaldo       := q.q.fieldbyname(_vlsaldo).AsCurrency;
    documento.vloriginal    := q.q.fieldbyname(_vl+documento.tipo).AsCurrency;
    documento.prmulta       := q.q.fieldbyname(_prmulta).AsCurrency;
    documento.dtprorrogacao := q.q.fieldbyname(_dtprorrogacao).AsDateTime;
    documento.dtemissao     := q.q.fieldbyname(_dtemissao).asdatetime;
    documento.prmoradiaria  := q.q.fieldbyname(_prmoradiaria).AsCurrency;
    documento.dshistorico   := q.q.FieldByName(_dshistorico).AsString;
    documento.vlsaldojuros  := 0;
    documento.vljuros       := 0;
    documento.vlmulta       := 0;
    documento.cdcliente     := q.q.FieldByName(_cd+documento.tabela).AsString;
    documento.rzsocial      := q.q.FieldByName(_rzsocial).AsString;
  finally
    freeandnil(q);
  end;
  documento.vlsaldojuros := tmovbancario.ValorSaldoJuros(documento.tipo, documento.cddocumento);
  documento.vljuros      := Tmovbancario.JuroDocumento(dtbanco, documento.dtprorrogacao, documento.prmoradiaria, documento.vlsaldo) + documento.vlsaldojuros;
end;

procedure Tfrmbaixa.ConfigurarEncontroContas(tipo: string; cddocumento:integer);
begin
  documento.tipo        := tipo;
  documento.cddocumento := cddocumento;
  if documento.tipo = _duplicata then
  begin
    duplicata.Select(cddocumento);
    documento.vlsaldo     := duplicata.vlsaldo;
    documento.vloriginal  := duplicata.vlduplicata;
    edtdtprorrogacao.Date := duplicata.dtprorrogacao;
    nmexibe               := 'Contas a Pagar';
    tbl                   := _autpagto;
  end
  else
  begin
    autpagto.Select(cddocumento);
    documento.vlsaldo        := autpagto.vlsaldo;
    documento.vloriginal     := autpagto.vlautpagto;
    edtdtprorrogacao.Date    := autpagto.dtprorrogacao;
    tbl                      := _duplicata;
    nmexibe                  := 'Contas a Receber';
  end;
  lblvlsaldoorigem.Caption := formatfloat  (__moeda, documento.vlsaldo);
  edtvlsaldo.Value         := documento.vlsaldo;
  edtvloriginal.Value      := documento.vloriginal;
  tbs1.Caption             := 'Baixar '+nmexibe+' com encontro de contas';
  tbslista.TabVisible      := False;
  pgc.ActivePage           := tbs1;
  ConfigurarMovbancario;
  LimparCampos;
  edtvlsaldo.Enabled       := False;
  edtdtprorrogacao.Enabled := False;
  edtvloriginal.Enabled    := False;
end;

procedure TFrmBaixa.LimparCampos;
begin
  edtvlbaixa.Value      := 0;
  edtvlmulta.Value      := 0;
  edtvljuros.Value      := 0;
  edtvldesconto.Value   := 0;
  edtvlabatimento.Value := 0;
  edtvldevolucao.Value  := 0;
  AtualizarValorLiquido;
  btnok.Enabled           := habilitabotao;
  edtvlbaixa.enabled      := false;
  edtvlmulta.enabled      := false;
  edtvljuros.enabled      := false;
  edtvldesconto.enabled   := false;
  edtvlabatimento.enabled := false;
  edtvldevolucao.enabled  := false;
end;

procedure Tfrmbaixa.ConfigurarMovbancario;
begin
  lblmovimento.Visible       := False;
  lblmovimentacao.Visible    := False;
  cbxcdmovimentacao.Visible  := False;
  lblconta.Visible           := False;
  cbxcdconta.Visible         := False;
  lblnumero.Visible          := False;
  edtnumovbancario.Visible   := False;
  lblhistorico.Visible       := False;
  edtdshistorico.Visible     := False;
  lbldsobservacao.Visible    := False;
  memdsobservacao.Visible    := False;
  lblnominal.Visible         := False;
  edtdsnominal.Visible       := False;
end;

procedure Tfrmbaixa.ConfigurarRegistro;
var
  z, x, i : Integer;
begin
  for i := 0 to tvw.ViewData.RecordCount -1 do
  begin
    if not tvw.ViewData.Records[i].Selected then
    begin
      Continue;
    end;
    cds.Append;
    for x := 0 to tvw.ColumnCount - 1 do
    begin
      for z := 0 to cds.FieldCount - 1 do
      begin
        if (LowerCase(cds.Fields[z].FieldName) = LowerCase(tvw.Columns[x].DataBinding.FieldName)) then
        begin
          if campoleitura(LowerCase(tvw.Columns[x].DataBinding.FieldName)) then
          begin
            cds.FieldByName(tvw.Columns[x].DataBinding.FieldName).AsVariant := 0
          end
          else
          begin
            cds.FieldByName(tvw.Columns[x].DataBinding.FieldName).AsVariant := tvw.ViewData.Records[i].Values[x];
          end;
        end;
      end;
      if documento.tipo = _duplicata then
      begin
        if LowerCase(tvw.Columns[x].DataBinding.FieldName) = _vlduplicata then
        begin
          cdsvlautpagto.ascurrency := tvw.ViewData.Records[i].Values[x];
        end;
        if LowerCase(tvw.Columns[x].DataBinding.FieldName) = _cdduplicata then
        begin
          cdscdautpagto.AsString := tvw.ViewData.Records[i].Values[x];
          if not Tduplicata.verificarSeNota55JaFoiEnviada(cds.fieldbyname(_cdautpagto).asinteger) then
          begin
            messagedlg('Não é possível baixar contas a receber '+NomedoCodigo(_duplicata, cds.fieldbyname(_cdautpagto).asstring, _nuduplicata)+' '+
                       'de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota antes de baixar o contas a receber.', mtInformation, [mbOK], 0);
            Abort;
          end;
        end;
      end;
    end;
    cds.FieldByName(_vlrecebido).AsCurrency := cds.fieldbyname(_vlsaldo).AsCurrency;
    cds.FieldByName(_vlbaixa).AsCurrency    := cds.fieldbyname(_vlsaldo).AsCurrency;
    if cds.fieldbyname(_prmoradiaria).ascurrency > 0 then
    begin
      cds.FieldByName(_vljuros).ascurrency    := Tmovbancario.JuroDocumento(dtbanco, cds.fieldbyname(_dtprorrogacao).asdatetime, cds.fieldbyname(_prmoradiaria).ascurrency, cds.fieldbyname(_vlsaldo).ascurrency);
    end;
    if dtbanco > cds.fieldbyname(_dtprorrogacao).asdatetime then
    begin
      cds.FieldByName(_vlmulta).AsCurrency    := roundto(cds.fieldbyname(_vlsaldo).AsCurrency * cds.fieldbyname(_prmulta).AsFloat / 100, -2);
    end;
    cds.Post;
  end;
end;

procedure Tfrmbaixa.ConfigurarTela;
begin
  edtcodigo.Text            := documento.cdcliente;
  lblnome.Caption           := documento.rzsocial;
  edtvlsaldo.Value          := documento.vlsaldo;
  edtvloriginal.Value       := documento.vloriginal;
  documento.vloriginal      := documento.vloriginal;
  documento.vlsaldo         := documento.vlsaldo;
  documento.prmulta         := documento.prmulta;
  documento.vljurosreduzido := documento.vlsaldojuros;
  documento.prmoradiaria    := documento.prmoradiaria;
  edtdtprorrogacao.Date     := documento.dtprorrogacao;
  edtdshistorico.Text       := documento.dshistorico;
  edtvljuros.Value          := documento.vljuros;
  edtvlbaixa.Value          := documento.vlsaldo;
  edtvlmulta.value          := documento.vlmulta;
end;

procedure Tfrmbaixa.edtdataPropertiesChange(Sender: TObject);
begin
  RecalcularJuros;
  AtualizarJuros(true);
  atualizarValorLiquido;
end;

procedure Tfrmbaixa.RecalcularJuros;
begin
  if cds.RecordCount = 1 then
  begin
    AtualizarJuros(True);
    atualizarValorLiquido;
    Exit;
  end;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    if cds.fieldbyname(_prmoradiaria).ascurrency > 0 then
    begin
      cds.FieldByName(_vljuros).ascurrency := Tmovbancario.JuroDocumento(edtdata.Date, cds.fieldbyname(_dtprorrogacao).asdatetime, cds.fieldbyname(_prmoradiaria).ascurrency, cds.fieldbyname(_vlbaixa).ascurrency);
    end;
    if tbl = _duplicata then
    begin
      if edtdata.Date > cds.fieldbyname(_dtprorrogacao).asdatetime then
      begin
        cds.FieldByName(_vlmulta).ascurrency := roundto(cds.fieldbyname(_vlbaixa).ascurrency * cds.FieldByName(_prmulta).AsFloat  / 100, -2)
      end
      else
      begin
        cds.FieldByName(_vlmulta).ascurrency := 0;
      end;
    end;
    cds.Post;
    cds.next;
  end;
  grd.Refresh;
end;

procedure Tfrmbaixa.edtdataPropertiesEditValueChanged(Sender: TObject);
begin
  RecalcularJuros;
  AtualizarJuros(true);
end;

function Tfrmbaixa.campoleitura(nmcampo: string): Boolean;
begin
  result := (nmcampo = _vlbaixa) or (nmcampo = _vldesconto) or (nmcampo = _vlabatimento) or (nmcampo = _vldevolucao) or (nmcampo = _vlmulta);
end;

procedure Tfrmbaixa.cbxcdcontaExit(Sender: TObject);
begin
  if (cbxcdconta.Text <> '') and (NomedoCodigo(_conta, qregistro.codigodonome(_conta, cbxcdconta.Text), _cdstconta) = _2) then
  begin
    MessageDlg('Conta está desativada.'#13'Selecione outra para continuar.', mtInformation, [mbOK], 0);
    cbxcdconta.SetFocus;
  end;
end;

procedure Tfrmbaixa.cbxcdmovimentacaoPropertiesChange(Sender: TObject);
begin
  lblnumero.Visible        := cbxcdmovimentacao.EditValue = _7;
  edtnumovbancario.Visible := cbxcdmovimentacao.EditValue = _7;
  if cbxcdmovimentacao.EditValue <> _7 then
  begin
    edtnumovbancario.Clear;
  end;
end;

procedure Tfrmbaixa.FormCreate(Sender: TObject);
begin
  autpagto := TAutPagto.Create;
  duplicata := tduplicata.create;
  tbs1.Caption := 'Baixar Contas a ';
  if tbl = _duplicata then
  begin
    tbs1.Caption := tbs1.Caption + 'Receber'
  end
  else
  begin
    tbs1.Caption := tbs1.Caption + 'Pagar';
  end;
  cbxcdconta.Properties.ListSource := abrir_tabela(_conta);
end;

procedure Tfrmbaixa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(duplicata);
  FreeAndNil(autpagto);
end;

procedure Tfrmbaixa.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.

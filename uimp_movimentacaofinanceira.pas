
unit uimp_movimentacaofinanceira;

interface

uses
  System.Actions, System.UITypes,
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  uRichEdit, umontarsql, uRotinas, ustrings, uprogressbar, uconstantes,
  udatahora, uRegistro,
  classeaplicacao, classeconta, classeretornasql, classeempresa, classequery;

function imp_movimentacao_financeira(cdempresa, cdconta, cdmovimentacao: TStrings; dti, dtf: TDate):boolean;

implementation

Type
  TContabil = record
    codigo : string;
    contadebito : string;
    contacredito : string;
    dtlancamento : TDate;
    vllancamento : Currency;
    cdcntcusto : string;
    cdhistorico : string;
    dshistorico : string;
    nudocumento : string;
  end;
  TReport = class
  private
    q : TClasseQuery;
    nmcliente, nmconta, nmfornecedor, cdmovimentacao, cdconta, cdempresa : TStrings;
    dti, dtf : TDate;
    erro, arquivo : TStrings;
    contabil : TContabil;
    function get_nmfile:string;
    procedure destruir_objetos;
    function Makesqlmontarlista(nmdata:string):string;
    procedure Exibir_gauge;
    procedure processar_gauge;
    procedure inserir_deposito;
    procedure inserir_pagamento;
    procedure inserir_duplicata_baixa;
    procedure adicionar_duplicata_desconto;
    procedure adicionar_duplicata_multa;
    procedure adicionar_duplicata_juro;
    procedure adicionar_duplicata_valor;
    procedure inserir_autpagto_baixa;
    procedure adicionar_autpagto_valor;
    procedure adicionar_autpagto_juro;
    procedure adicionar_autpagto_multa;
    procedure adicionar_autpagto_desconto;
    procedure inserir_baixa_adntcliente;
    procedure inserir_baixa_adntfornecedor;
    procedure inserir_transferencia;
    procedure inserir_recebimento;
    procedure adicionar_arquivo;
    procedure adicionar_erro(tabela, nome: string; campo: string='nucntcontabil');
    function campos_exportacao_cadastro_empresa_preenhidos:Boolean;
  public
    constructor create(cdempresa_, cdconta_, cdmovimentacao_: TStrings; dti_, dtf_: TDate);
    function   gerar:boolean;
  end;

const
  _sql_transferencia = 'select movbancario.dtemissao'+
                             ',movbancario.vllancamento'+
                             ',conta.nmconta'+
                             ',conta.nucntcontabil'+
                             ',tpconta.nucntcontabil nucntcontabiltpconta'+
                             ',contadestino.nmconta nmcontadestino'+
                             ',contadestino.nucntcontabil nucntcontabildestino'+
                             ',tpcontadestino.nucntcontabil nucntcontabiltpcontadestino'+
                             ',movbancario.dshistorico '+
                       'from movbancario '+
                       'inner join conta on conta.cdempresa=movbancario.cdempresa and conta.cdconta=movbancario.cdconta '+
                       'inner join tpconta on tpconta.cdempresa=movbancario.cdempresa and conta.cdtpconta=tpconta.cdtpconta '+
                       'left join conta contadestino on contadestino.cdempresa=movbancario.cdempresa and contadestino.cdconta=movbancario.cdcontadestino '+
                       'left join tpconta tpcontadestino on tpcontadestino.cdempresa=movbancario.cdempresa and contadestino.cdtpconta=tpcontadestino.cdtpconta ';
  _sql_recebimento = 'select movbancario.dtemissao'+
                           ',movbancario.vllancamento'+
                           ',conta.nmconta'+
                           ',conta.nucntcontabil'+
                           ',tpconta.nucntcontabil nucntcontabiltpconta'+
                           ',movbancario.dshistorico '+
                     'from movbancario '+
                     'inner join conta on conta.cdempresa=movbancario.cdempresa and conta.cdconta=movbancario.cdconta '+
                     'inner join tpconta on tpconta.cdempresa=movbancario.cdempresa and conta.cdtpconta=tpconta.cdtpconta '+
                     'left join movbancario movbancarioorigem on movbancarioorigem.cdempresa=movbancario.cdempresa and movbancarioorigem.cdmovbancariodestino=movbancario.cdmovbancario ';
  _sql_deposito = 'select movbancario.dtemissao'+
                       ',movbancario.vllancamento'+
                       ',conta.nmconta'+
                       ',conta.nucntcontabil'+
                       ',tpconta.nucntcontabil nucntcontabiltpconta'+
                       ',movimentacao.nmmovimentacao'+
                       ',movimentacao.nucntcontabil nucntcontabilmovimentacao'+
                       ',movbancario.dshistorico '+
                 'from movbancario '+
                 'inner join conta on conta.cdempresa=movbancario.cdempresa and conta.cdconta=movbancario.cdconta '+
                 'inner join tpconta on tpconta.cdempresa=movbancario.cdempresa and conta.cdtpconta=tpconta.cdtpconta '+
                 'inner join movimentacao on movimentacao.cdempresa=movbancario.cdempresa and movimentacao.cdmovimentacao=movbancario.cdmovimentacao ';
  _sql_duplicata = 'select baixa.vlbaixa'+
                         ',baixa.dtbaixa'+
                         ',baixa.vldesconto'+
                         ',baixa.vlabatimento'+ // verificar com a contabilidade
                         ',baixa.vljuro'+
                         ',baixa.vlmulta'+
                         ',baixa.vldevolucao'+  // verificar com a contabilidade
                         ',DUPLICATA.NUDUPLICATA'+
                         ',conta.nmconta'+
                         ',conta.nucntcontabil'+
                         ',tpconta.nucntcontabil nucntcontabiltpconta'+
                         ',cliente.cdcliente'+
                         ',CLIENTE.RZSOCIAL'+
                         ',cliente.tppessoa'+
                         ',cliente.nucntcontabil nucntcontabilc'+
                         ',movbancario.dshistorico '+
                   'from movbancario '+
                   'inner join conta on conta.cdempresa=movbancario.cdempresa and conta.cdconta=movbancario.cdconta '+
                   'inner join tpconta on tpconta.cdempresa=conta.cdempresa and conta.cdtpconta=tpconta.cdtpconta '+
                   'inner join baixa on baixa.cdempresa=movbancario.cdempresa and baixa.cdmovbancario=movbancario.cdmovbancario '+
                   'inner join duplicata on duplicata.cdempresa=baixa.cdempresa and duplicata.cdduplicata=baixa.cdduplicata '+
                   'inner join cliente on cliente.cdempresa=duplicata.cdempresa and cliente.cdcliente=duplicata.cdcliente ';
  _sql_autpagto = 'select autpagto.nuautpagto'+
                        ',baixa.vlbaixa'+
                        ',baixa.dtbaixa'+
                        ',baixa.vldesconto'+
                        ',baixa.vlabatimento'+
                        ',baixa.vljuro'+
                        ',baixa.vlmulta'+
                        ',baixa.vldevolucao'+
                        ',fornecedor.cdfornecedor'+
                        ',fornecedor.rzsocial'+
                        ',fornecedor.tppessoa'+
                        ',fornecedor.nucntcontabil nucntcontabilf'+
                        ',conta.nucntcontabil'+
                        ',conta.nmconta'+
                        ',tpconta.nucntcontabil nucntcontabiltpconta'+
                        ',movbancario.dshistorico '+
                  'from movbancario '+
                  'inner join baixa on baixa.cdempresa=movbancario.cdempresa and baixa.cdmovbancario=movbancario.cdmovbancario '+
                  'inner join conta on conta.cdempresa=movbancario.cdempresa and conta.cdconta=movbancario.cdconta '+
                  'inner join tpconta on tpconta.cdempresa=movbancario.cdempresa and conta.cdtpconta=tpconta.cdtpconta '+
                  'inner join autpagto on autpagto.cdempresa=baixa.cdempresa and autpagto.cdautpagto=baixa.cdautpagto '+
                  'inner join fornecedor on fornecedor.cdempresa=autpagto.cdempresa and fornecedor.cdfornecedor=autpagto.cdfornecedor ';
  _sql_adntfornecedor = 'select baixa.dtbaixa'+
                              ',baixa.vlbaixa'+
                              ',fornecedor.cdfornecedor'+
                              ',fornecedor.rzsocial'+
                              ',fornecedor.tppessoa'+
                              ',conta.nucntcontabil'+
                              ',conta.nmconta'+
                              ',tpconta.nucntcontabil nucntcontabiltpconta'+
                              ',movbancario.dshistorico '+
                        'from adntfornecedor '+
                        'inner join movbancario on movbancario.cdempresa=adntfornecedor.cdempresa and movbancario.cdmovbancario=adntfornecedor.cdmovbancario '+
                        'inner join conta on conta.cdempresa=movbancario.cdempresa and conta.cdconta=movbancario.cdconta '+
                        'inner join tpconta on tpconta.cdempresa=movbancario.cdempresa and conta.cdtpconta=tpconta.cdtpconta '+
                        'inner join baixa on baixa.cdempresa=adntfornecedor.cdempresa and baixa.cdadntfornecedor=adntfornecedor.cdadntfornecedor '+
                        'inner join fornecedor on fornecedor.cdempresa=adntfornecedor.cdempresa and fornecedor.cdfornecedor=adntfornecedor.cdfornecedor ';
  _sql_adntcliente = 'select baixa.dtbaixa'+
                           ',baixa.vlbaixa'+
                           ',cliente.rzsocial'+
                           ',cliente.cdcliente'+
                           ',cliente.tppessoa'+
                           ',conta.nucntcontabil'+
                           ',conta.nmconta'+
                           ',tpconta.nucntcontabil nucntcontabiltpconta'+
                           ',movbancario.dshistorico '+
                     'from adntcliente '+
                     'inner join movbancario on movbancario.cdempresa=adntcliente.cdempresa and movbancario.cdmovbancario=adntcliente.cdmovbancario '+
                     'inner join baixa on baixa.cdempresa=adntcliente.cdempresa and baixa.cdadntcliente=adntcliente.cdadntcliente '+
                     'inner join conta on conta.cdempresa=movbancario.cdempresa and conta.cdconta=movbancario.cdconta '+
                     'inner join tpconta on tpconta.cdempresa=movbancario.cdempresa and conta.cdtpconta=tpconta.cdtpconta '+
                     'inner join cliente on cliente.cdempresa=adntcliente.cdempresa and cliente.cdcliente=adntcliente.cdcliente ';

function imp_movimentacao_financeira(cdempresa, cdconta, cdmovimentacao: TStrings; dti, dtf: TDate):boolean;
var
  rpt : TReport;
begin
  rpt := TReport.create(cdempresa, cdconta, cdmovimentacao, dti, dtf);
  try
    result := rpt.gerar;
  finally
    rpt.free;
  end;
end;

procedure TReport.adicionar_arquivo;
begin
  arquivo.Add('"'+contabil.codigo+'",'+
              '"'+contabil.contadebito+'",'+
              '"'+contabil.contacredito+'",'+
              '"'+FormatDateTime(_dd_mm_yyyy, contabil.dtlancamento)+'",'+
              '"'+floattostr(contabil.vllancamento)+'",'+
              '"'+contabil.cdcntcusto+'",'+
              '"'+contabil.cdhistorico+'",'+
              '"'+contabil.dshistorico+'",'+
              '"'+contabil.nudocumento+'"');
end;

procedure TReport.adicionar_erro(tabela, nome: string; campo: string='nucntcontabil');
var
  nmcampo : string;
begin
  if tabela = _cliente then
  begin
    if nmcliente.IndexOf(nome) > -1 then
    begin
      exit;
    end;
    nmcliente.Add(nome);
  end;

  if tabela = _fornecedor then
  begin
    if nmfornecedor.IndexOf(nome) > -1 then
    begin
      exit;
    end;
    nmfornecedor.Add(nome);
  end;

  if tabela = _conta then
  begin
    if nmconta.IndexOf(nome) > -1 then
    begin
      exit;
    end;
    nmconta.Add(nome);
  end;

       if campo = _nucntcontabil then nmcampo := 'conta contábil'
  else if campo = _tppessoa      then nmcampo := 'Tipo de Pessoa'
  else if campo = _rzsocial      then nmcampo := 'Razão Social';

  erro.add(Maiuscula(tabela) +' '+nome+' está sem '+nmcampo+'.');
end;

function TReport.campos_exportacao_cadastro_empresa_preenhidos: Boolean;
begin
  result := (empresa.financeiro.contacontabil.cdcreditoadntclientefisica <> '') and
            (empresa.financeiro.contacontabil.cddebitoadntcliente <> '') and
            (empresa.financeiro.contacontabil.cdcreditoadntfornecedorfis <> '') and
            (empresa.financeiro.contacontabil.cddebitoadntfornecedor <> '') and
            (empresa.financeiro.contacontabil.cdcreditoautpagtofisica <> '') and
            (empresa.financeiro.contacontabil.cddebitoautpagtojuros <> '') and
            (empresa.financeiro.contacontabil.cddebitoautpagtomulta <> '') and
            (empresa.financeiro.contacontabil.cddebitoautpagtodesconto <> '') and
            (empresa.financeiro.contacontabil.cdcreditoduplicatafisica <> '') and
            (empresa.financeiro.contacontabil.cdcreditoduplicatajuros <> '') and
            (empresa.financeiro.contacontabil.cdcreditoduplicatamulta <> '') and
            (empresa.financeiro.contacontabil.cdcreditoduplicatadesconto <> '') and
            (empresa.financeiro.contacontabil.cdcreditorecebimento <> '') and
            (empresa.financeiro.contacontabil.cddebitotransferencia <> '');
end;

constructor TReport.create(cdempresa_, cdconta_, cdmovimentacao_: TStrings; dti_, dtf_: TDate);
begin
  nmcliente           := TStringList.Create;
  nmfornecedor        := TStringList.Create;
  nmconta             := TStringList.Create;
  erro                := TStringList.Create;
  arquivo             := TStringList.Create;
  cdempresa           := TStringlist.create;
  cdconta             := TStringList.Create;
  cdmovimentacao      := TStringList.Create;
  q := TClasseQuery.Create;
  cdempresa.text      := cdempresa_.text;
  cdconta.Text        := cdconta_.Text;
  cdmovimentacao.Text := cdmovimentacao_.Text;
  dti                 := dti_;
  dtf                 := dtf_;
  q.q.Connection        := aplicacao.confire;
end;

procedure TReport.destruir_objetos;
begin
  freeandnil(frmprogressbar);
  freeandnil(arquivo);
  freeandnil(cdempresa);
  freeandnil(cdconta);
  freeandnil(cdmovimentacao);
  freeandnil(nmcliente);
  freeandnil(nmfornecedor);
  freeandnil(nmconta);
  freeandnil(erro);
  freeandnil(q);
end;

procedure TReport.Exibir_gauge;
begin
  frmprogressbar.Show;
  frmprogressbar.pnl.Caption := 'Lendo registros. Aguarde...';
  Application.ProcessMessages;
end;

function TReport.gerar:boolean;
var
  nmfile : string;
begin
  result := False;
  if not campos_exportacao_cadastro_empresa_preenhidos then
  begin
    MessageDlg('Favor verificar a configuração de Exportação do Financeiro para o contábil no Cadastro=>Empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  nmfile := QRotinas.getdiretorio;
  if nmfile = '' then
  begin
    exit;
  end;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    Exibir_gauge;
    inserir_duplicata_baixa;
    inserir_autpagto_baixa;
    inserir_baixa_adntcliente;
    inserir_baixa_adntfornecedor;
    inserir_transferencia;
    inserir_recebimento;
    inserir_deposito;
    inserir_pagamento;
    if erro.Count > 0 then
    begin
      ExibirSaidaVideo(erro);
      Abort;
    end;
    arquivo.SaveToFile(nmfile+get_nmfile);
    result := True;
  finally
    destruir_objetos;
  end;
end;

function TReport.get_nmfile: string;
begin
  result := '\movimentacao financeira de '+FormatDateTime(_dd__mm__yyyy, dti)+' ate '+formatdatetime(_dd__mm__yyyy, dtf)+'.txt';
end;

procedure TReport.inserir_baixa_adntcliente;
begin
  q.q.Close;
  q.q.SQL.Text := _sql_adntcliente+ Makesqlmontarlista(_baixa+'.'+_dtbaixa);
  q.q.Open;
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.Eof do
  begin
    processar_gauge;
    if q.q.FieldByName(_rzsocial).AsString = '' then adicionar_erro(_cliente, q.q.fieldbyname(_cdcliente).AsString, _rzsocial);
    if q.q.FieldByName(_tppessoa).AsString = '' then adicionar_erro(_cliente, q.q.fieldbyname(_rzsocial).AsString, _tppessoa);

         if q.q.FieldByName(_nucntcontabil).AsString          <> '' then contabil.contadebito := q.q.fieldbyname(_nucntcontabil).AsString
    else if q.q.FieldByName(_nucntcontabil+_tpconta).AsString <> '' then contabil.contadebito := q.q.fieldbyname(_nucntcontabil+_tpconta).AsString
    else                                                               adicionar_erro(_conta, q.q.fieldbyname(_nmconta).asstring);


    contabil.codigo       := '';
    contabil.contacredito := empresa.financeiro.contacontabil.cddebitoadntcliente;
    contabil.dtlancamento := q.q.fieldbyname(_dtbaixa).AsDateTime;
    contabil.vllancamento := q.q.fieldbyname(_vlbaixa).AsCurrency;
    contabil.cdcntcusto   := '';
    contabil.cdhistorico  := '';
    contabil.dshistorico  := 'RECEBIMENTO ADIANTAMENTO ('+q.q.fieldbyname(_dshistorico).AsString+') '+q.q.fieldbyname(_rzsocial).AsString;
    contabil.nudocumento  := '';
    adicionar_arquivo;
    q.q.Next;
  end;
end;

procedure TReport.inserir_baixa_adntfornecedor;
begin
  q.q.Close;
  q.q.SQL.Text := _sql_adntfornecedor + Makesqlmontarlista(_baixa+'.'+_dtbaixa);
  q.q.Open;
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.Eof do
  begin
    processar_gauge;
    if q.q.FieldByName(_rzsocial).AsString = '' then adicionar_erro(_fornecedor, q.q.fieldbyname(_cdfornecedor).AsString, _rzsocial);
    if q.q.FieldByName(_tppessoa).AsString = '' then adicionar_erro(_fornecedor, q.q.fieldbyname(_rzsocial).AsString, _tppessoa);

         if q.q.FieldByName(_nucntcontabil).AsString          <> '' then contabil.contacredito := q.q.fieldbyname(_nucntcontabil).AsString
    else if q.q.FieldByName(_nucntcontabil+_tpconta).AsString <> '' then contabil.contacredito := q.q.fieldbyname(_nucntcontabil+_tpconta).AsString
    else                                                               adicionar_erro(_conta, q.q.fieldbyname(_nmconta).asstring);

    contabil.codigo       := '';
    contabil.contadebito := empresa.financeiro.contacontabil.cddebitoadntfornecedor;
    contabil.dtlancamento := q.q.fieldbyname(_dtbaixa).AsDateTime;
    contabil.vllancamento := q.q.fieldbyname(_vlbaixa).AsCurrency;
    contabil.cdcntcusto   := '';
    contabil.cdhistorico  := '';
    contabil.dshistorico  := 'PAGAMENTO ADIANTAMENTO ('+q.q.fieldbyname(_dshistorico).AsString+') '+q.q.fieldbyname(_rzsocial).AsString;
    contabil.nudocumento  := '';
    adicionar_arquivo;
    q.q.Next;
  end;
end;

procedure TReport.adicionar_autpagto_valor;
begin
  contabil.dtlancamento := q.q.fieldbyname(_dtbaixa).AsDateTime;
  contabil.vllancamento := q.q.fieldbyname(_vlbaixa).AsCurrency - q.q.FieldByName(_vldesconto).AsCurrency + q.q.FieldByName(_vl+_juro).AsCurrency + q.q.fieldbyname(_vlmulta).AsCurrency;
  contabil.cdcntcusto   := '';
  contabil.cdhistorico  := '';
  contabil.dshistorico  := 'PAGAMENTO DOC/NF/RECIBO '+q.q.fieldbyname(_nuautpagto).AsString+' '+q.q.fieldbyname(_rzsocial).AsString;
  contabil.nudocumento  := q.q.fieldbyname(_nuautpagto).AsString;
  adicionar_arquivo;
end;

procedure TReport.adicionar_autpagto_juro;
begin
  if q.q.fieldbyname(_vl+_juro).AsCurrency = 0 then
  begin
    Exit;
  end;
  contabil.contadebito  := empresa.financeiro.contacontabil.cddebitoautpagtojuros;
  contabil.vllancamento := q.q.fieldbyname(_vljuro).AsCurrency;
  contabil.dshistorico  := 'PAGAMENTO JUROS DOC/NF/RECIBO '+q.q.fieldbyname(_nuautpagto).AsString+' '+q.q.fieldbyname(_rzsocial).AsString;
  adicionar_arquivo;
end;

procedure TReport.adicionar_autpagto_multa;
begin
  if q.q.fieldbyname(_vlmulta).AsCurrency = 0 then
  begin
    Exit;
  end;
  contabil.contadebito  := empresa.financeiro.contacontabil.cddebitoautpagtomulta;
  contabil.vllancamento := q.q.fieldbyname(_vlmulta).AsCurrency;
  contabil.dshistorico  := 'PAGAMENTO MULTA DOC/NF/RECIBO '+q.q.fieldbyname(_nuautpagto).AsString+' '+q.q.fieldbyname(_rzsocial).AsString;
  adicionar_arquivo;
end;

procedure TReport.adicionar_autpagto_desconto;
begin
  if q.q.fieldbyname(_vldesconto).AsCurrency = 0 then
  begin
    Exit;
  end;
       if q.q.FieldByName(_tppessoa).AsString = _F                                                        then contabil.contadebito := empresa.financeiro.contacontabil.cdcreditoautpagtofisica
  else if q.q.FieldByName(_tppessoa).AsString = ''                                                        then adicionar_erro(_fornecedor, q.q.fieldbyname(_rzsocial).asstring)
  else if (q.q.FieldByName(_tppessoa).AsString = _J) and (q.q.fieldbyname(_nucntcontabil+_f).AsString = '') then adicionar_erro(_fornecedor, q.q.fieldbyname(_rzsocial).asstring)
  else                                                                                                       contabil.contadebito := q.q.fieldbyname(_nucntcontabil+_f).AsString;

  contabil.contacredito := empresa.financeiro.contacontabil.cddebitoautpagtodesconto;
  contabil.vllancamento := q.q.fieldbyname(_vldesconto).AsCurrency;
  contabil.dshistorico  := 'DESCONTO OBTIDO DOC/NF/RECIBO '+q.q.fieldbyname(_nuautpagto).AsString+' '+q.q.fieldbyname(_rzsocial).AsString;
  adicionar_arquivo;
end;

procedure TReport.inserir_autpagto_baixa;
begin
  q.q.Close;
  q.q.SQL.Text := _sql_autpagto+ Makesqlmontarlista(_baixa+'.'+_dtbaixa);
  q.q.Open;
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.Eof do
  begin
    processar_gauge;
    if q.q.FieldByName(_rzsocial).AsString = '' then adicionar_erro(_fornecedor, q.q.fieldbyname(_cdfornecedor).AsString, _rzsocial);
    if q.q.FieldByName(_tppessoa).AsString = '' then adicionar_erro(_fornecedor, q.q.fieldbyname(_rzsocial).AsString, _tppessoa);

         if q.q.FieldByName(_tppessoa).AsString = _F                                                        then contabil.contacredito := empresa.financeiro.contacontabil.cdcreditoautpagtofisica
    else if q.q.FieldByName(_tppessoa).AsString = ''                                                        then adicionar_erro(_fornecedor, q.q.fieldbyname(_rzsocial).asstring)
    else if (q.q.FieldByName(_tppessoa).AsString = _J) and (q.q.fieldbyname(_nucntcontabil+_f).AsString = '') then adicionar_erro(_fornecedor, q.q.fieldbyname(_rzsocial).asstring)
    else                                                                                                       contabil.contacredito := q.q.fieldbyname(_nucntcontabil+_f).AsString;

    contabil.codigo       := '';

    contabil.contadebito  := q.q.fieldbyname(_nucntcontabil+_f).AsString;

         if q.q.FieldByName(_nucntcontabil).AsString          <> '' then contabil.contacredito := q.q.fieldbyname(_nucntcontabil).AsString
    else if q.q.FieldByName(_nucntcontabil+_tpconta).AsString <> '' then contabil.contacredito := q.q.fieldbyname(_nucntcontabil+_tpconta).AsString
    else                                                               adicionar_erro(_conta, q.q.fieldbyname(_nmconta).asstring);

    adicionar_autpagto_valor;
    adicionar_autpagto_juro;
    adicionar_autpagto_multa;
    adicionar_autpagto_desconto;
    q.q.Next;
  end;
end;

procedure TReport.adicionar_duplicata_valor;
begin
  contabil.dtlancamento := q.q.fieldbyname(_dtbaixa).AsDateTime;
  contabil.vllancamento := q.q.fieldbyname(_vlbaixa).AsCurrency - q.q.FieldByName(_vldesconto).AsCurrency;
  contabil.cdcntcusto   := '';
  contabil.cdhistorico  := '';
  contabil.dshistorico  := 'RECEBIMENTO DOC/NF/RECIBO '+q.q.fieldbyname(_nuduplicata).AsString+' '+q.q.fieldbyname(_rzsocial).AsString;
  contabil.nudocumento  := q.q.fieldbyname(_nuduplicata).AsString;
  adicionar_arquivo;
end;

procedure TReport.adicionar_duplicata_juro;
begin
  if q.q.fieldbyname(_vl+_juro).AsCurrency = 0 then
  begin
    Exit;
  end;
  contabil.contacredito := empresa.financeiro.contacontabil.cdcreditoduplicatajuros;
  contabil.vllancamento := q.q.fieldbyname(_vljuro).AsCurrency;
  contabil.dshistorico  := 'RECEBIMENTO JUROS DOC/NF/RECIBO '+q.q.fieldbyname(_nuduplicata).AsString+' '+q.q.fieldbyname(_rzsocial).AsString;
  adicionar_arquivo;
end;

procedure TReport.adicionar_duplicata_multa;
begin
  if q.q.fieldbyname(_vlmulta).AsCurrency = 0 then
  begin
    Exit;
  end;
  contabil.contacredito := empresa.financeiro.contacontabil.cdcreditoduplicatamulta;
  contabil.vllancamento := q.q.fieldbyname(_vlmulta).AsCurrency;
  contabil.dshistorico  := 'RECEBIMENTO MULTA DOC/NF/RECIBO '+q.q.fieldbyname(_nuduplicata).AsString+' '+q.q.fieldbyname(_rzsocial).AsString;
  adicionar_arquivo;
end;

procedure TReport.adicionar_duplicata_desconto;
begin
  if q.q.fieldbyname(_vldesconto).AsCurrency = 0 then
  begin
    Exit;
  end;
       if q.q.FieldByName(_tppessoa).AsString = _F                                                        then contabil.contadebito := empresa.financeiro.contacontabil.cdcreditoduplicatafisica
  else if q.q.FieldByName(_tppessoa).AsString = ''                                                        then adicionar_erro(_cliente, q.q.fieldbyname(_rzsocial).asstring)
  else if (q.q.FieldByName(_tppessoa).AsString = _J) and (q.q.fieldbyname(_nucntcontabil+_c).AsString = '') then adicionar_erro(_cliente, q.q.fieldbyname(_rzsocial).asstring)
  else                                                                                                       contabil.contadebito := q.q.fieldbyname(_nucntcontabil+_c).AsString;

  contabil.contacredito := empresa.financeiro.contacontabil.cdcreditoduplicatadesconto;
  contabil.vllancamento := q.q.fieldbyname(_vldesconto).AsCurrency;
  contabil.dshistorico  := 'DESCONTO CONCEDIDO DOC/NF/RECIBO '+q.q.fieldbyname(_nuduplicata).AsString+' '+q.q.fieldbyname(_rzsocial).AsString;
  adicionar_arquivo;
end;

procedure TReport.inserir_duplicata_baixa;
begin
  q.q.Close;
  q.q.SQL.Text := _sql_duplicata+ Makesqlmontarlista(_baixa+'.'+_dtbaixa);
  q.q.Open;
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.Eof do
  begin
    processar_gauge;

    if q.q.FieldByName(_rzsocial).AsString = '' then adicionar_erro(_cliente, q.q.fieldbyname(_cdcliente).AsString, _rzsocial);
    if q.q.FieldByName(_tppessoa).AsString = '' then adicionar_erro(_cliente, q.q.fieldbyname(_rzsocial).AsString, _tppessoa);

         if q.q.FieldByName(_tppessoa).AsString = _F                                                        then contabil.contacredito := empresa.financeiro.contacontabil.cdcreditoduplicatafisica
    else if q.q.FieldByName(_tppessoa).AsString = ''                                                        then adicionar_erro(_cliente, q.q.fieldbyname(_rzsocial).asstring)
    else if (q.q.FieldByName(_tppessoa).AsString = _J) and (q.q.fieldbyname(_nucntcontabil+_c).AsString = '') then adicionar_erro(_cliente, q.q.fieldbyname(_rzsocial).asstring)
    else                                                                                                       contabil.contacredito := q.q.fieldbyname(_nucntcontabil+_c).AsString;

    contabil.codigo       := '';
         if q.q.FieldByName(_nucntcontabil).AsString          <> '' then contabil.contadebito := q.q.fieldbyname(_nucntcontabil).AsString
    else if q.q.FieldByName(_nucntcontabil+_tpconta).AsString <> '' then contabil.contadebito := q.q.fieldbyname(_nucntcontabil+_tpconta).AsString
    else                                                               adicionar_erro(_conta, q.q.fieldbyname(_nmconta).asstring);

    adicionar_duplicata_valor;
    adicionar_duplicata_juro;
    adicionar_duplicata_multa;
    adicionar_duplicata_desconto;
    q.q.Next;
  end;
end;

procedure TReport.inserir_deposito;
begin
  q.q.Close;
  q.q.SQL.Text := _sql_deposito+Makesqlmontarlista(_movbancario+'.'+_dtemissao)+ ' AND movimentacao.cdtpmodulo=6';
  q.q.Open;
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.Eof do
  begin
    processar_gauge;

    if q.q.FieldByName(_nucntcontabil+_movimentacao).AsString <> '' then contabil.contacredito := q.q.FieldByName(_nucntcontabil+_movimentacao).AsString
                                                                  else adicionar_erro(_movimentacao, q.q.fieldbyname(_nmmovimentacao).asstring);


         if q.q.FieldByName(_nucntcontabil).AsString          <> '' then contabil.contadebito := q.q.fieldbyname(_nucntcontabil).AsString
    else if q.q.FieldByName(_nucntcontabil+_tpconta).AsString <> '' then contabil.contadebito := q.q.fieldbyname(_nucntcontabil+_tpconta).AsString
    else                                                               adicionar_erro(_conta, q.q.fieldbyname(_nmconta).asstring);

    contabil.codigo       := '';
    contabil.dtlancamento := q.q.fieldbyname(_dtemissao).AsDateTime;
    contabil.vllancamento := q.q.fieldbyname(_vllancamento).AsCurrency;
    contabil.cdcntcusto   := '';
    contabil.cdhistorico  := '';
    contabil.dshistorico  := 'RECEBIMENTO DE '+q.q.fieldbyname(_nmmovimentacao).asstring;
    contabil.nudocumento  := '';
    adicionar_arquivo;
    q.q.Next;
  end;
end;

procedure TReport.inserir_pagamento;
begin
  q.q.Close;
  q.q.SQL.Text := _sql_deposito+Makesqlmontarlista(_movbancario+'.'+_dtemissao)+ ' AND movimentacao.cdtpmodulo=5';
  q.q.Open;
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.Eof do
  begin
    processar_gauge;

    if q.q.FieldByName(_nucntcontabil+_movimentacao).AsString <> '' then contabil.contadebito := q.q.FieldByName(_nucntcontabil+_movimentacao).AsString
                                                                  else adicionar_erro(_movimentacao, q.q.fieldbyname(_nmmovimentacao).asstring);


         if q.q.FieldByName(_nucntcontabil).AsString          <> '' then contabil.contacredito := q.q.fieldbyname(_nucntcontabil).AsString
    else if q.q.FieldByName(_nucntcontabil+_tpconta).AsString <> '' then contabil.contacredito := q.q.fieldbyname(_nucntcontabil+_tpconta).AsString
    else                                                               adicionar_erro(_conta, q.q.fieldbyname(_nmconta).asstring);

    contabil.codigo       := '';
    contabil.dtlancamento := q.q.fieldbyname(_dtemissao).AsDateTime;
    contabil.vllancamento := q.q.fieldbyname(_vllancamento).AsCurrency;
    contabil.cdcntcusto   := '';
    contabil.cdhistorico  := '';
    contabil.dshistorico  := 'PAGAMENTO DE '+q.q.fieldbyname(_nmmovimentacao).asstring;
    contabil.nudocumento  := '';
    adicionar_arquivo;
    q.q.Next;
  end;
end;

procedure TReport.inserir_recebimento;
begin
  q.q.Close;
  q.q.SQL.Text := _sql_recebimento+Makesqlmontarlista(_movbancario+'.'+_dtemissao)+ ' AND movbancarioorigem.cdmovbancario is null and movbancario.cdmovimentacao=12';
  q.q.Open;
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.Eof do
  begin
    processar_gauge;

    contabil.contacredito := empresa.financeiro.contacontabil.cdcreditorecebimento;

         if q.q.FieldByName(_nucntcontabil).AsString          <> '' then contabil.contadebito := q.q.fieldbyname(_nucntcontabil).AsString
    else if q.q.FieldByName(_nucntcontabil+_tpconta).AsString <> '' then contabil.contadebito := q.q.fieldbyname(_nucntcontabil+_tpconta).AsString
    else                                                               adicionar_erro(_conta, q.q.fieldbyname(_nmconta).asstring);

    contabil.codigo       := '';
    contabil.dtlancamento := q.q.fieldbyname(_dtemissao).AsDateTime;
    contabil.vllancamento := q.q.fieldbyname(_vllancamento).AsCurrency;
    contabil.cdcntcusto   := '';
    contabil.cdhistorico  := '';
    contabil.dshistorico  := 'RECEBIMENTO DE TRANSFERENCIA PARA A CONTA '+q.q.fieldbyname(_nmconta).AsString;
    contabil.nudocumento  := '';
    adicionar_arquivo;
    q.q.Next;
  end;
end;

procedure TReport.inserir_transferencia;
begin
  q.q.Close;
  q.q.SQL.Text := _sql_transferencia+Makesqlmontarlista(_movbancario+'.'+_dtemissao)+ ' AND movbancario.cdmovimentacao=11';
  q.q.Open;
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.Eof do
  begin
    processar_gauge;

         if q.q.FieldByName(_nucntcontabil).AsString          <> '' then contabil.contacredito := q.q.fieldbyname(_nucntcontabil).AsString
    else if q.q.FieldByName(_nucntcontabil+_tpconta).AsString <> '' then contabil.contacredito := q.q.fieldbyname(_nucntcontabil+_tpconta).AsString
    else                                                               adicionar_erro(_conta, q.q.fieldbyname(_nmconta).asstring);

         if q.q.FieldByName(_nucntcontabil+_destino).AsString          <> '' then contabil.contadebito := q.q.fieldbyname(_nucntcontabil+_destino).AsString
    else if q.q.FieldByName(_nucntcontabil+_tpconta+_destino).AsString <> '' then contabil.contadebito := q.q.fieldbyname(_nucntcontabil+_tpconta+_destino).AsString
    else                                                                        contabil.contadebito := Empresa.financeiro.contacontabil.cddebitotransferencia;

    contabil.codigo       := '';
    contabil.dtlancamento := q.q.fieldbyname(_dtemissao).AsDateTime;
    contabil.vllancamento := q.q.fieldbyname(_vllancamento).AsCurrency;
    contabil.cdcntcusto   := '';
    contabil.cdhistorico  := '';
    contabil.dshistorico  := 'TRANSFERENCIA DA CONTA '+q.q.fieldbyname(_nmconta).AsString+' PARA '+q.q.fieldbyname(_nmconta+_destino).AsString;
    contabil.nudocumento  := '';
    adicionar_arquivo;
    q.q.Next;
  end;
end;

procedure TReport.processar_gauge;
begin
  frmprogressbar.pnl.Caption  := 'Processando...'+inttostr(q.q.RecNo)+' de '+inttostr(q.q.RecordCount);
  frmprogressbar.gau.Progress := q.q.RecNo;
  application.ProcessMessages;
end;

function TReport.Makesqlmontarlista(nmdata:string):string;
begin
  InsercaoDataSQl(dti, dtf, Result, nmdata);
  sqlmontarlista (cdempresa     , _movbancario, _cdempresa     , result);
  sqlmontarlista (cdconta       , _movbancario, _cdconta       , result);
  sqlmontarlista (cdmovimentacao, _movbancario, _cdmovimentacao, result);
end;

end.

unit ClasseNegociacao;

interface

uses classedao, classequery, classeretornasql, classecliente, classemovbancario, classegerar, classeduplicata, classeempresa, classeexecutasql,
  uconstantes, uregistro,
  dialogs, system.classes, data.db, System.SysUtils, Contnrs, system.uitypes;

Type
  TNegociacaoSaida = class(TRegistroQuipos)
  private
    fcdnegociacao: integer;
    fvlduplicata: currency;
    fnuduplicata: string;
    fvlcomissao: currency;
    fcdtpcobranca: integer;
    fcdrepresentante: integer;
    fprmoradiaria: double;
    fdtvencimento: TDate;
    fcdduplicata: integer;
    fcdnegociacaosaida: integer;
  public
    [keyfield, AObritario]
    property cdnegociacaosaida : integer read fcdnegociacaosaida write fcdnegociacaosaida;
    [fk]
    property cdduplicata : integer read fcdduplicata write fcdduplicata;
    [fk, Aobrigatorio]
    property cdnegociacao : integer read fcdnegociacao write fcdnegociacao;
    [fk]
    property cdtpcobranca : integer read fcdtpcobranca write fcdtpcobranca;
    [fk]
    property cdrepresentante : integer read fcdrepresentante write fcdrepresentante;
    [AObrigatorio]
    property vlduplicata : currency read fvlduplicata write fvlduplicata;
    property nuduplicata : string read fnuduplicata write fnuduplicata;
    [AObrigatorio]
    property dtvencimento : TDate read fdtvencimento write fdtvencimento;
    [Aobrigatorio]
    property prmoradiaria : double read fprmoradiaria write fprmoradiaria;
    [Aobrigatorio]
    property vlcomissao : currency read fvlcomissao write fvlcomissao;
  end;
  TNegociacaoSaidaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TNegociacaoSaida;
    procedure SetItem(Index: Integer; const Value: TNegociacaoSaida);
  public
    function New: TNegociacaoSaida;
    property Items[Index: Integer]: TNegociacaoSaida read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string=_cdnegociacao):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
    function Soma(nmcampo: string): currency;
  end;
  TNegociacaoEntrada = class(TRegistroQuipos)
  private
    fcdnegociacao: integer;
    fvlduplicata: currency;
    fnuduplicata: string;
    fcdnegociacaoentrada: integer;
    fvltotal: currency;
    fvljuros: currency;
    fvlcomissao: currency;
    fcdduplicata: integer;
  public
    [keyfield, AObrigatorio]
    property cdnegociacaoentrada : integer read fcdnegociacaoentrada write fcdnegociacaoentrada;
    [fk, AObrigatorio]
    property cdduplicata : integer read fcdduplicata write fcdduplicata;
    [fk, AObrigatorio]
    property cdnegociacao : integer read fcdnegociacao write fcdnegociacao;
    [AObrigatorio]
    property vlduplicata : currency read fvlduplicata write fvlduplicata;
    [AObrigatorio]
    property vljuros : currency read fvljuros write fvljuros;
    [AObrigatorio]
    property nuduplicata : string read fnuduplicata write fnuduplicata;
    [AObritoario]
    property vltotal : currency read fvltotal write fvltotal;
    [AObrigatorio]
    property vlcomissao : currency read fvlcomissao write fvlcomissao;
  end;
  TNegociacaoEntradaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TNegociacaoEntrada;
    procedure SetItem(Index: Integer; const Value: TNegociacaoEntrada);
  public
    function New: TNegociacaoEntrada;
    property Items[Index: Integer]: TNegociacaoEntrada read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string=_cdnegociacao):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
    procedure verificar_cliente_entrada(cdcliente: LargeInt);
    function Soma(nmcampo:string):currency;
  end;
  TStNegociacao = class(TPersintentObject)
  private
    fnucor: integer;
    fnmstnegociacao: string;
    fboexcluir: string;
    fbogerarinfo: string;
    fbonovo: string;
    fcdstnegociacao: integer;
    fboalterar: string;
  public
    [keyfield]
    property cdstnegociacao : integer read fcdstnegociacao write fcdstnegociacao;
    property nmstnegociacao : string read fnmstnegociacao write fnmstnegociacao;
    property bonovo : string read fbonovo write fbonovo;
    property boalterar : string read fboalterar write fboalterar;
    property boexcluir : string read fboexcluir write fboexcluir;
    property bogerarinfo : string read fbogerarinfo write fbogerarinfo;
    property nucor : integer read fnucor write fnucor;
  end;
  TNegociacao = class(TRegistroQuipos)
  private
    fcdcliente: largeint;
    fcdnegociacao: integer;
    fstnegociacao: TStNegociacao;
    fvlacrescimo: currency;
    fvldesconto: currency;
    fvlentrada: currency;
    fdsobservacao: string;
    fvljuros: currency;
    fvlcomissao: currency;
    fcdstnegociacao: integer;
    fcdrepresentante: integer;
    fvlsaida: currency;
    fdtemissao: TDate;
    fnegociacaoentrada: TNegociacaoEntradaList;
    fnegociacaoSaida: TNegociacaoSaidaList;
    fcliente: TCliente;
    procedure verificar_valor_saida;
    function gerar_duplicata_saida(texto:string):string;
    function processarInterno:boolean;
    function gerar_baixa_entrada(var texto : string):string;
    procedure verificar_status;
  public
    property cliente : TCliente read fcliente write fcliente;
    property negociacaoSaida : TNegociacaoSaidaList read fnegociacaoSaida write fnegociacaoSaida;
    property negociacaoentrada : TNegociacaoEntradaList read fnegociacaoentrada write fnegociacaoentrada;
    property stnegociacao : TStNegociacao read fstnegociacao write fstnegociacao;
    [keyfield, AObrigatorio]
    property cdnegociacao : integer read fcdnegociacao write fcdnegociacao;
    [fk, AObrigatorio]
    property cdcliente : largeint read fcdcliente write fcdcliente;
    [fk, AObrigatorio]
    property cdstnegociacao : integer read fcdstnegociacao write fcdstnegociacao;
    [fk]
    property cdrepresentante : integer read fcdrepresentante write fcdrepresentante;
    [AObrigatorio]
    property dtemissao : TDate read fdtemissao write fdtemissao;
    [AObrigatorio]
    property vlentrada : currency read fvlentrada write fvlentrada;
    [AObrigatorio]
    property vlsaida : currency read fvlsaida write fvlsaida;
    [AObrigatorio]
    property vldesconto : currency read fvldesconto write fvldesconto;
    [AObrigatorio]
    property vljuros : currency read fvljuros write fvljuros;
    [AObrigatorio]
    property vlacrescimo : currency read fvlacrescimo write fvlacrescimo;
    [AObrigatorio]
    property vlcomissao : currency read fvlcomissao write fvlcomissao;
    property dsobservacao : string read fdsobservacao write fdsobservacao;
    constructor create;
    destructor destroy;
    function Processar:boolean;
    function Desfazer:boolean;
  end;

implementation

constructor TNegociacao.create;
begin
  inherited;
  fcliente := TCliente.create;
  fstnegociacao := tstnegociacao.create;
  fnegociacaoentrada := tnegociacaoentradalist.create;
  fnegociacaoSaida := tnegociacaoSaidalist.create;
end;

function TNegociacao.Desfazer: boolean;
var
  sql : TStrings;
  i: Integer;
  duplicata : TDuplicata;
  baixa : tbaixa;
begin
  sql := TStringList.Create;
  try
    for i := 0 to negociacaoSaida.Count - 1 do
    begin
      duplicata := tduplicata.create;
      try
        duplicata.select(negociacaoSaida.Items[i].cdduplicata);
        if RegistroExiste(_itcobranca, 'cdempresa='+empresa.cdempresa.tostring+' and cdduplicata='+duplicata.cdduplicata.ToString) then
        begin
          MessageDlg('Não é possível desfazer a negociação porque o contas a receber '+negociacaoSaida.Items[i].nuduplicata+' faz parte de uma cobrança bancária.', mtInformation, [mbOK], 0);
          abort;
        end;
        negociacaoSaida.Items[i].cdduplicata := 0;
        negociacaoSaida.Items[i].nuduplicata := '';
        sql.add(negociacaoSaida.Items[i].update(true));
        sql.add(duplicata.Delete(true));
      finally
        freeandnil(duplicata);
      end;
    end;
    for I := 0 to negociacaoentrada.count - 1 do
    begin
      baixa := tbaixa.create;
      try
        baixa.Select(_cdnegociacaoentrada+'='+negociacaoentrada.Items[i].cdnegociacaoentrada.ToString);
        sql.add(baixa.delete(true));
      finally
        freeandnil(baixa);
      end;
    end;
    cdstnegociacao := 1;
    sql.Add(update(true));
    result := ExecutaScript(sql);
  finally
    freeandnil(sql);
  end;
end;

destructor TNegociacao.destroy;
begin
  freeandnil(fcliente);
  freeandnil(fstnegociacao);
  freeandnil(fnegociacaoentrada);
  freeandnil(fnegociacaoSaida);
  inherited;
end;

function TNegociacao.gerar_baixa_entrada(var texto : string):string;
var
  baixa : TBaixa;
  I: Integer;
begin
  result := '';
  texto := '';
  for I := 0 to negociacaoentrada.count - 1 do
  begin
    if texto <> '' then
    begin
      texto := texto + ',';
    end;
    texto := texto + negociacaoentrada.Items[i].nuduplicata;
    baixa := tbaixa.create;
    try
      baixa.cdbaixa             := qgerar.gerarcodigo(_baixa);
      //baixa.vlcomissao          := negociacaoentrada.Items[i].vlcomissao;
      baixa.cdnegociacaoentrada := negociacaoentrada.Items[i].cdnegociacaoentrada;
      baixa.cdduplicata         := negociacaoentrada.Items[i].cdduplicata;
      baixa.nubaixa             := negociacaoentrada.Items[i].nuduplicata;
      baixa.dtbaixa             := dtemissao;
      baixa.vlbaixa             := negociacaoentrada.Items[i].vlduplicata;
      baixa.vlliquido           := negociacaoentrada.Items[i].vlduplicata;
      result := result + baixa.insert(true)+#13;
    finally
      freeandnil(baixa);
    end;
  end;
end;

function TNegociacao.gerar_duplicata_saida(texto:string):string;
var
  vlcomissaointerna, vlatual : Currency;
  duplicata : TDuplicata;
  I: Integer;
begin
  result := '';
  vlcomissaointerna := vlcomissao;
  texto := 'Negociação do titulos: '+texto+'.';
  for I := 0 to negociacaoSaida.count - 1 do
  begin
    vlatual           := negociacaosaida.items[i].vlduplicata * 100 / negociacaoentrada.Soma(_vltotal) * negociacaoentrada.Soma(_vlcomissao) / 100;
    vlcomissaointerna := vlcomissaointerna - vlatual;
    duplicata := tduplicata.create;
    try
      duplicata.cdduplicata       := qgerar.GerarCodigo(_duplicata);
      duplicata.dshistorico       := copy(texto, 1, 100);
      duplicata.dsobservacao      := texto;
      duplicata.cdtpcobranca      := negociacaosaida.items[i].cdtpcobranca;
      duplicata.cdnegociacaosaida := negociacaosaida.items[i].cdnegociacaosaida;
      duplicata.cdrepresentante   := negociacaosaida.items[i].cdrepresentante;
      duplicata.cdcliente         := cdcliente;
      duplicata.nuduplicata := 'NG'+cdnegociacao.tostring;
      if negociacaoSaida.count > 1 then
      begin
        duplicata.nuduplicata := duplicata.nuduplicata +'/'+char(i+1+64)
      end;
      duplicata.dtemissao         := dtemissao;
      duplicata.dtvencimento      := negociacaosaida.items[i].dtvencimento;
      duplicata.vlduplicata       := negociacaosaida.items[i].vlduplicata;
      duplicata.vlcomissao        := vlatual;
      duplicata.prmoradiaria      := negociacaosaida.items[i].prmoradiaria;
      duplicata.prmulta           := empresa.financeiro.duplicata.prmulta;
      result := result + duplicata.insert(true)+#13;
      negociacaosaida.items[i].cdduplicata := duplicata.cdduplicata;
      negociacaosaida.items[i].nuduplicata := duplicata.nuduplicata;
      negociacaosaida.items[i].vlcomissao := vlatual;
      result := result + negociacaosaida.items[i].update(true)+#13;
      if (i = negociacaoSaida.count - 1) and (vlcomissaointerna > 0) then
      begin
        duplicata.vlcomissao := duplicata.vlcomissao + vlcomissaointerna;
        result := result + duplicata.Update(true)+#13;
        negociacaosaida.items[i].vlcomissao := negociacaosaida.items[i].vlcomissao + vlcomissaointerna;
        result := result + negociacaoSaida.items[i].Update(true)+#13;
      end;
    finally
      freeandnil(duplicata);
    end;
  end;
end;

function TNegociacao.Processar:boolean;
begin
  verificar_status;
  negociacaoentrada.verificar_cliente_entrada(cdcliente);
  verificar_valor_saida;
  result := processarInterno;
end;

function TNegociacao.processarInterno: boolean;
var
  sql : TStrings;
  texto : string;
begin
  sql := TStringList.Create;
  try
    sql.text := gerar_baixa_entrada(texto);
    sql.text := sql.text + gerar_duplicata_saida(texto);
    cdstnegociacao := 2;
    sql.Add(Update(true));
    result := ExecutaScript(sql);
  finally
    freeandnil(sql);
  end;
end;

procedure TNegociacao.verificar_status;
begin
  if cdstnegociacao <> 1 then
  begin
    MessageDlg('Status da negociação não permite processar a negociação.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TNegociacao.verificar_valor_saida;
begin
  if (negociacaoentrada.Soma(_vltotal) + vlacrescimo - vldesconto) <> negociacaosaida.Soma(_vlduplicata) then
  begin
    MessageDlg('O valor da saída é diferente do valor da entrada.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

function TNegociacaoEntradaList.GetItem(Index: Integer): TNegociacaoEntrada;
begin
  Result := TNegociacaoEntrada(Inherited Items[Index]);
end;

function TNegociacaoEntradaList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not Dataset.Eof do
  begin
    new.Select(Dataset);
    Dataset.Next;
    result := true;
  end;
end;

function TNegociacaoEntradaList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_negociacaoentrada, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TNegociacaoEntradaList.New: TNegociacaoEntrada;
begin
  Result := TNegociacaoEntrada.Create;
  Add(Result);
end;

procedure TNegociacaoEntradaList.SetItem(Index: Integer; const Value: TNegociacaoEntrada);
begin
  Put(Index, Value);
end;

function TNegociacaoEntradaList.Soma(nmcampo: string): currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to count - 1 do
  begin
    if nmcampo = _vltotal then
    begin
      result := result + items[i].vltotal;
    end;
    if nmcampo = _vlcomissao then
    begin
      result := result + items[i].vlcomissao;
    end;
  end;
end;

procedure TNegociacaoEntradaList.verificar_cliente_entrada(cdcliente: LargeInt);
var
  I: Integer;
begin
  for I := 0 to Count - 1do
  begin
    if cdcliente <> qregistro.InteirodoCodigo(_duplicata, Items[i].cdduplicata, _cdcliente) then
    begin
      MessageDlg('O contas a receber '+Items[i].nuduplicata+' não pertence ao mesmo cliente da negociação.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
end;

function TNegociacaoSaidaList.GetItem(Index: Integer): TNegociacaoSaida;
begin
  Result := TNegociacaoSaida(Inherited Items[Index]);
end;

function TNegociacaoSaidaList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not Dataset.Eof do
  begin
    new.Select(Dataset);
    Dataset.Next;
    result := true;
  end;
end;

function TNegociacaoSaidaList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_negociacaoSaida, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TNegociacaoSaidaList.New: TNegociacaoSaida;
begin
  Result := TNegociacaoSaida.Create;
  Add(Result);
end;

procedure TNegociacaoSaidaList.SetItem(Index: Integer; const Value: TNegociacaoSaida);
begin
  Put(Index, Value);
end;

function TNegociacaoSaidaList.Soma(nmcampo: string): currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to count - 1 do
  begin
    if nmcampo = _vlduplicata then
    begin
      result := result + items[i].vlduplicata;
    end;
  end;
end;

end.

unit classeapontamento;

interface

uses
  System.Actions, System.UITypes,
  classes, dialogs, SysUtils, Controls, Contnrs,
  DB,
  ustrings, udatahora, uconstantes, uregistro,
  classeempresa, classeexecutasql, classeregistrainformacao, classeretornasql,
  classequery, classegerar, classemovto, classedao;

type
  TApontamento = class(TRegistroQuipos)
  private
    fboembalagem: string;
    fboempeno: string;
    fboacabamento: string;
    fcdcorrecao: string;
    fborosca: string;
    fbocentralizador: string;
    fbofurosaida: string;
    fboexsudacao: string;
    fborefratariodanificado: string;
    fbopontachumbador: string;
    fboaprovado: string;
    fboidentificacao: string;
    fbobroca: string;
    ftpestado: string;
    fboestanqueidade: string;
    fcdregiaoafetada: String;
    fbotrinca: string;
    fborebarba: string;
    fboflange: string;
    fbocorrecaoeficaz: string;
    fbobolha: string;
    fbosobreposicaomaterial: string;
    fbodimensional: string;
    fboresistenciamecanica: string;
    fbolinhaar: string;
    fbopintura: string;
    fvlunitario: Currency;
    fvltotal: Currency;
    fqtmistura: double;
    fqtvibracao: double;
    fqtaproveitamento: double;
    fqtpeso2: Double;
    fqtsobra2: double;
    fqtduracao: Double;
    fqtrefugo: double;
    fqtsobra: double;
    fqtpeso: double;
    fqtretrabalho: double;
    fqtpeso1: double;
    fqtduracaohorimetro: double;
    fqtagua: double;
    fqtsobra1: double;
    fqtproducao: double;
    fpsmistura: double;
    fqtociosa: Double;
    fqtagua1: Double;
    fqtagua2: double;
    fqttemperatura: double;
    fcdtpparada: integer;
    fnuhorimetroinicial: Integer;
    fcdequipamentoapontamento: integer;
    fcdequipamento: Integer;
    fcdformulacao1: Integer;
    fcdapontamento: integer;
    fcdformulacao2: integer;
    fcdfuncionario: integer;
    fnuhorimetrofinal: integer;
    fcdordproducao: integer;
    fcdformulacao: integer;
    fcditordproducaorecurso: Integer;
    fcdtphoraextra: integer;
    fcdstapontamento: Integer;
    fcdpesagem1: String;
    fnuestrutural: String;
    fcdpesagem: String;
    fcdpesagem2: String;
    fboreaproveitar: string;
    fnuforma: String;
    fqtcomprimento: String; 
    fdsobservacao2: string;
    fdsobservacao: string;
    fdtemissao: TDate;
    fhrfinalhorimetro: TDateTime;
    ftsfim: TDateTime;
    fhrinicialhorimetro: TDateTime;
    ftsinicio: TDateTime;
    fhrinicio: TTime;
    fhrfim: TTime;
    fhrduracao: TTime;
    fhrduracaohorimetro: ttime;
    fhrociosa: TTime;
    fcdreavaliacao: string;
    fboroscaporcaparafuso : string;
    fqtpeca : Double;
    fcdapontamentomanual: Integer;
    fcdproduto: Integer;
    fcddigitado: string;
    Fhrretrabalho: TTime;
    Fnucurva: string;
    Fboavariatransporte: string;
    Fdsoutros: string;
    fnuestruturalantigo: String;
    fcdfuncionarioconferido: integer;
    function removerItordproducaorecurso: string;
    function removerOrdproducao: string;
  public
    sqlbaixa : TStrings;
    [keyfield]
    property cdapontamento : integer read fcdapontamento write fcdapontamento;
    [FK]
    property cdapontamentomanual : Integer read fcdapontamentomanual write fcdapontamentomanual;
    [FK]
    property cdproduto : Integer read fcdproduto write fcdproduto;
    property cddigitado : string read fcddigitado write fcddigitado;
    [FK]
    property cdstapontamento : Integer read fcdstapontamento write fcdstapontamento;
    [FK]
    property cditordproducaorecurso : Integer read fcditordproducaorecurso write fcditordproducaorecurso;
    [FK]
    property cdfuncionario : integer read fcdfuncionario write fcdfuncionario;
    [FK]
    property cdfuncionarioconferido : integer read fcdfuncionarioconferido write fcdfuncionarioconferido;
    [FK]
    property cdequipamento : Integer read fcdequipamento write fcdequipamento;
    [FK]
    property cdordproducao : integer read fcdordproducao write fcdordproducao;
    [FK]
    property cdtphoraextra : integer read fcdtphoraextra write fcdtphoraextra;
    [FK]
    property cdtpparada : integer read fcdtpparada write fcdtpparada;
    property tsfim : TDateTime read ftsfim write ftsfim;
    property tsinicio : TDateTime read ftsinicio write ftsinicio;
    property hrinicio : TTime read fhrinicio write fhrinicio;
    property hrfim : TTime read fhrfim write fhrfim;
    property hrduracao : TTime read fhrduracao write fhrduracao;
    property qtduracao : Double read fqtduracao write fqtduracao;
    property dtemissao : TDate read fdtemissao write fdtemissao;
    property qtproducao : double read fqtproducao write fqtproducao;
    property qtrefugo : double read fqtrefugo write fqtrefugo;
    property dsobservacao : string read fdsobservacao write fdsobservacao;
    property vlunitario : Currency read fvlunitario write fvlunitario;
    property vltotal : Currency read fvltotal write fvltotal;
    property qtretrabalho : double read fqtretrabalho write fqtretrabalho;
    [FK]
    property cdequipamentoapontamento : integer read fcdequipamentoapontamento write fcdequipamentoapontamento;
    property qtvibracao : double read fqtvibracao write fqtvibracao;
    property qttemperatura : double read fqttemperatura write fqttemperatura;
    property cdpesagem : String read fcdpesagem write fcdpesagem;
    property boreaproveitar : string read fboreaproveitar write fboreaproveitar;
    property qtcomprimento : String read fqtcomprimento write fqtcomprimento;
    property qtmistura : double read fqtmistura write fqtmistura;
    property psmistura : double read fpsmistura write fpsmistura;
    property nuestrutural : String read fnuestrutural write fnuestrutural;
    property nuestruturalantigo : String read fnuestruturalantigo write fnuestruturalantigo;
    property nuhorimetroinicial : Integer read fnuhorimetroinicial write fnuhorimetroinicial;
    property nuhorimetrofinal : integer read fnuhorimetrofinal write fnuhorimetrofinal;
    property hrinicialhorimetro : TDateTime read fhrinicialhorimetro write fhrinicialhorimetro;
    property hrfinalhorimetro : TDateTime read fhrfinalhorimetro write fhrfinalhorimetro;
    property hrduracaohorimetro : ttime read fhrduracaohorimetro write fhrduracaohorimetro;
    property qtduracaohorimetro : double read fqtduracaohorimetro write fqtduracaohorimetro;
    property hrociosa : TTime read fhrociosa write fhrociosa;
    property qtociosa : Double read fqtociosa write fqtociosa;
    [FK]
    property cdformulacao : integer read fcdformulacao write fcdformulacao;
    property qtpeso : double read fqtpeso write fqtpeso;
    property qtagua : double read fqtagua write fqtagua;
    property qtsobra : double read fqtsobra write fqtsobra;
    property nuforma : String read fnuforma write fnuforma;
    [FK]
    property cdformulacao1 : Integer read fcdformulacao1 write fcdformulacao1;
    [FK]
    property cdformulacao2 : integer read fcdformulacao2 write fcdformulacao2;
    property cdpesagem1 : String read fcdpesagem1 write fcdpesagem1;
    property cdpesagem2 : String read fcdpesagem2 write fcdpesagem2;
    property qtpeso1 : double read fqtpeso1 write fqtpeso1;
    property qtpeso2 : Double read fqtpeso2 write fqtpeso2;
    property qtagua1 : Double read fqtagua1 write fqtagua1;
    property qtagua2 : double read fqtagua2 write fqtagua2;
    property qtsobra1 : double read fqtsobra1 write fqtsobra1;
    property qtsobra2 : double read fqtsobra2 write fqtsobra2;
    property qtaproveitamento : double read fqtaproveitamento write fqtaproveitamento;
    property borosca : string read fborosca write fborosca;
    property tpestado : string read ftpestado write ftpestado;
    property boestanqueidade : string read fboestanqueidade write fboestanqueidade;
    property boacabamento : string read fboacabamento write fboacabamento;
    property bopintura : string read fbopintura write fbopintura;
    property boembalagem : string read fboembalagem write fboembalagem;
    property boidentificacao : string read fboidentificacao write fboidentificacao;
    property boempeno : string read fboempeno write fboempeno;
    property borebarba : string read fborebarba write fborebarba;
    property bopontachumbador : string read fbopontachumbador write fbopontachumbador;
    property borefratariodanificado : string read fborefratariodanificado write fborefratariodanificado;
    property bodimensional : string read fbodimensional write fbodimensional;
    property bosobreposicaomaterial : string read fbosobreposicaomaterial write fbosobreposicaomaterial;
    property boresistenciamecanica : string read fboresistenciamecanica write fboresistenciamecanica;
    property bobroca : string read fbobroca write fbobroca;
    property botrinca : string read fbotrinca write fbotrinca;
    property bobolha : string read fbobolha write fbobolha;
    property boexsudacao : string read fboexsudacao write fboexsudacao;
    property bocentralizador : string read fbocentralizador write fbocentralizador;
    property bofurosaida : string read fbofurosaida write fbofurosaida;
    property bolinhaar : string read fbolinhaar write fbolinhaar;
    property boflange : string read fboflange write fboflange;
    property cdreavaliacao : string read fcdreavaliacao write fcdreavaliacao;
    property boaprovado : string read fboaprovado write fboaprovado;
    property cdcorrecao : string read fcdcorrecao write fcdcorrecao;
    property cdregiaoafetada : string read fcdregiaoafetada write fcdregiaoafetada;
    property bocorrecaoeficaz : string read fbocorrecaoeficaz write fbocorrecaoeficaz;
    property dsobservacao2 : string read fdsobservacao2 write fdsobservacao2;
    property boroscaporcaparafuso : string read fboroscaporcaparafuso write fboroscaporcaparafuso;
    property qtpeca : Double read fqtpeca write fqtpeca;
    property hrretrabalho : TTime read Fhrretrabalho write Fhrretrabalho;
    property nucurva : string read Fnucurva write Fnucurva;
    property boavariatransporte : string read Fboavariatransporte write Fboavariatransporte;
    property dsoutros : string read Fdsoutros write Fdsoutros;
    constructor Create;
    destructor destroy; override;
    procedure ativarProximaEtapa;
    procedure checkFuncionarioApontamento(codigo:string);
    procedure executarBaixaEstoque;
    function  gerarBaixaEstoque(mtb: TDataset; qtrateio: integer; bofaixa:boolean):boolean;
    function  gerarEntradaProducao:boolean;
    function  removerCodigoOrdproducao(boscript:Boolean=False):string;
    procedure configurarItordproducaorecurso(data:TDate);
    procedure configurarOrdproducao;
    procedure CalcularDuracao;
    class function AjustarDuracao:boolean;
  end;
  TApontamentoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TApontamento;
    procedure SetItem(Index: Integer; const Value: TApontamento);
  public
    function New: TApontamento;
    property Items[Index: Integer]: TApontamento read GetItem write SetItem;
    function Ler(nmcdfield: string; codigo:Integer):Boolean;overload;
    function Ler(sqlwhere: string):Boolean;overload;
    function excluir:Boolean;
    function removerCodigoOrdproducao: Boolean;
    function podeRemoverCodigoOrdproducao:Boolean;
    function podeAplicarCodigoOrdproducao:string;
    function listacdordproducao:string;
    function ObterIndice(campo:string; valor:integer):integer;
  end;

implementation

uses classeordproducao, udlgdatabalanco;

function TApontamento.gerarBaixaEstoque(mtb: TDataset; qtrateio: integer; bofaixa:boolean):boolean;
var
  movto : TMovto;
  function existe_estoque(cdproduto:string; qtitem:double):boolean;
  begin
    result := RegistroExiste(_produto, _cdempresa+'='+empresa.cdempresa.tostring+' '+_and+' '+
                                       _cdproduto+'='+cdproduto+' '+_and+' '+
                                       _qtestoque+'>='+getcurrencys(qtitem));
  end;
begin
  sqlbaixa.clear;
  mtb.First;
  while not mtb.Eof do
  begin
    if not existe_estoque(mtb.fieldbyname(_CDPRODUTO).AsString, mtb.fieldbyname(_qtitem).AsFloat / qtrateio) then
    begin
      messagedlg('Produto '+mtb.fieldbyname(_cdproduto).AsString+' - '+mtb.fieldbyname(_nmproduto).AsString+#13'não possui estoque suficiente para a baixa.', mtinformation, [mbok], 0);
      abort;
    end;
    if bofaixa and (mtb.fieldbyname(_qtfaixai).asfloat > 0) and (mtb.fieldbyname(_qtfaixaf).asfloat > 0) and
       ((mtb.FieldByName(_qtitem).AsFloat/qtrateio < mtb.fieldbyname(_qtfaixai).asfloat) or (mtb.FieldByName(_qtitem).AsFloat/qtrateio < mtb.fieldbyname(_qtfaixaf).asfloat)) then
    begin
      MessageDlg('Produto '+mtb.fieldbyname(_cdproduto).AsString+' - '+mtb.fieldbyname(_nmproduto).AsString+#13'está com a quantidade fora da faixa.', mtInformation, [mbOK], 0);
      Abort;
    end;

    movto := TMovto.create;
    try
      movto.cdmovto                 := QGerar.GerarCodigo(_movto);
      movto.dtemissao := DtBanco;
      movto.cdtpmovto               := 1;
      movto.cdordproducao           := cdordproducao;
      movto.cditordproducaorecurso  := cditordproducaorecurso;
      movto.cditordproducaomaterial := mtb.fieldbyname(_cditordproducaomaterial).AsInteger;
      //sqlbaixa.Add(tmovtodao.Insert(movto, true));
      sqlbaixa.Add(movto.Insert(true));

      movto.ItMovto.New;
      movto.ItMovto.Items[movto.ItMovto.Count-1].cdmovto    := movto.cdmovto;
      movto.ItMovto.Items[movto.ItMovto.Count-1].cditmovto  := QGerar.GerarCodigo(_itmovto);
      movto.ItMovto.Items[movto.ItMovto.Count-1].cdproduto  := mtb.fieldbyname(_cdproduto).AsInteger;
      movto.ItMovto.Items[movto.ItMovto.Count-1].cddigitado := mtb.fieldbyname(_cdproduto).AsString;
      movto.ItMovto.Items[movto.ItMovto.Count-1].qtitem     := mtb.fieldbyname(_qtitem).AsFloat/qtrateio;
      //sqlbaixa.Add(titmovtodao.insert(movto.ItMovto.Items[movto.ItMovto.Count-1], true));
      sqlbaixa.Add(movto.ItMovto.Items[movto.ItMovto.Count-1].Insert(true));
    finally
      FreeAndNil(movto);
    end;

    if mtb.fieldbyname(_cditordproducaomaterial).AsString <> '' then
    begin
      sqlbaixa.Add('update itordproducaomaterial set qtconsumo=qtconsumo+'+getcurrencys(mtb.fieldbyname(_qtitem).AsFloat)+' '+
                   'where cdempresa='+empresa.cdempresa.tostring+' and cditordproducaomaterial='+mtb.fieldbyname(_cditordproducaomaterial).AsString);
    end;
    mtb.Next;
  end;
  result := true;
end;

function TApontamento.gerarEntradaProducao: boolean;
var
  movto : TMovto;
begin
  result := False;
  sqlbaixa.clear;
  movto := tmovto.create;
  try
    movto.cdmovto   := QGerar.GerarCodigo(_movto);
    movto.dtemissao := DtBanco;
    movto.cdtpmovto := 2;
    movto.cdordproducao := cdordproducao;
    movto.cdapontamento := cdapontamento;
    //sqlbaixa.Add(tmovtodao.Insert(movto, true));
    sqlbaixa.Add(movto.Insert(true));

    movto.ItMovto.New;
    movto.ItMovto.Items[0].cdmovto    := movto.cdmovto;
    movto.ItMovto.Items[0].cditmovto  := QGerar.GerarCodigo(_itmovto);
    movto.ItMovto.Items[0].cdproduto  := QRegistro.InteirodoCodigo(_ordproducao, cdordproducao, _cdproduto);
    movto.ItMovto.Items[0].qtitem     := qtproducao;
    movto.ItMovto.Items[0].cddigitado := inttostr(movto.ItMovto.Items[0].cdproduto);
    //sqlbaixa.Add(titmovtodao.Insert(movto.ItMovto.Items[0], true));
    sqlbaixa.Add(movto.ItMovto.Items[0].Insert(true));
    executarBaixaEstoque;
  finally
    FreeAndNil(movto);
  end;
end;

procedure TApontamento.executarBaixaEstoque;
begin
  if sqlbaixa.Count = 0 then
  begin
    exit;
  end;
  ExecutaScript(sqlbaixa);
  sqlbaixa.Clear;
end;

procedure TApontamento.CalcularDuracao;
begin
  if (dtemissao > 0) and (hrinicio > 0) and (hrfim > 0) then
  begin
    tsinicio := dtemissao + hrinicio;
    tsfim := dtemissao + hrfim;
    hrduracao := tsfim - tsinicio;
    qtduracao := get_qtduracao(tsinicio, tsfim);
  end;
end;

procedure TApontamento.checkFuncionarioApontamento(codigo:string);
begin
  if not retornasqlboolean('SELECT FU.BOAPONTAMENTO '+
                           'FROM FUNCIONARIO F '+
                           'INNER JOIN FUNCAO FU ON FU.CDEMPRESA=F.CDEMPRESA AND FU.CDFUNCAO=F.CDFUNCAO '+
                           'WHERE F.CDEMPRESA='+empresa.cdempresa.tostring+' and f.cdfuncionario='+codigo) then
  begin
    messagedlg('Funcionário '+codigo+' não pode apontar.', mtinformation, [mbok], 0);
    abort;
  end;
end;

class function TApontamento.AjustarDuracao: boolean;
var
  dti, dtf : TDate;
  Apontamentos : TApontamentoList;
  I: Integer;
  sql : TStrings;
  itordproducaorecurso : titordproducaorecurso;
begin
  result := False;
  if not dlgDataInicioFinal(dti, dtf) then
  begin
    Exit;
  end;
  apontamentos := tapontamentolist.create;
  sql := tstringlist.create;
  try
   apontamentos.Ler(_dtemissao+' between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' and cdapontamentomanual is not null');
   for I := 0 to apontamentos.count - 1 do
   begin
     apontamentos.Items[i].CalcularDuracao;
     if (apontamentos.Items[i].cditordproducaorecurso <> 0) and (apontamentos.Items[i].cdequipamento = 0) then
     begin
       itordproducaorecurso := titordproducaorecurso.create;
       try
         itordproducaorecurso.Select(apontamentos.Items[i].cditordproducaorecurso);
         apontamentos.Items[i].cdequipamento := qregistro.CodigodoInteiro(_equipamento, itordproducaorecurso.cdtpequipamento, _cdtpequipamento);
         if itordproducaorecurso.cdstitordproducaorecurso <> 4 then
         begin
           itordproducaorecurso.cdstitordproducaorecurso := 4;
           sql.Add(itordproducaorecurso.Update(true));
         end;
       finally
         freeandnil(itordproducaorecurso);
       end;
     end;

     sql.add(apontamentos.items[i].update(true));
   end;
   if sql.count > 0 then
   begin
     result := ExecutaScript(sql);
   end;
  finally
    freeandnil(apontamentos);
    freeandnil(sql);
  end;
end;

procedure TApontamento.ativarProximaEtapa;
var
  cdstatusconcluido, nuproximasequencia, nusequencia : string;
begin
  nusequencia := NomedoCodigo(_itordproducaorecurso, inttostr(cditordproducaorecurso), _nusequencia);
  if RegistroExiste(_itordproducaorecurso, _nusequencia+'='+nusequencia+' '+_and+' '+_cdordproducao+'='+inttostr(cdordproducao)+' '+_and+' '+_cdstitordproducaorecurso+'<>'+_4) then
  begin
    exit;
  end;
  nuproximasequencia := RetornaSQLString('select first 1 nusequencia '+
                                         'from itordproducaorecurso '+
                                         'where cdempresa='+empresa.cdempresa.tostring+' and cdordproducao='+inttostr(cdordproducao)+' '+
                                         'and nusequencia>'+nusequencia+' '+
                                         'order by nusequencia');
  if nuproximasequencia <> '' then
  begin
    ExecutaSQL('update itordproducaorecurso '+
              'set cdstitordproducaorecurso=2 '+
              'where cdempresa='+empresa.cdempresa.tostring+' and cdordproducao='+inttostr(cdordproducao)+' and nusequencia='+nuproximasequencia+' and cdstitordproducaorecurso<>4');
    exit;
  end;
  cdstatusconcluido := qregistro.CodigodoNome(_stordproducao, uppercase(_concluido));
  if cdstatusconcluido <> '' then
  begin
    ExecutaSQL('update ordproducao '+
              'set cdstordproducao='+cdstatusconcluido+' '+
              'where cdempresa='+empresa.cdempresa.tostring+' and cdordproducao='+inttostr(cdordproducao));
  end;
end;

constructor TApontamento.Create;
begin
  inherited create;
  cdstapontamento:= 1;
  cdtphoraextra  := 1;
  tsinicio := tsBanco;
  tsfim := tsBanco;
  hrinicio := hrbanco;
  hrfim := hrbanco;
  qtduracao := 0;
  dtemissao := dtbanco;
  qtproducao := 0;
  qtpeca := 0;
  qtrefugo := 0;
  vlunitario := 0;
  vltotal := 0;
  boreaproveitar := _N;
  sqlbaixa := tstringlist.Create;
end;

destructor TApontamento.destroy;
begin
  freeandnil(sqlbaixa);
  inherited;
end;

function TApontamentoList.excluir: Boolean;
var
  i : Integer;
begin
  for i := 0 to Count - 1 do
  begin
    Items[i].Delete;
  end;
  result := True;
end;

function TApontamentoList.GetItem(Index: Integer): TApontamento;
begin
  Result := TApontamento(Inherited Items[Index]);
end;

function TApontamentoList.Ler(nmcdfield: string; codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_Apontamento, codigo, nmcdfield));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      New.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TApontamentoList.Ler(sqlwhere: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_Apontamento, sqlwhere));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      New.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TApontamentoList.listacdordproducao: string;
var
  i : integer;
begin
  result := '';
  for I := 0 to count - 1 do
  begin
    if items[i].cdordproducao <> 0 then
    begin
      if result <> '' then
      begin
        result := result + ',';
      end;
      result := result + inttostr(items[i].cdordproducao);
    end;
  end;
end;

function TApontamentoList.New: TApontamento;
begin
  Result := TApontamento.Create;
  Add(Result);
end;

function TApontamentoList.ObterIndice(campo: string; valor: integer): integer;
var
  I: Integer;
begin
  result := -1;
  for I := 0 to count - 1 do
  begin
    if items[i].cdapontamento = valor then
    begin
      result := i;
      break;
    end;
  end;
end;

function TApontamentoList.podeAplicarCodigoOrdproducao: string;
var
  i, x : Integer;
  itordproducaorecursolist : TItOrdproducaoRecursoList;
begin
  result := '';
  for i := 0 to Count - 1 do
  begin
    itordproducaorecursolist := TItOrdproducaoRecursoList.Create;
    try
      itordproducaorecursolist.Ler(_cdordproducao, Items[i].cdordproducao);
      for x := 0 to itordproducaorecursolist.Count - 1 do
      begin
        if (itordproducaorecursolist.Items[x].nusequencia < itordproducaorecursolist.getNusequencia(Items[i].cditordproducaorecurso)) and
           (itordproducaorecursolist.Items[x].cdstitordproducaorecurso <> 4) then
        begin
          result := result + 'Produto: '+Items[i].cddigitado+' - Nº Estrutural: '+Items[i].nuestrutural+' na OP '+inttostr(itordproducaorecursolist.Items[x].cdordproducao)+#13;
          Break;
        end;
      end;
    finally
      FreeAndNil(itordproducaorecursolist);
    end;
  end;
end;

function TApontamentoList.podeRemoverCodigoOrdproducao: Boolean;
var
  i, x : Integer;
  itordproducaorecursolist : TItOrdproducaoRecursoList;
  mensagem : string;
begin
  mensagem := '';
  result := True;
  for i := 0 to Count - 1 do
  begin
    itordproducaorecursolist := TItOrdproducaoRecursoList.Create;
    try
      itordproducaorecursolist.Ler(_cdordproducao, Items[i].cdordproducao);
      for x := 0 to itordproducaorecursolist.Count - 1 do
      begin
        if (itordproducaorecursolist.Items[x].nusequencia > itordproducaorecursolist.getNusequencia(Items[i].cditordproducaorecurso)) and (itordproducaorecursolist.Items[x].cdstitordproducaorecurso = 4) then
        begin
          mensagem := mensagem + Items[i].nuestrutural+#13;
          Break;
        end;
      end;
    finally
      FreeAndNil(itordproducaorecursolist);
    end;
  end;
  if mensagem <> '' then
  begin
    ShowMessage('Número(s) Estrutural não pode ser removido fora da sequencia:'#13+mensagem);
    result := False;
  end;
end;

function TApontamentoList.removerCodigoOrdproducao: Boolean;
var
  i : Integer;
  sql : tstrings;
begin
  sql := tstringlist.create;
  try
    for i := 0 to count - 1 do
    begin
      sql.text := sql.text + Items[i].removerCodigoOrdproducao(true);
    end;
    result := ExecutaScript(sql);
  finally
    freeandnil(sql);
  end;
end;

procedure TApontamentoList.SetItem(Index: Integer; const Value: TApontamento);
begin
  Put(Index, Value);
end;

function TApontamento.removerItordproducaorecurso:string;
var
  itordproducaorecurso : TItOrdProducaoRecurso;
begin
  result := '';
  itordproducaorecurso := TItOrdProducaoRecurso.create;
  try
    if itordproducaorecurso.Select(cditordproducaorecurso) then
    begin
      itordproducaorecurso.dttermino := 0;
      itordproducaorecurso.hrtermino := 0;
      itordproducaorecurso.hrinicio  := 0;
      itordproducaorecurso.dtinicio  := 0;
      itordproducaorecurso.cdstitordproducaorecurso := 1;
      result := itordproducaorecurso.Update(true)+#13;
    end;
  finally
    FreeAndNil(itordproducaorecurso);
  end;
end;

function TApontamento.removerOrdproducao:string;
var
  ordproducao : tordproducao;
  p, x, i : Integer;
begin
  ordproducao := tordproducao.create;
  try
    if ordproducao.Select(cdordproducao) then
    begin
      if ordproducao.nuestruturalSomenteNesteApontamento(cdapontamento) then
      begin
        ordproducao.nuestrutural    := '';
        ordproducao.cdtpequipamento := 0;
      end
      else
      begin
        ordproducao.ItOrdProducaoRecurso.Ler(_cdordproducao, ordproducao.cdordproducao);
        for i := 0 to ordproducao.ItOrdProducaoRecurso.count - 1 do
        begin
          if ordproducao.ItOrdProducaoRecurso.Items[i].cditordproducaorecurso = cditordproducaorecurso then
          begin
            if ordproducao.cdtpequipamento = ordproducao.ItOrdProducaoRecurso.Items[i].cdtpequipamento then
            begin
              p := -1;
              for x := 0 to ordproducao.ItOrdProducaoRecurso.count-1 do
              begin
                if (ordproducao.ItOrdProducaoRecurso.Items[x].cdstitordproducaorecurso = 4) and (ordproducao.ItOrdProducaoRecurso.Items[x].nusequencia < ordproducao.ItOrdProducaoRecurso.Items[i].nusequencia) then
                begin
                  if p = -1 then
                  begin
                    p := x;
                  end;
                  if ordproducao.ItOrdProducaoRecurso.Items[x].nusequencia > ordproducao.ItOrdProducaoRecurso.Items[p].nusequencia then
                  begin
                    p := x;
                  end;
                end;
              end;
              if p > -1 then
              begin
                ordproducao.cdtpequipamento := ordproducao.ItOrdProducaoRecurso.Items[p].cdtpequipamento;
              end;
            end;
          end;
        end;
      end;
      result := ordproducao.Update(true)+#13;
    end;
  finally
    FreeAndNil(ordproducao);
  end;
end;

function TApontamento.removerCodigoOrdproducao(boscript:Boolean=False): string;
var
  sql : tstrings;
begin
  result := '';
  if cdordproducao = 0 then
  begin
    Exit;
  end;
  sql := tstringlist.create;
  try
    sql.text := sql.text + removerItordproducaorecurso + removerOrdproducao;
    cdordproducao := 0;
    cditordproducaorecurso := 0;
    sql.Add(Update(true));
    result := sql.text;
    if not boscript then
    begin
      ExecutaScript(sql);
    end;
  finally
    freeandnil(sql);
  end;
end;

procedure TApontamento.configurarItordproducaorecurso(data:TDate);
var
  itordproducaorecurso : TItOrdProducaoRecurso;
begin
  if cditordproducaorecurso = 0 then
  begin
    Exit;
  end;
  itordproducaorecurso := TItOrdProducaoRecurso.create;
  try
    itordproducaorecurso.Select(cditordproducaorecurso);
    itordproducaorecurso.dttermino                := dtemissao;
    itordproducaorecurso.hrtermino                := hrfim;
    itordproducaorecurso.dtinicio                 := dtemissao;
    itordproducaorecurso.hrinicio                 := hrinicio;
    itordproducaorecurso.cdstitordproducaorecurso := 4;
    itordproducaorecurso.Update(False, Data);
  finally
    FreeAndNil(itordproducaorecurso);
  end;
end;

procedure TApontamento.configurarOrdproducao;
var
  ordproducao : TOrdProducao;
begin
  ordproducao := TOrdProducao.create;
  try
    if ordproducao.Select(cdordproducao) then
    begin
      ordproducao.nuestrutural    := nuestrutural;
      ordproducao.cdtpequipamento := QRegistro.InteirodoCodigo(_itordproducaorecurso, cditordproducaorecurso, _cdtpequipamento);
      ordproducao.Update;
    end;
  finally
    FreeAndNil(ordproducao);
  end;
end;

end.

unit classeautpagto;

interface

uses
  system.classes, sysutils, db, Contnrs, DateUtils,
  uconstantes, uRegistro, udatahora,
  classeRetornaSql, classeusuario, classeaplicacao, classeempresa, classegerar,
  classequery, classedao, classecondpagto;

type
  TAutPagto = class(TRegistroQuipos)
  private
    Fprmulta: double;
    Fvlacrescimo: currency;
    Fvldesconto: currency;
    Fdsparcela: string;
    Fdshistorico: string;
    Fdsobservacao: string;
    Fcdusuarioaprovacao: integer;
    Fcdplconta: integer;
    Fcdfornecedor: largeint;
    Fcdautpagto: integer;
    Fboimpressa: string;
    Fcdconta: integer;
    Ftsaprovacao: TTimeStamp;
    Fvlbaixa: currency;
    Fdtentrada: TDate;
    Fvljuros: currency;
    Fvlmulta: currency;
    Fvlabatimento: currency;
    Fvldevolucao: currency;
    Fboenviado: string;
    Fvlprevisto: currency;
    Fcdtpcobranca: integer;
    Fnuplconta: string;
    Fvlrecebido: currency;
    Fvlautpagto: currency;
    Fnuautpagto: string;
    Fprmoradiaria: double;
    Fcdcomputadoraprovacao: integer;
    Fvlsaldo: currency;
    Fdtbaixa: TDate;
    Fdtvencimento: TDate;
    Fcdentrada: integer;
    Fvldeducao: currency;
    Fdtprorrogacao: TDate;
    Fcdcntcusto: integer;
    Fcdtppagamento: integer;
    Fdtemissao: TDate;
    Fcdusuariobaixa: integer;
    Fcdstautpagto: integer;
    Fnucntcusto: string;
    fborateiocntcusto: string;
    fborateioplconta: string;
  public
    [keyfield]
    property cdautpagto : integer read Fcdautpagto write Fcdautpagto;
    [fk]
    property cdfornecedor : largeint read Fcdfornecedor write Fcdfornecedor;
    [fk]
    property cdstautpagto : integer read Fcdstautpagto write Fcdstautpagto;
    [fk]
    property cdtppagamento : integer read Fcdtppagamento write Fcdtppagamento;
    [fk]
    property cdentrada : integer read Fcdentrada write Fcdentrada;
    [fk]
    property cdcntcusto : integer read Fcdcntcusto write Fcdcntcusto;
    property nucntcusto : string read Fnucntcusto write Fnucntcusto;
    [fk]
    property cdtpcobranca : integer read Fcdtpcobranca write Fcdtpcobranca;
    [fk]
    property cdplconta : integer read Fcdplconta write Fcdplconta;
    [fk]
    property cdusuariobaixa : integer read Fcdusuariobaixa write Fcdusuariobaixa;
    [fk]
    property cdconta : integer read Fcdconta write Fcdconta;
    property nuautpagto : string read Fnuautpagto write Fnuautpagto;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property dtvencimento : TDate read Fdtvencimento write Fdtvencimento;
    property dtprorrogacao : TDate read Fdtprorrogacao write Fdtprorrogacao;
    property vlautpagto : currency read Fvlautpagto write Fvlautpagto;
    property prmoradiaria : double read Fprmoradiaria write Fprmoradiaria;
    property dshistorico : string read Fdshistorico write Fdshistorico;
    property dtbaixa : TDate read Fdtbaixa write Fdtbaixa;
    property vlbaixa : currency read Fvlbaixa write Fvlbaixa;
    property vlprevisto : currency read Fvlprevisto write Fvlprevisto;
    property vldesconto : currency read Fvldesconto write Fvldesconto;
    property prmulta : double read Fprmulta write Fprmulta;
    property vlmulta : currency read Fvlmulta write Fvlmulta;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property vldevolucao : currency read Fvldevolucao write Fvldevolucao;
    property vlabatimento : currency read Fvlabatimento write Fvlabatimento;
    property vlsaldo : currency read Fvlsaldo write Fvlsaldo;
    property vldeducao : currency read Fvldeducao write Fvldeducao;
    property vlacrescimo : currency read Fvlacrescimo write Fvlacrescimo;
    property vljuros : currency read Fvljuros write Fvljuros;
    property vlrecebido : currency read Fvlrecebido write Fvlrecebido;
    property boenviado : string read Fboenviado write Fboenviado;
    property boimpressa : string read Fboimpressa write Fboimpressa;
    property nuplconta : string read Fnuplconta write Fnuplconta;
    property dsparcela : string read Fdsparcela write Fdsparcela;
    property dtentrada : TDate read Fdtentrada write Fdtentrada;
    property cdusuarioaprovacao : integer read Fcdusuarioaprovacao write Fcdusuarioaprovacao;
    property tsaprovacao : TTimeStamp read Ftsaprovacao write Ftsaprovacao;
    property cdcomputadoraprovacao : integer read Fcdcomputadoraprovacao write Fcdcomputadoraprovacao;
    property borateiocntcusto : string read fborateiocntcusto write fborateiocntcusto;
    property borateioplconta : string read fborateioplconta write fborateioplconta;
    procedure RegistrarHistoricoAprovacao(cdautpagto, cdtipo:string);
    function Insert(boscript:boolean=false): String;
  end;
  TautpagtoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Tautpagto;
    procedure SetItem(Index: Integer; const Value: Tautpagto);
  public
    function New: Tautpagto;
    property Items[Index: Integer]: Tautpagto read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
    function getcdcondpagto: integer;
  end;

implementation

function TAutPagto.Insert(boscript: boolean): String;
begin
  if cdautpagto = 0 then
  begin
    cdautpagto := qgerar.GerarCodigo(_autpagto);
  end;
  if nuautpagto = '' then
  begin
    nuautpagto := inttostr(cdautpagto);
  end;
  if (cdplconta <> 0) and (nuplconta = '') then
  begin
    nuplconta  := qregistro.StringdoCodigo(_plconta, cdplconta, _nunivel);
  end;
  if dtemissao = 0 then
  begin
    dtemissao := DtBanco;
  end;
  if dtentrada = 0 then
  begin
    dtentrada := dtemissao;
  end;
  if dtvencimento = 0 then
  begin
    dtvencimento := dtemissao;
  end;
  if dtprorrogacao = 0 then
  begin
    dtprorrogacao := dtemissao;
  end;
  vlsaldo := vlautpagto;
  vlbaixa := 0;
  vlprevisto := 0;
  vldesconto := 0;
  vlmulta := 0;
  vldevolucao := 0;
  vlabatimento := 0;
  vldeducao := 0;
  vlacrescimo := 0;
  vljuros := 0;
  vlrecebido := 0;
  prmoradiaria := 0;
  prmulta := 0;
  cdstautpagto := 1;
  result := inherited insert(boscript);
end;

procedure TAutPagto.RegistrarHistoricoAprovacao(cdautpagto, cdtipo: string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(QRetornaSQL.get_select_from(_HAPROVACAOAUTPAGTO, _0), true);
  try
    q.q.Insert;
    q.q.FieldByName(_cdempresa).AsLargeInt                  := empresa.cdempresa;
    q.q.FieldByName(_cdhaprovacaoautpagto).AsString := GerarCodigo(_h+_aprovacao+_autpagto);
    q.q.FieldByName(_cdautpagto).AsString                 := cdautpagto;
    q.q.FieldByName(_cdautpagto).AsString                 := cdautpagto;
    q.q.FieldByName(_cdusuario).AsInteger := usuario.cdusuario;
    q.q.FieldByName(_cdcomputador).AsString               := vgcdcomputador;
    q.q.FieldByName(_tsaprovacao).AsDateTime              := tsBanco;
    q.q.FieldByName(_cdtipo).AsString                     := cdtipo;
    q.q.Post;
  finally
    freeandnil(q);
  end;
end;

{ TautpagtoList }

function TautpagtoList.getcdcondpagto: integer;
var
  i : integer;
  itcondpagto : titcondpagtoList;
  sql : string;
  q : tclassequery;
  function makesql(nudias:string):string;
  begin
    result := 'select cdcondpagto from itcondpagto where cdempresa='+empresa.cdempresa.ToString+' and nudias in ('+nudias+') ';
    if q.q.active then
    begin
      while not q.q.eof do
      begin
        if q.q.recno = 1 then
        begin
          result := result + 'and cdcondpato in (';
        end
        else
        begin
          result := result + ',';
        end;
        result := result + q.q.fieldbyname(_cdcondpagto).asstring;
        q.q.next;
      end;
      if q.q.recordcount > 0 then
      begin
        result := result + ')';
      end;
    end;
    result := result + ' group by cdcondpagto having count(*)='+inttostr(count);
  end;
begin
  result := 0;
  itcondpagto := titcondpagtoList.create;
  q := TClasseQuery.create;
  try
    for I := 0 to count - 1 do
    begin
      with itcondpagto.New do
      begin
        nudias := DaysBetween(items[i].dtvencimento, items[i].dtemissao);
        sql := makesql(itcondpagto.getNudiasAcumulado);
        q.q.close;
        q.q.open(sql);
      end;
    end;
    if q.q.active then
    begin
      result := q.q.fieldbyname(_cdcondpagto).asinteger;
    end;
  finally
    freeandnil(itcondpagto);
  end;
end;

function TautpagtoList.GetItem(Index: Integer): Tautpagto;
begin
  Result := TAutpagto(Inherited Items[Index]);
end;

function TautpagtoList.Ler(DataSet: TDataset):boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TautpagtoList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_autpagto, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TautpagtoList.New: Tautpagto;
begin
  Result := TAutPagto.Create;
  Add(Result);
end;

procedure TautpagtoList.SetItem(Index: Integer; const Value: Tautpagto);
begin
  Put(Index, Value);
end;

end.

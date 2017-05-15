unit classerequisicaoproducao;

interface

uses
  Contnrs, Forms, Classes, sysutils, ExtCtrls, Controls,
  uconstantes, udatahora, ustrings, uRegistro, uprogressbar,
  classeordproducao, classequery, classeaplicacao, classeempresa, classeregistrainformacao, classeproduto,
  classegerar, classeexecutasql, classeretornasql, classedao;

Type
  TItRequisicaoProducao = class(TRegistroQuipos)
  private
    Fqtproducao: Double;
    Fqtitem: Double;
    Fcdproduto: Integer;
    Fcdrequisicaoproducao: Integer;
    Fcditorcamento: Integer;
    Fcditrequisicaoproducao: Integer;
    Fcddigitado: string;
    Fdsobservacao: string;
    Fdtprventrega: TDate;
    Fproduto: TProduto;
    function Gerar(cdtpordproducao: integer): integer;
    function Gerarpesagem(cditem, cdtpordproducao: Integer): integer;
  public
    property produto : TProduto read Fproduto write Fproduto;
    [keyfield]
    property cditrequisicaoproducao : Integer read Fcditrequisicaoproducao write Fcditrequisicaoproducao;
    [fk]
    property cdrequisicaoproducao : Integer read Fcdrequisicaoproducao write Fcdrequisicaoproducao;
    [fk]
    property cdproduto : Integer read Fcdproduto write Fcdproduto;
    property cddigitado : string read Fcddigitado write Fcddigitado;
    property qtitem : Double read Fqtitem write Fqtitem;
    property qtproducao : Double read Fqtproducao write Fqtproducao;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    [fk]
    property cditorcamento : Integer read Fcditorcamento write Fcditorcamento;
    property dtprventrega : TDate read Fdtprventrega write Fdtprventrega;
    function GerarOrdemProducao(cdtpordproducao: integer):Integer;
    constructor create;
    destructor destroy; override;
  end;
  TItrequisicaoproducaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItrequisicaoproducao;
    procedure SetItem(Index: Integer; const Value: TItrequisicaoproducao);
  public
    function New: TItrequisicaoproducao;
    property Items[Index: Integer]: TItrequisicaoproducao read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
  end;
  TSTRequisicaoProducao = class(TRegistroQuipos)
  private
    Fboexcluir: string;
    Fbogerarinfo: string;
    Fbonotificarsetorsolicitante: string;
    Fbonotificarsolicitante: string;
    Fbonotificarresponsavel: string;
    Fboalterar: string;
    Fbonovo: string;
    Fbonotificarsetorresponsavel: string;
    Fcdstrequisicaoproducao: Integer;
    Fnmstrequisicaoproducao: String;
    Fnucor: Integer;
  public
    [keyfield]
    property cdstrequisicaoproducao : Integer read Fcdstrequisicaoproducao write Fcdstrequisicaoproducao;
    property nmstrequisicaoproducao : String read Fnmstrequisicaoproducao write Fnmstrequisicaoproducao;
    property bonovo : string read Fbonovo write Fbonovo;
    property boexcluir : string read Fboexcluir write Fboexcluir;
    property boalterar : string read Fboalterar write Fboalterar;
    property bogerarinfo : string read Fbogerarinfo write Fbogerarinfo;
    property nucor : Integer read Fnucor write Fnucor;
    property bonotificarresponsavel : string read Fbonotificarresponsavel write Fbonotificarresponsavel;
    property bonotificarsolicitante : string read Fbonotificarsolicitante write Fbonotificarsolicitante;
    property bonotificarsetorresponsavel : string read Fbonotificarsetorresponsavel write Fbonotificarsetorresponsavel;
    property bonotificarsetorsolicitante : string read Fbonotificarsetorsolicitante write Fbonotificarsetorsolicitante;
  end;
  TTPRequisicaoProducao = class(TRegistroQuipos)
  private
    Fbojustificativastatus: string;
    Fcdtpordproducao: Integer;
    Fcdtprequisicaoproducao: Integer;
    Fcdfuncionario: Integer;
    Fnmtprequisicaoproducao: string;
  public
    [keyfield]
    property cdtprequisicaoproducao : Integer read Fcdtprequisicaoproducao write Fcdtprequisicaoproducao;
    property nmtprequisicaoproducao : string read Fnmtprequisicaoproducao write Fnmtprequisicaoproducao;
    [fk]
    property cdtpordproducao : Integer read Fcdtpordproducao write Fcdtpordproducao;
    [fk]
    property cdfuncionario : Integer read Fcdfuncionario write Fcdfuncionario;
    property bojustificativastatus : string read Fbojustificativastatus write Fbojustificativastatus;
  end;
  TRequisicaoProducao = class(TRegistroQuipos)
  private
    Fqtproducao: Double;
    Fqtitem: Double;
    Fcdstrequisicaoproducao: Integer;
    Fcdtprequisicaoproducao: Integer;
    Fcdfuncionariosolicitante: Integer;
    Fcdrequisicaoproducao: Integer;
    Fcdfuncionario: Integer;
    Fdsjustificativa: string;
    Fdsobservacao: string;
    Fdtemissao: TDate;
    Fdtprventrega: TDate;
    Fdtprevisao: TDate;
    Ftprequisicaoproducao: TTPRequisicaoProducao;
    Fstrequisicaoproducao: TSTRequisicaoProducao;
    FItrequisicaoproducao: TItrequisicaoproducaoList;
  public
    property Itrequisicaoproducao : TItrequisicaoproducaoList read FItrequisicaoproducao write FItrequisicaoproducao;
    property strequisicaoproducao : TSTRequisicaoProducao read Fstrequisicaoproducao write Fstrequisicaoproducao;
    property tprequisicaoproducao : TTPRequisicaoProducao read Ftprequisicaoproducao write Ftprequisicaoproducao;
    [keyfield]
    property cdrequisicaoproducao : Integer read Fcdrequisicaoproducao write Fcdrequisicaoproducao;
    [fk]
    property cdfuncionario : Integer read Fcdfuncionario write Fcdfuncionario;
    [fk]
    property cdstrequisicaoproducao : Integer read Fcdstrequisicaoproducao write Fcdstrequisicaoproducao;
    [fk]
    property cdtprequisicaoproducao : Integer read Fcdtprequisicaoproducao write Fcdtprequisicaoproducao;
    [fk]
    property cdfuncionariosolicitante : Integer read Fcdfuncionariosolicitante write Fcdfuncionariosolicitante;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property dtprventrega : TDate read Fdtprventrega write Fdtprventrega;
    property qtitem : Double read Fqtitem write Fqtitem;
    property qtproducao : Double read Fqtproducao write Fqtproducao;
    property dtprevisao : TDate read Fdtprevisao write Fdtprevisao;
    property dsjustificativa : string read Fdsjustificativa write Fdsjustificativa;
    constructor create;
    destructor destroy; override;
  end;

implementation

uses ClasseFormulacao;

constructor TRequisicaoProducao.create;
begin
  inherited;
  FItrequisicaoproducao := TItrequisicaoproducaoList.Create;
  Ftprequisicaoproducao := ttprequisicaoproducao.create;
  Fstrequisicaoproducao := tstrequisicaoproducao.create;
end;

destructor TRequisicaoProducao.destroy;
begin
  FreeAndNil(ftprequisicaoproducao);
  FreeAndNil(fstrequisicaoproducao);
  FreeAndNil(fitrequisicaoproducao);
  inherited;
end;

constructor TItRequisicaoProducao.create;
begin
  inherited;
  fproduto := TProduto.create;
end;

destructor TItRequisicaoProducao.destroy;
begin
  FreeAndNil(fproduto);
  inherited;
end;

function TItRequisicaoProducao.Gerar(cdtpordproducao: integer): integer;
var
  qtd, qttotal, qtunidade : Double;
  ordproducao : TOrdProducao;
begin
  frmprogressbar := Tfrmprogressbar.Create(nil);
  ordproducao    := TOrdProducao.create;
  try
    qtd     := qtitem;
    qttotal := qtd;
    if produto.tpqtitem = _s then
    begin
      qtd := 1;
    end;
    qtunidade := 0;
    frmprogressbar.gau.MaxValue := Trunc(qttotal);
    frmprogressbar.Show;
    repeat
      frmprogressbar.gau.Progress := Trunc(qtunidade);
      Application.ProcessMessages;
      result    := ordproducao.GerarOrdProducaoRequisicaoproducao(cditrequisicaoproducao, cdtpordproducao, qtd);
      qtunidade := qtunidade + qtd;
    until qtunidade >= qttotal;
  finally
    FreeAndNil(frmprogressbar);
    FreeAndNil(ordproducao);
  end;
end;

function TItRequisicaoProducao.Gerarpesagem(cditem, cdtpordproducao: Integer): integer;
var
  qttotal : Double;
  qtunidade : Double;
  qtmistura : double;
  qtd : Double;
  ordproducao : TOrdProducao;
  formulacaolist : TformulacaoList;
  i : Integer;
begin
  result         := 0;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  formulacaolist := tformulacaolist.Create;
  try
    qtd     := qtitem;
    qttotal := qtd;
    if produto.tpqtitem = _S then
    begin
      qtd := 1;
    end;
    qtunidade := 0;
    produto.produtoformulacao.Ler(cdproduto);
    for i := 0 to produto.produtoformulacao.Count - 1 do
    begin
      formulacaolist.New.Select(_cdformulacao+'='+produto.produtoformulacao.Items[i].cdformulacao.ToString+' and '+_cdstformulacao+'=1');
    end;
    frmprogressbar.gau.MaxValue := Trunc(qttotal);
    frmprogressbar.Show;
    repeat
      frmprogressbar.gau.MaxValue := Trunc(qttotal);
      frmprogressbar.gau.Progress := Trunc(qtunidade);
      Application.ProcessMessages;
      for i := 0 to formulacaolist.Count - 1 do
      begin
        if produto.tpqtitem = _p then
        begin
          qttotal                     := qtitem * produto.prqtitem; // 1000
          qtd                         := formulacaolist.Items[i].qtpeso; // 101.5
          frmprogressbar.gau.MaxValue := Trunc(qtd);
          while qttotal > 0 do
          begin
            frmprogressbar.gau.Progress := Trunc(qttotal);
            Application.ProcessMessages;
            ordproducao := tordproducao.create;
            try
              ordproducao.GerarOrdProducaoRequisicaoproducao(cditem, cdtpordproducao, 1, formulacaolist.Items[i].cdformulacao);
              result := ordproducao.cdordproducao;
            finally
              FreeAndNil(ordproducao);
            end;
            qttotal := qttotal - qtd;
          end;
        end
        else
        begin
          qtmistura := formulacaolist.Items[i].qtmistura;
          while qtmistura > 0 do
          begin
            ordproducao    := tordproducao.create;
            try
              ordproducao.GerarOrdProducaoRequisicaoproducao(cditem, cdtpordproducao, qtd, formulacaolist.Items[i].cdformulacao);
              result := ordproducao.cdordproducao;
            finally
              FreeAndNil(ordproducao);
            end;
            qtmistura := qtmistura - 1;
          end;
        end;
      end;
      qtunidade := qtunidade + qtd;
    until qtunidade >= qttotal;
  finally
    FreeAndNil(frmprogressbar);
    FreeAndNil(formulacaolist);
  end;
end;

function TItRequisicaoProducao.GerarOrdemProducao(cdtpordproducao: integer): Integer;
begin
  result := 0;
  if not tordproducao.JaExisteOrdproducao(_requisicaoproducao, cditrequisicaoproducao) then
  begin
    produto.Select(cdproduto);
    result := Gerar(cdtpordproducao);
    if tproduto.possuiFormulacao(cdproduto) and (ttpordproducao.getCdtpordproducaopesagem <> 0) then
    begin
      gerarpesagem(cditrequisicaoproducao, ttpordproducao.getCdtpordproducaopesagem);
    end;
  end;
end;

function TItrequisicaoproducaoList.GetItem(Index: Integer): TItrequisicaoproducao;
begin
  Result := TItrequisicaoproducao(Inherited Items[Index]);
end;

function TItrequisicaoproducaoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itrequisicaoproducao, codigo, _cdrequisicaoproducao));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TItrequisicaoproducaoList.New: TItrequisicaoproducao;
begin
  Result := TItrequisicaoproducao.Create;
  Add(Result);
end;

procedure TItrequisicaoproducaoList.SetItem(Index: Integer; const Value: TItrequisicaoproducao);
begin
  Put(Index, Value);
end;

end.

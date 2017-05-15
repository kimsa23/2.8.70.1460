unit ClasseTpCorrecao;

interface

uses sysutils, Controls, Contnrs, Classes, Data.DB,
  uconstantes, uRegistro, ustrings,
  classeretornasql, classequery, classecontrato, classeexecutasql, classeduplicata, classedao;

type
  TItTpCorrecao = class(TRegistroQuipos)
  private
    Fprjuro: Double;
    Fcdtpcorrecao: Integer;
    Fcdittpcorrecao: Integer;
    Fdtemissao: TDate;
    Fboreajustado: string;
  public
    [keyfield]
    property cdittpcorrecao : Integer read Fcdittpcorrecao write fcdittpcorrecao;
    [fk]
    property cdtpcorrecao : Integer read Fcdtpcorrecao write fcdtpcorrecao;
    property dtemissao : TDate read Fdtemissao write fdtemissao;
    property prjuro : Double read Fprjuro write fprjuro;
    property boreajustado : string read Fboreajustado write fboreajustado;
    function realizar_ajuste:Boolean;
  end;
  TIttpcorrecaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TIttpcorrecao;
    procedure SetItem(Index: Integer; const Value: TIttpcorrecao);
  public
    function New: TIttpcorrecao;
    property Items[Index: Integer]: TIttpcorrecao read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean; overload;
    function Ler(Dataset:TDataset):boolean; overload;
    function Reajustar:Boolean;
  end;
  TTpCorrecao = class(TRegistroQuipos)
  private
    Fcdtpcorrecao: Integer;
    Fnmtpcorrecao: string;
    Fittpcorrecao: TItTpCorrecaoList;
  public
    property ittpcorrecao : TItTpCorrecaoList read Fittpcorrecao write fittpcorrecao;
    [keyfield]
    property cdtpcorrecao : Integer read Fcdtpcorrecao write fcdtpcorrecao;
    property nmtpcorrecao : string read Fnmtpcorrecao write fnmtpcorrecao;
    constructor create;
    destructor destroy; override;
    function Reajustar:Boolean;
  end;

implementation

constructor TTpCorrecao.create;
begin
  inherited;
  fittpcorrecao := tittpcorrecaolist.create;
end;

destructor TTpCorrecao.destroy;
begin
  freeandnil(fittpcorrecao);
  inherited;
end;

function TTpCorrecao.Reajustar: Boolean;
begin
  result := ittpcorrecao.reajustar;
end;

function TIttpcorrecaoList.GetItem(Index: Integer): TIttpcorrecao;
begin
  Result := TIttpcorrecao(Inherited Items[Index]);
end;

function TIttpcorrecaoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_ittpcorrecao, codigo, _cdtpcorrecao));
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

function TIttpcorrecaoList.Ler(Dataset: TDataset): boolean;
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

function TIttpcorrecaoList.New: TIttpcorrecao;
begin
  Result := TIttpcorrecao.Create;
  Add(Result);
end;

function TIttpcorrecaoList.Reajustar: Boolean;
var
  i : Integer;
begin
  result := False;
  for i := 0 to count-1 do
  begin
    if Items[i].boreajustado <> _s then
    begin
      result := Items[i].realizar_ajuste;
    end;
  end;
end;

procedure TIttpcorrecaoList.SetItem(Index: Integer; const Value: TIttpcorrecao);
begin
  Put(Index, Value);
end;

{ TIttpcorrecaoDAO }

function TItTpCorrecao.realizar_ajuste: Boolean;
var
  indice, x, i : Integer;
  itcontratonegociacaolist : TItContratoNegociacaoList;
  itcontratonegociacao : TItContratoNegociacao;
  sql : TStrings;
begin
  itcontratonegociacaolist := TItContratoNegociacaoList.Create;
  itcontratonegociacao     := TItContratoNegociacao.create;
  sql := tstringlist.Create;
  try
    itcontratonegociacaolist.Ler('cdtpcorrecao='+inttostr(cdtpcorrecao)+' and dtemissao<='+getdtbanco(dtemissao)+' and dttermino>='+getdtbanco(dtemissao)+' and boativo=''S'''); // ler todas as negociacoes
    for i := 0 to itcontratonegociacaolist.count - 1 do
    begin
      indice := itcontratonegociacaolist.Items[i].ItContratoParcela.indice_parcela_data_superitor(dtemissao);
      if indice = 0  then
      begin
        Continue;
      end;
      // atribuir dados para negociacao provisoria
      itcontratonegociacao.vlsaldo                := (itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice].vlsaldodevedor * prjuro / 100) + itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice].vlsaldodevedor;
      itcontratonegociacao.dtemissao              := itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice].dtparcela;
      itcontratonegociacao.nudia                  := itcontratonegociacaolist.Items[i].nudia;
      itcontratonegociacao.prjuro                 := itcontratonegociacaolist.Items[i].prjuro;
      itcontratonegociacao.nmitcontratonegociacao := itcontratonegociacaolist.Items[i].nmitcontratonegociacao;
      itcontratonegociacao.nuparcelas             := itcontratonegociacaolist.Items[i].nuparcelas-(indice + 1);
      itcontratonegociacao.vlparcela              := 0;
      itcontratonegociacao.boativo                := _S;
      itcontratonegociacao.ItContratoParcela.Clear;
      // gerar parcelas
      itcontratonegociacao.gerar_parcelas;

      itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice].prcorrecao               := prjuro;
      itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice].vlsaldodevedorreajustado := itcontratonegociacao.vlsaldo;
      itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice].vlreajuste               := itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice].vlsaldodevedor * prjuro / 100;
      sql.Add(itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice].Update(true));
      for x := 0 to itcontratonegociacao.ItContratoParcela.Count - 1 do
      begin
         // atribuir do provisorio para o fixo
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].vlparcela        := itcontratonegociacao.ItContratoParcela.Items[x].vlparcela;
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].vlsaldo          := itcontratonegociacao.ItContratoParcela.Items[x].vlsaldo;
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].vljuros          := itcontratonegociacao.ItContratoParcela.Items[x].vljuros;
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].VLJUROSADICIONAL := itcontratonegociacao.ItContratoParcela.Items[x].VLJUROSADICIONAL;
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].VLSALDOCORRIGIDO := itcontratonegociacao.ItContratoParcela.Items[x].VLSALDOCORRIGIDO;
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].VLAMORTIZACAO    := itcontratonegociacao.ItContratoParcela.Items[x].VLAMORTIZACAO;
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].VLSALDODEVEDOR   := itcontratonegociacao.ItContratoParcela.Items[x].VLSALDODEVEDOR;
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].PRCORRECAO       := itcontratonegociacao.ItContratoParcela.Items[x].PRCORRECAO;
         // atualizar no banco de dados as parcelas
         sql.Add(itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].Update(true));
         // atualizar no contas a receber
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].duplicata.select(qregistro.CodigodoInteiro(_duplicata, itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].cditcontratoparcela, _cditcontratoparcela));
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].duplicata.vlduplicata := itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].vlparcela;
         itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].duplicata.vlsaldo     := itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].vlparcela;
         sql.Add(itcontratonegociacaolist.Items[i].ItContratoParcela.Items[indice+x+1].duplicata.update(true));
      end;
    end;
    if sql.Count > 0 then
    begin
      // marcar como reajuste realizado
      boreajustado := _s;
      sql.Add(Update(true));
      ExecutaScript(sql);
    end;
    Result := True;
  finally
    FreeAndNil(itcontratonegociacaolist);
    freeandnil(itcontratonegociacao);
    FreeAndNil(sql);
  end;
end;

end.

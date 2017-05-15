unit ClasseAtivoPisCofins;

interface

uses system.classes, data.db,
  classedao, Contnrs, classequery, classeretornasql, sysutils, uconstantes;

type
  TAtivoPISCOFINS = class(TRegistroQuipos)
  private
    Fnuparcela: integer;
    Falpis: double;
    Falcofins: double;
    Fcdativopiscofins: integer;
    Fvlentrada: currency;
    Fcdbccalculocredito: string;
    Fnustpis: string;
    Fcdfornecedor: LargeInt;
    Fcdpiscofinsbemutilizacao: integer;
    Fnustcofins: string;
    Fnudocumento: integer;
    Fcdpiscofinsbemorigem: integer;
    Fcdproduto: integer;
    Fqtparcela: integer;
    Fvlsaldo: currency;
    Fcditentrada: integer;
    Fdttermino: TDate;
    Fvldeducao: currency;
    Fdtemissao: TDate;
    Fdtinicio: TDate;
    Fcdpiscofinsbemativo: string;
  public
    [keyfield]
    property cdativopiscofins : integer read Fcdativopiscofins write Fcdativopiscofins;
    [fk, AObrigatorio]
    property cdbccalculocredito : string read Fcdbccalculocredito write Fcdbccalculocredito;
    [fk, AObrigatorio]
    property cdpiscofinsbemativo : string read Fcdpiscofinsbemativo write Fcdpiscofinsbemativo;
    [fk, AObrigatorio]
    property cdpiscofinsbemorigem : integer read Fcdpiscofinsbemorigem write Fcdpiscofinsbemorigem;
    [fk, AObrigatorio]
    property nustpis : string read Fnustpis write Fnustpis;
    [fk, AObrigatorio]
    property nustcofins : string read Fnustcofins write Fnustcofins;
    [fk, AObrigatorio]
    property cdproduto : integer read Fcdproduto write Fcdproduto;
    [fk, AObrigatorio]
    property cdpiscofinsbemutilizacao : integer read Fcdpiscofinsbemutilizacao write Fcdpiscofinsbemutilizacao;
    [fk]
    property cditentrada : integer read Fcditentrada write Fcditentrada;
    [fk, AObrigatorio]
    property cdfornecedor : LargeInt read Fcdfornecedor write Fcdfornecedor;
    [fk, AObrigatorio]
    property nuparcela : integer read Fnuparcela write Fnuparcela;
    property alpis : double read Falpis write Falpis;
    property alcofins : double read Falcofins write Falcofins;
    [AObrigatorio]
    property nudocumento : integer read Fnudocumento write Fnudocumento;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property vldeducao : currency read Fvldeducao write Fvldeducao;
    property vlsaldo : currency read Fvlsaldo write Fvlsaldo;
    property vlentrada : currency read Fvlentrada write Fvlentrada;
    [AObrigatorio]
    property qtparcela : integer read Fqtparcela write Fqtparcela;
    [AObrigatorio]
    property dtinicio : TDate read Fdtinicio write Fdtinicio;
    [AObrigatorio]
    property dttermino : TDate read Fdttermino write Fdttermino;
  end;
  TAtivoPISCOFINSList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TAtivoPISCOFINS;
    procedure SetItem(Index: Integer; const Value: TAtivoPISCOFINS);
  public
    function New: TAtivoPISCOFINS;
    property Items[Index: Integer]: TAtivoPISCOFINS read GetItem write SetItem;
    function Ler(sqlwhere: string):Boolean;
  end;


implementation

function TAtivoPISCOFINSList.GetItem(Index: Integer): TAtivoPISCOFINS;
begin
  Result := TAtivoPISCOFINS(Inherited Items[Index]);
end;

function TAtivoPISCOFINSList.Ler(sqlwhere: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_ativopiscofins, sqlwhere));
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

function TAtivoPISCOFINSList.New: TAtivoPISCOFINS;
begin
  Result := TAtivoPISCOFINS.Create;
  Add(Result);
end;

procedure TAtivoPISCOFINSList.SetItem(Index: Integer; const Value: TAtivoPISCOFINS);
begin
  Put(Index, Value);
end;

end.

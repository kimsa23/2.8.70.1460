unit classeregrast;

interface

uses
  system.Classes,
  SysUtils, Contnrs,
  DBClient, db,
  uConstantes, uRegistro, ustrings,
  classeretornasql, classeempresa, classeaplicacao, classedao, classequery, classecliente, classefornecedor;

type
  TItRegraStMVA = class(TRegistroQuipos)
  private
    Fcditregrastmva: integer;
    Falicmssubtrib: double;
    Falmva: double;
    Fcditregrast: integer;
    Fcduf: integer;
  public
    [keyfield]
    property cditregrastmva : integer read Fcditregrastmva write fcditregrastmva;
    [fk]
    property cditregrast : integer read Fcditregrast write fcditregrast;
    [fk]
    property cduf : integer read Fcduf write fcduf;
    property alicmssubtrib : double read Falicmssubtrib write falicmssubtrib;
    property almva : double read Falmva write falmva;
  end;
  TItRegraStMVAList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItRegraStMVA;
    procedure SetItem(Index: Integer; const Value: TItRegraStMVA);
  public
    function New: TItRegraStMVA;
    property Items[Index: Integer]: TItRegraStMVA read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean; overload;
    function Ler(sqlwhere:string):boolean; overload;
  end;
  TItRegraST = class(TRegistroQuipos)
  private
    Falpis: double;
    Falcofins: double;
    Fcdcfop: integer;
    Fborecuperaicms: string;
    Fnustpis: string;
    Fnustcofins: string;
    Falipi: double;
    Fborecuperapis: string;
    Fborecuperacofins: string;
    Fnustipi: string;
    Falicms: double;
    Fborecuperaipi: string;
    Fcditregrast: integer;
    Fcdregrast: integer;
    Ftpregime: string;
    Fnusticms: string;
    Fitregrastmva: titregrastmvalist;
    Falicmsred: double;
  public
    property itregrastmva : titregrastmvalist read Fitregrastmva write fitregrastmva;
    [keyfield]
    property cditregrast : integer read Fcditregrast write fcditregrast;
    [fk]
    property cdregrast : integer read Fcdregrast write fcdregrast;
    [fk]
    property cdcfop : integer read Fcdcfop write fcdcfop;
    [fk]
    property nusticms : string read Fnusticms write fnusticms;
    [fk]
    property nustipi : string read Fnustipi write fnustipi;
    [fk]
    property nustpis : string read Fnustpis write fnustpis;
    [fk]
    property nustcofins : string read Fnustcofins write fnustcofins;
    property alicms : double read Falicms write falicms;
    property alicmsred : double read Falicmsred write Falicmsred;
    property alipi : double read Falipi write falipi;
    property alpis : double read Falpis write falpis;
    property alcofins : double read Falcofins write falcofins;
    property borecuperaicms : string read Fborecuperaicms write fborecuperaicms;
    property borecuperaipi : string read Fborecuperaipi write fborecuperaipi;
    property borecuperapis : string read Fborecuperapis write fborecuperapis;
    property borecuperacofins : string read Fborecuperacofins write fborecuperacofins;
    [fk]
    property tpregime : string read Ftpregime write ftpregime;
    constructor create;
    destructor destroy; override;
    function CFOPdeSaida:boolean;
    function CFOPDentroUf:boolean;
    function CFOPForaUF:boolean;
    function check_uf_dentro_ou_fora(cduf:integer):Boolean;
  end;
  TItRegraSTList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItRegraST;
    procedure SetItem(Index: Integer; const Value: TItRegraST);
  public
    function New: TItRegraST;
    property Items[Index: Integer]: TItRegraST read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
  end;
  TRegraSTRecord = record
    cdcfopduf : integer;
    cdcfopfuf : integer;
    cdcfopdufsubtrib : integer;
    cdcfopfufsubtrib : integer;
    cduf : integer;
    tpregime: string;
    tpentsai : string;
  end;
  TRegraST = class(TRegistroQuipos)
  private
    Fnmregrast: string;
    Fitregrast: titregrastlist;
    Fcdregrast: integer;
    function MakesqlRegraST(codigo:integer):string;
    function ObterCdRegraST(codigo:integer):integer;
    function ObterCdUF(cduf:integer):integer;
    function makesql(cditregrast:integer; cduf:string=''):string;
    function EncontrouRegraST(cdcfop, cdregrast: integer; st: string): string;
    procedure AtribuirInformacaoDetalhe(cdsdetail: TDataset; i: integer);
    function ObterCFOP(var nusticms : string; cdsdetail: TDataset; registro : TRegraSTRecord): integer;
    function ObterCFOPII(cduf, cdcfopdentro, cdcfopfora: integer): integer;
    function AlgumCFOPPreenchido(registro : TRegraSTRecord): boolean;
    function SomenteCFOPNormalPreenchido(registro : TRegraSTRecord): boolean;
    function SomenteCFOPSubTribPreenchido(registro : TRegraSTRecord): boolean;
    function STICMSdoProdutoEhSubTrib(cdproduto: integer): boolean;
  public
    property itregrast : titregrastlist read Fitregrast write fitregrast;
    [keyfield]
    property cdregrast : integer read Fcdregrast write fcdregrast;
    property nmregrast : string read Fnmregrast write fnmregrast;
    function GetST(tbl: string; cdproduto, cdcfop: integer; st:string):string;
    function GetRegraSTPedidoOrcamento(cdsdetail: TClientDataSet; cdufcliente: integer; tpregime:string):boolean;overload;
    function GetRegraST(cdsdetail: TDataSet; registro : TRegraSTRecord):boolean;
    constructor Create;
    destructor destroy; override;
  end;

implementation

destructor TRegraST.destroy;
begin
  freeandnil(fitregrast);
  inherited;
end;

constructor TRegraST.Create;
begin
  inherited;
  fitregrast := titregrastlist.Create;
end;

function TItRegraST.CFOPDentroUf: boolean;
begin
  result := ((cdcfop >= 5000) and (cdcfop <= 5999)) or ((cdcfop >= 1000) and (cdcfop <= 1999));
end;

function TItRegraST.CFOPdeSaida: boolean;
begin
  result := ((cdcfop >= 5000) and (cdcfop <= 5999)) or ((cdcfop >=6000) and (cdcfop <=6999));
end;

function TItRegraST.CFOPForaUF: boolean;
begin
  result := ((cdcfop >= 6000) and (cdcfop <= 6999)) or ((cdcfop >= 2000) and (cdcfop <= 2999));
end;

function TItRegraST.check_uf_dentro_ou_fora(cduf: integer): Boolean;
begin
  result := ((cduf =  empresa.endereco.cduf) and CFOPForaUF)  or ((cduf <> empresa.endereco.cduf) and CFOPDentroUf);
end;

constructor TItRegraST.create;
begin
  inherited;
  fitregrastmva := titregrastmvalist.Create;
end;

destructor TItRegraST.destroy;
begin
  freeandnil(fitregrastmva);
  inherited;
end;

function TItRegraStMVAList.GetItem(Index: Integer): TItRegraStMVA;
begin
  Result := TItRegraStMVA(Inherited Items[Index]);
end;

function TItRegraStMVAList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_ItRegraStMVA, codigo, _cditregrast));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TItRegraStMVAList.Ler(sqlwhere: string): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_ItRegraStMVA, sqlwhere));
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

function TItRegraStMVAList.New: TItRegraStMVA;
begin
  Result := TItRegraStMVA.Create;
  Add(Result);
end;

procedure TItRegraStMVAList.SetItem(Index: Integer; const Value: TItRegraStMVA);
begin
  Put(Index, Value);
end;

function TItRegraSTList.GetItem(Index: Integer): TItRegraST;
begin
  Result := TItRegraST(Inherited Items[Index]);
end;

function TItRegraSTList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_ItRegraST, codigo, _cdregrast, 'order by tpregime desc,cdcfop desc'));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TItRegraSTList.New: TItRegraST;
begin
  Result := TItRegraST.Create;
  Add(Result);
end;

procedure TItRegraSTList.SetItem(Index: Integer; const Value: TItRegraST);
begin
  Put(Index, Value);
end;

function TRegraST.ObterCdUF(cduf:integer): integer;
begin
  result := cduf;
  if result = 0 then
  begin
    result := empresa.endereco.cduf;
  end;
end;

function TRegraST.makesql(cditregrast: integer; cduf: string): string;
begin
  result := _cditregrast+'='+inttostr(cditregrast);
  if cduf <> '' then
  begin
    result := result + ' and cduf='+cduf;
  end;
end;

function TRegraST.MakesqlRegraST(codigo: integer): string;
begin
  result := 'select P.cdregrast'+
                  ',g.cdregrast'+
                  ',g1.cdregrast'+
                  ',g2.cdregrast'+' '+
            'from produto P '+
            'LEFT JOIN GRUPO G ON G.CDGRUPO=p.cdgrupo and g.cdempresa=p.cdempresa '+
            'left join grupo g1 on g1.cdgrupo=g.cdgrupopai and g1.cdempresa=g.cdempresa '+
            'left join grupo g2 on g2.cdgrupo=g1.cdgrupopai and g2.cdempresa=g1.cdempresa '+
            'where p.cdempresa='+empresa.cdempresa.ToString+' and P.cdproduto='+inttostr(codigo);
end;

procedure TRegraST.AtribuirInformacaoDetalhe(cdsdetail: TDataset; i:integer);
begin
  cdsdetail.FieldByName(_cdcfop).AsInteger          := itregrast.items[i].cdcfop;

  cdsdetail.FieldByName(_nusticms).AsString        := itregrast.items[i].nusticms;
  cdsdetail.FieldByName(_nustipi).AsString         := itregrast.items[i].nustipi;
  cdsdetail.FieldByName(_nustcofins).AsString      := itregrast.items[i].nustcofins;
  cdsdetail.FieldByName(_nustpis).AsString         := itregrast.items[i].nustpis;

  cdsdetail.FieldByName(_alicms).AsFloat           := itregrast.items[i].alicms;
  cdsdetail.FieldByName(_alipi).AsFloat            := itregrast.items[i].alipi;
  cdsdetail.FieldByName(_alcofins).AsFloat         := itregrast.items[i].alcofins;
  cdsdetail.FieldByName(_alpis).AsFloat            := itregrast.items[i].alpis;
  if itregrast.items[i].alicmsred > 0 then
  begin
    cdsdetail.FieldByName(_alicmsred).AsFloat := itregrast.items[i].alicmsred;
  end;

  cdsdetail.FieldByName(_borecuperaicms).AsString   := itregrast.items[i].borecuperaicms;
  cdsdetail.FieldByName(_borecuperaipi).AsString    := itregrast.items[i].borecuperaipi;
  cdsdetail.FieldByName(_borecuperacofins).AsString := itregrast.items[i].borecuperacofins;
  cdsdetail.FieldByName(_borecuperapis).AsString    := itregrast.items[i].borecuperapis;
end;

function TRegraST.ObterCFOPII(cduf, cdcfopdentro, cdcfopfora: integer):integer;
begin
  if ObterCdUF(cduf) = empresa.endereco.cduf then
  begin
    result := cdcfopdentro;
  end
  else
  begin
    result := cdcfopfora;
  end;
end;

function TRegraST.AlgumCFOPPreenchido(registro : TRegraSTRecord):boolean;
begin
  result := (registro.cdcfopduf <> 0) or (registro.cdcfopfuf <> 0) or (registro.cdcfopdufsubtrib <> 0) or (registro.cdcfopfufsubtrib <> 0);
end;

function TRegraST.SomenteCFOPNormalPreenchido(registro : TRegraSTRecord):boolean;
begin
  result := (registro.cdcfopduf <> 0) and (registro.cdcfopdufsubtrib = 0) and (registro.cdcfopfuf <> 0) and (registro.cdcfopfufsubtrib = 0);
end;

function TRegraST.SomenteCFOPSubTribPreenchido(registro : TRegraSTRecord):boolean;
begin
  result := (registro.cdcfopduf = 0) and (registro.cdcfopdufsubtrib <> 0) and (registro.cdcfopfuf = 0) and (registro.cdcfopfufsubtrib <> 0);
end;

function TRegraST.STICMSdoProdutoEhSubTrib(cdproduto: integer):boolean;
var
  nusticms : string;
begin
  nusticms := qregistro.StringdoCodigo(_produto, cdproduto, _nusticms);
  result := (nusticms <> '') and BooleandoCodigo(_sticms, nusticms, _boicmssubtrib, _nu, True);
end;

function TRegraST.ObterCFOP(var nusticms : string; cdsdetail: TDataset; registro : TRegraSTRecord):integer;
begin
  result := 0;
  if not AlgumCFOPPreenchido(registro) then
  begin
    exit;
  end;
  if SomenteCFOPNormalPreenchido(registro) then
  begin
    result := ObterCFOPII(registro.cduf, registro.cdcfopduf, registro.cdcfopfuf);
  end
  else if SomenteCFOPSubTribPreenchido(registro) then
  begin
    result := ObterCFOPII(registro.cduf, registro.cdcfopdufsubtrib, registro.cdcfopfufsubtrib);
  end
  else
  begin
    if not STICMSdoProdutoEhSubTrib(cdsdetail.fieldbyname(_cdproduto).asinteger) then
    begin
      result := ObterCFOPII(registro.cduf, registro.cdcfopduf, registro.cdcfopfuf);
      exit;
    end;
    result := ObterCFOPII(registro.cduf, registro.cdcfopdufsubtrib, registro.cdcfopfufsubtrib);
       { TODO 5 -oPaulo -cVerificar : Não entendi para que servem as linhas abaixo }
    if result = 0 then
    begin
      if ObterCdUF(registro.cduf) = empresa.endereco.cduf then
      begin
        nusticms := qregistro.StringdoCodigo(_cfop, registro.cdcfopduf, _nusticms);
      end
      else
      begin
        nusticms := qregistro.StringdoCodigo(_cfop, registro.cdcfopfuf, _nusticms);
      end;
      if nusticms <> '' then
      begin
        result := ObterCFOPII(registro.cduf, registro.cdcfopduf, registro.cdcfopfuf);
      end;
    end;
  end;
end;

function TRegraST.GetRegraST(cdsdetail: TDataset; registro : TRegraSTRecord):boolean;
var
  cdcfop : integer;
  nusticms : string;
  passou : Boolean;
  i: Integer;
begin
  result := False;
  if cdsdetail.fieldbyname(_cdproduto).AsString = '' then
  begin
    Exit;
  end;
  cdregrast := ObterCdRegraST(cdsdetail.fieldbyname(_cdproduto).Asinteger);
  if cdregrast = 0 then
  begin
    Exit;
  end;
  passou := False;
  itregrast.Ler(cdregrast);
  cdcfop := ObterCFOP(nusticms, cdsdetail, registro);
  for i := 0 to itregrast.Count - 1 do
  begin
    if (registro.tpentsai = _s) and (not itregrast.Items[i].CFOPdeSaida) then
    begin
      Continue;
    end;
    if itregrast.Items[i].check_uf_dentro_ou_fora(ObterCdUF(registro.cduf)) then
    begin
      Continue;
    end;
    if (itregrast.items[i].tpregime <> '') and (itregrast.items[i].tpregime <> registro.tpregime) then
    begin
      Continue;
    end;
    if cdcfop <> 0 then
    begin
      if (itregrast.items[i].cdcfop = cdcfop) then
      begin
        AtribuirInformacaoDetalhe(cdsdetail, i);
        if qregistro.BooleandoCodigo(_cfop, cdcfop, _BOICMSSUBTRIB) and (itregrast.Items[i].itregrastmva.Ler(makesql(itregrast.items[i].cditregrast, inttostr(ObterCdUF(registro.cduf))))) then
        begin
          cdsdetail.FieldByName(_alicmssubtrib).AsFloat                := itregrast.Items[i].itregrastmva.Items[0].alicmssubtrib;
          cdsdetail.FieldByName(_PRMRGVLADICIONADOICMSSUBTRIB).AsFloat := itregrast.Items[i].itregrastmva.Items[0].almva;
        end;
        result := True;
        Break;
      end
    end
    else if itregrast.Items[i].itregrastmva.Ler(makesql(itregrast.items[i].cditregrast, inttostr(ObterCdUF(registro.cduf)))) then
    begin
      cdsdetail.FieldByName(_alicmssubtrib).AsFloat                := itregrast.Items[i].itregrastmva.Items[0].alicmssubtrib;
      cdsdetail.FieldByName(_PRMRGVLADICIONADOICMSSUBTRIB).AsFloat := itregrast.Items[i].itregrastmva.Items[0].almva;
      AtribuirInformacaoDetalhe(cdsdetail, i);
      result := True;
      Break;
    end
    else if (not passou) and (not itregrast.Items[i].itregrastmva.Ler(makesql(itregrast.items[i].cditregrast))) then
    begiN
      passou := True;
      AtribuirInformacaoDetalhe(cdsdetail, i);
    end;
    result := True;
  end;
end;

function TRegraST.GetRegraSTPedidoOrcamento(cdsdetail: TClientDataSet; cdufcliente: integer; tpregime:string):boolean;
var
  i: integer;
  passou : Boolean;
begin
  result := False;
  if cdsdetail.fieldbyname(_cdproduto).AsString = '' then
  begin
    Exit;
  end;
  cdregrast := ObterCdRegraST(cdsdetail.fieldbyname(_cdproduto).Asinteger);
  if cdregrast = 0 then
  begin
    Exit;
  end;
  passou := False;
  itregrast.ler(cdregrast);
  for i := 0 to itregrast.Count - 1 do
  begin
    if (not qregistro.BooleandoCodigo(_cfop, itregrast.Items[i].cdcfop, _bopedido)) or
       (not itregrast.Items[i].CFOPdeSaida) or
       (
       (
         (ObterCdUF(cdufcliente) = empresa.endereco.cduf) and ((Copy(inttostr(itregrast.items[i].cdcfop), 1, 1)= _6) or (Copy(inttostr(itregrast.items[i].cdcfop), 1, 1)= _2)) or
         (ObterCdUF(cdufcliente) <> empresa.endereco.cduf) and ((Copy(inttostr(itregrast.items[i].cdcfop), 1, 1)= _5) or (Copy(inttostr(itregrast.items[i].cdcfop), 1, 1)= _1))
       ) // checkUFDentroOUFora(i) or
       or
       ((itregrast.items[i].tpregime <> '') and (itregrast.items[i].tpregime <> tpregime)) //check_regime(i)
       ) then
    begin
      Continue;
    end;
    if itregrast.Items[i].itregrastmva.Ler(makesql(itregrast.items[i].cditregrast, inttostr(cdufcliente))) then
    begin
      cdsdetail.FieldByName(_alicmssubtrib).AsFloat := itregrast.Items[i].itregrastmva.Items[0].alicmssubtrib;
      cdsdetail.FieldByName(_almva).AsFloat         := itregrast.Items[i].itregrastmva.Items[0].almva;
      cdsdetail.FieldByName(_alicms).AsFloat        := itregrast.items[i].alicms;
      result := True;
      Break;
    end
    else if (not passou) and (not itregrast.Items[i].itregrastmva.Ler(makesql(itregrast.items[i].cditregrast))) then
    begin
      passou := True;
      cdsdetail.FieldByName(_alicms).AsFloat := itregrast.items[i].alicms;
    end;
    result := True;
  end;
end;

function TRegraST.EncontrouRegraST(cdcfop: integer; cdregrast:integer; st:string):string;
begin
  result := '';
  if cdregrast <> 0 then
  begin
    result := RetornaSQLString('select nust'+st+' from itregrast where cdempresa='+empresa.cdempresa.ToString+' and cdregrast='+inttostr(cdregrast)+' and cdcfop='+inttostr(cdcfop));
  end;
end;

function TRegraST.GetST(tbl: string; cdproduto, cdcfop: integer; st:string):string;
begin
  result := '';
  if (cdproduto = 0) or (cdcfop = 0) or (st = '') or ((st=_ipi) and (tbl = _entrada)) then
  begin
    exit;
  end;
  if st = _icms then // considera primeiro o produto
  begin
    result := qregistro.StringdoCodigo(_produto, cdproduto, _nust+st);
    if result <> '' then
    begin
      if tbl = _entrada then
      begin
        if result = _500 then
        begin
          result := _60
        end
        else if Length(Result) = 3 then
        begin
          result := _90;
        end;
      end
      else if (tbl = _saida) and (empresa.tpregime = _s) then
      begin
        if result = _60 then
        begin
          result := _500
        end;
      end;
      Exit;
    end;
  end;
  result := EncontrouRegraST(cdcfop, ObterCdRegraST(cdproduto), st);
end;

function TRegraST.ObterCdRegraST(codigo:integer):integer;
var
  q : TClasseQuery;
begin
  result := 0;
  if codigo = 0 then
  begin
    exit;
  end;
  q := TClasseQuery.Create(MakesqlRegraST(codigo));
  try
    result := q.q.Fields[0].asinteger;
    if result = 0 then
    begin
      result := q.q.Fields[1].asinteger;
    end;
    if result = 0 then
    begin
      result := q.q.Fields[2].asinteger;
    end;
    if result = 0 then
    begin
      result := q.q.Fields[3].asinteger;
    end;
  finally
    freeandnil(q);
  end;
end;

end.

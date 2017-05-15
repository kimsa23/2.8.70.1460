unit classegerarautpagto;

interface

uses
  Controls, SysUtils, Math, db,
  SqlExpr, DBClient,
  unumero, ustrings, uConstantes, uregistro,
  classeentrada, classeaplicacao, classegerar, classeretornasql, classeempresa, classequery, classecondpagto;

procedure GerarAutPagto(entrada: TEntrada; cds, cdsautpagto: TClientdataset);

implementation

type
  TGerarautpagto = class(tobject)
  private
    entrada : TEntrada;
    cds, cdsautpagto: TClientdataset;
    procedure Gerar;
    procedure InserirAutpagtos;
    procedure InserirAutpagto(j:Integer);
  public
    constructor create(entrada_: TEntrada; cds_, cdsautpagto_: TClientdataset);overload;
  end;

procedure Gerarautpagto(entrada: TEntrada; cds, cdsautpagto: TClientdataset);
var
  gerarautpagto : TGerarautpagto;
begin
  gerarautpagto := TGerarautpagto.create(entrada, cds, cdsautpagto);
  try
    gerarautpagto.Gerar;
  finally
    freeandnil(gerarautpagto);
  end;
end;

procedure TGerarautpagto.Gerar;
var
  boreadonly : Boolean;
  i : Integer;
begin
  if cds.ReadOnly then
  begin
    cds.ReadOnly := False;
    cdsautpagto.ReadOnly := False;
    boreadonly := True;
  end;
  try
    if cds.fieldbyname(_cdcondpagto).asstring = '' then
    begin
      Exit;
    end;

    cdsautpagto.First;
    while not cdsautpagto.Eof do
    begin
      cdsautpagto.Delete;
    end;

    entrada.condpagto.Select(cds.FieldByName(_cdcondpagto).AsInteger);
    entrada.condpagto.itcondpagto.Ler(entrada.condpagto.cdcondpagto);
    entrada.autpagto.Clear;

    entrada.condpagto.GerarParcela(entrada.dtemissao, entrada.vltotal);
    for I := 0 to entrada.condpagto.parcela.Count - 1 do
    begin
      entrada.autpagto.New;
      entrada.autpagto.Items[i].vlautpagto   := entrada.condpagto.parcela.Items[i].valor;
      entrada.autpagto.Items[i].dtvencimento := entrada.condpagto.parcela.Items[i].dtvencimento;
    end;

    if (cds.State <> dsedit) and (cds.State <> dsinsert) then
    begin
      try
        InserirAutpagtos;
        cds.ApplyUpdates(0);
      except
        cds.CancelUpdates;
      end;
    end
    else
    begin
      InserirAutpagtos;
    end;
  finally
    if boreadonly then
    begin
      cds.ReadOnly := False;
      cdsautpagto.ReadOnly := False;
    end;
  end;
end;

procedure TGerarautpagto.InserirAutpagto(j:Integer);
begin
  cdsautpagto.fieldbyname(_cdentrada).asstring       := cds.fieldbyname(_cdentrada).asstring;
  cdsautpagto.fieldbyname(_cdtpcobranca).asstring    := cds.fieldbyname(_cdtpcobranca).asstring;
  cdsautpagto.fieldbyname(_dshistorico).asstring     := cds.fieldbyname(_dshistorico).asstring;
  cdsautpagto.fieldbyname(_cdcntcusto).AsString      := cds.fieldbyname(_cdcntcusto).AsString;
  cdsautpagto.fieldbyname(_nucntcusto).AsString      := cds.fieldbyname(_nucntcusto).AsString;
  cdsautpagto.fieldbyname(_cdplconta).AsString       := cds.fieldbyname(_cdplconta).AsString;
  cdsautpagto.fieldbyname(_nuplconta).AsString       := cds.fieldbyname(_nuplconta).AsString;
  cdsautpagto.fieldbyname(_cdstautpagto).asinteger   := 1;
  cdsautpagto.fieldbyname(_cdfornecedor).asstring    := cds.fieldbyname(_cdfornecedor).asstring;
  cdsautpagto.fieldbyname(_dtemissao).AsDateTime     := cds.fieldbyname(_dtemissao).AsDateTime;
  cdsautpagto.fieldbyname(_dtvencimento).AsDateTime  := entrada.autpagto.Items[j].dtvencimento;
  cdsautpagto.fieldbyname(_dtentrada).AsDateTime     := cds.fieldbyname(_dtsaida).AsDateTime;
  cdsautpagto.fieldbyname(_prmoradiaria).AsFloat     := 0;
  cdsautpagto.fieldbyname(_dtprorrogacao).AsDateTime := entrada.autpagto.Items[j].dtvencimento;
  cdsautpagto.fieldbyname(_vlautpagto).AsCurrency    := entrada.autpagto.Items[j].vlautpagto;
  cdsautpagto.fieldbyname(_vlsaldo).AsCurrency       := entrada.autpagto.Items[j].vlautpagto;
  if empresa.entrada.tpsequencianuautpagto = _1 then
  begin
    cdsautpagto.fieldbyname(_dsparcela).asstring := inttostr(j+1)+'/'+inttostr(entrada.condpagto.itcondpagto.Count);
    if entrada.condpagto.itcondpagto.Count > 1 then
    begin
      cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring+'/'+char(j+65)
    end
    else
    begin
      cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring;
    end;
  end
  else if empresa.entrada.tpsequencianuautpagto = _2 then
  begin
    cdsautpagto.fieldbyname(_dsparcela).asstring := inttostr(j+1)+'/'+inttostr(entrada.condpagto.itcondpagto.Count);
    if entrada.condpagto.itcondpagto.Count > 1 then
    begin
      cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring+'/'+inttostr(j+1)
    end
    else
    begin
      cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring;
    end;
  end
  else if empresa.entrada.tpsequencianuautpagto = _3 then
  begin
    cdsautpagto.fieldbyname(_dsparcela).asstring := inttostr(j+1)+'/'+inttostr(entrada.condpagto.itcondpagto.Count);
    if entrada.condpagto.itcondpagto.Count > 1 then
    begin
      cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring+'/'+char(j+65)+'-'+char(j+65+entrada.condpagto.itcondpagto.Count)
    end
    else
    begin
      cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring;
    end;
  end
  else if empresa.entrada.tpsequencianuautpagto = _4 then
  begin
    cdsautpagto.fieldbyname(_dsparcela).asstring := inttostr(j+1)+'/'+inttostr(entrada.condpagto.itcondpagto.Count);
    if entrada.condpagto.itcondpagto.Count > 1 then
    begin
      cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring+'/'+inttostr(j+1)+'-'+inttostr(entrada.condpagto.itcondpagto.Count)
    end
    else
    begin
      cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring;
    end;
  end;
end;

procedure TGerarautpagto.InserirAutpagtos;
var
  j, r : Integer;
begin
  while (cdsautpagto.RecordCount > entrada.condpagto.itcondpagto.Count) do
  begin
    cdsautpagto.RecNo := entrada.condpagto.itcondpagto.Count + 1;
    cdsautpagto.Delete;
  end;
  r := 0;
  for j := 0 to entrada.condpagto.itcondpagto.Count - 1 do
  begin
    inc(r);
    if r <= cdsautpagto.recordcount then
    begin
      cdsautpagto.RecNo := r;
      cdsautpagto.Edit;
    end
    else
    begin
      cdsautpagto.append;
    end;
    InserirAutpagto(j);
    cdsautpagto.Post;
  end;
  cdsautpagto.First;
end;

constructor TGerarautpagto.create(entrada_: TEntrada; cds_, cdsautpagto_: TClientdataset);
begin
  entrada     := entrada_;
  cds         := cds_;
  cdsautpagto := cdsautpagto_;
end;

end.

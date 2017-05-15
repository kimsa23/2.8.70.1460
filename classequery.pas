unit classequery;

interface

uses
  FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Comp.DataSet, system.SysUtils,
  classeaplicacao;

type
  TCQMode = (moManual, moOnDemand, moAll, moExactRecsMax);
  TClasseQuery = class
  private
    Fmode: TCQMode;
    procedure Setmode(const Value: TCQMode);
  public
    q : TFDQuery;
    property mode : TCQMode read Fmode write Setmode;
    constructor create; overload;
    constructor create(makesql:string; bocacheupdates: boolean=false); overload;
    constructor create(con: TFDConnection; makesql:string);overload;
    destructor Destroy; override;
  end;
  TDataClient = class
  private
  public
    m : TFDMemTable;
    constructor create;
    destructor destroy; override;
    procedure CopyDataSet(q :TClasseQuery);overload;
    procedure CopyDataSet(q :TDataClient);overload;
    procedure adicionarIndice(Nome: string; nmfield: string; boativo: boolean; bodescendente: boolean);
  end;

implementation

constructor TClasseQuery.create;
begin
  inherited;
  q := TFDQuery.Create(nil);
  q.fetchOptions.Mode := fmall;
  q.Connection        := aplicacao.confire;
end;

constructor TClasseQuery.create(makesql: string; bocacheupdates: boolean=false);
begin
  inherited create;
  q := TFDQuery.Create(nil);
  q.fetchOptions.Mode := fmall;
  q.UpdateOptions.RequestLive := bocacheupdates;
  q.CachedUpdates := bocacheupdates;
  q.Connection := aplicacao.confire;
  if makesql <> '' then
  begin
    q.Open(makesql);
  end;
end;

constructor TClasseQuery.create(con: TFDConnection; makesql: string);
begin
  inherited create;
  q := TFDQuery.Create(nil);
  q.fetchOptions.Mode         := fmall;
  q.UpdateOptions.RequestLive := False;
  q.Connection                := con;
  if makesql <> '' then
  begin
    q.Open(makesql);
  end;
end;

destructor TClasseQuery.Destroy;
begin
  freeandnil(q);
  inherited;
end;

procedure TClasseQuery.Setmode(const Value: TCQMode);
begin
  Fmode := Value;
  case value of
    moManual: q.fetchOptions.Mode := fmManual;
    moOnDemand: q.fetchOptions.Mode := fmOnDemand;
    moAll: q.fetchOptions.Mode := fmall;
    moExactRecsMax: q.fetchOptions.Mode := fmExactRecsMax;
  end;
end;

procedure TDataClient.adicionarIndice(Nome, nmfield: string; boativo, bodescendente: boolean);
begin
  with m.Indexes.Add do
  begin
    Name   := nome;
    Fields := nmfield;
    Active := boativo;
    if bodescendente then
    begin
      Options := [soDescending];
    end;
  end;
end;

procedure TDataClient.CopyDataSet(q: TClasseQuery);
begin
  m.CopyDataSet(q.q, [coStructure, coRestart, coAppend]);
end;

procedure TDataClient.CopyDataSet(q: TDataClient);
begin
  m.CopyDataSet(q.m, [coStructure, coRestart, coAppend]);
end;

constructor TDataClient.create;
begin
  inherited;
  m := TFDMemTable.create(nil);
end;

destructor TDataClient.destroy;
begin
  freeandnil(m);
  inherited;
end;

end.

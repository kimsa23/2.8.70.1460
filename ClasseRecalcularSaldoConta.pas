unit ClasseRecalcularSaldoConta;

interface

uses forms, SysUtils, controls, classes,
  classeempresa, classeretornasql, classeexecutasql, classeAplicacao, classeregistrainformacao,
  udatahora, uprogressbar, ustrings, uConstantes,
  classequery;

type
  TRecalcularSaldoConta = class(TObject)
  private
    q : TClasseQuery;
    sql : TStrings;
    progresso : TFrmProgressbar;
    dtsaldo, dt, dtf, dtemissao, dtnormal : TDate;
    vlsaldoinicial, vlpagamento, vldeposito, vlentrada, vlsaida : currency;
    cdconta : string;
    procedure inserir_hcontasaldo;
    procedure preencher_data_vazia(data:TDate);
    procedure limpar_historico_e_inserir_primeiro_registro;
    function  makesql:string;
    function  ultima_data_saldo_correto:TDate;
    function  get_saldoinicial:Currency;
    procedure set_inicializacao;
  public
    constructor create;
    destructor  destroy; override;
    function    Calcular(codigo:string; dt_, dtsaldo_:TDate; vlinicial: currency):boolean;
  end;


implementation

function TRecalcularSaldoConta.Calcular(codigo:string; dt_, dtsaldo_: TDate; vlinicial: currency): boolean;
begin
  dt             := dt_;
  dtsaldo        := dtsaldo_;
  vlsaldoinicial := vlinicial;
  cdconta        := codigo;
  set_inicializacao;
  // verifica se existe alguma data anterior ao do recalculo que precisa atualizar
  // excluir saldo a partir de uma determinada data
  // obter o valor do último saldo válido
  progresso.Show;
  progresso.pnl.Caption := 'Lendo registro. Aguarde...';
  Application.ProcessMessages;
  q.q.open(makesql);
  dtemissao              := q.q.fieldbyname(_dtemissao).AsDateTime;
  progresso.gau.MaxValue := q.q.RecordCount;
  if progresso.gau.MaxValue = 0 then
  begin
    dtemissao := dt;
  end;
  while not q.q.Eof do
  begin
    progresso.gau.Progress := q.q.RecNo;
    progresso.pnl.Caption  := 'Registro '+IntToStr(progresso.gau.Progress)+' de '+inttostr(progresso.gau.MaxValue)+' - Data: '+FormatarDataAbreviada(q.q.fieldbyname(_dtemissao).AsDateTime, 10);
    Application.ProcessMessages;
    if dtemissao <> q.q.fieldbyname(_dtemissao).AsDateTime then // inicializa valores
    begin
      inserir_hcontasaldo;
      vlsaida   := 0;
      vlentrada := 0;
      preencher_data_vazia(q.q.fieldbyname(_dtemissao).AsDateTime);
      dtemissao := q.q.fieldbyname(_dtemissao).AsDateTime;
    end;
    if q.q.Fieldbyname(_cdnatureza).AsString = _C then
    begin
      vlsaldoinicial := vlsaldoinicial + q.q.fieldbyname(_vllancamento).ascurrency;
      vlpagamento    := 0;
      vldeposito     := q.q.fieldbyname(_vllancamento).AsCurrency;
    end
    else
    begin
      vlsaldoinicial := vlsaldoinicial - q.q.fieldbyname(_vllancamento).AsCurrency;
      vldeposito     := 0;
      vlpagamento    := q.q.fieldbyname(_vllancamento).AsCurrency;
    end;
    vlsaida   := vlsaida   + vlpagamento;
    vlentrada := vlentrada + vldeposito;
    sql.add('update movbancario set vldeposito='+getcurrencys(vldeposito)+',vlpagamento='+getcurrencys(vlpagamento)+',vlsaldo='+getcurrencys(vlsaldoinicial)+' where cdempresa='+empresa.cdempresa.ToString+' and cdmovbancario='+q.q.fieldbyname(_cdmovbancario).asstring+';');
    q.q.Next;
  end;
  inserir_hcontasaldo;
  sql.Add('update conta set vlsaldo='+getcurrencys(vlsaldoinicial)+' where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+cdconta+';');
  vlentrada := 0;
  vlsaida   := 0;
  preencher_data_vazia(dtf);
  ExecutaScript(sql);
  result := true;
end;

constructor TRecalcularSaldoConta.create;
begin
  progresso := tfrmprogressbar.Create(nil);
  sql       := TStringList.create;
  q := tclassequery.create;
end;

destructor TRecalcularSaldoConta.destroy;
begin
  freeandnil(q);
  FreeAndNil(progresso);
  freeandnil(sql);
  inherited;
end;

function TRecalcularSaldoConta.get_saldoinicial: Currency;
  function makesql:string;
  begin
    result := 'select first 1 vlsaldo '+
              'from hcontasaldo '+
              'where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+cdconta+' and dthcontasaldo<'+getdtbanco(dt)+' '+
              'order by dthcontasaldo desc';
  end;
begin
  result := RetornaSQLCurrency(makesql);
end;

procedure TRecalcularSaldoConta.inserir_hcontasaldo;
begin
  sql.add('insert into hcontasaldo(cdconta,cdsthcontasaldo,dthcontasaldo,vlsaldo,vlentrada,vlsaida,'+_sqlreg+
          cdconta+',1,'+getdtbanco(dtemissao)+','+getcurrencys(vlsaldoinicial)+','+getcurrencys(vlentrada)+','+getcurrencys(vlsaida)+','+SQLRegistra+';');
end;

procedure TRecalcularSaldoConta.limpar_historico_e_inserir_primeiro_registro;
begin
  sql.Add('delete from hcontasaldo where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+cdconta+';');
  sql.add('insert into hcontasaldo(cdconta,cdsthcontasaldo,dthcontasaldo,vlsaldo,vlentrada,vlsaida,'+_sqlreg+
          cdconta+',1,'+getdtbanco(dtsaldo)+','+getcurrencys(vlsaldoinicial)+',0,0,'+SQLRegistra+';');
end;

function TRecalcularSaldoConta.makesql: string;
begin
  result := 'select cdmovbancario'+
                  ',dtemissao'+
                  ',vllancamento'+
                  ',vlpagamento'+
                  ',vldeposito'+
                  ',vlsaldo'+
                  ',cdnatureza '+
            'from movbancario '+
            'where cdempresa='+empresa.cdempresa.ToString+' and dtemissao>='+getdtbanco(dt)+' and cdconta='+cdconta+' '+
            'order by dtemissao,cdmovbancario';
end;

procedure TRecalcularSaldoConta.preencher_data_vazia(data: TDate);
begin
  dtemissao := dtemissao + 1;
  while dtemissao < data do
  begin
    inserir_hcontasaldo;
    dtemissao := dtemissao + 1;
  end;
end;

procedure TRecalcularSaldoConta.set_inicializacao;
begin
  dtf            := DtBanco;
  vlentrada      := 0;
  vlsaida        := 0;
  if FormatDateTime(_yyyymmdd, dt) <= FormatDateTime(_yyyymmdd, dtsaldo) then // data_saldo_enviada_menor_que_data_saldo_atual
  begin
    limpar_historico_e_inserir_primeiro_registro;
    dt := dtsaldo + 1;;
  end
  else if RetornaSQLInteger('select count(*) from hcontasaldo where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+cdconta) > 0 then // Existe_historico_conta_saldo
  begin
    dtnormal := ultima_data_saldo_correto;
    if (dtnormal < dt) and (dtnormal >= dtsaldo) and (formatdatetime(_dd_mm_yyyy, dtnormal) <> _30_12_1899) then
    begin
      dt := dtnormal;
    end;
    sql.Add('delete from hcontasaldo where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+cdconta+' and dthcontasaldo>='+getdtbanco(dt)+';');
    vlsaldoinicial := get_saldoinicial;
  end;
end;

function TRecalcularSaldoConta.ultima_data_saldo_correto: TDate;
begin
  result := RetornaSQLData('select first 1 dthcontasaldo '+
                           'from hcontasaldo h '+
                           'inner join sthcontasaldo s on s.cdsthcontasaldo=h.cdsthcontasaldo and h.cdempresa=s.cdempresa '+
                           'where h.cdempresa='+empresa.cdempresa.ToString+' and s.boatualizar=''S'' and cdconta='+cdconta+' and dthcontasaldo<'+getdtbanco(dt)+' ');
end;

end.

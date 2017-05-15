unit uimp_fluxo_caixa;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeconta, classeretornasql, classeempresa, classeAplicacao, classequery;

procedure imp_fluxo_caixa(mtbl: TDataClient; dti, dtf: Tdate; bosaldo_:boolean=false; bosaldodia_:Boolean=false);

implementation

Type TReport = class
  private
    bosaldodia, bosaldo : boolean;
    vlsaldoi : currency;
    dti_, dtf_ : TDate;
    mtbl: TDataClient;
    q : TClasseQuery;
    procedure Atualizar_saldo_Conta(vlsaldo:currency);
    procedure criar_fields;
    procedure gerardatas;
    function  MakeTempTable:boolean;
  public
    constructor create(mtbl2: TDataClient; dti, dtf:Tdate; bosaldo_:boolean=false; bosaldodia_:Boolean=false);
    procedure   gerar;
  end;

procedure imp_fluxo_caixa(mtbl: TDataClient; dti, dtf: Tdate; bosaldo_:boolean=false; bosaldodia_:Boolean=false);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, dti, dtf, bosaldo_, bosaldodia_);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl2: TDataClient; dti, dtf:Tdate; bosaldo_:boolean=false; bosaldodia_:Boolean=false);
begin
  bosaldo    := bosaldo_;
  bosaldodia := bosaldodia_;
  mtbl := mtbl2;
  dti_ := dti;
  dtf_ := dtf;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_dtprorrogacao    , ftdate);
  mtbl.m.FieldDefs.Add(_vlentrada+_p     , ftcurrency);
  mtbl.m.FieldDefs.Add(_vlsaida+_p       , ftcurrency);
  mtbl.m.FieldDefs.Add(_vlentrada+_r     , ftcurrency);
  mtbl.m.FieldDefs.Add(_vlsaida+_r       , ftcurrency);
  mtbl.m.FieldDefs.Add(_vlsaldo+_p       , ftcurrency);
  mtbl.m.FieldDefs.Add(_vlsaldo+_conta+_p, ftcurrency);
  mtbl.m.FieldDefs.Add(_vlsaldo+_r       , ftcurrency);
  mtbl.m.FieldDefs.Add(_vlsaldo+_conta+_r, ftcurrency);
  mtbl.m.FieldDefs.Add(_nmempresa        , ftString, 100);
  mtbl.m.FieldDefs.Add(_vlsaldo+_i       , ftCurrency);
  mtbl.m.FieldDefs.Add(_dtf                , ftDate);
  mtbl.m.FieldDefs.Add(_dti                , ftDate);
  mtbl.m.CreateDataSet;

  with mtbl.m.Indexes.Add do
  begin
    Name := _pk;
    Fields := _dtprorrogacao;
    Active := True;
  end;
  mtbl.m.IndexesActive := True;
  mtbl.m.IndexName := _pk;
end;

procedure TReport.gerardatas;
var
  di : TDate;
begin
  di := dti_;
  while di <= dtf_ do
  begin
    mtbl.m.Append;
    mtbl.m.FieldByName(_vlsaldo+_i).AsCurrency        := vlsaldoi;
    mtbl.m.FieldByName(_nmempresa).AsString           := empresa.nmempresa;
    mtbl.m.FieldByName(_dtprorrogacao).AsDateTime     := di;
    mtbl.m.FieldByName(_dti).AsDateTime                 := dti_;
    mtbl.m.FieldByName(_dtf).AsDateTime                 := dtf_;
    mtbl.m.FieldByName(_vlentrada+_p).AsCurrency      := 0;
    mtbl.m.FieldByName(_vlsaida+_p).AsCurrency        := 0;
    mtbl.m.FieldByName(_vlentrada+_r).AsCurrency      := 0;
    mtbl.m.FieldByName(_vlsaida+_r).AsCurrency        := 0;
    mtbl.m.FieldByName(_vlsaldo+_p).AsCurrency        := 0;
    mtbl.m.FieldByName(_vlsaldo+_conta+_p).AsCurrency := 0;
    mtbl.m.FieldByName(_vlsaldo+_r).AsCurrency        := 0;
    mtbl.m.FieldByName(_vlsaldo+_conta+_r).AsCurrency := 0;
    mtbl.m.Post;
    di := di + 1;
  end;
end;

procedure TReport.Atualizar_saldo_Conta(vlsaldo:currency);
var
  vlsaldop, vlsaldor, vlp, vlr : Currency;
begin
  vlp := 0;
  vlr := 0;
  vlsaldop := vlsaldo;
  vlsaldor := vlsaldo;
  mtbl.m.First;
  while not mtbl.m.eof do
  begin
    vlsaldor := vlsaldor + mtbl.m.fieldbyname(_vlsaldo+_r).AsCurrency;
    vlsaldop := vlsaldop + mtbl.m.fieldbyname(_vlsaldo+_p).AsCurrency;
    mtbl.m.Edit;
    mtbl.m.FieldByName(_vlsaldo+_r).AsCurrency        := vlr + mtbl.m.fieldbyname(_vlsaldo+_r).AsCurrency;
    mtbl.m.FieldByName(_vlsaldo+_p).AsCurrency        := vlp + mtbl.m.fieldbyname(_vlsaldo+_p).AsCurrency;
    vlr                                            := mtbl.m.fieldbyname(_vlsaldo+_r).AsCurrency;
    vlp                                            := mtbl.m.fieldbyname(_vlsaldo+_p).AsCurrency;
    mtbl.m.FieldByName(_vlsaldo+_conta+_r).AsCurrency := mtbl.m.FieldByName(_vlsaldo+_conta+_r).AsCurrency + vlsaldor;
    mtbl.m.FieldByName(_vlsaldo+_conta+_p).AsCurrency := mtbl.m.FieldByName(_vlsaldo+_conta+_p).AsCurrency + vlsaldop;
    mtbl.m.Post;
    mtbl.m.next;
  end;
end;

function TReport.MakeTempTable:boolean;
var
  vl: currency;
  procedure processar(tbl:string);
    function makesql: string;
    var
      nmcampo : string;
    begin
      if tbl = _cheque+_e then
      begin
        if bosaldo then nmcampo := _vlsaldo
                   else nmcampo := 'vlcheque';
        result := 'select dtprorrogacao,sum('+nmcampo+') vl'+tbl+' '+
                  'from cheque '+
                  'where cdempresa='+empresa.cdempresa.ToString+' and dtprorrogacao between '+getdtbanco(dti_)+' and '+getdtbanco(dtf_)+' '+
                  'group by dtprorrogacao'
      end
      else if tbl = _cheque+_s then
      begin
        if bosaldo then nmcampo := _vlsaldo
                   else nmcampo := 'vlcheque';
        result := 'select dtprorrogacao,sum('+nmcampo+') vl'+tbl+' '+
                  'from cheque '+
                  'where cdempresa='+empresa.cdempresa.ToString+' and dtprorrogacao between '+getdtbanco(dti_)+' and '+getdtbanco(dtf_)+' and cdstcheque=5 '+
                  'group by dtprorrogacao'
      end
      else if (tbl <> _d) and (tbl <> _c) then
      begin
        if bosaldo then nmcampo := _vlsaldo
                   else nmcampo := 'vl'+tbl;
        result := 'select dtprorrogacao,sum('+nmcampo+') vl'+tbl+' '+
                  'from '+tbl+' '+
                  'where cdempresa='+empresa.cdempresa.ToString+' and dtprorrogacao between '+getdtbanco(dti_)+' and '+getdtbanco(dtf_)+' '+
                  'group by dtprorrogacao'
      end
      else
      begin
        result := 'select dtemissao dtprorrogacao,sum(vllancamento) vl'+tbl+' '+
                  'from movbancario '+
                  'where cdempresa='+empresa.cdempresa.ToString+' '+
                  'and dtemissao between '+getdtbanco(dti_)+' and '+getdtbanco(dtf_)+' '+
                  'and cdnatureza='+quotedstr(tbl)+' '+
                  'group by dtemissao';
      end;
    end;
  var
    nmcampo : string;
  begin
         if tbl = _autpagto  then nmcampo := _vlsaida  + _p
    else if tbl = _d         then nmcampo := _vlsaida  + _r
    else if tbl = _duplicata then nmcampo := _vlentrada+ _p
    else if tbl = _cheque+_e then nmcampo := _vlentrada+ _p
    else if tbl = _cheque+_s then nmcampo := _vlsaida  + _r
    else if tbl = _c         then nmcampo := _vlentrada+ _r;
    q.q.close;
    q.q.sql.text := makesql;
    q.q.Open;
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.Eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      Application.ProcessMessages;
      vl := q.q.fieldbyname(_vl+tbl).ascurrency;
      if mtbl.m.Locate(_dtprorrogacao, q.q.fieldbyname(_dtprorrogacao).AsDateTime, []) then
      begin
        mtbl.m.Edit;
        mtbl.m.FieldByName(nmcampo).AsCurrency := mtbl.m.FieldByName(nmcampo).AsCurrency + vl;

             if tbl = _autpagto  then mtbl.m.FieldByName(_vlsaldo+_p).AsCurrency := mtbl.m.FieldByName(_vlsaldo+_p).AsCurrency - vl
        else if tbl = _d         then mtbl.m.FieldByName(_vlsaldo+_r).AsCurrency := mtbl.m.FieldByName(_vlsaldo+_r).AsCurrency - vl
        else if tbl = _duplicata then mtbl.m.FieldByName(_vlsaldo+_p).AsCurrency := mtbl.m.FieldByName(_vlsaldo+_p).AsCurrency + vl
        else if tbl = _cheque+_e then mtbl.m.FieldByName(_vlsaldo+_p).AsCurrency := mtbl.m.FieldByName(_vlsaldo+_p).AsCurrency + vl
        else if tbl = _cheque+_s then mtbl.m.FieldByName(_vlsaldo+_R).AsCurrency := mtbl.m.FieldByName(_vlsaldo+_r).AsCurrency - vl
        else if tbl = _c         then mtbl.m.FieldByName(_vlsaldo+_r).AsCurrency := mtbl.m.FieldByName(_vlsaldo+_r).AsCurrency + vl;

        mtbl.m.Post;
      end;
      q.q.next;
    end;
  end;
begin
  vl             := 0;
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    frmprogressbar.Show;
    processar(_autpagto);
    processar(_duplicata);
    processar(_cheque+_e);
    processar(_cheque+_s);
    processar(_d);
    processar(_c);
    result := true;
  finally
    freeandnil(frmprogressbar);
  end;
end;

procedure TReport.gerar;
var
  conta : TConta;
begin
  q     := TClasseQuery.Create;
  conta := tconta.create;
  try
    criar_fields;
    vlsaldoi := conta.ValorSaldoInicialContas(dti_, bosaldodia);
    gerardatas;
    if not maketemptable then
    begin
      exit;
    end;
    atualizar_saldo_conta(vlsaldoi);
  finally
    FreeAndNil(q);
    FreeAndNil(conta);
  end;
end;

end.


unit uimp_fluxo_caixa_realizado;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeretornasql, classeempresa, classeaplicacao, classequery;

procedure imp_fluxo_caixa_realizado(mtbl: TDataClient; dti, dtf: Tdate; bosaldo_:boolean=false);

implementation

Type TReport = class
  private
    bosaldo : boolean;
    vlsaldoi : currency;
    dti_, dtf_ : TDate;
    mtbl: TDataClient;
    c : TClasseQuery;
    procedure Atualizar_saldo_Conta(vlsaldo:currency);
    procedure criar_fields;
    procedure gerardatas;
    function  MakeTempTable:boolean;
    function  Valor_Saldo_Inicial_Contas:currency;
  public
    constructor create(mtbl2: TDataClient; dti, dtf:Tdate; bosaldo_:boolean=false);
    procedure   gerar;
  end;

procedure imp_fluxo_caixa_realizado(mtbl: TDataClient; dti, dtf: Tdate; bosaldo_:boolean=false);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, dti, dtf, bosaldo_);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl2: TDataClient; dti, dtf:Tdate; bosaldo_:boolean=false);
begin
  bosaldo := bosaldo_;
  mtbl := mtbl2;
  dti_ := dti;
  dtf_ := dtf;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_dtprorrogacao , ftdate);
  mtbl.m.FieldDefs.Add(_vl+_entrada     , ftcurrency);
  mtbl.m.FieldDefs.Add(_vl+_saida       , ftcurrency);
  mtbl.m.FieldDefs.Add(_vl+_saldo       , ftcurrency);
  mtbl.m.FieldDefs.Add(_vl+_saldo+_conta, ftcurrency);
  mtbl.m.FieldDefs.Add(_nm+_empresa     , ftString, 100);
  mtbl.m.FieldDefs.Add(_vl+_saldo+_i    , ftCurrency);
  mtbl.m.FieldDefs.Add(_dt+_f           , ftDate);
  mtbl.m.FieldDefs.Add(_dt+_i           , ftDate);
  mtbl.m.CreateDataSet;

  with mtbl.m.Indexes.Add do begin
    Name := _pk;
    Fields := _dtprorrogacao;
    Active := True;
  end;
  //mtbl.m.AddIndex(_pk, _dtprorrogacao, [ixprimary, ixunique]);
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
    mtbl.m.FieldByName(_vl+_saldo+_i).AsCurrency     := vlsaldoi;
    mtbl.m.FieldByName(_nm+_empresa).AsString        := empresa.nmempresa;
    mtbl.m.FieldByName(_dtprorrogacao).AsDateTime  := di;
    mtbl.m.FieldByName(_dt+_i).AsDateTime            := dti_;
    mtbl.m.FieldByName(_dt+_f).AsDateTime            := dtf_;
    mtbl.m.FieldByName(_vl+_entrada).AsCurrency      := 0;
    mtbl.m.FieldByName(_vl+_saida).AsCurrency        := 0;
    mtbl.m.FieldByName(_vl+_saldo).AsCurrency        := 0;
    mtbl.m.FieldByName(_vl+_saldo+_conta).AsCurrency := 0;
    mtbl.m.Post;
    di := di + 1;
  end;
end;

procedure TReport.Atualizar_saldo_Conta(vlsaldo:currency);
var
  vlsaldor, vlr : Currency;
begin
  vlr := 0;
  vlsaldor := vlsaldo;
  mtbl.m.First;
  while not mtbl.m.eof do
  begin
    vlsaldor := vlsaldor + mtbl.m.fieldbyname(_vlsaldo).AsCurrency;
    mtbl.m.Edit;
    mtbl.m.FieldByName(_vlsaldo).AsCurrency        := vlr + mtbl.m.fieldbyname(_vlsaldo).AsCurrency;
    vlr                                         := mtbl.m.fieldbyname(_vlsaldo).AsCurrency;
    mtbl.m.FieldByName(_vlsaldo+_conta).AsCurrency := mtbl.m.FieldByName(_vlsaldo+_conta).AsCurrency + vlsaldor;
    mtbl.m.Post;
    mtbl.m.next;
  end;
end;

function TReport.Valor_Saldo_Inicial_Contas:currency;
var
  s : TClasseQuery;
begin
  s  := TClasseQuery.Create('select cdconta from conta where cdempresa='+empresa.cdempresa.ToString+' and cdstconta=1');
  try
    result := 0;
    while not s.q.eof do
    begin
      result := result + RetornaSQLCurrency('select vlsaldo '+
                                                  'from hcontasaldo '+
                                                  'where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+s.q.fieldbyname(_cdconta).asstring+' '+
                                                  'and dthcontasaldo=(select max(dthcontasaldo) '+
                                                                     'from hcontasaldo '+
                                                                     'where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+s.q.fieldbyname(_cdconta).asstring+' and dthcontasaldo<='+getdtbanco(dti_-1)+')');
      s.q.next;
    end;
  finally
    freeandnil(s);
  end;
end;

function TReport.MakeTempTable:boolean;
var
  vl: currency;
  dti_r, dti_p, dtf_r, dtf_p : TDate;
  borealizado, boprevisto : boolean;
  procedure Setdata;
  begin
    if (dti_ <= DtBanco) and (dtf_ < dtbanco) then
    begin
      dti_r       := dti_;
      dtf_r       := dtf_;
      borealizado := true;
      boprevisto  := false;
    end
    else if (dti_ < DtBanco) and (dtf_ >= DtBanco) then
    begin
      dti_r       := dti_;
      dtf_r       := dtbanco-1;
      dti_p       := dtbanco;
      dtf_p       := dtf_;
      borealizado := true;
      boprevisto  := true;
    end
    else //if (dti_ <= DtBanco) and (dtf_ >= DtBanco) then
    begin
      dti_p       := dti_;
      dtf_p       := dtf_;
      borealizado := false;
      boprevisto  := true;
    end;
  end;
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
                  'where cdempresa='+empresa.cdempresa.ToString+' and dtprorrogacao between '+getdtbanco(dti_p)+' and '+getdtbanco(dtf_p)+' '+
                  'group by dtprorrogacao'
      end
      else if tbl = _cheque+_s then
      begin
        if bosaldo then nmcampo := _vlsaldo
                   else nmcampo := 'vlcheque';
        result := 'select dtprorrogacao,sum('+nmcampo+') vl'+tbl+' '+
                  'from cheque '+
                  'where cdempresa='+empresa.cdempresa.ToString+' and dtprorrogacao between '+getdtbanco(dti_r)+' and '+getdtbanco(dtf_r)+' and cdstcheque=5 '+
                  'group by dtprorrogacao'
      end
      else if (tbl <> _d) and (tbl <> _c) then   // previsto
      begin
        if bosaldo then nmcampo := _vlsaldo
                   else nmcampo := 'vl'+tbl;
        result := 'select dtprorrogacao,sum('+nmcampo+') vl'+tbl+' '+
                  'from '+tbl+' '+
                  'where cdempresa='+empresa.cdempresa.ToString+' and dtprorrogacao between '+getdtbanco(dti_p)+' and '+getdtbanco(dtf_p)+' '+
                  'group by dtprorrogacao'
      end
      else                                 // realizado
      begin
        result := 'select dtemissao dtprorrogacao,sum(vllancamento) vl'+tbl+' '+
                  'from movbancario '+
                  'where cdempresa='+empresa.cdempresa.ToString+' and dtemissao between '+getdtbanco(dti_r)+' and '+getdtbanco(dtf_r)+' and cdnatureza='+quotedstr(tbl)+' '+
                  'group by dtemissao';
      end;
    end;
  var
    nmcampo : string;
  begin
         if tbl = _autpagto  then nmcampo := _vlsaida
    else if tbl = _d         then nmcampo := _vlsaida
    else if tbl = _duplicata then nmcampo := _vlentrada
    else if tbl = _cheque+_e then nmcampo := _vlentrada
    else if tbl = _cheque+_s then nmcampo := _vlsaida
    else if tbl = _c         then nmcampo := _vlentrada;

    c.q.close;
    c.q.sql.text := makesql;
    c.q.Open;
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    while not c.q.Eof do
    begin
      frmprogressbar.gau.Progress := c.q.RecNo;
      Application.ProcessMessages;
      vl := c.q.fieldbyname(_vl+tbl).ascurrency;
      if mtbl.m.Locate(_dtprorrogacao, c.q.fieldbyname(_dtprorrogacao).AsDateTime, []) then
      begin
        mtbl.m.Edit;
        mtbl.m.FieldByName(nmcampo).AsCurrency := mtbl.m.FieldByName(nmcampo).AsCurrency + vl;

             if tbl = _autpagto  then mtbl.m.FieldByName(_vl+_saldo).AsCurrency := mtbl.m.FieldByName(_vl+_saldo).AsCurrency - vl
        else if tbl = _d         then mtbl.m.FieldByName(_vl+_saldo).AsCurrency := mtbl.m.FieldByName(_vl+_saldo).AsCurrency - vl
        else if tbl = _duplicata then mtbl.m.FieldByName(_vl+_saldo).AsCurrency := mtbl.m.FieldByName(_vl+_saldo).AsCurrency + vl
        else if tbl = _cheque+_e then mtbl.m.FieldByName(_vl+_saldo).AsCurrency := mtbl.m.FieldByName(_vl+_saldo).AsCurrency + vl
        else if tbl = _cheque+_s then mtbl.m.FieldByName(_vl+_saldo).AsCurrency := mtbl.m.FieldByName(_vl+_saldo).AsCurrency - vl
        else if tbl = _c         then mtbl.m.FieldByName(_vl+_saldo).AsCurrency := mtbl.m.FieldByName(_vl+_saldo).AsCurrency + vl;

        mtbl.m.Post;
      end;
      c.q.next;
    end;
  end;
begin
  vl             := 0;
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    frmprogressbar.Show;
    Setdata;
    if boprevisto then
    begin // previsto
      processar(_autpagto);
      processar(_duplicata);
      processar(_cheque+_e);
    end;
    if borealizado then
    begin // realizado
      processar(_d);
      processar(_c);
      processar(_cheque+_s);
    end;
    result := true;
  finally
    freeandnil(frmprogressbar);
  end;
end;

procedure TReport.gerar;
begin
  c := TClasseQuery.Create;
  try
    criar_fields;
    vlsaldoi := Valor_Saldo_Inicial_contas;
    gerardatas;
    if not maketemptable then
    begin
      exit;
    end;
    atualizar_saldo_conta(vlsaldoi);
  finally
    FreeAndNil(c);
  end;
end;

end.


unit classerelatorio;

interface

uses
  System.Actions, System.UITypes,
  windows, forms, classes, SysUtils, dialogs,
  DB, dbclient,
  ustrings, uConstantes, uprogressbar,
  classeaplicacao, classeRetornaSql, classeempresa, classequery;

type
  TRelatorio = class(TObject)
  private
  public
    c2, c: TClasseQuery;
    qt : TClientDataSet;
    dts: TDataSource;
    linha : TStrings;
    nucol, l, nupagina: Integer;
    tbl, tpdata : string;
    procedure closeprogressbar;
    constructor create;
    procedure Destruir;
    procedure FillLine(letra: char);
    procedure IncGau;
    procedure inicializar;
    function  NaoExisteRegistro:boolean;
    function  nmdata:string;
    procedure SetProgressBar;
    procedure SetTempTable(nmfield, tpfield, tmfield:string);
    function  get_script(cdreport:integer):string;
  end;

implementation

function TRelatorio.nmdata:string;
begin
  if tpdata = Maiuscula(__emissao) then
  begin
    result := _dtemissao
  end
  else if tpdata = Maiuscula(_Baixa)       then
  begin
    result := _dtbaixa
  end
  else if tpdata = 'Prorrogação'           then
  begin
    nmdata := _dtprorrogacao
  end
  else if tpdata = Maiuscula(_Vencimento)  then
  begin
    if tbl = _cheque then
    begin
      result := _dtvencimento
    end
    else
    begin
      result := _dtprorrogacao
    end;
  end
  else if tpdata = Maiuscula(_Entrada)     then
  begin
    if (tbl = _entrada) or (tbl = _autpagto) then
    begin
      result := _dtsaida
    end
    else
    begin
      result := _dtentrada;
    end;
  end;
end;

procedure TRelatorio.FillLine(letra: char);
begin
  linha.add(stringofchar(letra, nucol));
end;

function TRelatorio.get_script(cdreport: integer): string;
begin
  result := retornasqlstring('select dsscript from report where cdreport='+inttostr(cdreport));
end;

function TRelatorio.NaoExisteRegistro: boolean;
begin
  result := false;
  if c.q.recordcount < 1 then
  begin
    result := true;
    messagedlg(_msg01, mtinformation, [mbok], 0);
  end;
end;

procedure TRelatorio.Destruir;
begin
  freeandnil(linha);
  freeandnil(dts);
  freeandnil(c);
  freeandnil(c2);
  freeandnil(qt);
  freeandnil(frmprogressbar);
end;

procedure TRelatorio.SetProgressBar;
begin
  frmprogressbar.gau.MaxValue := c.q.RecordCount;
  frmprogressbar.Show;
end;

procedure TRelatorio.IncGau;
begin
  frmprogressbar.gau.Progress := c.q.RecNo;
  frmprogressbar.pnl.Caption  := 'Processando... Registro '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
  Application.ProcessMessages;
end;

procedure TRelatorio.SetTempTable(nmfield, tpfield, tmfield:string);
var
  i : integer;
  nm, tp, tm: TStrings;
  procedure criar_Strings;
  begin
    nm := TStringList.create;
    tp := TStringList.create;
    tm := TStringList.create;
  end;
  procedure Destruir_Strings;
  begin
    freeandnil(nm);
    freeandnil(tp);
    freeandnil(tm);
  end;
begin
  criar_strings;
  try
    nm.Text := nmfield;
    tp.Text := tpfield;
    tm.Text := tmfield;
    qt.FieldDefs.Clear;
    for i := 0 to nm.count -1 do
    begin
      if tp[i] = _integer then
      begin
        qt.FieldDefs.Add(nm[i],ftInteger)
      end
      else if tp[i] = _fmtbcd   then
      begin
        qt.FieldDefs.Add(nm[i],ftFMTBcd)
      end
      else if tp[i] = _string   then
      begin
        qt.FieldDefs.Add(nm[i],ftString,strtoint(tm[i]),false)
      end
      else if tp[i] = _currency then
      begin
        qt.fieldDefs.Add(nm[i],ftCurrency)
      end
      else if tp[i] = _date     then
      begin
        qt.fieldDefs.add(nm[i],ftDate)
      end
      else if tp[i] = _time     then
      begin
        qt.fieldDefs.add(nm[i],ftTime)
      end;
    end;
    qt.close;
    qt.CreateDataSet;
  finally
    destruir_strings;
  end;
end;

procedure TRelatorio.closeprogressbar;
begin
  frmprogressbar.Close;
end;

procedure TRelatorio.inicializar;
begin
  c.q.Close;
  qt.Close;
  linha.clear;
  nucol    := 120;
  nupagina := 0;
  l        := 0;
end;

constructor TRelatorio.create;
begin
  linha           := TStringList.create;
  c               := TClasseQuery.Create;
  c2              := TClasseQuery.Create;
  qt              := TClientDataSet.Create(nil);
  dts             := TDataSource.create(nil);
  frmprogressbar  := tfrmprogressbar.Create(nil);
  dts.dataset     := c.q;
  nucol           := 120;
end;

end.

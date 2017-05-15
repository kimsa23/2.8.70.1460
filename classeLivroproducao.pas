unit classeLivroproducao;

interface

uses
  System.Actions, System.UITypes,
  dialogs, classes, forms, gauges, controls, sysutils, windows,
  sqlexpr, dbclient, Provider,
  adqistrings, adqiprogressbar, untdatahora, adqiregistro, adqiconstantes,
  classeaplicacao, classeempresa, classeretornasql, classeexecutasql,
  classeusuario, classegerar, classeregistrainformacao, classequery;

type
  TLivroProducao= class(tobject)
  private
    sql: TStrings;
    tsregistro: TDateTime;
    dia, ultimo_dia : integer;
    gau, gau1: TGauge;
    vlipisaida, vlbaseipisaida, qtitemsaida, vlbaseipientrada, vlipientrada, qtitementrada : currency;
    cdgrupo, cdproduto : TStrings;
    sqlregistralocal: string;
    cdproduto_ : integer;
    qtestoque : array of double;
    function  dtfs:string;
    function  dtis:string;
    procedure Gerar;
    procedure IncrementarGauge(gau:TGauge);
    procedure Inserir;
    function  makesqlentrada:string;
    function  MakeSQLMovTo(tipo:string):string;
    function  MakeSQLSaida(tipo:string):string;
    procedure PreencherParamProduto    (qtestoque: double; cdproduto : string);
    procedure PreencherParamEntrada    (c: TClasseQuery; qtestoque: double; cdproduto         : string);
    procedure PreencherParamMovto      (c: TClasseQuery; qtestoque: double; cdproduto         : string);
    procedure PreencherParamSaida      (c: TClasseQuery; qtestoque: double; cdproduto         : string);
    procedure processarRegistro        (tbl, tp: string; c: TClasseQuery);
    function  QuantidadeEstoqueAnterior(cdproduto: string):Double;
    procedure registrarprodutosemmovimentacao;
    procedure RegistrarTabelaConsulta(tbl: string);
    procedure setproduto             (var I :integer; c: TClasseQuery);
  public
    cdlivro : integer;
    dti, dtf :TDate;
    constructor create;
    function  DataUltimo:TDate;
    procedure ConsisteAlterar(dt:TDate);
    function  ReprocessarProduto(codigo, cdproduto:Integer):Boolean;
    function  Novo:integer;
    function  ImprimirTermoAbertura    :boolean;
    function  ImprimirTermoEncerramento:boolean;
    function  Imprimir:boolean;
    function  ImprimirImpostomes       :boolean;
    function  ImprimirImposto          :boolean;
    function  ImprimirResumoMovimentacao:boolean;
    function  ImprimirResumoMovimentacaoMP:boolean;
  end;

implementation

{$IFDEF VER210}
uses adqiLivroProducaoImprimir,
  adqiLivroProducaoImprimirImposto;
{$ENDIF}

function TLivroProducao.ImprimirResumoMovimentacao:boolean;
begin
  {$IFDEF VER210}result:= imprimirlivroproducaoresumomovimentacao(cdlivro);{$ENDIF}
end;

function TLivroProducao.ImprimirResumoMovimentacaoMP:boolean;
begin
  {$IFDEF VER210}result:=imprimirlivroproducaoresumomovimentacao(cdlivro, 'MP');{$ENDIF}
end;

function TLivroProducao.ImprimirImposto:boolean;
{$IFDEF VER210}
var
  dti, dtf : TDateTime;
{$ENDIF}
begin
  result := false;
  {$IFDEF VER210}
  try
    dti := StrToDate(inputbox('Parâmetro do Relatório', 'Digite a data inicial', ''));
  except
    messagedlg('Data inválida.', mtinformation, [mbok],0);
    Exit;
  end;
  try
    dtf  := StrToDate(inputbox('Parâmetro do Relatório', 'Digite a data final', ''));
  except
    messagedlg('Data inválida.', mtinformation, [mbok],0);
    Exit;
  end;
  result := imprimirlivroproducaoimposto(FormatDateTime(_mm_dd_yyyy, dti), FormatDateTime(_mm_dd_yyyy, dtf));{$ENDIF}
end;

function TLivroProducao.ImprimirImpostomes:boolean;
{$IFDEF VER210}
var
  dtis, dtfs : string;
  dti, dtf   : TDateTime;
{$ENDIF}
begin
  result := false;
  {$IFDEF VER210}
  dtis := inputbox('Parâmetro do Relatório', 'Digite a data inicial', '');
  try
    dti  := StrToDate(dtis);
  except
    messagedlg('Data inválida.', mtinformation, [mbok],0);
    Exit;
  end;
  dtfs := inputbox('Parâmetro do Relatório', 'Digite a data final', '');
  try
    dtf  := StrToDate(dtfs);
  except
    messagedlg('Data inválida.', mtinformation, [mbok],0);
    Exit;
  end;
  result := imprimirlivroproducaoimpostomes(FormatDateTime('mm/dd/yyyy', dti), FormatDateTime('mm/dd/yyyy', dtf));
  {$ENDIF}
end;

function TLivroProducao.ImprimirTermoEncerramento:boolean;
{$IFDEF VER210}
var
  nupaginas, nuordem : integer;
  nupaginass, nuordems, dtfims : string;
  dtfim : TDate;
{$ENDIF}
begin
  result := false;
  {$IFDEF VER210}
  nupaginass := inputbox('Folha final', 'Informe o número da folha final', '');
  try
    nupaginas := strtoint(nupaginass);
  except
    messagedlg('Numero da folha final inválido.', mtinformation, [mbok], 0);
    exit;
  end;
  nuordems := inputbox('Número Ordem', 'Informe o número da ordem', '');
  try
    nuordem := strtoint(nuordems);
  except
    messagedlg('Numero da ordem inválido.', mtinformation, [mbok], 0);
    exit;
  end;
  dtfims := inputbox('Data de término', 'Informe a data de término', '');
  if dtfims = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_data+' '+_de+' '+__termino]), mtinformation, [mbok], 0);
    exit;
  end;
  try
    dtfim := strtodate(dtfims);
  except
    messagedlg('Data término inválida.', mtinformation, [mbok], 0);
    exit;
  end;
  result :=imprimirlivroproducaotermo(_encerramento, nupaginas, nuordem, dtfim);{$ENDIF}
end;

function TLivroProducao.Imprimir:boolean;
{var
  nufolhas : string;
  nufolha  : integer;}
begin
  result := false;
  exit;
  {
  try
    nufolhas := inputbox('Folha inicial', 'Informe o número da folha inicial', '');
    nufolha  := StrToInt(nufolhas);
    result   := imprimirlivroproducao(cdlivro, nufolha);
  except
    messagedlg('Numero da folha inicial inválido.', mtinformation, [mbok], 0);
  end;
  }
end;

function TLivroProducao.ImprimirTermoAbertura:boolean;
{$IFDEF VER210}
var
  nupaginas, nuordem : integer;
  nupaginass, nuordems, dtinicios : string;
  dtinicio : TDate;
{$ENDIF}
begin
  result     := false;
  {$IFDEF VER210}
  nupaginass := inputbox('Folha Final', 'Informe o número da folha final', '');
  try
    nupaginas := strtoint(nupaginass);
  except
    messagedlg('Numero da folha final inválido.', mtinformation, [mbok], 0);
    exit;
  end;
  nuordems := inputbox('Número Ordem', 'Informe o número da ordem', '');
  try
    nuordem := strtoint(nuordems);
  except
    messagedlg('Numero da ordem inválido.', mtinformation, [mbok], 0);
    exit;
  end;
  dtinicios := inputbox('Data de início', 'Informe a data de início', '');
  if dtinicios = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_data+' '+_de+' '+__inicio]), mtinformation, [mbok], 0);
    exit;
  end;
  try
    dtinicio := strtodate(dtinicios);
  except
    messagedlg('Data inicial inválida.', mtinformation, [mbok], 0);
    exit;
  end;
  result := imprimirlivroproducaotermo(_abertura, nupaginas, nuordem, dtinicio);{$ENDIF}
end;

procedure TLivroProducao.RegistrarTabelaConsulta(tbl: string);
  function qt_estoque(codigo:string):currency;
    function makesql:string;
    begin
      result := 'select first 1 i.qtestoque '+
                'from itlivro i '+
                'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdlivro='+cdlivro.ToString+' and p.cd'+tbl+'='+codigo+' ';
      if cdproduto_ <> 0 then
      begin
        result := result + 'and p.cdproduto='+cdproduto_.ToString+' ';
      end;
      result := result +'order by i.cditlivro desc';
    end;
  begin
    Result := RetornaSQLCurrency(makesql)
  end;
  function qtitens(q:TClasseQuery):integer;
  begin
    result := 0;
    q.q.First;
    while not q.q.Eof do
    begin
      inc(result);
      q.q.Next;
    end;
    q.q.First;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.text  := 'select i.cdlivro'+
                            ',p.cd'+tbl+
                            ',sum(i.QTITEMENTRADA) QTITEMENTRADA'+
                            ',sum(i.VLBASEIPIENTRADA) VLBASEIPIENTRADA'+
                            ',sum(i.VLIPIENTRADA) VLIPIENTRADA'+
                            ',sum(i.QTITEMSAIDA) QTITEMSAIDA'+
                            ',sum(i.VLBASEIPISAIDA) VLBASEIPISAIDA'+
                            ',sum(i.VLIPISAIDA) VLIPISAIDA'+
                            ',sum(i.QTENTPROPRIO) QTENTPROPRIO'+
                            ',sum(i.QTENTOUTRO) QTENTOUTRO'+
                            ',sum(i.QTSAIPROPRIO) QTSAIPROPRIO'+
                            ',sum(i.QTSAIOUTRO) QTSAIOUTRO '+
                       'from itlivro i '+
                       'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                       'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdlivro='+cdlivro.ToString+' and p.cd'+tbl+' is not null ';
    if cdproduto_ <> 0 then
    begin
      q.q.sql.text := q.q.sql.text + ' and p.cdproduto='+cdproduto_.ToString+' ';
    end;
    q.q.sql.text := q.q.sql.text +' group by i.cdlivro,p.cd'+tbl;
    q.q.Open;
    gau.MaxValue := qtitens(q);
    gau.Progress := 0;
    while not q.q.Eof do
    begin
      gau.Progress := gau.Progress + 1;
      application.ProcessMessages;
      sql.Add('delete from livro'+tbl+' where cdempresa='+empresa.cdempresa.tostring+' and cdlivro='+q.q.fieldbyname(_cdlivro).Asstring+' and cd'+tbl+'='+q.q.fieldbyname(_cd+tbl).AsString+';');
      sql.add('insert into livro'+tbl+'('+
              'cdlivro,cd'+tbl+',qtestoque,qtitementrada,vlbaseipientrada,vlipientrada,qtitemsaida,vlbaseipisaida,vlipisaida,qtentproprio,'+
              'qtentoutro,qtsaiproprio,qtsaioutro,'+_sqlreg+
              q.q.fieldbyname(_cdlivro).AsString+','+
              q.q.fieldbyname(_cd+tbl).AsString +',0,'+
              getcurrencys(q.q.fieldbyname(_QTITEMENTRADA).AsCurrency)+','+
              getcurrencys(q.q.fieldbyname(_VLBASEIPIENTRADA).AsCurrency)+','+
              getcurrencys(q.q.fieldbyname(_VLIPIENTRADA).AsCurrency    )+','+
              getcurrencys(q.q.fieldbyname(_QTITEMSAIDA).AsCurrency     )+','+
              getcurrencys(q.q.fieldbyname(_VLBASEIPISAIDA).AsCurrency  )+','+
              getcurrencys(q.q.fieldbyname(_VLIPISAIDA).AsCurrency      )+','+
              getcurrencys(q.q.fieldbyname(_QTENTPROPRIO).AsCurrency    )+','+
              getcurrencys(q.q.fieldbyname(_QTENTOUTRO).AsCurrency      )+','+
              getcurrencys(q.q.fieldbyname(_QTSAIPROPRIO).AsCurrency    )+','+
              getcurrencys(q.q.fieldbyname(_QTSAIOUTRO).AsCurrency      )+','+
              sqlregistralocal+';');
      q.q.Next;
    end;
    q.q.close;
    q.q.sql.text := 'select p.cd'+tbl+
                          ',sum(i.qtestoque) qtestoque '+
                     'from itlivro i '+
                     'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                     'inner join vw_livro_nuitlivro vw on vw.cdlivro=i.cdlivro and vw.cditlivro=i.cditlivro and i.cdempresa=vw.cdempresa '+
                     'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdlivro='+cdlivro.ToString+' ';
    if cdproduto_ <> 0 then
    begin
      q.q.sql.text := q.q.sql.text + 'and p.cdproduto='+cdproduto_.ToString+' ';
    end;
    q.q.sql.text := q.q.sql.text +'group by p.cd'+tbl;
    q.q.open;
    while not q.q.eof do
    begin
      if not q.q.fieldbyname(_cd+tbl).IsNull then
      begin
        sql.add('update livro'+tbl+' '+
                'set qtestoque='+getcurrencys(q.q.fieldbyname(_qtestoque).AsCurrency)+' '+
                'where cdempresa='+empresa.cdempresa.tostring+' and cdlivro='+cdlivro.ToString+' and cd'+tbl+'='+q.q.fieldbyname(_cd+tbl).asstring+';');
      end;
      q.q.next;
    end;
    gau1.Progress := gau1.Progress + 1;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroProducao.PreencherParamSaida(c: TClasseQuery; qtestoque: double; cdproduto : string);
var
  vlipisaida_ :currency;
begin
  if c.q.fieldbyname(_TPENTSAI).Asstring = _S then
  begin
    qtitemsaida    := qtitemsaida    + c.q.fieldbyname(_QTITEM).AsCurrency;
    vlipisaida     := vlipisaida     + c.q.fieldbyname(_VLIPI).AsCurrency;
    vlbaseipisaida := vlbaseipisaida + c.q.fieldbyname(_vlbaseipi).AsCurrency;
    vlipisaida_    := 0;
    if c.q.fieldbyname(_CDTPSAIDA).AsInteger <> 13 then
    begin
      vlipisaida_ := c.q.fieldbyname(_VLIPI).AsCurrency;
    end;
    sql.add('insert into itlivro(cdlivro,cdproduto,cditlivro,cditsaida,'+
            'dsespecie,nudocumento,dtsaida,numes,nudia,tpentsai,qtestoque,'+
            'nulivro,nufolha,qtitemsaida,vlbaseipisaida,vlipisaida,'+_sqlreg+
            cdlivro.ToString+','+cdproduto+','+gerarcodigo(_it+_livro)+','+
            c.q.fieldbyname(_cdITSAIDA).Asstring      +',''NF'','+
            c.q.fieldbyname(_NUSAIDA).Asstring        +','+
            getdtbanco(c.q.fieldbyname(_DTEMISSAO).Asdatetime)+','+
            formatdatetime(_mm, c.q.fieldbyname(_DTEMISSAO).Asdatetime)+','+
            formatdatetime(_dd, c.q.fieldbyname(_DTEMISSAO).Asdatetime)+','+
            quotedstr(c.q.fieldbyname(_TPENTSAI).Asstring)+','+
            getcurrencys(qtestoque)+','+
            getnull(c.q.fieldbyname(_NULIVRO).Asstring)+  ','+
            getnull(c.q.fieldbyname(_NUFOLHA).Asstring)+  ','+
            getcurrencys(c.q.fieldbyname(_QTITEM).AsCurrency)+  ','+
            getcurrencys(c.q.fieldbyname(_vlbaseipi).AsCurrency)+  ','+
            getcurrencys(vlipisaida_)+','+
            sqlregistralocal+';');
  end
  else
  begin
    qtitementrada    := qtitementrada    + c.q.fieldbyname(_QTITEM).AsCurrency;
    vlipientrada     := vlipientrada     + c.q.fieldbyname(_VLIPI).AsCurrency;
    vlbaseipientrada := vlbaseipientrada + c.q.fieldbyname(_vlbaseipi).AsCurrency;
    sql.add('insert into itlivro(cdlivro,cdproduto,cditlivro,cditsaida,'+
            'dsespecie,nudocumento,dtsaida,numes,nudia,tpentsai,qtestoque,'+
            'nulivro,nufolha,qtitementrada,vlbaseipientrada,vlipientrada,'+_sqlreg+
            cdlivro.ToString+','+cdproduto+','+gerarcodigo(_it+_livro)+','+
            c.q.fieldbyname(_cditsaida).Asstring    +',''NF'','+
            c.q.fieldbyname(_NUSAIDA).Asstring        +','+
            getdtbanco(c.q.fieldbyname(_DTEMISSAO).Asdatetime)+','+
            formatdatetime(_mm       , c.q.fieldbyname(_DTEMISSAO).Asdatetime)+','+
            formatdatetime(_dd       , c.q.fieldbyname(_DTEMISSAO).Asdatetime)+','+
            quotedstr(c.q.fieldbyname(_TPENTSAI).Asstring)                     +','+
            getcurrencys(qtestoque)+','+
            getnull(c.q.fieldbyname(_NULIVRO).Asstring)+  ','+
            getnull(c.q.fieldbyname(_NUFOLHA).Asstring)+  ','+
            getcurrencys(c.q.fieldbyname(_QTITEM).AsCurrency   )+  ','+
            getcurrencys(c.q.fieldbyname(_vlbaseipi).AsCurrency)+  ','+
            getcurrencys(c.q.fieldbyname(_VLIPI).AsCurrency    )+  ','+
            sqlregistralocal+';');
  end;
end;

procedure TLivroProducao.PreencherParamMovto(c: TClasseQuery; qtestoque: double; cdproduto : string);
var
  vlipientrada_, vlbaseipientrada_, qtentproprio_, vlipisaida_, vlbaseipisaida_, QTSAIPROPRIO_ : double;
  observacao_ : string;
begin
  QTSAIPROPRIO_     := 0;
  vlbaseipisaida_   := 0;
  qtentproprio_     := 0;
  observacao_       := _null;
  vlipientrada_     := 0;
  vlipisaida_       := 0;
  vlbaseipientrada_ := 0;
  if c.q.fieldbyname(_TPMOVTO).Asstring = _S then
  begin
    qtitemsaida   := qtitemsaida + c.q.fieldbyname(_QTITEM).AsCurrency;
    QTSAIPROPRIO_ := c.q.fieldbyname(_QTITEM).AsCurrency;
    if (not c.q.fieldbyname(_cdsaida).isnull) and (c.q.fieldbyname(_vlipi).AsCurrency > 0) then
    begin
      vlbaseipisaida  := vlbaseipisaida + c.q.fieldbyname(_vlbaseipi).AsCurrency;
      vlbaseipisaida_ := c.q.fieldbyname(_vlbaseipi).AsCurrency;
      vlipisaida_     := c.q.fieldbyname(_vlipi).AsCurrency;
      observacao_     := quotedstr('NF. '+ c.q.fieldbyname(_nusaida).Asstring);
    end
    else
    begin
      vlbaseipisaida  := vlbaseipisaida + c.q.fieldbyname(_vltotal).AsCurrency;
      vlbaseipisaida_ := c.q.fieldbyname(_vltotal).AsCurrency;
    end;
  end
  else
  begin
    qtitementrada := qtitementrada + c.q.fieldbyname(_QTITEM).AsCurrency;
    qtentproprio_ := c.q.fieldbyname(_QTITEM).AsCurrency;
    if (not c.q.fieldbyname(_cdsaida).isnull) and (c.q.fieldbyname(_vlipi).AsCurrency > 0) then
    begin
      vlbaseipientrada  := vlbaseipientrada + c.q.fieldbyname(_vlbaseipi).AsCurrency;
      vlbaseipientrada_ := c.q.fieldbyname(_vlbaseipi).AsCurrency;
      vlipientrada_     := c.q.fieldbyname(_vlipi).AsCurrency;
      observacao_       := quotedstr('NF. '+ c.q.fieldbyname(_nusaida).Asstring);
    end
    else
    begin
      vlbaseipientrada  := vlbaseipientrada + c.q.fieldbyname(_vltotal).AsCurrency;
      vlbaseipientrada_ := c.q.fieldbyname(_vltotal).AsCurrency;
    end;
  end;
  sql.add('insert into itlivro('+
          'cdlivro,cdproduto,cditlivro,cditmovto,dsespecie,nudocumento,'+
          'dtsaida,numes,nudia,tpentsai,qtestoque,QTSAIPROPRIO,vlbaseipisaida,'+
          'vlipisaida,observacao,qtentproprio,vlbaseipientrada,vlipientrada,'+_sqlreg+
          cdlivro.ToString+','+cdproduto+','+gerarcodigo(_it+_livro)+','+
          c.q.fieldbyname(_cdITMOVTO).Asstring    +','+
          quotedstr(copy(c.q.fieldbyname(_NMTPMOVTO).AsString, 1, 5))+','+
          c.q.fieldbyname(_CD+_MOVTO).Asstring+','+
          getdtbanco(c.q.fieldbyname(_DTEMISSAO).Asdatetime)+','  +
          formatdatetime(_mm, c.q.fieldbyname(_DTEMISSAO).Asdatetime)       +  ','  +
          formatdatetime(_dd, c.q.fieldbyname(_DTEMISSAO).Asdatetime)       +  ','+
          quotedstr(c.q.fieldbyname(_TPMOVTO).Asstring)                    +','  +
          getcurrencys(qtestoque)+','+
          getcurrencys(QTSAIPROPRIO_)+','+
          getcurrencys(vlbaseipisaida_)+','+
          getcurrencys(vlipisaida_)+','+
          observacao_+','+
          getcurrencys(qtentproprio_)+','+
          getcurrencys(vlbaseipientrada_)+','+
          getcurrencys(vlipientrada_)+','+
          sqlregistralocal+';');
end;

procedure TLivroProducao.PreencherParamEntrada(c: TClasseQuery; qtestoque: double; cdproduto : string);
begin
  sql.add('insert into itlivro'+
          '(cdlivro,cdproduto,cditlivro,cditentrada,dsespecie,'+
           'nudocumento,dtsaida,numes,nudia,tpentsai,qtitementrada,vlbaseipientrada,'+
           'vlipientrada,qtestoque,nulivro,nufolha,'+_sqlreg+
           cdlivro.ToString+','+cdproduto+','+gerarcodigo(_it+_livro)+','+
           c.q.fieldbyname(_cdITENTRADA).Asstring+',''NF'','+
           c.q.fieldbyname(_NUENTRADA).Asstring+','+
           getdtbanco(c.q.fieldbyname(_DTSAIDA).Asdatetime)+','+
           formatdatetime(_mm, c.q.fieldbyname(_DTSAIDA).Asdatetime)+','+
           formatdatetime(_dd, c.q.fieldbyname(_DTSAIDA).Asdatetime)+',''E'','+
           getcurrencys(c.q.fieldbyname(_QTITEM).AsCurrency   )+','+
           getcurrencys(c.q.fieldbyname(_vlbaseipi).AsCurrency)+','+
           getcurrencys(c.q.fieldbyname(_VLIPI).AsCurrency    )+','+
           getcurrencys(qtestoque                            )+','+
           getnull(c.q.fieldbyname(_NULIVRO).Asstring)+','+
           getnull(c.q.fieldbyname(_NUFOLHA).Asstring)+','+SQLRegistralocal+';');
  qtitementrada    := qtitementrada    + c.q.fieldbyname(_QTITEM).AsCurrency;
  vlipientrada     := vlipientrada     + c.q.fieldbyname(_VLIPI).AsCurrency;
  vlbaseipientrada := vlbaseipientrada + c.q.fieldbyname(_vlbaseipi).AsCurrency;
end;

procedure TLivroProducao.setproduto(var I :integer; c: TClasseQuery);
begin
  i := cdproduto.IndexOf(c.q.fieldbyname(_cdproduto).AsString);
  if i >= 0 then
  begin
    exit;
  end;
  cdproduto.add(c.q.fieldbyname(_cdproduto).AsString);
  cdgrupo.add(NomedoCodigo(_produto, c.q.fieldbyname(_cdproduto).AsString, _cdgrupo));
  i := cdproduto.Count - 1;
  SetLength(qtestoque, i + 1);
  qtestoque[i] := QuantidadeEstoqueAnterior(cdproduto[i]);
end;

procedure TLivroProducao.processarRegistro(tbl, tp: string; c: TClasseQuery);
var
  nmdata : string;
  i : integer;
  procedure setdata;
  begin
         if tbl = _entrada                   then nmdata := _dtsaida
    else if tbl = _producao                  then nmdata := _dtproducao
    else if (tbl = _saida) or (tbl = _movto) then nmdata := _dtemissao
  end;
begin
  if c.q.fieldbyname(_cdproduto).AsString = '' then
  begin
    exit;
  end;
  setproduto(i, c);
  setdata;
  while not c.q.Eof do
  begin
    if c.q.fieldbyname(nmdata).AsDatetime > dti then
    begin
      break;
    end;
    if c.q.fieldbyname(_cdproduto).AsString <> cdproduto[i] then
    begin
      setproduto(i, c);
    end;
    if tbl = _entrada then
    begin
      qtestoque[i] := qtestoque[i] + c.q.fieldbyname(_QTITEM).AsCurrency;
      PreencherParamEntrada(c, qtestoque[i], cdproduto[i]);
    end
    else if tbl = _movto then
    begin
           if tp = _E then qtestoque[i] := qtestoque[i] + c.q.fieldbyname(_QTITEM).AsCurrency
      else if tp = _S then qtestoque[i] := qtestoque[i] - c.q.fieldbyname(_QTITEM).AsCurrency;
      PreencherParamMovto(c, qtestoque[i], cdproduto[i]);
    end
    else if tbl = _saida then
    begin
           if tp = _E then qtestoque[i] := qtestoque[i] + c.q.fieldbyname(_QTITEM).AsCurrency
      else if tp = _S then qtestoque[i] := qtestoque[i] - c.q.fieldbyname(_QTITEM).AsCurrency;
      PreencherParamSaida(c, qtestoque[i], cdproduto[i]);
    end;
    c.q.Next;
  end;
end;

function TLivroProducao.MakeSQLSaida(tipo:string):string;
begin
  result := 'select s.cdsaida' +
                  ',s.nusaida' +
                  ',s.dtemissao' +
                  ',t.tpentsai' +
                  ',s.cdtpsaida' +
                  ',i.cditsaida' +
                  ',i.cdproduto' +
                  ',i.qtitem' +
                  ',i.vlbaseipi' +
                  ',i.vlipi' +
                  ',0 NULIVRO' +
                  ',0 NUFOLHA ' +
                  //',R.NULIVRO' +
                  //',R.NUFOLHA ' +
             'from saida s ' +
             'inner join itsaida i on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa ' +
             'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa ' +
             'inner join cfop c on c.cdcfop=i.cdcfop '+
             'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa ' +
             'inner join grupo g on p.cdgrupo=g.cdgrupo and p.cdempresa=g.cdempresa ' +
             //'left join reglivro r on r.cdsaida=s.cdsaida and r.cdempresa=s.cdempresa '+
             'where s.cdempresa='+empresa.cdempresa.tostring+' and (p.bogerarlivroproducao=''S'' or g.bogerarlivroproducao=''S'') and c.BOLIVROPRODUCAO=''S'' and s.dtemissao between '+quotedstr(dtis)+' and '+quotedstr(dtfs)+' and s.tpentsai='+quotedstr(tipo)+' ';
  if cdproduto_ <> 0 then
  begin
    result := result + 'and p.cdproduto='+cdproduto_.ToString+' ';
  end;
  result := result +'order by s.dtemissao';
end;

function TLivroProducao.MakeSQLMovTo(tipo:string):string;
begin
  result := 'select m.cdmovto'+
                  ',i.cdproduto'+
                  ',i.cditmovto'+
                  ',m.dtemissao'+
                  ',t.tpmovto'+
                  ',t.nmtpmovto'+
                  ',i.qtitem'+
                  ',i.vltotal'+
                  ',IT.cdsaida'+
                  ',m.cditsaida' +
                  ',it.vlipi' +
                  ',it.vlbaseipi' +
                  ',s.nusaida' +
                  ',s.tpentsai '+
            'from movto m '+
            'inner join itmovto i on m.cdmovto=i.cdmovto and i.cdempresa=m.cdempresa '+
            'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
            'inner join grupo g on p.cdgrupo=g.cdgrupo and g.cdempresa=p.cdempresa '+
            'inner join tpmovto t on m.cdtpmovto=t.cdtpmovto and t.cdempresa=m.cdempresa '+
            'left join itsaida it on it.cditsaida=m.cditsaida and it.cdempresa=m.cdempresa '+
            'left join saida s on s.cdsaida=IT.cdsaida and s.cdempresa=it.cdempresa '+
            'where m.cdempresa='+empresa.cdempresa.tostring+' and (g.bogerarlivroproducao=''S'' or p.bogerarlivroproducao=''S'') and m.dtemissao between '+quotedstr(dtis)+' and '+quotedstr(dtfs)+' and tpmovto='+quotedstr(tipo)+' ';
  if cdproduto_ <> 0 then
  begin
    result := result + _and+' p.cdproduto='+cdproduto_.ToString+' ';
  end;
  result := result +'order by m.dtemissao';
end;

function TLivroProducao.makesqlEntrada:string;
begin
  result := 'select E.CDENTRADA,'   +
                   'I.cdITENTRADA,'+
                   'I.CDPRODUTO,'  +
                   'E.NUENTRADA,'    +
                   'E.DTSAIDA,'      +
                   '0 NULIVRO,'     +
                   '0 NUFOLHA,'     +
                   //'R.NULIVRO,'     +
                   //'R.NUFOLHA,'     +
                   'i.QTITEM,'     +
                   'I.VLIPI,'      +
                   'I.VLBASEIPI '  +
            'from entrada e '+
            'inner join itentrada i on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
            'left join cfop c on c.cdcfop=i.cdcfop '+
            'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
            'inner join grupo g on p.cdgrupo=g.cdgrupo and g.cdempresa=p.cdempresa '+
            //'left join reglivro r on r.cdentrada=e.cdentrada and r.cdempresa=e.cdempresa '+
            'where e.cdempresa='+empresa.cdempresa.tostring+' '+
            'and (g.bogerarlivroproducao=''S'' or p.bogerarlivroproducao=''S'' ) and c.bolivroproducao=''S'' '+
            'and e.dtsaida between '+quotedstr(dtis)+' and '+quotedstr(dtfs)+' ';
  if cdproduto_ <> 0 then
  begin
    result := result + _and+' p.cdproduto='+cdproduto_.ToString+' ';
  end;
  result := result + 'order by e.dtsaida';
end;

procedure TLivroProducao.PreencherParamProduto(qtestoque: double; cdproduto : string);
begin
  sql.add('insert into itlivro(cdlivro,cdproduto,cditlivro,dsespecie,dtsaida,numes,nudia,qtestoque,'+_sqlreg+
          cdlivro.ToString+','+cdproduto+','+gerarcodigo(_it+_livro)+',''SALD'','+
          getdtbanco(dti)+','+
          formatdatetime(_mm, dti)+','+
          formatdatetime(_dd, dti)+','+
          getcurrencys(qtestoque)+','+
          sqlregistralocal+';');
end;

function TLivroProducao.QuantidadeEstoqueAnterior(cdproduto: string):Double;
begin
  result := RetornaSQLcurrency('select first 1 itlivro.qtestoque '+
                                     'from itlivro '+
                                     'where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto+' and cdlivro<'+cdlivro.ToString+' '+
                                     'order by cdlivro desc,cditlivro desc');
end;

procedure TLivroProducao.registrarprodutosemmovimentacao;
var
  c : TClasseQuery;
  i : integer;
begin
  c := TClasseQuery.Create();
  try
    c.q.sql.Text   := 'select i.cdproduto'+
                            ',p.cdgrupo'+
                            ',i.qtestoque '+
                      'from itlivro i '+
                      'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                      'inner join vw_itlivro_max vw on vW.cdproduto=i.cdproduto and vw.cdlivro=i.cdlivro and vw.cditlivro=i.cditlivro and i.cdempresa=vw.cdempresa '+
                      'where i.cdempresa='+empresa.cdempresa.tostring+' ';
    if cdproduto_ <> 0 then
    begin
      c.q.sql.Text  := 'select first 1 l.qtestoque'+
                             ',p.cdgrupo'+
                             ',p.cdproduto '+
                       'from livroproduto l '+
                       'inner join produto p on p.cdproduto=l.cdproduto and L.cdempresa=p.cdempresa '+
                       'where l.cdempresa='+empresa.cdempresa.tostring+' and l.cdproduto='+cdproduto_.ToString+' and l.cdlivro<'+cdlivro.ToString+' '+
                       'order by cdlivro desc'
    end;
    c.q.Open;
    gau.Progress := 1;
    gau1.MaxValue  := c.q.RecordCount;
    gau1.Progress  := 0;
    while not c.q.eof do
    begin
      gau1.Progress := gau1.Progress + 1;
      application.ProcessMessages;
      i := cdproduto.IndexOf(c.q.fieldbyname(_cdproduto).AsString);
      if i < 0 then
      begin
        cdproduto.add(c.q.fieldbyname(_cdproduto).AsString);
        cdgrupo.add  (c.q.fieldbyname(_cdgrupo).AsString);
        i := cdproduto.Count - 1;
        SetLength(qtestoque, i + 1);
        qtestoque[i] := c.q.fieldbyname(_qtestoque).AsCurrency;
      end;
      if qtestoque[i] = 0 then
      begin
        c.q.next;
        continue;
      end;
      PreencherParamproduto(qtestoque[i], cdproduto[i]);
      c.q.next;
    end;
  finally
    freeandnil(c);
  end;
end;

function TLivroProducao.dtis:string;
begin
  result := formatdatetime(_mm_dd_yyyy, dti);
end;

function TLivroProducao.dtfs:string;
begin
  result := formatdatetime(_mm_dd_yyyy, dtf);
end;

procedure TLivroProducao.IncrementarGauge(gau:TGauge);
begin
  gau.Progress := gau.Progress + 1;
  application.ProcessMessages;
end;

procedure TLivroProducao.Gerar;
var
  i: integer;
  cre, crs, ce, cms, cme, css, cse, c : TClasseQuery;
  procedure criar;
  begin
    c              := TClasseQuery.create;
    ce             := TClasseQuery.Create;
    cme            := TClasseQuery.Create;
    cms            := TClasseQuery.Create;
    cre            := TClasseQuery.Create;
    crs            := TClasseQuery.Create;
    cse            := TClasseQuery.Create;
    css            := TClasseQuery.Create;

    cdproduto      := TStringList.create;
    cdgrupo        := TStringList.create;
  end;
  procedure destruir;
  begin
    freeandnil(c);
    FreeAndNil(ce);
    FreeAndNil(cme);
    FreeAndNil(cms);
    FreeAndNil(cre);
    FreeAndNil(crs);
    FreeAndNil(cse);
    FreeAndNil(css);
    freeandnil(cdproduto);
    freeandnil(cdgrupo);
  end;
begin
  dia        := Dia_Data(dti);
  ultimo_dia := Dia_Data(dtf);
  criar;
  try
    frmprogressbar := TFrmprogressbar.create(nil);
    try
      frmprogressbar.setgau1;
      frmprogressbar.show;
      gau  := frmprogressbar.gau;
      gau1 := frmprogressbar.gau1;

      frmprogressbar.pnl.Caption := 'Registrar saldo anterior';
      application.ProcessMessages;
      registrarprodutosemmovimentacao;
      frmprogressbar.gau.MaxValue  := 9;
      frmprogressbar.gau1.MaxValue := 6;
      frmprogressbar.gau1.Progress := 0;

      frmprogressbar.pnl.Caption := 'Abrir registros de compra';
      ce.q.sql.Text                := makesqlentrada;
      ce.q.Open;
      incrementargauge(gau1);

      frmprogressbar.pnl.Caption := 'Abrir registros de Movimentação de estoque de entrada';
      cme.q.sql.Text               := MakeSQLMovTo(_E);
      cme.q.Open;
      incrementargauge(gau1);

      frmprogressbar.pnl.Caption := 'Abrir registros de Movimentação de estoque de saída';
      cms.q.sql.Text               := MakeSQLMovTo(_S);
      cms.q.Open;
      incrementargauge(gau1);

      frmprogressbar.pnl.Caption := 'Abrir registros de Nota Fiscal de saída';
      css.q.sql.Text               := MakeSQLSaida(_S);
      css.q.Open;
      incrementargauge(gau1);

      frmprogressbar.pnl.Caption := 'Abrir registros de Nota Fiscal de entrada';
      cse.q.sql.Text               := MakeSQLSaida(_E);
      cse.q.Open;
      incrementargauge(gau1);
      frmprogressbar.pnl.Caption := '';

      IncrementarGauge(gau);
      gau1.MaxValue := ultimo_dia * 7;
      gau1.Progress := 0;
      for i := dia to ultimo_dia do // processa o livro do primeiro ao ultimo dia
      begin
        frmprogressbar.pnl.Caption := 'Dia '+inttostr(i)+' de '+inttostr(ultimo_dia);
        processarRegistro(_entrada   , _E, ce ); incrementargauge(gau1);
        processarregistro(_movto     , _E, cme); incrementargauge(gau1);
        processarregistro(_saida     , _E, cse); incrementargauge(gau1);
        processarregistro(_saida     , _S, css); incrementargauge(gau1);
        processarregistro(_movto     , _S, cms); incrementargauge(gau1);
        dti := dti + 1;
      end;
      frmprogressbar.pnl.Caption := 'Inserindo Registros';
      Application.ProcessMessages;
    finally
      FreeAndNil(frmprogressbar);
    end;
    ExecutaScript(sql);
    frmprogressbar := TFrmprogressbar.create(nil);
    frmprogressbar.setgau1;
    frmprogressbar.show;
    gau  := frmprogressbar.gau;
    gau1 := frmprogressbar.gau1;
    try
      sql.Clear;
      frmprogressbar.pnl.Caption := 'Consulta Produto';
      IncrementarGauge(gau);
      registrartabelaconsulta(_produto);
      frmprogressbar.pnl.Caption := 'Inserindo Registros';
      Application.ProcessMessages;
    finally
      FreeAndNil(frmprogressbar);
    end;
    ExecutaScript(sql);
    frmprogressbar := TFrmprogressbar.create(nil);
    try
    frmprogressbar.setgau1;
    frmprogressbar.show;
    gau  := frmprogressbar.gau;
    gau1 := frmprogressbar.gau1;
    IncrementarGauge(gau);
    finally
      FreeAndNil(frmprogressbar);
    end;
  finally
    destruir;
  end;
end;

function TLivroProducao.Novo:integer;
begin
  sql := tstringlist.create;
  try
    dti       := empresa.livro.dtiniciolivro;
    dtf       := Ultimo_Dia_Mes(dti);
    // verificar se existe registro no livro
    cdlivro := RetornaSQLInteger('select max(cdlivro) from livro where cdempresa='+empresa.cdempresa.tostring);
    if cdlivro <> 0 then
    begin
      dti := RetornaSQLData('select max(livro.dttermino) dttermino from livro where cdempresa='+empresa.cdempresa.tostring) + 1; // Recupera a data do ultimo livro;
      dtf := Ultimo_Dia_Mes(dti);
    end;
    //dtf       := StrToDate('27/07/2010');
    tsregistro := tsbanco;
    SQLRegistraLocal := SQLRegistra;
    inserir;
    Gerar;
    result := cdlivro;
  finally
    freeandnil(sql);
  end;
end;

procedure TLivroProducao.Inserir;
begin
  cdlivro := qgerar.GerarCodigo(_livro);
  sql.add('insert into livro(cdlivro,dtinicio,dttermino,'+_sqlreg+cdlivro.ToString+','+getdtbanco(dti)+','+getdtbanco(dtf)+','+SQLRegistralocal+';');
end;

procedure TLivroProducao.ConsisteAlterar(dt:TDate);
begin
  if empresa.livroproducao.boalterar or (DataUltimo < dt) then
  begin
    exit;
  end;
  // verificar como fazer
  MessageDlg('Não é possível alterar valores de produção '#13'anterior ou igual a data do último livro de produção ('+formatdatetime(_dd_mm_yyyy, DataUltimo)+').', mtInformation, [mbOK], 0);
  abort;
end;

function TLivroProducao.DataUltimo:TDate;
begin
  result := RetornaSQLData('select max(dttermino) from livro where cdempresa='+empresa.cdempresa.tostring);
end;

constructor TLivroProducao.create;
begin
end;

function TLivroProducao.ReprocessarProduto(codigo, cdproduto: Integer): Boolean;
begin
  sql := tstringlist.create;
  try
    cdlivro := codigo;
    dti := RetornaSQLData('select dtinicio from livro where cdempresa='+empresa.cdempresa.tostring+' and cdlivro='+cdlivro.ToString);
    dtf := Ultimo_Dia_Mes(dti);
    tsregistro := tsbanco;
    cdproduto_ := cdproduto;
    sql.Add('delete from itlivro where cdempresa='+empresa.cdempresa.tostring+' and cdlivro='+cdlivro.ToString+' and cdproduto='+cdproduto.ToString+';');
    Gerar;
    result := True;
  finally
    freeandnil(sql);
  end;
end;

end.

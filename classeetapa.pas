unit classeetapa;

interface

uses
  sysutils, ComCtrls, classes,
  sqlexpr,
  uconstantes, uregistro,
  classeaplicacao, classeretornasql, classeempresa, classeusuario, classequery, classedao;

type
  TEtapa = class(TRegistroQuipos)
  private
    Fboalterartecnico: string;
    Fnmetapa: string;
    Fboexibirpeca: string;
    Fcdstitordservi: integer;
    Fcdetapa: integer;
    Fboexibirservico: string;
    Fnunveil: string;
    Fcdstitordservf: integer;
    Fnuordem: integer;
    procedure Setboalterartecnico(const Value: string);
    procedure Setboexibirpeca(const Value: string);
    procedure Setboexibirservico(const Value: string);
    procedure Setcdetapa(const Value: integer);
    procedure Setcdstitordservf(const Value: integer);
    procedure Setcdstitordservi(const Value: integer);
    procedure Setnmetapa(const Value: string);
    procedure Setnunveil(const Value: string);
    procedure Setnuordem(const Value: integer);
  public
    [keyfield]
    property cdetapa : integer read Fcdetapa write Setcdetapa;
    [fk]
    property cdstitordservf : integer read Fcdstitordservf write Setcdstitordservf;
    [fk]
    property cdstitordservi : integer read Fcdstitordservi write Setcdstitordservi;
    property nmetapa : string read Fnmetapa write Setnmetapa;
    property boexibirservico : string read Fboexibirservico write Setboexibirservico;
    property boexibirpeca : string read Fboexibirpeca write Setboexibirpeca;
    property nunveil : string read Fnunveil write Setnunveil;
    property nuordem : integer read Fnuordem write Setnuordem;
    property boalterartecnico : string read Fboalterartecnico write Setboalterartecnico;
    function  Anterior(cdetapa:Integer):Integer;
    procedure Carregar(var trv:TTreeview);
    function  Existeitemordserv(cdetapa, cdstitordserv: string):boolean;
    function  ExistePecaOrdserv(cdetapa, cdstitpeca: string):boolean;
    procedure Listar  (lst:TStrings);overload;
    procedure Listar(lst:TStrings; tbl:string);overload;
    function  Proxima (cdetapa:Integer):Integer;
    function  QtdItens(cdetapa:integer):integer;
    function  qtdordserv(nmetapa:string):integer;
    function  qtdordservfaturamento:integer;
    function  qtdordservmedicao:integer;
    function  qtdordservpedido:integer;
    function  QtdOrdservEtapaServico(nmetapa, nmitordserv:string):integer;
    function  QtdOrdservEtapaPeca(nmetapa, nmitpeca:string):integer;
  end;

implementation

function TEtapa.Proxima(cdetapa:Integer):integer;
begin
  result := RetornaSQLInteger('select cdetapa from etapa where cdempresa='+empresa.cdempresa.tostring+' and nuordem>'+RetornaSQLString('select nuordem from etapa where cdempresa='+empresa.cdempresa.tostring+' and cdetapa='+inttostr(cdetapa)));
end;

function TEtapa.Anterior(cdetapa:integer):Integer;
begin
  result := RetornaSQLInteger('select cdetapa '+
                              'from etapa '+
                              'where cdempresa='+empresa.cdempresa.tostring+' '+
                              'and nuordem<'+RetornaSQLString('select nuordem '+
                                                              'from etapa '+
                                                              'where cdempresa='+empresa.cdempresa.tostring+' '+
                                                              'and cdetapa='+inttostr(cdetapa))+' '+
                                                              'order by nuordem desc');
end;

function TEtapa.QtdOrdservEtapaPeca(nmetapa, nmitpeca:string):integer;
var
  cdstitpeca, cdetapa : string;
begin
  result     := 0;
  cdetapa    := qregistro.CodigodoNome(_etapa, nmetapa);
  cdstitpeca := qregistro.CodigodoNome(_stitpeca, nmitpeca);
  if (cdetapa = '') or (cdstitpeca = '') then
  begin
    exit;
  end;
  Result := RetornaSQLInteger('select count(o.cdordserv) '+
                                    'from ordserv o '+
                                    'inner join itpeca i on i.cdordserv=o.cdordserv and o.cdempresa=i.cdempresa '+
                                    'where o.cdempresa='+empresa.cdempresa.tostring+' and o.cdetapa='+cdetapa+' and i.cdstitpeca='+cdstitpeca+' '+
                                    'group by o.cdordserv');
end;

function TEtapa.ExistePecaOrdserv(cdetapa, cdstitpeca: string):boolean;
begin
  Result := (RetornaSQLInteger('select count(*) '+
                                     'from itpeca i '+
                                     'inner join ordserv o on o.cdordserv=i.cdordserv and i.cdempresa=o.cdempresa '+
                                     'where i.cdempresa='+empresa.cdempresa.tostring+' and o.cdetapa='+cdetapa+' and i.cdstitpeca='+cdstitpeca) > 0);
end;

function TEtapa.QtdOrdservEtapaServico(nmetapa, nmitordserv:string):integer;
var
  cdstitordserv, cdetapa : string;
begin
  result        := 0;
  cdetapa       := qregistro.CodigodoNome(_etapa, nmetapa);
  cdstitordserv := qregistro.CodigodoNome(_stitordserv, nmitordserv);
  if (cdetapa = '') or (cdstitordserv = '') then
  begin
    exit;
  end;
  Result := RetornaSQLInteger('select count(o.cdordserv) '+
                                    'from ordserv o '+
                                    'inner join itordserv i on i.cdordserv=o.cdordserv and o.cdempresa=i.cdempresa '+
                                    'where o.cdempresa='+empresa.cdempresa.tostring+' and o.cdetapa='+cdetapa+' and i.cdstitordserv='+cdstitordserv+' '+
                                    'group by o.cdordserv');
end;

function TEtapa.Existeitemordserv(cdetapa, cdstitordserv: string):boolean;
begin
  result := RetornaSQLInteger('select count(*) '+
                                    'from itordserv i '+
                                    'inner join ordserv o on o.cdordserv=i.cdordserv and i.cdempresa=o.cdempresa '+
                                    'where i.cdempresa='+empresa.cdempresa.tostring+' and o.cdetapa='+cdetapa+' and i.cdstitordserv='+cdstitordserv) > 0;
end;

procedure TEtapa.Listar(lst:TStrings; tbl:string);
var
  q : TClasseQuery;
begin
  lst.clear;
  if usuario.funcionario.cdfuncionario = 0 then
  begin
    exit;
  end;
  q := TClasseQuery.create('select nm'+tbl+' '+
                       'from '+tbl+' '+
                       'inner join '+tbl+'func on '+tbl+'func.cd'+tbl+'='+tbl+'.cd'+tbl+' and '+tbl+'.cdempresa='+tbl+'func.cdempresa '+
                       'where '+tbl+'.cdempresa='+empresa.cdempresa.tostring+' and cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario));
  try
    while not q.q.eof do
    begin
      lst.add(q.q.fieldbyname(_nm+tbl).asstring);
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

function TEtapa.qtdordservfaturamento:integer;
begin
  Result := RetornaSQLInteger('select count(*) '+
                                    'from ordserv '+
                                    'where cdempresa='+empresa.cdempresa.tostring+' and cdetapa=18 and not (cdcliente in (1,2)) and not (nupedido is null or nupedido='''') and dtpedido is not null');
end;

function TEtapa.qtdordservmedicao:integer;
begin
  result := RetornaSQLInteger('select count(*) '+
                                    'from ordserv '+
                                    'where cdempresa='+empresa.cdempresa.tostring+' and cdetapa=18 and ordserv.cdcliente in (1,2) and (not (nupedido is null or nupedido='''') or ordserv.dtpedido is not null)');
end;

function TEtapa.qtdordservpedido:integer;
begin
  Result := RetornaSQLInteger('select count(*) '+
                                    'from ordserv '+
                                    'where cdempresa='+empresa.cdempresa.tostring+' and cdetapa=18 and ((ordserv.cdcliente in (1,2) '+
                                    'and (nupedido is null or nupedido='''') and ordserv.dtpedido is null)'+
                                    'or ((not (ordserv.cdcliente in (1,2))) and ((nupedido is null or nupedido='''') '+
                                    'or ordserv.dtpedido is null)))');
end;

procedure TEtapa.Setboalterartecnico(const Value: string);
begin
  Fboalterartecnico := Value;
end;

procedure TEtapa.Setboexibirpeca(const Value: string);
begin
  Fboexibirpeca := Value;
end;

procedure TEtapa.Setboexibirservico(const Value: string);
begin
  Fboexibirservico := Value;
end;

procedure TEtapa.Setcdetapa(const Value: integer);
begin
  Fcdetapa := Value;
end;

procedure TEtapa.Setcdstitordservf(const Value: integer);
begin
  Fcdstitordservf := Value;
end;

procedure TEtapa.Setcdstitordservi(const Value: integer);
begin
  Fcdstitordservi := Value;
end;

procedure TEtapa.Setnmetapa(const Value: string);
begin
  Fnmetapa := Value;
end;

procedure TEtapa.Setnunveil(const Value: string);
begin
  Fnunveil := Value;
end;

procedure TEtapa.Setnuordem(const Value: integer);
begin
  Fnuordem := Value;
end;

procedure TEtapa.Carregar(var trv:TTreeview);
var
  lststitordserv, lststitpeca, lst : TStrings;
  k, x, posicao2, posicao, q, i : integer;
  boexibirservico, boexibirpeca, cdstitordserv, cdstitpeca, cdetapa : string;
begin
  trv.Items.Clear;
  trv.Items.AddFirst(nil, 'Ordem Serviço');
  trv.Items.AddChild(trv.Items[0], 'Geral');
  trv.FullExpand;
  // listar as estapas que pertencem a este funcionario
  lst            := TStringList.create;
  lststitordserv := TStringList.create;
  lststitpeca    := TStringlist.create;
  try
    Listar(lst);
    if lst.count > 0 then
    begin
      for i := 0 to lst.Count - 1 do
      begin
        trv.Items.AddChild(trv.Items[1], lst[i]+'('+inttostr(qtdordserv(lst[i]))+')');
        trv.FullExpand;
        if uppercase(lst[i]) = 'FATURAMENTO' then
        begin
          posicao := trv.Items.Count - 1;
          trv.Items.AddChild(trv.Items[posicao], 'Aguardando Pedido ('+inttostr(qtdordservpedido)+')');
          trv.Items.AddChild(trv.Items[posicao], 'Aguardando Medição ('+inttostr(qtdordservmedicao)+')');
          trv.Items.AddChild(trv.Items[posicao], 'Aguardando Faturamento ('+inttostr(qtdordservfaturamento)+')');
          trv.FullExpand;
        end;
        // Verificar se é para exibir os servicos
        cdetapa         := qregistro.CodigodoNome(_etapa, lst[i]);
        posicao         := trv.Items.Count - 1;
        boexibirservico := Nomedocodigo(_etapa, cdetapa, _boexibir+_servico);
        if boexibirservico = _S then
        begin
          listar(lststitordserv, _stitordserv);
          for k := 0 to lststitordserv.count - 1 do
          begin
            // verificar se existem itens da ordem de servico para este status
            cdstitordserv := qregistro.CodigodoNome(_stitordserv, lststitordserv[k]);
            if Existeitemordserv(cdetapa, cdstitordserv) then
            begin
              trv.Items.AddChild(trv.Items[posicao], 'Serviço');
              trv.FullExpand;
              posicao2 := trv.Items.Count - 1;
              for x := 0 to lststitordserv.count - 1 do
              begin
                // verificar se existem itens da ordem de servico para este status
                cdstitordserv := qregistro.CodigodoNome(_stitordserv, lststitordserv[x]);
                if Existeitemordserv(cdetapa, cdstitordserv) then
                begin
                  q := QtdOrdservEtapaServico(lst[i], lststitordserv[x]);
                  trv.Items.AddChild(trv.Items[posicao2], lststitordserv[x]+'('+inttostr(q)+')');
                  trv.FullExpand;
                end;
              end;
              break;
            end;
          end;
          //
        end;
        // verificar se é para exibir as peças
        boexibirpeca := Nomedocodigo(_etapa, cdetapa, _boexibir+_peca);
        if boexibirpeca = _S then
        begin
          listar(lststitpeca, _stitpeca);
          for k := 0 to lststitpeca.count - 1 do
          begin
            // verificar se existem peças da ordem de servico para este status
            cdstitpeca := qregistro.CodigodoNome(_stitpeca, lststitpeca[k]);
            if ExistePecaOrdserv(cdetapa, cdstitpeca) then
            begin
              trv.Items.AddChild(trv.Items[posicao], 'Peça');
              trv.FullExpand;
              posicao2 := trv.Items.Count - 1;
              for x := 0 to lststitpeca.count - 1 do
              begin
                // verificar se existem peças da ordem de servico para este status
                cdstitpeca := qregistro.CodigodoNome(_stitpeca, lststitpeca[x]);
                if ExistePecaOrdserv(cdetapa, cdstitpeca) then
                begin
                  trv.Items.AddChild(trv.Items[posicao2], lststitpeca[x]+'('+inttostr(QtdOrdservEtapaPeca(lst[i], lststitpeca[x]))+')');
                  trv.FullExpand;
                end;
              end;
              break;
            end;
          end;
        end;
      end;
      trv.FullExpand;
    end;
  finally
    freeandnil(lst);
    freeandnil(lststitordserv);
    freeandnil(lststitpeca);
  end;
end;

function TEtapa.qtdordserv(nmetapa:string):integer;
var
  cdetapa : string;
  q : TClasseQuery;
begin
  result := 0;
  cdetapa := qregistro.CodigodoNome(_etapa, nmetapa);
  if cdetapa = '' then
  begin
    exit;
  end;
  q := TClasseQuery.create('select count(*) from ordserv where cdempresa='+empresa.cdempresa.tostring+' and cdetapa='+cdetapa);
  try
    result := q.q.Fields[0].asinteger;
  finally
    freeandnil(q);
  end;
end;

procedure TEtapa.Listar(lst:TStrings);
var
  q : TClasseQuery;
begin
  lst.clear;
  if usuario.funcionario.cdfuncionario = 0 then
  begin
    exit;
  end;
  q := TClasseQuery.create('select nmetapa '+
                       'from etapa e '+
                       'inner join etapafuncionario f on f.cdetapa=e.cdetapa and e.cdempresa=f.cdempresa '+
                       'where f.cdempresa='+empresa.cdempresa.tostring+' and f.cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+' '+
                       'order by e.nuordem');
  try
    while not q.q.eof do
    begin
      lst.add(q.q.fieldbyname(_nm+_etapa).Asstring);
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

function TEtapa.QtdItens(cdetapa:integer):integer;
begin
  result := RetornaSQLInteger('select count(*) from ordserv where cdempresa='+empresa.cdempresa.tostring+' and cdetapa='+inttostr(cdetapa));
end;

end.

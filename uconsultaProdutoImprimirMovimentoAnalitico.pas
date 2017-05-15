unit uconsultaProdutoImprimirMovimentoAnalitico;

interface

uses
  System.Actions, System.UITypes,
  Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, stdctrls,
  ExtCtrls, ComCtrls, Dialogs,
  DB, sqlexpr, dbclient,
  umontarsql, unumero, ustrings, uconstantes, uregistro, udatahora,
  uprogressbar,
  classeaplicacao, classeretornasql, classeempresa, classequery,
  frxClass, frxDBSet;

type
  TfrmconsultaProdutoImprimirMovimentoAnalitico = class(TForm)
    dbd1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmconsultaProdutoImprimirMovimentoAnalitico: TfrmconsultaProdutoImprimirMovimentoAnalitico;

function imprimirconsultaprodutomovimentoanalitico(cdproduto, cdgrupo, cdfornecedor :TStrings; dti, dtf : TDate; tpentsai, tpdata, cbxcodigo: string; bogrupo:boolean):boolean;

implementation

{$R *.dfm}

function imprimirconsultaprodutomovimentoanalitico(cdproduto, cdgrupo, cdfornecedor :TStrings; dti, dtf : TDate; tpentsai, tpdata, cbxcodigo: string; bogrupo:boolean):boolean;
var
  tsql: Integer;
  qt : tclientdataset;
  q, qr : TClasseQuery;
  vltotprodq, pstotprodq, vltotprodg, pstotprodg : currency;
  tbl, nunivel, sql2, sql, cdproduto_, vltotprodgs, cditem, nmproduto, nmgrupo : string;
  vltotals, qtestoques, nmunidade, vlunitarios, qtitem, nutpdoc, dtsaida, nudocumento : string;
  vltotal, qtestoque, vlunitarioaux, vltotal_ : currency;
  imprimiuproduto : boolean;
  function makesql:string;
  begin
    if tpentsai = _S then
    begin
      result := 'select p.cdproduto'+
                      ',p.cdgrupo'+
                      ',p.cditem'+
                      ',p.nmproduto'+
                      ',p.cdalternativo'+
                      ',g.nunivel'+
                      ',(select count(*) '+
                        'from itsaida i '+
                        'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                        'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa ' +
                        'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto=p.cdproduto and s.tpentsai=''S'' and t.boestoque=''S'' and s.'+tpdata+' between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
      sqlmontarlista(cdfornecedor, _s, _cdfornecedor, result);
      result := result + ') count_s'+
                       ',(select count(*) '+
                         'from itmovto i '+
                         'inner join movto m on m.cdmovto=i.cdmovto and i.cdempresa=m.cdempresa '+
                         'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and t.cdempresa=m.cdempresa '+
                         'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto=p.cdproduto and t.tpmovto=''S'' and m.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+') count_m '+
             'from produto p '+
             'inner join grupo g on g.cdgrupo=p.cdgrupo and p.cdempresa=g.cdempresa ';
    end
    else
    begin
      result := 'select p.cdproduto'+
                      ',p.cdgrupo'+
                      ',p.cditem'+
                      ',p.nmproduto'+
                      ',p.cdalternativo'+
                      ',g.nunivel'+
                      ',(select count(*) '+
                        'from itentrada i '+
                        'inner join entrada e on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
                        'inner join tpentrada t on t.cdtpentrada=e.cdtpentrada and t.cdempresa=e.cdempresa '+
                        'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto=p.cdproduto and t.boestoque=''S'' and e.dtsaida between '+getdtbanco(dti)+' and'+getdtbanco(dtf)+' ';
      sqlmontarlista(cdfornecedor, _e, _cdfornecedor, result);
      result := result + ') count_e'+
                   ',(select count(*) '+
                     'from itsaida i '+
                     'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                     'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa ' +
                     'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto=p.cdproduto and s.tpentsai=''E'' and t.boestoque=''S'' and s.'+tpdata+' between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
      sqlmontarlista(cdfornecedor, _s, _cdfornecedor, result);
      result := result + ') count_s'+
                   ',(select count(*) '+
                     'from itmovto i '+
                     'inner join movto m on m.cdmovto=i.cdmovto and i.cdempresa=m.cdempresa '+
                     'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and t.cdempresa=m.cdempresa '+
                     'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto=p.cdproduto and t.tpmovto=''E'' and m.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+') count_m '+
             'from produto p '+
             'inner join grupo g on g.cdgrupo=p.cdgrupo and p.cdempresa=g.cdempresa ';
    end;
    result := result + 'where p.cdempresa='+empresa.cdempresa.tostring+' ';
    sqlmontarlista(cdgrupo   , _p, _cdgrupo  , result);
    sqlmontarlista(cdproduto , _p, _cdproduto, result);
    result := result + 'and ';
    if tpentsai = _S then
    begin
      result := result + ' ('+
                     '((select count(*) '+
                       'from itsaida i '+
                       'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                       'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
                       'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto=p.cdproduto and s.tpentsai=''S'' and t.boestoque=''S'' and s.'+tpdata+' between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
      sqlmontarlista(cdfornecedor, _s, _cdfornecedor, result);
      result := result + ') > 0) or '+
                     '((select count(*) '+
                       'from itmovto i '+
                       'inner join movto m on m.cdmovto=i.cdmovto and i.cdempresa=m.cdempresa '+
                       'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and m.cdempresa=t.cdempresa '+
                       'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto=p.cdproduto and t.tpmovto=''S'' and m.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+')>0)) ';
      result := result + 'order by ';
      if bogrupo then
      begin
        result := result + 'g.nunivel, ';
      end;
           if cbxcodigo = 'Grupo+Item'         then result := result + 'p.cditem'
      else if cbxcodigo = 'Código Reduzido'    then result := result + 'p.cdproduto'
      else if cbxcodigo = 'Código Alternativo' then result := result + 'p.cdalternativo';
    end
    else
    begin
      result := result + ' (((select count(*) '+
                             'from itentrada i '+
                             'inner join entrada e on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
                             'inner join tpentrada t on t.cdtpentrada=e.cdtpentrada and t.cdempresa=e.cdempresa '+
                             'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto=p.cdproduto and t.boestoque=''S'' and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
      sqlmontarlista(cdfornecedor, _e, _cdfornecedor, result);
      result := result + ')>0) or '+
                     '((select count(*) '+
                       'from itsaida i '+
                       'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                       'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
                       'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto=p.cdproduto and s.tpentsai=''E'' and t.boestoque=''S'' and s.'+tpdata+' between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
      sqlmontarlista(cdfornecedor, _s, _cdfornecedor, result);
      result := result + ')>0) or '+
                     '((select count(*) '+
                       'from itmovto i '+
                       'inner join movto m on m.cdmovto=i.cdmovto and i.cdempresa=m.cdempresa '+
                       'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and t.cdempresa=m.cdempresa '+
                       'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto=p.cdproduto and t.tpmovto=''E'' and m.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+')>0)) ';
      result := result + 'order by ';
      if bogrupo then
      begin
        result := result + 'g.nunivel, ';
      end;
           if cbxcodigo = 'Grupo+Item'         then result := result + 'p.cditem'
      else if cbxcodigo = 'Código Reduzido'    then result := result + 'p.cdproduto'
      else if cbxcodigo = 'Código Alternativo' then result := result + 'p.cdalternativo';
    end;
  end;
  procedure criar_tabela_temporaria;
  begin
    qt.FieldDefs.Add(_nunivel , ftstring,  20, false);
    qt.FieldDefs.Add(_NMGRUPO , ftstring, 100, false);
    qt.FieldDefs.Add(_CODIGO   , ftstring,  20, false);
    qt.FieldDefs.Add(_DESCRICAO, ftstring, 100, false);
    qt.FieldDefs.Add(_UNIDADE  , ftstring,  10, false);
    qt.FieldDefs.Add('DOC'      , ftstring,  20, false);
    qt.FieldDefs.Add('NUTP'     , ftstring,  10, false);
    qt.FieldDefs.Add(_EMISSAO  , ftstring,  10, false);
    qt.FieldDefs.Add('QUANT'    , ftFloat);
    qt.FieldDefs.Add('VLUNIT'   , ftcurrency);
    qt.FieldDefs.Add('VLTOTPROD', ftcurrency);
    qt.CreateDataSet;
  end;
  function qtitens(q:TClasseQuery):integer;
  begin
    result := 0;
    q.q.first;
    while not q.q.eof do
    begin
      inc(result);
      q.q.next;
    end;
    q.q.first;
  end;
  function makesqlitentrada:string;
  begin
    result := 'select e.nuentrada'+
                    ',e.dtsaida'+
                    ',t.nmreduzido'+
                    ',i.qtitem'+
                    ',i.vltotal'+
                    ',i.vldesconto'+
                    ',i.vlcofins'+
                    ',i.vlpis'+
                    ',i.vlicms'+
                    ',i.vlfrete'+
                    ',i.vlipi'+
                    ',i.borecuperaicms'+
                    ',i.borecuperapis'+
                    ',i.borecuperacofins'+
                    ',i.borecuperaipi'+
                    ',i.vlunitario'+
                    ',i.vlcustomedio'+
                    ',i.vloutdespesa' +
                    ',i.vlseguro'+
                    ',i.vlicmssubtrib' +
                    ',u.nmunidade  '+
              'from itentrada i '+
              'inner join entrada e on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
              'left join tpentrada t on t.cdtpentrada=e.cdtpentrada and t.cdempresa=e.cdempresa '+
              'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
              'left join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
              'where i.cdempresa='+empresa.cdempresa.tostring+' and t.boestoque=''S'' and i.cdproduto='+qr.q.fieldbyname(_cdproduto).Asstring+' and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdfornecedor, _e, _cdfornecedor, result);
    result := Result +
           'order by e.dtsaida,e.nuentrada';
  end;
  function makesqlitsaida:string;
  begin
    result := 'select s.cdsaida'+
                 ',s.nusaida'+
                 ',s.'+tpdata+' dtsaida'+
                 ',S.tpentsai'+
                 ',t.nmreduzido'+
                 ',i.qtitem'+
                 ',i.vltotal'+
                 ',i.vldesconto'+
                 ',i.vlcofins'+
                 ',i.vlpis'+
                 ',i.vlicms'+
                 ',p.borecuperaicms'+
                 ',p.borecuperapis'+
                 ',p.borecuperacofins'+
                 ',i.vlunitario'+
                 ',i.vloutdespesa' +
                 ',i.vlseguro'+
                 ',i.vlicmssubtrib' +
                 ',u.nmunidade  '+
           'from itsaida i '+
           'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
           'left join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
           'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
           'left join unidade u on u.cdunidade=p.cdunidade and u.cdempresa=p.cdempresa '+
           'where i.cdempresa='+empresa.cdempresa.tostring+' and T.boestoque=''S'' and s.tpentsai='+quotedstr(tpentsai)+' and i.cdproduto='+qr.q.fieldbyname(_cdproduto).Asstring+' and s.'+tpdata+' between '+getdtbanco(dti)+' and '+GetDtBanco(dtf)+' ';
    sqlmontarlista(cdfornecedor, _s, _cdfornecedor, result);
    result := result +
           'order by s.'+tpdata+',s.nusaida';
  end;
  function makesqlitmovto:string;
  begin
    result := 'select i.cdmovto'+
                    ',m.dtemissao'+
                    ',t.tpmovto'+
                    ',i.qtitem'+
                    ',i.vltotal'+
                    ',i.vlunitario'+
                    ',u.nmunidade  '+
              'from itmovto i '+
              'inner join movto m on m.cdmovto=i.cdmovto and i.cdempresa=m.cdempresa '+
              'left join tpmovto t on t.cdtpmovto=m.cdtpmovto and t.cdempresa=m.cdempresa '+
              'LEFT JOIN PRODUTO p ON P.CDPRODUTO=I.CDPRODUTO and i.cdempresa=p.cdempresa '+
              'left join unidade u on u.cdunidade=P.cdunidade and u.cdempresa=p.cdempresa '+
              'where i.cdempresa='+empresa.cdempresa.tostring+' '+
              'and t.tpmovto='+quotedstr(tpentsai)+' '+
              'and i.cdproduto='+qr.q.fieldbyname(_cdproduto).Asstring+' '+
              'and m.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+
              'order by m.dtemissao,m.cdmovto';
  end;
begin
  vltotal_   := 0;
  result     := false;
  cdproduto_ := '';
  vltotprodq := 0;
  pstotprodq := 0;
  vltotprodg := 0;
  pstotprodg := 0;
  qr         := TClasseQuery.create;
  q          := TClasseQuery.create;
  qt         := tclientdataset.create(nil);
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    criar_tabela_temporaria;
    qr.q.sql.text   := makesql;
    qr.q.open;
    if qr.q.fieldbyname(_cdproduto).Asinteger < 1 then
    begin
      messagedlg(_msg01, mtinformation, [mbok], 0);
      exit;
    end;
    // Imprime Cabecalho
    frmprogressbar.gau.Progress := 0;
    frmprogressbar.gau.MaxValue := qtitens(qr);
    frmprogressbar.Show;
    while not qr.q.eof do
    begin
      frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
      application.ProcessMessages;
      // Quebra do Relatorio por segundo nível
      if nunivel <> qr.q.fieldbyname(_nunivel).Asstring then
      begin
        // Inicializa Valores
        pstotprodq := 0;
        vltotprodq := 0;
        // Cabecalho da Quebra grupos
        nunivel := qr.q.fieldbyname(_nunivel).Asstring;
        nmgrupo := Nomedocampo(_grupo, nunivel, _string, _nunivel);
      end;
      // Secao Detalhe
           if cbxcodigo = 'Grupo+Item'         then cdproduto_ := qr.q.fieldbyname(_nunivel).Asstring+'.'+FormatarTextoEsquerda(qr.q.fieldbyname(_cditem).Asstring, __tamcditem, _0)
      else if cbxcodigo = 'Código Reduzido'    then cdproduto_ := qr.q.fieldbyname(_cdproduto).Asstring
      else if cbxcodigo = 'Código Alternativo' then cdproduto_ := qr.q.fieldbyname(_cdalternativo).Asstring;
      cdproduto_ := FormatarTextoEsquerda(cdproduto_, 15);

      nmproduto  := FormatarTextoDireita(copy(qr.q.fieldbyname(_nmproduto).Asstring, 1, 50),50);
      //imprimiuproduto := false;

      vltotal    := 0;
      qtestoque  := 0;

      if tpentsai = _E then
      begin
        if qr.q.fieldbyname(_count+'_'+_e).Asinteger > 0 then
        begin
          q.q.close;
          q.q.sql.text := makesqlitentrada;
          q.q.open;
          while not q.q.eof do
          begin
            nudocumento := FormatarTextoEsquerda(q.q.fieldbyname(_nuentrada).Asstring,10);
            dtsaida     := FormatarDataAbreviada(q.q.fieldbyname(_dtsaida).AsDateTime,10);
            nutpdoc     := FormatarTextoEsquerda(q.q.fieldbyname(_nmreduzido).Asstring, 3);
            nmunidade   := FormatarTextoEsquerda(q.q.fieldbyname(_nmunidade).Asstring, 1);
            qtitem      := formatfloat(__decimal4, q.q.fieldbyname(_qtitem).AsFloat);
            vltotal_    := q.q.fieldbyname(_vltotal).Ascurrency - q.q.fieldbyname(_vldesconto).Ascurrency +
                           q.q.fieldbyname(_vlfrete).Ascurrency + q.q.fieldbyname(_vlipi).AsCurrency +
                           q.q.fieldbyname(_vloutdespesa).Asfloat + q.q.fieldbyname(_vlseguro).Asfloat +
                           q.q.fieldbyname(_vlicmssubtrib).Asfloat;

            if q.q.fieldbyname(_borecuperaipi).Asstring    = _S then vltotal_ := vltotal_ - q.q.fieldbyname(_vlipi).Ascurrency;
            if q.q.Fieldbyname(_borecuperaicms).AsString   = _S then vltotal_ := vltotal_ - q.q.fieldbyname(_vlicms).Ascurrency;
            if q.q.Fieldbyname(_borecuperapis).AsString    = _S then vltotal_ := vltotal_ - q.q.fieldbyname(_vlpis).Ascurrency;
            if q.q.Fieldbyname(_borecuperacofins).AsString = _S then vltotal_ := vltotal_ - q.q.fieldbyname(_vlcofins).Ascurrency;
            vlunitarioaux := vltotal_ / q.q.fieldbyname(_qtitem).AsFloat;
            vlunitarios   := FormatarDecimal(vlunitarioaux,14);
            vltotals      := FormatarMoeda(vltotal_,14);
            qtestoque     := qtestoque + q.q.fieldbyname(_qtitem).AsFloat;
            vltotal       := vltotal + vltotal_;
            while length(qtitem) < 12 do
            begin
              qtitem := ' '+qtitem;
            end;
            qt.Append;
            qt.Fieldbyname(_nunivel).Asstring := nunivel;
            qt.fieldbyname(_NMGRUPO).AsSTRING := nmgrupo;
            qt.Fieldbyname(_CODIGO).Asstring     := cdproduto_;
            qt.fieldbyname(_DESCRICAO).AsSTRING  := nmproduto;
            qt.fieldbyname(_UNIDADE).AsString    := nmunidade;
            qt.fieldbyname(_DOC).AsString        := nudocumento;
            qt.fieldbyname(_N+_U+_T+_P).AsString := nutpdoc;
            qt.fieldbyname(_EMISSAO).AsString    := dtsaida;
            qt.fieldbyname(_QUANT).AsFloat                  := q.q.fieldbyname(_qtitem).AsFloat;
            qt.fieldbyname(_VL+_U+_N+_I+_T).AsCurrency      := (vltotal_ / q.q.fieldbyname(_qtitem).AsFloat);
            qt.fieldbyname(_VL+_TOT+_P+_R+_O+_D).AsCurrency := vltotal_;
            qt.Post;
            q.q.next;
          end;
        end;
      end;
      // <<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      if qr.q.fieldbyname(_count+'_'+_s).AsInteger > 0 then
      begin
        q.q.close;
        q.q.sql.text := makesqlitsaida;
        q.q.open;
        if q.q.fieldbyname(_cdsaida).AsInteger > 0 then
        begin
          while not q.q.eof do
          begin
            nudocumento := FormatarTextoEsquerda(q.q.fieldbyname(_nusaida).Asstring,10);
            dtsaida     := FormatarDataAbreviada(q.q.fieldbyname(_dtsaida).AsDateTime,10);
            nutpdoc     := FormatarTextoEsquerda(q.q.fieldbyname(_nmreduzido).Asstring, 3);
            nmunidade   := FormatarTextoEsquerda(q.q.fieldbyname(_nmunidade).Asstring, 1);
            qtitem      := formatfloat(__decimal4, q.q.fieldbyname(_qtitem).AsFloat);
            vlunitarios := FormatarDecimal(q.q.fieldbyname(_vlunitario).AsCurrency,14);
            vltotal_    := q.q.fieldbyname(_vltotal).Ascurrency;
            if q.q.fieldbyname(_vldesconto).Ascurrency     >  0  then vltotal_ := vltotal_ - q.q.fieldbyname(_vldesconto).Ascurrency;
            if q.q.fieldbyname(_borecuperaicms).Asstring   = _S  then vltotal_ := vltotal_ - q.q.fieldbyname(_vlicms).Ascurrency;
            if q.q.fieldbyname(_borecuperapis).Asstring    = _S  then vltotal_ := vltotal_ - q.q.fieldbyname(_vlpis).Ascurrency;
            if q.q.fieldbyname(_borecuperacofins).Asstring = _S  then vltotal_ := vltotal_ - q.q.fieldbyname(_vlcofins).Ascurrency;
            vltotals    := FormatarMoeda(vltotal_,14);
            qtestoque   := qtestoque + q.q.fieldbyname(_qtitem).AsFloat;
            vltotal     := vltotal + vltotal_;
            while length(qtitem)      < 12 do qtitem      := ' '+qtitem;
            qt.Append;
            qt.Fieldbyname(_nunivel).Asstring   := nunivel;
            qt.fieldbyname(_NMGRUPO).AsSTRING   := nmgrupo;
            qt.Fieldbyname(_CODIGO).Asstring     := cdproduto_;
            qt.fieldbyname(_DESCRICAO).AsSTRING  := nmproduto;
            qt.fieldbyname(_UNIDADE).AsString    := nmunidade;
            qt.fieldbyname(_DOC).AsString        := nudocumento;
            qt.fieldbyname(_N+_U+_T+_P).AsString       := nutpdoc;
            qt.fieldbyname(_EMISSAO).AsString    := dtsaida;
            qt.fieldbyname(_QUANT).AsFloat    := q.q.fieldbyname(_qtitem).AsFloat;
            if q.q.fieldbyname(_qtitem).AsFloat = 0 then
            begin
              messagedlg('Quantidade do item '+nmproduto+' está zerada na nota fiscal '+nudocumento+'.'#13'Favor corrigir para continuar.', mtInformation, [mbOK], 0);
              Abort;
            end;
            qt.fieldbyname(_VL+_U+_N+_I+_T).AsCurrency   := (vltotal_ / q.q.fieldbyname(_qtitem).AsFloat);
            qt.fieldbyname(_VL+_T+_O+_T+_P+_R+_O+_D).AsCurrency:= vltotal_;
            qt.Post;
            q.q.next;
          end;
        end;
      end;
      // <<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      if  cdfornecedor.count = 0 then // so imprime se nao tiver filtro
      begin
        if qr.q.fieldbyname(_count+'_'+_m).Asinteger > 0 then
        begin
          q.q.close;
          q.q.sql.text := makesqlitmovto;
          q.q.open;
          if q.q.fieldbyname(_cd+_movto).Asinteger > 0 then
          begin
            while not q.q.eof do
            begin
              nudocumento := FormatarTextoEsquerda(q.q.fieldbyname(_cd+_movto).Asstring,10);
              dtsaida     := FormatarDataAbreviada(q.q.fieldbyname(_DTEMISSAO).AsDateTime,10);
              nutpdoc     := FormatarTextoEsquerda('',3);
              nmunidade   := FormatarTextoEsquerda(q.q.fieldbyname(_nmunidade).Asstring, 1);
              qtitem      := formatfloat(__decimal4, q.q.fieldbyname(_qtitem).AsFloat);
              vlunitarios := FormatarDecimal(q.q.fieldbyname(_vlunitario).AsCurrency,14);
              vltotals    := FormatarMoeda(q.q.fieldbyname(_vltotal).Ascurrency,14);
              qtestoque   := qtestoque + q.q.fieldbyname(_qtitem).AsFloat;
              vltotal     := vltotal + q.q.fieldbyname(_vltotal).Ascurrency;
              qt.Append;
              qt.Fieldbyname(_nunivel).Asstring   := nunivel;
              qt.fieldbyname(_NMGRUPO).AsSTRING   := nmgrupo;
              qt.Fieldbyname(_CODIGO).Asstring     := cdproduto_;
              qt.fieldbyname(_DESCRICAO).AsSTRING  := nmproduto;
              qt.fieldbyname(_UNIDADE).AsString    := nmunidade;
              qt.fieldbyname(_DOC).AsString        := nudocumento;
              qt.fieldbyname(_N+_U+_T+_P).AsString       := nutpdoc;
              qt.fieldbyname(_EMISSAO).AsString    := dtsaida;
              qt.fieldbyname(_QUANT).AsFloat    := q.q.fieldbyname(_qtitem).AsFloat;
              if q.q.fieldbyname(_qtitem).AsFloat = 0 then qt.fieldbyname(_VL+_U+_N+_I+_T).AsCurrency   := 0
                                                    else qt.fieldbyname(_VL+_U+_N+_I+_T).AsCurrency   := (vltotal_ / q.q.fieldbyname(_qtitem).AsFloat);
              qt.fieldbyname(_VL+_T+_O+_T+_P+_R+_O+_D).AsCurrency:= vltotal_;
              qt.Post;
              q.q.next;
            end;
          end;
        end;
      end;
      //
      if qtestoque <> 0 then
      begin
        pstotprodq := pstotProdq + qtestoque;
        vltotprodq := vltotprodq + vltotal;
        pstotprodg := pstotProdg + qtestoque;
        vltotprodg := vltotprodg + vltotal;
      end;
      qr.q.next;
    end;
    frmconsultaProdutoImprimirMovimentoAnalitico := tfrmconsultaProdutoImprimirMovimentoAnalitico.Create(application);
    try
      with frmconsultaProdutoImprimirMovimentoAnalitico do
      begin
        {
        if tpentsai = _E then pplblMovAnalEntS.Caption:='Movimentação Analítico de Entrada'
                         else pplblMovAnalEntS.Caption:='Movimentação Analítico de Saída';
        }
        dbd1.DataSet := qT;
        frxReport1.ShowReport;
      end;
    finally
      freeandnil(frmconsultaProdutoImprimirMovimentoAnalitico);
    end;
    result := true;
  finally
    freeandnil(q);
    freeandnil(qr);
    freeandnil(qt);
    freeandnil(frmprogressbar);
  end;
end;

end.

unit uimp_corrida_certificado;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls,
  DB,
  uConstantes, uRegistro, ustrings,
  classeempresa, classeAplicacao, classeQuery;

procedure imp_corrida_certificado(mtbl: TDataClient; codigo: string);

implementation

Type TReport = class
  private
    c : TClasseQuery;
    mtbl: TDataClient;
    codigo: string;
    procedure Criar_fields;
    function  makesql:string;
    function  makesql2:string;
  public
    constructor create(mtbl2: TDataClient; codigo2:string);
    procedure   gerar;
  end;

procedure imp_corrida_certificado(mtbl: TDataClient; codigo: string);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, codigo);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl2: TDataClient; codigo2:string);
begin
  mtbl   := mtbl2;
  codigo := codigo2;
end;

procedure TReport.Criar_fields;
begin
  // empresa
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add('LOGOMARCA'     , ftBlob);
  mtbl.m.FieldDefs.Add('nmmunicipio'   , ftString, 100);
  mtbl.m.FieldDefs.Add('dsendereco'    , ftString, 100);
  mtbl.m.FieldDefs.Add('DSNUMERO'      , ftString, 10);
  mtbl.m.FieldDefs.Add('DSOBSINTERNA'  , ftMemo);
  mtbl.m.FieldDefs.Add('NMBAIRRO'      , ftString, 100);
  mtbl.m.FieldDefs.Add('sguf'          , ftString, 2);
  mtbl.m.FieldDefs.Add('NUCEP'         , ftString, 9);
  mtbl.m.FieldDefs.Add('nufone1'       , ftString, 14);
  mtbl.m.FieldDefs.Add('NUFAX'         , ftString, 14);
  mtbl.m.FieldDefs.Add('HOMEPAGE'      , ftString, 100);
  mtbl.m.FieldDefs.Add('EMAIL'         , ftString, 100);
  // pedido
  mtbl.m.FieldDefs.Add('nupedido'      , ftString, 10);
  mtbl.m.FieldDefs.Add('nmcliente'     , ftString, 100);
  // item do pedido
  mtbl.m.FieldDefs.Add('nmmaterial01'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial02'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial03'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial04'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial05'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial06'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial07'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial08'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial09'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial10'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial11'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial12'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial13'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial14'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial15'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial16'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial17'   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmaterial18'   , ftString, 100);
  // corrida
  mtbl.m.FieldDefs.Add(_dtemissao              , ftDateTime);
  mtbl.m.FieldDefs.Add('cdcertificadoqualidade', ftInteger);
  mtbl.m.FieldDefs.Add('nmtpgradevalor'        , ftString, 100);
  mtbl.m.FieldDefs.Add('nucorridaquimica'      , ftString, 10);
  mtbl.m.FieldDefs.Add('dtcorrida'             , ftDateTime);
  mtbl.m.FieldDefs.Add('nuseguranca'           , ftInteger);
  // item corrida
  mtbl.m.FieldDefs.Add('sgelementoquimico01', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico02', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico03', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico04', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico05', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico06', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico07', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico08', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico09', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico10', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico11', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico12', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico13', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico14', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico15', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico16', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico17', ftString, 3);
  mtbl.m.FieldDefs.Add('sgelementoquimico18', ftString, 3);
  mtbl.m.FieldDefs.Add('qtitem01'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem02'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem03'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem04'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem05'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem06'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem07'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem08'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem09'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem10'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem11'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem12'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem13'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem14'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem15'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem16'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem17'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitem18'        , ftFloat);
  mtbl.m.FieldDefs.Add('qtitemsum'        , ftFloat);
  //
  mtbl.m.CreateDataSet;
end;

procedure TReport.gerar;
var
  qtitemsum: Double;
begin
  c := TClasseQuery.Create(makesql);
  try
    Criar_fields;
    c.q.Open;

    mtbl.m.insert;
    mtbl.m.Fieldbyname(_LOGOMARCA).AsVariant                  := c.q.fieldbyname(_logomarca).AsVariant;
    mtbl.m.Fieldbyname(_nmmunicipio).AsString                 := c.q.fieldbyname(_nmmunicipio).AsString;
    mtbl.m.Fieldbyname(_dsendereco).AsString                  := c.q.fieldbyname(_dsendereco).AsString;
    mtbl.m.Fieldbyname(_DSNUMERO).AsString                    := c.q.fieldbyname(_DSNUMERO).AsString;
    mtbl.m.Fieldbyname(_DSOBSINTERNA).AsString                := c.q.fieldbyname(_DSOBSINTERNA).AsString;
    mtbl.m.Fieldbyname(_NMBAIRRO).AsString                    := c.q.fieldbyname(_NMBAIRRO).AsString;
    mtbl.m.Fieldbyname(_sguf).AsString                        := c.q.fieldbyname(_sguf).AsString;
    mtbl.m.Fieldbyname(_NUCEP).AsString                       := c.q.fieldbyname(_NUCEP).AsString;
    mtbl.m.Fieldbyname(_nufone1).AsString                     := c.q.fieldbyname(_nufone1).AsString;
    mtbl.m.Fieldbyname(_NUFAX).AsString                       := c.q.fieldbyname(_NUFAX).AsString;
    mtbl.m.Fieldbyname(_HOMEPAGE).AsString                    := c.q.fieldbyname(_HOMEPAGE).AsString;
    mtbl.m.Fieldbyname(_EMAIL).AsString                       := c.q.fieldbyname(_EMAIL).AsString;
    // pedido
    mtbl.m.Fieldbyname(_nupedido).AsString                    := c.q.fieldbyname(_nupedido).AsString;
    mtbl.m.Fieldbyname(_nmcliente).AsString                   := c.q.fieldbyname(_nmcliente).AsString;
    // corrida
    mtbl.m.Fieldbyname(_dtemissao).AsDateTime             := c.q.fieldbyname(_dtemissao).AsDateTime;
    mtbl.m.Fieldbyname(_cdcertificadoqualidade).AsInteger := c.q.fieldbyname(_cdcertificadoqualidade).AsInteger;
    mtbl.m.Fieldbyname(_nmtpgradevalor).AsString          := c.q.fieldbyname(_nmtpgradevalor).AsString;
    mtbl.m.Fieldbyname(_nucorridaquimica).AsString        := c.q.fieldbyname(_nucorridaquimica).AsString;
    mtbl.m.Fieldbyname(_dtcorrida).AsDateTime             := c.q.fieldbyname(_dtcorrida).AsDateTime;
    mtbl.m.Fieldbyname(_nuseguranca).AsInteger            := c.q.fieldbyname(_nuseguranca).AsInteger;

    while not c.q.Eof do
    begin
      mtbl.m.Fieldbyname(_nmmaterial+FormatarTextoEsquerda(inttostr(c.q.RecNo),2, _0)).AsString := c.q.fieldbyname(_nmproduto).AsString+' '+c.q.fieldbyname(_nmtpgradevalor).AsString+' '+c.q.fieldbyname(_dsformula).AsString;
      c.q.Next;
    end;
    // elementos quimicos
    c.q.Close;
    c.q.sql.text := makesql2;
    c.q.Open;
    qtitemsum := 0;
    while not c.q.Eof do
    begin
      mtbl.m.Fieldbyname(_sg+_elementoquimico+FormatarTextoEsquerda(inttostr(c.q.RecNo),2, _0)).AsString := c.q.fieldbyname(_sg+_elementoquimico).AsString;
      mtbl.m.Fieldbyname(_qtitem+FormatarTextoEsquerda(inttostr(c.q.RecNo),2, _0)).AsFloat               := c.q.fieldbyname(_qtitem).Asfloat;
      qtitemsum                                                                                     := qtitemsum + c.q.fieldbyname(_qtitem).Asfloat;
      c.q.Next;
    end;
    mtbl.m.Fieldbyname(_qtitem+_sum).AsFloat := qtitemsum;
  finally
    FreeAndNil(c);
  end;
end;

function TReport.makesql: string;
begin
  result := 'select p.nupedido'+
                  ',e.LOGOMARCA'+
                  ',c.nmcliente'+
                  ',p.DSOBSINTERNA'+
                  ',e.dsendereco'+
                  ',e.DSNUMERO'+
                  ',e.NMBAIRRO'+
                  ',e.NUCEP'+
                  ',e.NUFAX'+
                  ',e.EMAIL'+
                  ',e.HOMEPAGE'+
                  ',e.NUFONE1'+
                  ',(SELECT uf.sguf FROM UF WHERE UF.CDUF=E.CDUF) sguf'+
                  ',(SELECT m.nmmunicipio FROM MUNICIPIO m WHERE M.cdmunicipio=E.cdmunicipio) nmmunicipio '+
                  ',pr.nmproduto'+
                  ',i.dsformula'+
                  ',cq.dtemissao'+
                  ',cq.cdcertificadoqualidade'+
                  ',t.nmtpgradevalor'+
                  ',co.nucorridaquimica'+
                  ',co.dtemissao dtcorrida'+
                  ',cq.nuseguranca '+
            'from pedido p '+
            'inner join certificadoqualidade cq on cq.cdpedido=p.cdpedido AND P.CDEMPRESA=cq.cdempresa '+
            'inner join corridaquimica co on co.cdcorridaquimica=cq.cdcorridaquimica and co.cdempresa=cq.cdempresa '+
            'inner join tpgradevalor t on t.cdtpgradevalor=co.cdtpgradevalor and t.cdempresa=co.cdempresa '+
            'inner join cliente c on c.cdcliente=p.cdcliente and c.cdempresa=p.cdempresa '+
            'inner join certificadoordproducao o1 on o1.cdempresa=cq.cdempresa and o1.cdcertificadoqualidade=cq.cdcertificadoqualidade '+
            'inner JOIN ordproducao o on o.cdempresa=o1.cdempresa and o.cdordproducao=o1.cdordproducao '+
            'inner join itpedido i on i.cditpedido=o.cditpedido and i.cdtpgradevalor=co.cdtpgradevalor and i.cdempresa=o.cdempresa '+
            'inner join produto pr on pr.cdproduto=i.cdproduto and pr.cdempresa=i.cdempresa '+
            'inner join empresa e on e.cdempresa=p.cdempresa '+
            'where p.cdempresa='+empresa.cdempresa.ToString+' and cq.cdcertificadoqualidade='+codigo;
end;

function TReport.makesql2: string;
begin
  result := 'select e.sgelementoquimico'+
                  ',i.qtitem '+
            'from itcorridaquimica i '+
            'left join elementoquimico e on e.cdelementoquimico=i.cdelementoquimico '+
            'where i.cdempresa='+empresa.cdempresa.ToString+' and i.cdcorridaquimica='+nomedocodigo('certificadoqualidade', codigo, 'cdcorridaquimica');
end;

end.


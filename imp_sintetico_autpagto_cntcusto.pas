unit imp_sintetico_autpagto_cntcusto;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeempresa, classeAplicacao, classequery;

procedure imprimirSinteticoAutpagtoCntcusto(mtbl: TDataClient; sqlwhere, sqlwhere2:string);

implementation

Type TReport = class
  private
    mtbl: TDataClient;
    q, q2 : TClasseQuery;
    procedure CriarFields;
  public
    constructor create(mtbl2: TDataClient);
    procedure   gerar(sqlwhere, sqlwhere2:string);
  end;

procedure imprimirSinteticoAutpagtoCntcusto(mtbl: TDataClient; sqlwhere, sqlwhere2:string);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl);
  try
    rpt.gerar(sqlwhere, sqlwhere2);
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl2: TDataClient);
begin
  mtbl := mtbl2;
  CriarFields;
end;

procedure TReport.CriarFields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_nmcntcusto, ftString, 100);
  mtbl.m.FieldDefs.Add(_dshistorico, ftstring, 100);
  mtbl.m.FieldDefs.Add(_cdautpagto, ftinteger);
  mtbl.m.FieldDefs.Add(_dtemissao, ftDate);
  mtbl.m.FieldDefs.Add(_dtbaixa, ftdate);
  mtbl.m.FieldDefs.Add(_dtprorrogacao, ftdate);
  mtbl.m.FieldDefs.Add(_cdfornecedor, ftLargeint);
  mtbl.m.FieldDefs.Add(_nmfornecedor, ftstring, 100);
  mtbl.m.FieldDefs.Add(_nmempresa, ftstring, 100);
  mtbl.m.FieldDefs.Add(_vlautpagto, ftcurrency);
  mtbl.m.FieldDefs.Add(_VLSALDO, ftcurrency);
  mtbl.m.FieldDefs.Add(_nmtpcobranca, ftstring, 100);
  mtbl.m.FieldDefs.Add(_nuentrada, ftinteger);
  mtbl.m.IndexDefs.Add(_pk, _nmcntcusto, []);
  mtbl.m.IndexName := _pk;
  mtbl.m.CreateDataSet;
end;

procedure TReport.gerar(sqlwhere, sqlwhere2:string);
begin
  q  := TClasseQuery.Create('select C.NUNIVEL||''-''||c.nmcntcusto NMCNTCUSTO'+
                                  ',f.nmfornecedor'+
                                  ',F.CDFORNECEDOR'+
                                  ',sum(i.vltotal)/e.vltotal pr'+
                                  ',e.cdentrada'+
                                  ',EM.NMEMPRESA'+
                                  ',e.nuentrada '+
                            'from entrada e '+
                            'inner join fornecedor f on f.cdfornecedor=e.cdfornecedor and e.cdempresa=f.cdempresa '+
                            'inner join itentrada i on i.cdentrada=e.cdentrada and e.cdempresa=i.cdempresa and e.vltotal>0 '+
                            'inner join cntcusto c on c.cdcntcusto=i.cdcntcusto and c.cdempresa=i.cdempresa '+
                            'left join EMPRESA EM on em.cdempresa=e.cdempresa '+
                            sqlwhere2+
                            ' group by C.NUNIVEL||''-''||c.nmcntcusto'+
                                    ',f.nmfornecedor'+
                                    ',f.cdfornecedor'+
                                    ',e.vltotal'+
                                    ',e.cdentrada'+
                                    ',EM.NMEMPRESA'+
                                    ',e.nuentrada');
  q2 := TClasseQuery.Create;
  try
    while not q.q.Eof do
    begin
      q2.q.Close;
      q2.q.Open('select a.dshistorico'+
                      ',a.cdautpagto'+
                      ',a.dtemissao'+
                      ',a.dtbaixa'+
                      ',a.dtprorrogacao'+
                      ',a.vlautpagto'+
                      ',A.VLSALDO'+
                      ',t.nmtpcobranca '+
                'from autpagto a '+
                'left join tpcobranca t on t.cdtpcobranca=a.cdtpcobranca and a.cdempresa=t.cdempresa '+
                'where a.cdcntcusto is null and a.cdempresa='+empresa.cdempresa.ToString+' and a.cdentrada='+q.q.fieldbyname(_cdentrada).AsString+' '+sqlwhere);
      while not q2.q.Eof do
      begin
        mtbl.m.Insert;
        mtbl.m.FieldByName(_nmcntcusto).AsString      := q.q.fieldbyname(_nmcntcusto).AsString;
        mtbl.m.FieldByName(_dshistorico).asstring     := q2.q.fieldbyname(_dshistorico).AsString;
        mtbl.m.FieldByName(_cdautpagto).asstring      := q2.q.fieldbyname(_cdautpagto).AsString;
        mtbl.m.FieldByName(_dtemissao).AsDateTime     := q2.q.fieldbyname(_dtemissao).AsDateTime;
        mtbl.m.FieldByName(_dtbaixa).AsDateTime       := q2.q.fieldbyname(_dtbaixa).AsDateTime;
        mtbl.m.FieldByName(_dtprorrogacao).AsDateTime := q2.q.fieldbyname(_dtprorrogacao).AsDateTime;
        mtbl.m.FieldByName(_cdfornecedor).AsString    := q.q.fieldbyname(_cdfornecedor).AsString;
        mtbl.m.FieldByName(_nmfornecedor).AsString    := q.q.fieldbyname(_nmfornecedor).AsString;
        mtbl.m.FieldByName(_nmempresa).AsString       := q.q.fieldbyname(_nmempresa).AsString;
        mtbl.m.FieldByName(_vlautpagto).AsCurrency    := q2.q.fieldbyname(_vlautpagto).AsCurrency * q.q.fieldbyname(_pr).AsFloat;
        mtbl.m.FieldByName(_VLSALDO).AsCurrency       := q2.q.fieldbyname(_VLSALDO).AsCurrency * q.q.fieldbyname(_pr).AsFloat;;
        mtbl.m.FieldByName(_nmtpcobranca).AsString    := q2.q.fieldbyname(_nmtpcobranca).AsString;
        mtbl.m.FieldByName(_nuentrada).AsString       := q.q.fieldbyname(_nuentrada).AsString;
        mtbl.m.Post;
        q2.q.Next;
      end;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
    FreeAndNil(q2);
  end;
end;

end.

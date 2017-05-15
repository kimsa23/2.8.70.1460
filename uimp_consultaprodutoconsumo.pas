unit uimp_consultaprodutoconsumo;

interface

uses classes,
  uconstantes,
  classeempresa, classequery;

//procedure imp_consultaprodutoconsumo(mtbl: TDataClient; sqlwhere:TStrings);

implementation

const
  _sql = 'select produto.cdproduto '+
                ', produto.cdgrupo '+
                ', produto.cditem '+
                ', produto.cdalternativo '+
                ', produto.nmproduto '+
                ', grupo.nunivel '+
                ', produto.cdalternativo '+
                ', sum(itmovto.qtitem) qtitem '+
           'from produto '+
           'inner join grupo on grupo.cdgrupo=produto.cdgrupo and produto.cdempresa=grupo.cdempresa '+
           'inner join itmovto on itmovto.cdproduto=produto.cdproduto and produto.cdempresa=itmovto.cdempresa '+
           'inner join movto on movto.cdmovto=itmovto.cdmovto and movto.cdempresa=itmovto.cdempresa '+
           'inner join tpmovto on tpmovto.cdtpmovto=movto.cdtpmovto and movto.cdempresa=tpmovto.cdempresa '+
           ':where '+
           ' group by produto.cdproduto'+
                    ',produto.cdgrupo'+
                    ',produto.cditem'+
                    ',produto.cdalternativo'+
                    ',produto.nmproduto'+
                    ',grupo.nunivel '+
           'order by ';

Type
  TReport = class
  private
    //q, qq, qi:TClasseQuery;
    //mtbl: TDataClient;
    //sqlwhere: TStrings;
    //cdcliente, nmcontato, tipo : string;
    //procedure criar_fields;
    //procedure Exibir_gauge;
    //function  getnum(recno:Integer):string;
    //procedure inserir_cabecalho;
    //procedure inserir_datas;
    //procedure inserir_produto(dtemissao:string; recno: integer);
    //procedure Selecionar_datas;
    //procedure processar_gauge;
  public
    constructor create(mtbl2: TDataClient; sqlwhere_:TStrings);
    procedure   gerar;
  end;

function imprimirconsultaprodutoconsumo(cdproduto, cdgrupo:TStrings; dti, dtf: TDate; cbxcodigo: string; bogrupo:boolean; sqlwhere:string):boolean;
  {
  function makesql:string;
  begin
    result := StringParametro(_sql, sqlwhere);
    if bogrupo then
    begin
      result := result + 'grupo.nunivel, ';
    end;
    if cbxcodigo = 'Grupo+Item' then
    begin
      result := result + 'produto.cditem'
    end
    else if cbxcodigo = 'Código Reduzido' then
    begin
      result := result + 'produto.cdproduto'
    end
    else if cbxcodigo = 'Código Alternativo' then
    begin
      result := result + 'produto.cdalternativo';
    end;
  end;
var
  qt : tclientdataset;
  s : tsqldataset;
  d : TDataSetprovider;
  c : TClientdataset;
  cdproduto_, cdgrupo3, nmgrupo3, cdgrupo2, nmgrupo2, cdgrupo1, nmgrupo1, cdgrupos : string;
  }
begin
  {
  result     := false;
  cdproduto_ := '';
  s := tsqldataset.create     (nil);
  s.GetMetadata := False;
  d := TDataSetprovider.Create(nil);
  c := TClientdataset.Create  (nil);
  qt:= tclientdataset.create(nil);
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    // criar tabela temporaria
    qt.FieldDefs.Add('CDGRUPO1' , ftstring,  10, false);
    qt.FieldDefs.Add('NMGRUPO1' , ftstring, 100, false);
    qt.FieldDefs.Add('CDGRUPO2' , ftstring,  10, false);
    qt.FieldDefs.Add('NMGRUPO2' , ftstring, 100, false);
    qt.FieldDefs.Add('CDGRUPO3' , ftstring,  10, false);
    qt.FieldDefs.Add('NMGRUPO3' , ftstring, 100, false);
    qt.FieldDefs.Add(_CDPRODUTO, ftstring,  20, false);
    qt.FieldDefs.Add(_NMPRODUTO, ftstring, 100, false);
    qt.FieldDefs.Add(_QTESTOQUE, ftcurrency);
    qt.CreateDataSet;
    s.SQLConnection := aplicacao.con2;
    s.CommandText   := makesql;
    d.DataSet       := s;
    c.SetProvider(d);
    c.Open;
    if c.recordcount < 1 then
    begin
      messagedlg(__msg_01, mtinformation, [mbok], 0);
      exit;
    end;
    // Imprime Cabecalho
    frmprogressbar.gau.MaxValue := c.RecordCount;
    frmprogressbar.Show;
    while not c.eof do
    begin
      frmprogressbar.gau.Progress := c.RecNo;
      application.ProcessMessages;
      // Quebra do Relatorio
      if cdgrupos <> c.fieldbyname(_nunivel).Asstring then
      begin
        cdgrupos   := c.fieldbyname(_nunivel).Asstring;
        cdgrupo1 := copy(c.fieldbyname(_nunivel).Asstring, 1, 1);
        nmgrupo1 := NomedoCampo(_grupo, cdgrupo1, _string, _nunivel);
        cdgrupo2 := copy(c.fieldbyname(_nunivel).Asstring, 1, 4);
        nmgrupo2 := NomedoCampo(_grupo, cdgrupo2, _string, _nunivel);
        cdgrupo2 := copy(cdgrupo2, 3, 2);
        cdgrupo3 := c.fieldbyname(_nunivel).Asstring;
        nmgrupo3 := NomedoCampo(_grupo, cdgrupo3, _string, _nunivel);
        cdgrupo3 := copy(cdgrupo3, 6, 3);
      end;
      // Secao Detalhe
      if cbxcodigo = 'Grupo+Item' then
      begin
        cdproduto_ := c.fieldbyname(_nunivel).Asstring+'.'+FormatarTextoEsquerda(c.fieldbyname(_cditem).Asstring, __tamcditem, _0)
      end
      else if cbxcodigo = 'Código Reduzido' then
      begin
        cdproduto_ := c.fieldbyname(_cdproduto).Asstring;
      end
      else if cbxcodigo = 'Código Alternativo' then
      begin
        cdproduto_ := c.fieldbyname(_cdalternativo).Asstring;
      end;
      qt.Append;
      qt.Fieldbyname(_CDGRUPO+_1).Asstring  := cdgrupo1;
      qt.fieldbyname(_NMGRUPO+_1).AsSTRING  := nmgrupo1;
      qt.Fieldbyname(_CDGRUPO+_2).Asstring  := cdgrupo2;
      qt.fieldbyname(_NMGRUPO+_2).AsSTRING  := nmgrupo2;
      qt.Fieldbyname(_CDGRUPO+_3).Asstring  := cdgrupo3;
      qt.fieldbyname(_NMGRUPO+_3).AsSTRING  := nmgrupo3;
      qt.Fieldbyname(_CDPRODUTO).Asstring   := RemoverEspacosVaziosInicio(cdproduto_);
      qt.fieldbyname(_NMPRODUTO).AsSTRING   := c.fieldbyname(_nmproduto).Asstring;
      qt.fieldbyname(_QTESTOQUE).AsCurrency := c.fieldbyname(_qtitem).Ascurrency;
      qt.Post;
      c.next;
    end;
    result := true;
  finally
    freeandnil(s);
    freeandnil(d);
    freeandnil(c);
    freeandnil(qt);
    freeandnil(frmprogressbar);
  end ;
  }
  result := true;
end;

{ TReport }

constructor TReport.create(mtbl2: TDataClient; sqlwhere_: TStrings);
//var
  //rpt : TReport;
begin
  {
  rpt := TReport.create(mtbl, sqlwhere);
  try
    rpt.gerar;
  finally
    rpt.sqlwhere.Free;
    FreeAndNil(rpt);
  end;
  }
end;

procedure TReport.gerar;
begin

end;

end.

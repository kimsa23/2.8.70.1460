unit ClasseImportarInventario;

interface

uses forms, Classes, ExcelXP, sysutils, dialogs, Windows, Variants,
  classeproduto,
  uRichEdit, classequery, classeempresa, uProgressBar, uConstantes, uRotinas, ustrings, classeexecutasql;

type
  TImportarInventario = class
  private
    i : integer;
    LCID : integer;
    codigo : string;
    filename : string;
    qtestoque : double;
    vlsaldovalor : Currency;
    vlcustomedio : Currency;
    vlvenda : Currency;
    vlcusto : Currency;
    AplicacaoE : TExcelApplication;
    Planilha : TExcelWorksheet;
    wkbk : _Workbook;
    mensagem : TStrings;
    sql : TStrings;
    qry : TClasseQuery;
    c : TDataClient;
    procedure ZerarEstoqueProdutoForaPlanilha(data: TDate);
    function Importar(data: TDate):Boolean;
  public
    constructor Create;
    destructor destroy; override;
    class function Processar(data: TDate):Boolean;
  end;

implementation

constructor TImportarInventario.Create;
begin
  inherited;
  sql      := TStringList.Create;
  mensagem := tstringlist.Create;
  qry      := TClasseQuery.Create('select cdproduto,boativar,vlvenda,vlcusto,qtestoque from produto where cdempresa='+empresa.cdempresa.tostring+' order by cdproduto', true);
  c        := TDataClient.Create;
  frmprogressbar := Tfrmprogressbar.Create(application);
end;

destructor TImportarInventario.destroy;
begin
  freeandnil(c);
  freeandnil(qry);
  freeandnil(sql);
  freeandnil(mensagem);
  freeandnil(frmprogressbar);
  AplicacaoE.Workbooks.Close(lcid);
  FreeAndNil(planilha);
  FreeAndNil(AplicacaoE);
  inherited;
end;

function TImportarInventario.Importar(data: TDate): Boolean;
var
  hcustomedio : thcustomedio;
begin
  MessageDlg('Esta importação de estoque é usado no momento da implantação do sistema.'#13+
             'Será excluído todo histório de estoque e custo médio, sendo necessário recalcular o custo médio com a data posterior a '+FormatDateTime(_dd_mm_yyyy, data)+'.'#13+
             'Para importação do estoque a planilha deve estar da seguinte forma:'#13+
             'A primeira linha deve conter o nome das colunas.'#13+
             'Coluna A: Código reduzido do produto'#13+
             'Coluna D: Quantidade em Estoque'#13+
             'Coluna E: Valor do Custo Médio'#13+
             'Coluna F: Saldo valor (qtd estoque * Custo Medio)'#13+
             'Coluna G: Preço de Venda'#13+
             'Coluna H: Valor de Custo', mtInformation, [mbOK], 0);
  if not QRotinas.getfilename(filename) then
  begin
    result := False;
    exit;
  end;
  AplicacaoE     := TExcelApplication.Create(nil);
  Planilha       := TExcelWorksheet.Create(nil);
  LCID           := GetUserDefaultLCID;
  wkbk           := AplicacaoE.Workbooks.Open(filename, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, LCID);
  frmprogressbar.gau.MaxValue := 100;
  frmprogressbar.Show;
  c.copydataset(qry);
  Planilha.ConnectTo(wkbk.Worksheets[1] as _Worksheet);
  Planilha.Activate; // torna a planilha da lista a planilha ativa
  i      := 1;
  codigo := Trim(Planilha.Range[_A+inttostr(i),_A+inttostr(i)].Value2);
  sql.Add('delete from hcustomedio where cdempresa='+empresa.cdempresa.tostring+';');
  while codigo <> '' do
  begin
    application.Title           := codigo;
    frmprogressbar.pnl.Caption  := codigo;
    frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
    Application.ProcessMessages;
    if frmprogressbar.gau.Progress = 100 then
    begin
      frmprogressbar.gau.Progress := 0;
    end;
    if not c.m.Locate(UpperCase(_CDPRODUTO), codigo, []) then
    begin
      mensagem.Add(Format(_msg_codigo_inexistente_na_tabela, [codigo, maiuscula(_produto)]));
      Inc(i);
      codigo := Trim(Planilha.Range[_A+inttostr(i),_A+inttostr(i)].Value2);
      continue;
    end;
    c.m.Delete;
    qtestoque    := Planilha.Range[_D+inttostr(i),_D+inttostr(i)].Value2;
    vlcustomedio := Planilha.Range[_E+inttostr(i),_E+inttostr(i)].Value2;
    vlsaldovalor := Planilha.Range[_F+inttostr(i),_F+inttostr(i)].Value2;
    vlvenda      := Planilha.Range[_G+inttostr(i),_G+inttostr(i)].Value2;
    vlcusto      := Planilha.Range[_H+inttostr(i),_H+inttostr(i)].Value2;
    if vlvenda <> 0 then
    begin
      qry.q.Edit;
      qry.q.FieldByName(_vlvenda).AsCurrency := vlvenda;
      qry.q.Post;
    end;
    if vlcusto <> 0 then
    begin
      qry.q.Edit;
      qry.q.FieldByName(_vlcusto).AsCurrency := vlcusto;
      qry.q.Post;
    end;
    hcustomedio := thcustomedio.create;
    try
      hcustomedio.cdempresa    := empresa.cdempresa;
      hcustomedio.cdproduto    := codigo.ToInteger;
      hcustomedio.dthistorico  := data;
      hcustomedio.vlcustomedio := vlcustomedio;
      hcustomedio.qtestoque    := qtestoque;
      hcustomedio.vlsaldovalor := vlsaldovalor;
      sql.Add(hcustomedio.insert(True));
    finally
      freeandnil(hcustomedio);
    end;
    Inc(i);
    codigo := Trim(Planilha.Range[_A+inttostr(i),_A+inttostr(i)].Value2);
  end;
  ZerarEstoqueProdutoForaPlanilha(data);
  if mensagem.Count > 0 then
  begin
    ExibirSaidaVideo(mensagem);
    abort;
  end;
  ExecutaScript(sql);
  result := true;
end;

class function TImportarInventario.Processar(data: TDate): Boolean;
var
  Inventario : TImportarInventario;
begin
  Inventario := TImportarInventario.Create;
  try
    result := Inventario.Importar(data);
  finally
    FreeAndNil(inventario);
  end;
end;

procedure TImportarInventario.ZerarEstoqueProdutoForaPlanilha(data: TDate);
var
  hcustomedio : THCustoMedio;
begin
  c.m.First;
  while not c.m.Eof do
  begin
    hcustomedio := THCustoMedio.Create;
    try
      hcustomedio.cdempresa    := empresa.cdempresa;
      hcustomedio.cdproduto    := c.m.fieldbyname(_cdproduto).asinteger;
      hcustomedio.dthistorico  := data;
      hcustomedio.vlcustomedio := 0;
      hcustomedio.qtestoque    := 0;
      hcustomedio.vlsaldovalor := 0;
      sql.Add(hcustomedio.insert(True));
    finally
      FreeAndNil(hcustomedio);
    end;
    c.m.Next;
  end;
end;

end.

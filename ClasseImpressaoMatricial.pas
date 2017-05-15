unit ClasseImpressaoMatricial;

Interface

uses forms, classes, sysutils, dialogs,
  FireDAC.Comp.Client,
  ustrings, uconstantes, udatahora, uregistro;
  //classeempresa,
  //classeQuery;

type
  TSecao = (scsql, scconfiguracao, scCabecalho, scDetalhe, scRodape, scFooter);
  TImpressaoMatricial = class
  private
    secao : TSecao;
    pparam, pfinal : integer;
    q : TFDQuery;
    codigo, campo : string;
    nulinha, nupagina,  nulin : integer;
    linhas, footer, configuracao, rodape, cabecalho, detalhe, layout, sql1 : TStrings;
    nmrelatorio:string;
    //confire : TFDConnection;
    procedure AlinhaCampo(lin:string; var valor:string; qte, pff:integer);
    procedure FormatarCampo(lin: string; campo:Variant; var texto : string; qte, pff : integer);
    procedure processarLinha(lin: string; var texto : string);
    procedure Processarlayout(layout: TStrings);
    function MakeSQL:string;
    procedure SepararEmSecao(dsscript:string);
    procedure ProcessarSecaoConfiguracao;
    procedure AcrescentarLinhaPagina;
  public
    constructor create;
    destructor destroy;
    function Imprimir(conexao:TFDConnection; dsscript:string):string;
  end;

implementation

procedure TImpressaoMatricial.AlinhaCampo(lin: string; var valor: string; qte, pff: integer);
begin
  if lowercase(lin[pff+1]) = 'e' then
  begin
    while length(valor) < qte do
    begin
      valor := valor+' '
    end;
  end
  else if lowercase(lin[pff+1]) = 'd' then
  begin
    while length(valor) < qte do
    begin
      valor := ' '+valor
    end;
  end
  else if lowercase(lin[pff+1]) = 'c' then
  begin
    valor := CentralizarString(valor, qte);
  end;
end;

constructor TImpressaoMatricial.create;
begin
  nupagina := 0;
  nulinha := 0;
  nulin := 0;
  sql1         := Tstringlist.create;
  layout       := TStringlist.create;
  detalhe      := TStringlist.create;
  cabecalho    := TStringlist.create;
  rodape       := TStringlist.create;
  footer       := TStringList.create;
  linhas       := TStringList.Create;
  configuracao := TStringlist.create;
  q := TFDQuery.create(nil);
end;

destructor TImpressaoMatricial.destroy;
begin
  freeandnil(q);
  freeandnil(layout);
  freeandnil(detalhe);
  freeandnil(cabecalho);
  freeandnil(configuracao);
  FreeAndNil(linhas);
  freeandnil(sql1);
end;

procedure TImpressaoMatricial.FormatarCampo(lin: string; campo: Variant; var texto: string; qte, pff: integer);
var
  formatacao, valor : string;
begin
  if lin[pff+3] = 'f' then
  begin
    if lin[pff+5] = 'd' then
    begin
      formatacao := copy(lin, pff+7, length(lin) - (pff+7));
      valor := formatdatetime(formatacao, campo);
    end
    else if lin[pff+5] = 'n' then
    begin
      formatacao := copy(lin, pff+7, length(lin) - (pff+7));
      if lowercase(formatacao) = 'moeda'    then
      begin
        valor := formatfloat(__moeda, campo);
      end;
      if lowercase(formatacao) = 'inteiro'  then
      begin
        valor := formatfloat(__integer, campo);
      end;
      if lowercase(formatacao) = 'decimal3' then
      begin
        valor := formatfloat(__decimal3, campo);
      end;
      if lowercase(formatacao) = 'decimal4' then
      begin
        valor := formatfloat(__decimal4, campo);
      end;
      if lowercase(formatacao) = 'decimal1' then
      begin
        valor := formatfloat(__decimal1, campo);
      end;
    end
    else if lin[pff+5] = 'h' then
    begin
      formatacao := copy(lin, pff+7, length(lin) - (pff+7));
      valor      := formatdatetime(formatacao, campo);
    end;
  end
  else
  begin
    valor := copy(campo, 1, qte);
  end;
  AlinhaCampo(lin, valor, qte, pff);
  texto := texto + valor;
end;

function TImpressaoMatricial.Imprimir(conexao:TFDConnection; dsscript: string): string;
var
  I: Integer;
begin
  //confire := conexao;
  q.Connection := conexao;
  SepararEmSecao(dsscript);
  ProcessarSecaoConfiguracao;
  processarlayout(cabecalho);
  if q.RecordCount = 0 then
  begin
    result := '';
    exit;
  end;
  while not q.Eof do
  begin
    application.ProcessMessages;
    processarlayout(detalhe);
    q.next;
  end;
  processarlayout(footer);
  AcrescentarLinhaPagina;
  nupagina := nupagina + 1;
  Processarlayout(rodape);
  for I := 0 to linhas.Count - 1 do
  begin
    linhas[i] := '<p>'+linhas[i]+'</p>';
  end;
  result := linhas.Text;
end;

procedure TImpressaoMatricial.AcrescentarLinhaPagina;
begin
  while (nulin + rodape.count < nulinha) do
  begin
    linhas.add('');
    nulin := nulin + 1;
  end;
end;

procedure TImpressaoMatricial.ProcessarSecaoConfiguracao;
var
  i: Integer;
begin
  for i := 0 to configuracao.count - 1 do
  begin
    if uppercase(copy(configuracao[i], 1, 5)) = 'NOME=' then
    begin
      nmrelatorio := copy(configuracao[i], 6, length(configuracao[i]) - 5);
    end;
    if uppercase(copy(configuracao[i], 1, 7)) = 'LINHAS=' then
    begin
      nulinha := strtoint(copy(configuracao[i], 8, length(configuracao[i]) - 7));
    end;
  end;
end;

procedure TImpressaoMatricial.SepararEmSecao(dsscript:string);
var
  i: Integer;
  l : tstrings;
begin
  l := tstringlist.Create;
  try
    l.Text := dsscript;
    for i := 0 to l.Count - 1 do
    begin
      if uppercase(l[i]) = '[SQL1]' then
      begin
        secao := scsql;
        continue;
      end;
      if uppercase(l[i]) = '[LAYOUT]' then
      begin
        if sql1.Text <> '' then
        begin
          q.Open(MakeSQL);
        end;
        continue;
      end;
      if uppercase(l[i]) = '[CONFIGURACAO]' then
      begin
        secao := scconfiguracao;
        continue;
      end;
      if uppercase(l[i]) = '[CABECALHO]' then
      begin
        secao := scCabecalho;
        continue;
      end;
      if uppercase(l[i]) = '[DETALHE]' then
      begin
        secao := scDetalhe;
        continue;
      end;
      if uppercase(l[i]) = '[RODAPE]' then
      begin
        secao := scRodape;
        continue;
      end;
      if uppercase(l[i]) = '[RODAPE RELATORIO]' then
      begin
        secao := scFooter;
        continue;
      end;
      case secao of
        scsql: sql1.add(l[i]);
        scconfiguracao: configuracao.add(l[i]);
        scCabecalho: cabecalho.add(l[i]);
        scDetalhe: detalhe.add(l[i]);
        scRodape: rodape.add(l[i]);
        scFooter: footer.add(l[i]);
      end;
    end;
  finally
    freeandnil(l);
  end;
end;

function TImpressaoMatricial.MakeSQL:string;
begin
  pparam := pos(':', sql1.text) + 1;
  if pparam > 1 then // posição parametro
  begin
    pfinal := length(sql1.text) - pos(':', sql1.text); // posição final parametro
    campo  := copy(sql1.Text, pparam, pfinal);
    codigo := inputbox('Digite o parâmetro', 'Valor para ' + campo, '');
    result := copy(sql1.Text, 1, pparam - 2) + codigo;
  end
  else
  begin
    result := sql1.text;
  end;
end;

procedure TImpressaoMatricial.Processarlayout(layout: TStrings);
var
  x, i : integer;
  texto, lin, li : string;
begin
  for i := 0 to layout.count - 1 do
  begin
    li := layout[i];
    lin := '';
    for x := 1 to length(li) do
    begin
      if li[x] = '+' then
      begin
        processarlinha(lin, texto);
        lin := '';
        continue;
      end;
      lin := lin + li[x];
    end;
    processarlinha(lin, texto);
    linhas.Add(texto);
    texto := '';
    nulin := nulin + 1;
    if nulin + rodape.count = nulinha then
    begin
      nupagina := nupagina + 1;
      processarlayout(rodape);
      nulin := 0;
      processarlayout(cabecalho);
    end;
  end;
end;

procedure TImpressaoMatricial.processarLinha(lin: string; var texto: string);
var
  qte, pfe, pff : integer;
  nmfield : string;
begin
  if uppercase(copy(lin, 1, 6)) = 'ESPACO' then
  begin
    texto := texto + espaco(strtoint(copy(lin, 8, pos(')', lin) - 8)));
  end
  else if uppercase(copy(lin, 1, 4)) = 'SQL1' then
  begin
    pfe     := pos('(', lin);
    pff     := pos(',', lin);
    qte     := strtoint(copy(lin, pfe+1, pff - pfe - 1));
    nmfield := copy(lin, 6, pfe - 6);
    if uppercase(nmfield) = 'COUNT' then
    begin
      formatarCampo(lin, q.RecordCount, texto, qte, pff)
    end
    else
    begin
      formatarCampo(lin, q.fieldbyname(nmfield).asvariant, texto, qte, pff);
    end;
  end
  else if lowercase(lin) = 'relatorio.pagina' then
  begin
    texto := texto + inttostr(nupagina)
  end
  else if lowercase(copy(lin, 1, 14)) = 'relatorio.nome'   then
  begin
    pfe     := pos('(', lin);
    pff     := pos(',', lin);
    qte     := strtoint(copy(lin, pfe+1, pff - pfe - 1));
    formatarCampo(lin, nmrelatorio, texto, qte, pff);
  end
  {else if lowercase(copy(lin, 1, 17)) = 'empresa.nmempresa' then
  begin
    nmempresa := Empresa.nmempresa;
    pfe     := pos('(', lin);
    pff     := pos(',', lin);
    qte     := strtoint(copy(lin, pfe+1, pff - pfe - 1));
    formatarCampo(lin, nmempresa, texto, qte, pff);
  end}
  {else if lowercase(copy(lin, 1, 14)) = 'relatorio.data' then
  begin
    pfe     := pos('(', lin);
    pff     := pos(',', lin);
    qte     := strtoint(copy(lin, pfe+1, pff - pfe - 1));
    formatarCampo(lin, DtBanco, texto, qte, pff);
  end}
  else
  begin
    texto := texto + lin;
  end;
end;

end.

unit classeimportacaoFornecedor;

interface

uses
  {$IFNDEF VER210}System.Actions, System.UITypes,{$ENDIF}
  Forms, Dialogs, SysUtils, Classes,
  uRichEdit, uProgressBar, uRegistro, ustrings, uRotinas, uConstantes,
  classeregistrainformacao, classeexecutasql, classeempresa,
  ACBrValidador;

function ImportarFornecedor:Boolean;

implementation

type
  TFornecedorImportacao = record
    cdFornecedor : Integer;
    cduf : Integer;
    cdrmatividade : Integer;
    cdmunicipio : Integer;
    cdpais : Integer;
    cdstFornecedor : integer;
    nmFornecedor : string;
    rzsocial : string;
    dsendereco : string;
    dsnumero : string;
    dscomplemento : string;
    nucxpostal : string;
    nmbairro : string;
    nucep : string;
    nufone1 : string;
    nufone2 : string;
    nufone3 : string;
    nufax : string;
    tppessoa : string;
    nuinscest : string;
    nucnpj : string;
    nucpf : string;
    email : string;
  end;
  TImportacao = class(tobject)
    sqlregistras, nmfile : string;
    arquivo, sql, erros : TStrings;
    Fornecedor : array of TFornecedorImportacao;
    private
      function  ler_arquivo:Boolean;
      procedure preparar_estrutura;
      procedure carregar_dados_estrutura;
      function  consistir_estrutura:boolean;
      //procedure gerar_scritp;
      function  gerar_insert(i:Integer):string;
      function  gerar_update(i:Integer):string;
      procedure executar_script;
    public
      constructor Create;
      destructor  destroy; override;
      function    Importar:Boolean;
  end;

function ImportarFornecedor:Boolean;
var
  importacao : TImportacao;
begin
  result := False;
  importacao := timportacao.Create;
  try
    importacao.Importar;
  finally
    importacao.destroy;
  end;
end;

procedure TImportacao.carregar_dados_estrutura;
var
  i : Integer;
  registro : TStrings;
begin
  registro := TStringList.Create;
  try
    frmprogressbar.gau1.MaxValue := arquivo.Count;
    for i := 0 to arquivo.Count - 1  do
    begin
      frmprogressbar.gau1.Progress := i + 1;
      Application.ProcessMessages;
      registro.Clear;
      prepararlista(registro, arquivo[i], ';');
      Fornecedor[i].cdFornecedor     := strtoint(registro[0]);
      Fornecedor[i].cduf          := strtoint(registro[1]);
      Fornecedor[i].cdrmatividade := strtoint(registro[2]);
      Fornecedor[i].cdmunicipio   := strtoint(registro[3]);
      Fornecedor[i].cdpais        := strtoint(registro[4]);
      Fornecedor[i].nmFornecedor  := RemoverChar(registro[5],'"');
      Fornecedor[i].rzsocial      := RemoverChar(registro[6],'"');
      Fornecedor[i].dsendereco    := RemoverChar(registro[7],'"');
      Fornecedor[i].dsnumero      := RemoverChar(registro[8],'"');
      Fornecedor[i].dscomplemento := RemoverChar(registro[9],'"');
      Fornecedor[i].nucxpostal    := RemoverChar(registro[10],'"');
      Fornecedor[i].nmbairro      := RemoverChar(registro[11],'"');
      Fornecedor[i].nucep         := RemoverChar(registro[12],'"');
      Fornecedor[i].nufone1       := RemoverChar(registro[13],'"');
      Fornecedor[i].nufone2       := RemoverChar(registro[14],'"');
      Fornecedor[i].nufone3       := RemoverChar(registro[15],'"');
      Fornecedor[i].nufax         := RemoverChar(registro[16],'"');
      Fornecedor[i].tppessoa      := RemoverChar(registro[17],'"');
      Fornecedor[i].nuinscest     := RemoverChar(registro[18],'"');
      Fornecedor[i].nucnpj        := RemoverChar(registro[19],'"');
      Fornecedor[i].nucpf         := RemoverChar(registro[20],'"');
      Fornecedor[i].email         := RemoverChar(registro[21],'"');
      Fornecedor[i].cdstFornecedor   := 1;
    end;
  finally
    registro.Free;
  end;
end;

function TImportacao.consistir_estrutura: boolean;
var
  i: Integer;
  mensagem : string;
begin
  frmprogressbar.gau1.MaxValue := arquivo.Count;
  for i := 0 to arquivo.Count - 1 do
  begin
    frmprogressbar.gau1.Progress := i + 1;
    Application.ProcessMessages;

    if not codigoexiste(_uf, IntToStr(Fornecedor[i].cduf)) then
    begin
      erros.Add('UF ('+inttostr(Fornecedor[i].cduf)+') inválido no Fornecedor '+inttostr(Fornecedor[i].cdFornecedor)+' - '+Fornecedor[i].nmFornecedor+'.');
    end;
    if not codigoexiste(_rmatividade, IntToStr(Fornecedor[i].cdrmatividade)) then
    begin
      erros.Add('Ramo Atividade ('+inttostr(Fornecedor[i].cdrmatividade)+') inválido no Fornecedor '+inttostr(Fornecedor[i].cdFornecedor)+' - '+Fornecedor[i].nmFornecedor+'.');
    end;
    if not codigoexiste(_municipio, IntToStr(Fornecedor[i].cdmunicipio)) then
    begin
      erros.Add('Município ('+inttostr(Fornecedor[i].cdmunicipio)+') inválido no Fornecedor '+inttostr(Fornecedor[i].cdFornecedor)+' - '+Fornecedor[i].nmFornecedor+'.');
    end;
    if not codigoexiste(_pais, IntToStr(Fornecedor[i].cdpais)) then
    begin
      erros.Add('Pais ('+inttostr(Fornecedor[i].cdpais)+') inválido no Fornecedor '+inttostr(Fornecedor[i].cdFornecedor)+' - '+Fornecedor[i].nmFornecedor+'.');
    end;
    if Fornecedor[i].nmFornecedor = '' then
    begin
      erros.Add('Nome Fantasia vazio no Fornecedor '+inttostr(Fornecedor[i].cdFornecedor)+' - '+Fornecedor[i].nmFornecedor+'.');
    end;
    if Fornecedor[i].tppessoa = '' then
    begin
      erros.Add('Tipo de Pessoa vazio no Fornecedor '+inttostr(Fornecedor[i].cdFornecedor)+' - '+Fornecedor[i].nmFornecedor+'.');
    end;
    if fornecedor[i].nuinscest <> '' then
    begin
      //@mensagem := ACBrValidadorValidarIE(fornecedor[i].nuinscest, NomedoCodigo(_uf, IntToStr(fornecedor[i].cduf), _sguf));
      mensagem := ValidarIE(fornecedor[i].nuinscest, NomedoCodigo(_uf, IntToStr(fornecedor[i].cduf), _sguf));
      if mensagem <> '' then
      begin
        erros.Add('Inscrição Estadual inválido no fornecedor '+inttostr(fornecedor[i].cdfornecedor)+' - '+fornecedor[i].nmfornecedor+'.');
      end;
    end;
    if Fornecedor[i].nucnpj <> '' then
    begin
      //@mensagem := ACBrValidadorValidarCNPJ(Fornecedor[i].nucnpj);
      mensagem := ValidarCNPJ(Fornecedor[i].nucnpj);
      if mensagem <> '' then
      begin
        erros.Add('CNPJ inválido no Fornecedor '+inttostr(Fornecedor[i].cdFornecedor)+' - '+Fornecedor[i].nmFornecedor+'.');
      end;
    end;
    if Fornecedor[i].nucpf <> '' then
    begin
      //@mensagem := ACBrValidadorValidarcpf(Fornecedor[i].nucpf);
      mensagem := Validarcpf(Fornecedor[i].nucpf);
      if mensagem <> '' then
      begin
        erros.Add('CPF inválido no Fornecedor '+inttostr(Fornecedor[i].cdFornecedor)+' - '+Fornecedor[i].nmFornecedor+'.');
      end;
    end;
    if codigoexiste(_Fornecedor, IntToStr(Fornecedor[i].cdFornecedor)) then sql.add(gerar_update(i))
                                                                       else sql.add(gerar_insert(i));
  end;
  result := erros.Count = 0;
end;

constructor TImportacao.Create;
begin
  sql            := TStringList.Create;
  erros          := TStringList.Create;
  arquivo        := TStringList.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  frmprogressbar.setgau1;
end;

destructor TImportacao.destroy;
begin
  FreeAndNil(sql);
  FreeAndNil(erros);
  FreeAndNil(arquivo);
  FreeAndNil(frmprogressbar);
end;

procedure TImportacao.executar_script;
begin
  if ExecutaScript(sql, frmprogressbar.gau1) then
  begin
    messagedlg('Importação concluída!', mtInformation, [mbOK], 0);
  end;
end;

function TImportacao.gerar_insert(i:Integer):string;
begin
  result := 'insert into Fornecedor'+
            '(cdstFornecedor,cdFornecedor,cduf,cdrmatividade,cdmunicipio,cdpais,nmFornecedor,rzsocial,'+
             'dsendereco,dsnumero,dscomplemento,nucxpostal,nmbairro,nucep,nufone1,'+
             'nufone2,nufone3,nufax,tppessoa,nuinscest,nucnpj,nucpf,email,'+
             _sqlreg+
             _1+','+
             inttostr(Fornecedor[i].cdFornecedor)+
             ','+inttostr(Fornecedor[i].cduf)+
            ','+inttostr(Fornecedor[i].cdrmatividade)+
            ','+inttostr(Fornecedor[i].cdmunicipio)+
            ','+inttostr(Fornecedor[i].cdpais)+
            ','+quotedstr(Fornecedor[i].nmFornecedor)+
            ','+quotedstr(Fornecedor[i].rzsocial)+
            ','+quotedstr(Fornecedor[i].dsendereco)+
            ','+quotedstr(Fornecedor[i].dsnumero)+
            ','+quotedstr(Fornecedor[i].dscomplemento)+
            ','+quotedstr(Fornecedor[i].nucxpostal)+
            ','+quotedstr(Fornecedor[i].nmbairro)+
            ','+quotedstr(Fornecedor[i].nucep)+
            ','+quotedstr(Fornecedor[i].nufone1)+
            ','+quotedstr(Fornecedor[i].nufone2)+
            ','+quotedstr(Fornecedor[i].nufone3)+
            ','+quotedstr(Fornecedor[i].nufax)+
            ','+quotedstr(Fornecedor[i].tppessoa)+
            ','+quotedstr(Fornecedor[i].nuinscest)+
            ','+quotedstr(Fornecedor[i].nucnpj)+
            ','+quotedstr(Fornecedor[i].nucpf)+
            ','+quotedstr(Fornecedor[i].email)+','+sqlregistras+';';
end;

{
procedure TImportacao.gerar_scritp;
var
  i: Integer;
begin
  sqlregistras := SQLRegistra;
  frmprogressbar.gau1.MaxValue := arquivo.Count;
  for i := 0 to arquivo.Count - 1 do
  begin
    frmprogressbar.gau1.Progress := i + 1;
    Application.ProcessMessages;
    if codigoexiste(_Fornecedor, IntToStr(Fornecedor[i].cdFornecedor)) then
    begin
      sql.add(gerar_update(i));
    end
    else
    begin
      sql.add(gerar_insert(i));
    end;
  end;
end;
}

function TImportacao.gerar_update(i:Integer):string;
begin
  result := 'update Fornecedor '+
            'set cduf='      +inttostr(Fornecedor[i].cduf)+
            ',cdrmatividade='+inttostr(Fornecedor[i].cdrmatividade)+
            ',cdmunicipio='+inttostr(Fornecedor[i].cdmunicipio)+
            ',cdpais='+inttostr(Fornecedor[i].cdpais)+
            ',nmFornecedor='+quotedstr(Fornecedor[i].nmFornecedor)+
            ',rzsocial='+quotedstr(Fornecedor[i].rzsocial)+
            ',dsendereco='+quotedstr(Fornecedor[i].dsendereco)+
            ',dsnumero='+quotedstr(Fornecedor[i].dsnumero)+
            ',dscomplemento='+quotedstr(Fornecedor[i].dscomplemento)+
            ',nucxpostal='+quotedstr(Fornecedor[i].nucxpostal)+
            ',nmbairro='+quotedstr(Fornecedor[i].nmbairro)+
            ',nucep='+quotedstr(Fornecedor[i].nucep)+
            ',nufone1='+quotedstr(Fornecedor[i].nufone1)+
            ',nufone2='+quotedstr(Fornecedor[i].nufone2)+
            ',nufone3='+quotedstr(Fornecedor[i].nufone3)+
            ',nufax='+quotedstr(Fornecedor[i].nufax)+
            ',tppessoa='+quotedstr(Fornecedor[i].tppessoa)+
            ',nuinscest='+quotedstr(Fornecedor[i].nuinscest)+
            ',nucnpj='+quotedstr(Fornecedor[i].nucnpj)+
            ',nucpf='+quotedstr(Fornecedor[i].nucpf)+
            ',email='+quotedstr(Fornecedor[i].email)+
            ' where cdempresa='+empresa.cdempresa.tostring+' and cdFornecedor='+inttostr(Fornecedor[i].cdFornecedor)+';';
end;

function TImportacao.Importar: Boolean;
begin
  if not ler_arquivo then
  begin
    Result := False;
    Exit;
  end;
  frmprogressbar.gau.MaxValue := 6;
  frmprogressbar.gau.Progress := 1;
  frmprogressbar.pnl.Caption  := 'Ler Arquivo';
  frmprogressbar.Show;
  Application.ProcessMessages;
  frmprogressbar.gau.Progress := 2;
  frmprogressbar.pnl.Caption  := 'Preparar dados';
  Application.ProcessMessages;
  preparar_estrutura;
  frmprogressbar.gau.Progress := 3;
  frmprogressbar.pnl.Caption  := 'Carregar dados';
  Application.ProcessMessages;
  carregar_dados_estrutura;
  frmprogressbar.gau.Progress := 4;
  frmprogressbar.pnl.Caption  := 'Consistir dados';
  Application.ProcessMessages;
  sqlregistras := SQLRegistra;
  if not consistir_estrutura then
  begin
    ExibirSaidaVideo(erros, wsMaximized, true);
    //Exit;
  end;
  frmprogressbar.gau.Progress := 5;
  frmprogressbar.pnl.Caption  := 'Gerar script';
  Application.ProcessMessages;
  //gerar_scritp;
  frmprogressbar.gau.Progress := 6;
  frmprogressbar.pnl.Caption  := 'Executar script';
  Application.ProcessMessages;
  executar_script;
  result := True;
end;

function TImportacao.ler_arquivo: Boolean;
begin
  QRotinas.getfilename(nmfile);
  result := nmfile <> '';
end;

procedure TImportacao.preparar_estrutura;
begin
  arquivo.LoadFromFile(nmfile);
  SetLength(Fornecedor, arquivo.Count);
end;

end.

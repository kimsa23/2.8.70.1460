unit uRotinas;

interface

uses
  Math, dialogs, classes, sysutils,
  JvBrowseFolder;

type
  QRotinas = class
    class function SetDecimalSeparator:string;
    class function GetDateSeparator:string;
    class function getchave(nuchave:string):string;
    class function bosenomecomputadornaosequipos(nmcomputador:string):boolean;
    class function getdiretorio(path:string=''):string;
    class function getfilename(var filename:string):boolean;
    class procedure ListarArquivo(caminho: string; arquivo:TStrings);
    class function nome_status_treeview(texto:string):string;
    class function roundqp(valor:Double; boarrendonda:Boolean=false):Double;
  end;

implementation

class function QRotinas.bosenomecomputadornaosequipos(nmcomputador:string):boolean;
begin
  result := (nmcomputador <> 'QUIPOSDEV01') and
            (nmcomputador <> 'QUIPOSHELP01') and
            (nmcomputador <> 'QUIPOSHELP02') and
            (nmcomputador <> 'QUIPOSHELP02-PC') and
            (nmcomputador <> 'QUIPOSHELP03') and
            (nmcomputador <> 'QUIPOSHELP04');
end;

class function QRotinas.roundqp(valor:Double; boarrendonda:Boolean=false):Double;
var
  digito : string;
begin
  if not boarrendonda then
  begin
    result := RoundTo(valor, -2);
    Exit;
  end;
  result := valor * 1000;
  result := Int(Result);
  digito := Copy(FloatToStr(result), length(FloatToStr(result)), 1);
  if digito < '5' then
  begin
    result := Trunc(result / 10) /100;
  end
  else
  begin
    result := (Int(result /10) + 1) / 100;
  end;
end;

class function QRotinas.nome_status_treeview(texto:string):string;
begin
  result := copy(texto, 1, pos('(', texto) - 2);
end;

class procedure QRotinas.ListarArquivo(caminho: string; arquivo:TStrings);
var
  F: TSearchRec;
  Ret: Integer;
begin
  Ret := FindFirst(caminho+'\*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      arquivo.Add(caminho+'\'+F.Name);
      Ret := FindNext(F);
    end;
    Arquivo.Delete(0);
    arquivo.Delete(0);
  finally
    FindClose(F);
  end;
end;

class function QRotinas.getdiretorio(path:string=''):string;
var
  bff : TJvBrowseForFolderDialog;
begin
  bff := TJvBrowseForFolderDialog.create(nil);
  try
    if path <> '' then
    begin
      bff.Directory := path;
    end;
    if not bff.Execute then
    begin
      exit;
    end;
    Result :=bff.Directory;
  finally
    freeandnil(bff);
  end;
end;

class function QRotinas.getchave(nuchave:string):string;
begin
  nuchave := UpperCase(nuchave);
  if Pos('NFE', nuchave) > 0 then
  begin
    Delete(nuchave, 1, 3);
  end;
  result := copy(nuchave,  1, 4)+'.'+
            Copy(nuchave,  5, 4)+'.'+
            Copy(nuchave,  9, 4)+'.'+
            Copy(nuchave, 13, 4)+'.'+
            Copy(nuchave, 17, 4)+'.'+
            Copy(nuchave, 21, 4)+'.'+
            Copy(nuchave, 25, 4)+'.'+
            Copy(nuchave, 29, 4)+'.'+
            Copy(nuchave, 33, 4)+'.'+
            Copy(nuchave, 37, 4)+'.'+
            Copy(nuchave, 41, 4);
end;

class function QRotinas.getfilename(var filename:string):boolean;
var
  opd : TOpendialog;
begin
  opd := TOpendialog.Create(nil);
  result := false;
  try
    if not Opd.Execute then
    begin
      messagedlg('Não foi possível realizar a leitura do arquivo.', mtError, [mbok], 0);
      exit;
    end;
    filename := opd.filename;
    result := true;
  finally
    freeandnil(opd);
  end;
end;

// Funçao para calcular valor de parcelas de financiamento (prestaçoes)
{
Funçao que retorna o valor de cada parcela para financiamento ou pagamento de bens em prestaçoes.
para usar acrescente a unit Math em uses.
exemplo de uso:
nVarQualquer := VlPrestaçao(C,J,N);
ou se for um edit
editQualquer.text := FormatFloat('###,###.##',VlPrestacao(C,J,N));
onde:
C representa o valor do bem (capital)
J a taxa de juros mensal no formato '#.##'( ex: 3,00 - tres por cento)
N é o número de parcelas, em meses.
retorna o valor de cada parcela.
function VlPrestacao(valor : Real; prjuros : Real; numes : integer) : Real;
begin
  Result := valor*((prjuros/100)/(1-( Power(1/(1+(prjuros/100)),numes) )));
end;
}

class function QRotinas.GetDateSeparator: string;
begin
  {$IFDEF VER150}
  result := DateSeparator;
  {$ELSE}
    {$IFDEF VER210}
      result := DateSeparator;
    {$ELSE}
      result := FormatSettings.DateSeparator;
    {$ENDIF}
  {$ENDIF}
end;

class function QRotinas.SetDecimalSeparator:string;
begin
  {$IFDEF VER150}
    DecimalSeparator := ',';
    result := DecimalSeparator;
  {$ELSE}
    {$IFDEF VER210}
      DecimalSeparator := ',';
      result := DecimalSeparator;
    {$ELSE}
      FormatSettings.DecimalSeparator := ',';
      result := FormatSettings.DecimalSeparator;
    {$ENDIF}
  {$ENDIF}
end;

end.

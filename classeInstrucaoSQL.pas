(****************************************************************************)
(* Classe TInstrucaoSQL versão 1.0                                          *)
(*                                                                          *)
(* Criada em 10/2012 por Frederico Franco                                   *)
(*                                                                          *)
(* Função: aplicar, através de substituição de texto, "regras" definidas    *)
(* no código para ampliar funcionalidades do framework de criação de        *)
(* relatórios FastReport.                                                   *)
(*                                                                          *)
(****************************************************************************)
unit classeInstrucaoSQL;

interface

uses
  System.Actions, System.UITypes,
  SysUtils, utipo, Controls, Classes, StrUtils, uStrings, Dialogs;

Type
  TSQLRule = class
  private
    fText, fNewText: string;
  public
    property text   : string read fText    write fText;
    property newtext: string read fNewText write fNewText;
  end;

  TSQLRules = array of TSQLRule;

  TInstrucaoSQL = class (TComponent)
  private
    fText: string;
    fNewText: string;
    fCount: Integer;
    fIndex: integer; // armazena informação sobre qual regra (Rule) estárá selecionada/referenciada (como um ponteiro)
    fFound: Boolean; // armazena informação sobre sucesso/fracasso da busca (Search) por um nome de regra
  public
    Rule: TSQLRules;
    function    addRule   (parText, parNewText: string): TSQLRule; // Adiciona regras (Rules) que serão usadas para substituição de blocos de texto
    function    appendRule(parText, parNewText: string): boolean;  // Adiciona dados à regra (Rule) já existente
    function    applyRules: boolean;                               // Realiza a substituição de blocos de texto por outros textos de acordo com as regras (Rules) adicionadas
    procedure   clear;                                             // Limpa todas as regras adicionadas
    property    count     : Integer read fCount;                   // retorna a quantidade de regras (Rules) adicionadas
    constructor create    (AOwner: TComponent; const parText: string = '');
    destructor  destroy; override;
    function    firstRule : TSQLRule;                              // Retorna a primeira regra (Rule) adicionada
    property    found     : Boolean read fFound;
    function    indexOf   (const S: string): Integer;              // Retorna o índice de uma regra
    function    moreRules : boolean;                               // Retorna verdadeiro (true) caso a partir do índice atual (fIndex) existam mais regras (Rules)
    function    nextRule  : TSQLRule;                              // Retorna, em uma lista de regras (Rules) adicionadas, a próximaregra, baseando-se no índice (fIndex)
    property    newText   : string read fNewText;                  // texto (sentença SQL) de "saída" após processamento (ApplyRules)
    function    search    (const parText: string; const parMoveIndex: boolean = true): TSQLRule; // Procura uma regra (Rule) e a retorna, caso seja localizada pelo nome
    property    text      : string read fText write fText;         // texto (sentença SQL) utilizado como entrada
 end;

  TReportDados = record
    cdreport : Integer;
    dstitulo : string;
    dsassunto:string;
    email:string;
    dssaida: string;
    bomostrarpreview:Boolean;
    sqlwhere : string;
    sqlwhere2 : string;
    nmpdf : string;
    listaemail:string;
    dti_: TDate;
    dtf: TDate;
    Tabela: TipoTabela;
    vlinteger : Integer;
    parBloco: TInstrucaoSQL;
  end;

implementation

constructor TInstrucaoSQL.create (AOwner: TComponent; const parText: string = '');
begin
  inherited Create(AOwner);
  fText    := parText;
  fNewText := fText;
  fCount   := 0;
  fIndex   := -1;
  fFound   := false;
end;

destructor TInstrucaoSQL.destroy;
begin
  Clear;
  inherited;
end;

function TInstrucaoSQL.addRule (parText, parNewText: string): TSQLRule;
var
  vRule: TSQLRule;
  vNextRule: integer;
begin
  vNextRule := Length(Rule);
  SetLength(Rule, Length(Rule) + 1);
  vRule := TSQLRule.Create;
  Try
    with vRule do
    begin
      fText    := parText;
      fNewText := parNewText;
    end;
    inc(fCount);
    Rule[vNextRule] := vRule;
    Result          := vRule;
    fIndex          := vNextRule;
  Except
    SetLength(Rule, vNextRule);
    vRule.Free;
  End;
end;

procedure TInstrucaoSQL.clear;
var
  i: integer;
begin
  for i   := High(Rule) downto 0 do Rule[i].Free;
  fCount  := 0;
  fIndex  := -1;
  SetLength(Rule, 0);
  fFound  := false;
end;

function TInstrucaoSQL.firstRule: TSQLRule;
begin
  if (Count < 1) then
  begin
    fIndex := -1;
    Result := nil;
  end
  else
  begin
    fIndex := 0;
    Result := Rule[fIndex];
  end;
end;

function TInstrucaoSQL.nextRule: TSQLRule;
begin
  if fIndex = (Count-1) then
  begin
    fIndex := -1;
    Result := nil;
  end
  else
  begin
    inc(fIndex);
    Result := Rule[fIndex];
  end;
end;

function TInstrucaoSQL.moreRules: boolean;
begin
  Result := (fIndex < (count - 1));
end;

function SubstituiBlocosSQL (const InstrucaoSQL: string; parRule: TSQLRule): string;
var
  vPosicao, MarcaInicial, MarcaFinal: Integer;
  vTextoAux: string;
begin
  Result   := InstrucaoSQL;
  vPosicao := Pos('<' + parRule.text + '>', InstrucaoSQL);
  if vPosicao = 0 then
  begin
    Exit;
  end;

  vTextoAux    := copy (InstrucaoSQL, 1, vPosicao);
  MarcaInicial := LastPos ('/*', vTextoAux);
  if MarcaInicial = 0 then
  begin
    MessageDlg('Bloco SQL <' + parRule.text + '> não delimitado corretamente.', mtInformation, [mbOK], 0);
    abort;
  end;

  vPosicao := Pos('</' + parRule.text + '>', InstrucaoSQL);
  if vPosicao = 0 then
  begin
    MessageDlg('Bloco SQL </' + parRule.text + '> não delimitado corretamente.', mtInformation, [mbOK], 0);
    Abort;
  end;

  MarcaFinal := PosEx('*/', InstrucaoSQL, vPosicao) + 1;
  if MarcaFinal = 0 then
  begin
    MessageDlg('Bloco SQL <' + parRule.text + '> não delimitado corretamente.', mtInformation,[mbOK], 0);
    Abort;
  end;

  vTextoAux := copy(InstrucaoSQL, MarcaInicial, MarcaFinal - MarcaInicial + 1);
  vTextoAux := StringReplace (InstrucaoSQL, vTextoAux, parRule.newText,[rfReplaceAll,rfIgnoreCase]);

  Result := SubstituiBlocosSQL (vTextoAux, parRule);
end;

function TInstrucaoSQL.applyRules: boolean;
begin
  try
    if Count > 0 then //verifica se existe alguma Regra (Rule) adicionada
    begin
      fNewText := SubstituiBlocosSQL (fText, firstRule);
      while moreRules do // enquanto existirem Regras (Rules)...
      begin
        fNewText := SubstituiBlocosSQL (fNewText, nextRule); // ... serão processadas (nextRule!!!)
      end;
    end;
    result := true;
  except
    raise;
  end;
end;

function TInstrucaoSQL.IndexOf(const S: string): Integer;
begin
  for Result := 0 to Length(Rule) - 1 do
  begin
    if AnsiCompareText(Rule[Result].fText, S) = 0 then
    begin
      Exit;
    end;
  end;
  Result := -1;
end;

function TInstrucaoSQL.Search(const parText: string;
  const parMoveIndex: boolean): TSQLRule;
var
  i: integer;
begin
  Result := nil;
  fFound := false;

  i := IndexOf(parText);
  if (i >- 1) then
  begin
    Result := Rule[i];
    if parMoveIndex then
    begin
      fIndex := i;
    end;
    fFound := true;
  end;
end;

function TInstrucaoSQL.appendRule(parText, parNewText: string): boolean;
var
  i: integer;
begin
  Result := false;
  i      := IndexOf(parText);
  if (i >- 1) then
  begin
    Rule[i].fNewText := Rule[i].fNewText + #13#10 + parNewText;
    Result           := true;
  end;
end;

end.





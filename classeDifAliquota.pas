unit classeDifAliquota;

interface

uses SysUtils,
  uconstantes, utipo;

type TDiferencialAL = class(tobject)
  protected
    vldebt, vlcred, vltotcfop, vldif, vlbaseicmscfop: currency;
    vlnota, vlcfop: array of Tacumula;
  private
  public
    procedure DebCred(valor: currency);
    function  error: boolean;
    procedure inicializa;
    function  ler           (qual: string; tipo: string=''): variant;
    function  lerindicevalor(qual, tipo: string; x: integer): variant;
    function  max           (qual: string): integer;
    function  NewVlCFOP     (valor: currency; cfop: string): boolean;
    function  NewVlNota     (nunota: string): boolean;
    function  SetVlBase     (valor: currency; zerar:boolean=false): boolean;
    function  SetVlCFOP     (valor: currency): boolean;
    function  SetVlCred     (valor: currency): boolean;
    function  SetVlDebt     (valor: currency): boolean;
    function  SetVlitem     (valor: currency): boolean;
  end;

implementation

procedure TDiferencialAL.DebCred(valor: currency);
begin
       if valor >   1 then SetVlDebt(valor)
  else if valor < - 1 then SetVlCred(valor);
end;

procedure TDiferencialAL.inicializa;
begin
  vldebt         := 0;
  vldif          := 0;
  vlcred         := 0;
  vltotcfop      := 0;
  vlbaseicmscfop := 0;

  SetLength(vlcfop, 1);
  setlength(vlnota, 1);
end;

function TDiferencialAL.ler(qual: string; tipo: string=''): Variant;
begin
  if tipo = '' then
  begin
         if qual = 'debito'  then result := vldebt
    else if qual = 'credito' then result := -vlcred
    else if qual = 'dif'     then result := vldif
    else if qual = 'base'    then result := vlbaseicmscfop
    else if qual = 'nota'    then result := vlnota[high(vlnota)].valor
    else if qual = 'cfop'    then result := vlcfop[high(vlcfop)].valor;
  end
  else
  begin
         if qual = 'debito'  then result := formatcurr(__moeda, vldebt)
    else if qual = 'credito' then result := formatcurr(__moeda, -vlcred)
    else if qual = 'dif'     then result := formatcurr(__moeda, vldif )
    else if qual = 'base'    then result := formatcurr(__moeda, vlbaseicmscfop)
    else if qual = 'nota'    then result := formatcurr(__moeda, vlnota[high(vlnota)].valor)
    else if qual = 'cfop'    then result := formatcurr(__moeda, vlcfop[high(vlcfop)].valor);
  end
end;

function TDiferencialAL.SetVlCFOP(valor: currency): boolean;
begin
  vlcfop[high(vlcfop)].valor := valor;
  vltotcfop                  := vlcfop[high(vlcfop)].valor + vltotcfop;
  result                     := true;
end;

function TDiferencialAL.SetVlCred(valor: currency): boolean;
begin
  vlcred := vlcred + valor;
  result := true;
end;

function TDiferencialAL.SetVlDebt(valor: currency): boolean;
begin
  vldebt := vldebt + valor;
  result := true;
end;

function TDiferencialAL.SetVlitem(valor: currency): boolean;
begin
  vldif := vldif + valor;
  result := true;
end;

function TDiferencialAL.SetVlBase(valor: currency; zerar:boolean=false): boolean;
begin
  vlbaseicmscfop := vlbaseicmscfop + valor;
  if zerar then
  begin
    vlbaseicmscfop := 0;
  end;
  result := true;
end;

function TDiferencialAL.NewVlCFOP(valor: currency; cfop: string): boolean;
begin
  result := false;
  if valor = 0 then
  begin
    exit;
  end;
  SetLength(vlcfop, high(vlcfop) + 2);
  SetVlCFOP(valor);
  vlcfop[high(vlcfop)].num := cfop;
  result                   := true;
end;

function TDiferencialAL.NewVlNota(nunota: string): boolean;
begin
  result := false;
  if vldif = 0 then
  begin
    exit;
  end;
  SetLength(vlnota, high(vlnota)+2);
  vlnota[high(vlnota)].valor := vldif;
  vlnota[high(vlnota)].num   := nunota;
  vldif                      := 0;
  result                     := true;
end;

function TDiferencialAL.max(qual: string): integer;
begin
       if qual = 'vlnota' then result := high(vlnota)
  else if qual = 'vlcfop' then result := high(vlcfop);
  if result = 0 then
  begin
    result := 1;
  end;
end;

function TDiferencialAL.lerindicevalor(qual, tipo: string; x: integer): variant;
begin
  if qual = 'vlcfop' then
  begin
    if tipo = _valor then
    begin
      if (x > max(qual)) or (x <= 0) then result := 0
                                     else result := vlcfop[x].valor;
    end
    else if tipo = _string then
    begin
      if (x > max(qual)) or (x <= 0) then result := ''
                                     else result := vlcfop[x].num;
    end
  end
  else if qual = 'vlnota' then
  begin
    if tipo = _valor then
    begin
      if (x > max(qual)) or (x <= 0) then result := 0
                                     else result := vlnota[x].valor;
    end
    else if tipo = _string then
    begin
      if (x > max(qual)) or (x <= 0) then result := ''
                                     else result := vlnota[x].num;
    end;
  end;
end;

function TDiferencialAL.error: boolean; //  Verifica se os campos da classe fora preenchidos
begin
  result := true;
  if high(vlcfop) < 1 then
  begin
    result := false;
  end;
end;

end.
{unit classeDifAliquota;

interface

uses SysUtils,
  __constantes, __tipo;

type TDiferencialAL = class(tobject)
  protected
    vldebt, vlcred, vltotcfop, vldif, vlbaseicmscfop: currency;
    vlnota, vlcfop: array of Tacumula;
  private
  public
    procedure DebCred(valor: currency);
    function  error: boolean;
    procedure inicializa;
    function  ler           (qual: string; tipo: string=''): variant;
    function  lerindicevalor(qual, tipo: string; x: integer): variant;
    function  max           (qual: string): integer;
    function  NewVlCFOP     (valor: currency; cfop: integer): boolean;
    function  NewVlNota     (nunota: integer): boolean;
    function  SetVlBase     (valor: currency; zerar:boolean=false): boolean;
    function  SetVlCFOP     (valor: currency): boolean;
    function  SetVlCred     (valor: currency): boolean;
    function  SetVlDebt     (valor: currency): boolean;
    function  SetVlitem     (valor: currency): boolean;
  end;

implementation

procedure TDiferencialAL.DebCred(valor: currency);
begin
       if valor >   1 then SetVlDebt(valor)
  else if valor < - 1 then SetVlCred(valor);
end;

procedure TDiferencialAL.inicializa;
begin
  vldebt         := 0;
  vldif          := 0;
  vlcred         := 0;
  vltotcfop      := 0;
  vlbaseicmscfop := 0;
  
  SetLength(vlcfop, 1);
  setlength(vlnota, 1);
end;

function TDiferencialAL.ler(qual: string; tipo: string=''): Variant;
begin
  if tipo = '' then
  begin
         if qual = 'debito'  then result := vldebt
    else if qual = 'credito' then result := -vlcred
    else if qual = 'dif'     then result := vldif
    else if qual = 'base'    then result := vlbaseicmscfop
    else if qual = 'nota'    then result := vlnota[high(vlnota)].valor
    else if qual = 'cfop'    then result := vlcfop[high(vlcfop)].valor;
  end
  else
  begin
         if qual = 'debito'  then result := formatcurr(__moeda, vldebt)
    else if qual = 'credito' then result := formatcurr(__moeda, -vlcred)
    else if qual = 'dif'     then result := formatcurr(__moeda, vldif )
    else if qual = 'base'    then result := formatcurr(__moeda, vlbaseicmscfop)
    else if qual = 'nota'    then result := formatcurr(__moeda, vlnota[high(vlnota)].valor)
    else if qual = 'cfop'    then result := formatcurr(__moeda, vlcfop[high(vlcfop)].valor);
  end
end;

function TDiferencialAL.SetVlCFOP(valor: currency): boolean;
begin
  vlcfop[high(vlcfop)].valor := valor;
  vltotcfop                  := vlcfop[high(vlcfop)].valor + vltotcfop;
  result                     := true;
end;

function TDiferencialAL.SetVlCred(valor: currency): boolean;
begin
  vlcred := vlcred + valor;
  result := true;
end;

function TDiferencialAL.SetVlDebt(valor: currency): boolean;
begin
  vldebt := vldebt + valor;
  result := true;
end;

function TDiferencialAL.SetVlitem(valor: currency): boolean;
begin
  vldif := vldif + valor;
  result := true;
end;

function TDiferencialAL.SetVlBase(valor: currency; zerar:boolean=false): boolean;
begin
  vlbaseicmscfop := vlbaseicmscfop + valor;
  if zerar then
  begin
    vlbaseicmscfop := 0;
  end;
  result := true;
end;

function TDiferencialAL.NewVlCFOP(valor: currency; cfop: integer): boolean;
begin
  result := false;
  if valor = 0 then
  begin
    exit;
  end;
  SetLength(vlcfop, high(vlcfop) + 2);
  SetVlCFOP(valor);
  vlcfop[high(vlcfop)].num := cfop;
  result                   := true;
end;

function TDiferencialAL.NewVlNota(nunota: integer): boolean;
begin
  result := false;
  if vldif = 0 then
  begin
    exit;
  end;
  SetLength(vlnota, high(vlnota)+2);
  vlnota[high(vlnota)].valor := vldif;
  vlnota[high(vlnota)].num   := nunota;
  vldif                      := 0;
  result                     := true;
end;

function TDiferencialAL.max(qual: string): integer;
begin
       if qual = 'vlnota' then result := high(vlnota)
  else if qual = 'vlcfop' then result := high(vlcfop);
  if result = 0 then
  begin
    result := 1;
  end;
end;

function TDiferencialAL.lerindicevalor(qual, tipo: string; x: integer): variant;
begin
  if qual = 'vlcfop' then
  begin
    if tipo = _valor then
    begin
      if (x > max(qual)) or (x <= 0) then result := 0
                                     else result := vlcfop[x].valor;
    end
    else if tipo = _string then
    begin
      if (x > max(qual)) or (x <= 0) then result := ''
                                     else result := vlcfop[x].num;
    end
  end
  else if qual = 'vlnota' then
  begin
    if tipo = _valor then
    begin
      if (x > max(qual)) or (x <= 0) then result := 0
                                     else result := vlnota[x].valor;
    end
    else if tipo = _string then
    begin
      if (x > max(qual)) or (x <= 0) then result := ''
                                     else result := vlnota[x].num;
    end;
  end;
end;

function TDiferencialAL.error: boolean; //  Verifica se os campos da classe fora preenchidos
begin
  result := true;
  if high(vlcfop) < 1 then
  begin
    result := false;
  end;
end;

end.}

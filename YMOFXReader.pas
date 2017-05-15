unit YMOFXReader;

interface

uses classes, SysUtils, Controls, dialogs;

type
  TOFXItem = class
    MovType : string;
    MovDate : TDate;
    Value : double;
    ID : string;
    Document : string;
    Refnum: string;
    Desc : string;
  end;

  TYMOFXReader = class(TComponent)
  public
    BankID : integer;
    AccountID : string;
    AccountType : string;
    InitialBalance : double;
    FinalBalance : double;
    constructor Create( AOwner: TComponent ); override;
    destructor Destroy; override;
    function Process: boolean;
    function Get(iIndex: integer): TOFXItem;
    function Count: integer;
  private
    FOFXFile : string;
    FListItems : TList;
    procedure Clear;
    procedure Delete( iIndex: integer );
    function Add: TOFXItem;
    function PrepareFloat( sString : string ) : string;
    function InfLine ( sLine : string ): string;
    function FindString ( sSubString, sString : string ): boolean;
    function ReplaceString(sString: string; sOld: string; sNew: string; bInsensitive : boolean = true): string;
  protected
  published
    property OFXFile: string read FOFXFile write FOFXFile;
  end;

procedure Register;

implementation

uses uRotinas;

constructor TYMOFXReader.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FListItems := TList.Create;
end;

destructor TYMOFXReader.Destroy;
begin
  FListItems.Free;
  inherited Destroy;
end;

procedure TYMOFXReader.Delete( iIndex: integer );
begin
  TOFXItem(FListItems.Items[iIndex]).Free;
  FListItems.Delete( iIndex );
end;

procedure TYMOFXReader.Clear;
begin
  while FListItems.Count > 0 do
  begin
    Delete(0);
  end;
  FListItems.Clear;
end;

function TYMOFXReader.Count: integer;
begin
  Result := FListItems.Count;
end;

function TYMOFXReader.Get(iIndex: integer): TOFXItem;
begin
  Result := TOFXItem(FListItems.Items[iIndex]);
end;

function TYMOFXReader.Process: boolean;
var
  oFile : TStringList;
  i : integer;
  bOFX : boolean;
  oItem : TOFXItem;
  data, sLine : string;
  dBalance : double;
begin
  Result := false;
  Clear;
  bOFX := false;
  if not FileExists(FOFXFile) then
  begin
    exit;
  end;
  oFile := TStringList.Create;
  try
    oFile.LoadFromFile(FOFXFile);
    dBalance := 0;
    i        := 0;
    while i < oFile.Count do
    begin
      sLine := oFile.Strings[i];
      if FindString('<OFX>', sLine) then
      begin
        bOFX := true;
      end;
      if bOFX then
      begin
        if FindString('<BANKID>', sLine) then // BankID (banco)
        begin
          BankID := StrToIntDef(InfLine(sLine), 0);
        end;
        if FindString('<ACCTID>', sLine) then // AccountID (conta)
        begin
          AccountID := InfLine(sLine);
        end;
        if FindString('<ACCTTYPE>', sLine) then // AccountType (tipo de conta)
        begin
          AccountType := InfLine(sLine);
        end;
        if FindString('<LEDGER>', sLine) then // FinalBalance  (balanço final)
        begin
          FinalBalance := StrToFloat(PrepareFloat(InfLine(sLine)));
        end;
        if FindString('<STMTTRN>', sLine) then
        begin
          oItem := Add;
          Inc(i);
          sLine := oFile.Strings[i];
          if FindString('<TRNTYPE>',  sLine) then
          begin
            oItem.MovType := InfLine(sLine);
          end;
          Inc(i);
          sLine := oFile.Strings[i];
          if FindString('<DTPOSTED>', sLine) then
          begin
            data          := copy(InfLine(sLine),1,4) +'/' + copy(InfLine(sLine),5,2) + '/' + copy(InfLine(sLine),7,2);
            oItem.MovDate := EncodeDate(StrToIntDef(copy(InfLine(sLine),1,4), 0), StrToIntDef(copy(InfLine(sLine),5,2), 0), StrToIntDef(copy(InfLine(sLine),7,2), 0));
          end;
          //ELSE
          Inc(i);
          sLine := oFile.Strings[i];
          if FindString('<TRNAMT>',   sLine) then
          begin
            oItem.Value := StrToFloat(PrepareFloat(InfLine(sLine)));
            dBalance    := dBalance - oItem.Value;
          end;
          Inc(i);
          sLine := oFile.Strings[i];
          if FindString('<FITID>',    sLine) then
          begin
            oItem.ID := InfLine(sLine);
          end;
          Inc(i);
          sLine := oFile.Strings[i];
          if (FindString('<CHKNUM>',   sLine)) or  ( FindString('<CHECKNUM>', sLine)) then
          begin
            oItem.Document := InfLine(sLine);
          end;
          Inc(i);
          sLine := oFile.Strings[i];
          if FindString('<REFNUM>',  sLine) then
          begin
            oItem.Refnum := InfLine(sLine);
            inc(i);
          end;
          sLine := oFile.Strings[i];
          if FindString('<PAYEEID>', sLine) then
          begin
            Inc(i);
            sLine := oFile.Strings[i];
          end;
          if FindString('<MEMO>',  sLine) then
          begin
            oItem.Desc := InfLine(sLine);
          end;
        end;
      end;
      Inc(i);
    end;
    InitialBalance := FinalBalance + dBalance;
    Result := bOFX;
  finally
    oFile.Free;
  end;
end;

function TYMOFXReader.PrepareFloat( sString : string ) : string;
begin
  Result := sString;
  Result := ReplaceString(Result, '.', qrotinas.setDecimalSeparator);
  Result := ReplaceString(Result, ',', qrotinas.setDecimalSeparator);
end;

function TYMOFXReader.ReplaceString(sString: string; sOld: string; sNew: string; bInsensitive : boolean = true): string;
var
   iPosition: integer ;
   sTempNew: string ;
begin
   iPosition := 1;
   sTempNew := '';
   while (iPosition > 0) do
   begin
      if bInsensitive then iPosition := AnsiPos(UpperCase(sOld),UpperCase(sString))
                      else iPosition := AnsiPos(sOld,sString);
      if (iPosition > 0) then
      begin
         sTempNew := sTempNew + copy(sString, 1, iPosition - 1) + sNew;
         sString  := copy(sString, iPosition + Length(sOld), Length(sString) );
      end;
   end;
   sTempNew := sTempNew + sString;
   Result   := sTempNew;
end;

function TYMOFXReader.InfLine ( sLine : string ): string;
var
  iTemp : integer;
  Fim: integer;
begin
  Result := '';
  sLine := Trim(sLine);
  if FindString('>', sLine) then
  begin
    sLine := Trim(sLine);
    iTemp := Pos('>', sLine);
    //detecta fim do campo na linha
    if pos('</',sline) > 0 then fim := pos('</',sline)
                           else fim := Length(sLine)+1;
     Result := copy(sLine, iTemp+1, fim-(iTemp+1));
  end;
end;

function TYMOFXReader.Add: TOFXItem;
var
  oItem : TOFXItem;
begin
  oItem := TOFXItem.Create;
  FListItems.Add(oItem);
  Result := oItem;
end;

function TYMOFXReader.FindString (sSubString, sString : string ): boolean;
begin
  Result := Pos(UpperCase(sSubString), UpperCase(sString)) > 0;
end;

procedure Register;
begin
  RegisterComponents('OFXReader', [TYMOFXReader]);
end;

end.

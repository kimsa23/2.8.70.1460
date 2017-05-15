unit classeeventoemail;

interface

uses
  System.Actions, System.UITypes, Contnrs,
  Forms, Dialogs, ComCtrls, sysutils, ExtCtrls, Controls, Menus, ActnList, Classes,
  DB,
  classeempresa, classequery, classeretornasql, classedao,
  classeemail,
  classeusuario,
  //udlgRichEdit,
  uRegistro, ustrings, uconstantes;

type
  TTpTemporizador = class(TPersintentObject)
  private
    Fnmtptemporizador: string;
    Fcdtptemporizador: integer;
    procedure Setcdtptemporizador(const Value: integer);
    procedure Setnmtptemporizador(const Value: string);
  public
    property cdtptemporizador : integer read Fcdtptemporizador write Setcdtptemporizador;
    property nmtptemporizador : string read Fnmtptemporizador write Setnmtptemporizador;
  end;
  TEventoEmail = class(TRegistroQuipos)
  private
    Fdsassunto: string;
    Fcdreportuser: integer;
    Fdsdestinatario: string;
    Fdstitulo: string;
    Fnmeventoemail: string;
    Fcdreport: integer;
    Fcdeventoemail: integer;
    Femailcopia: string;
    Fboenviarsilenciosamente: string;
    Fdssql: string;
    Fcdtptemporizador: integer;
    Fboservico: string;
    Fhrevento: TTime;
    function TratarTexto(texto: string; cds:TDataset):string;
    procedure Setboenviarsilenciosamente(const Value: string);
    procedure Setcdeventoemail(const Value: integer);
    procedure Setcdreport(const Value: integer);
    procedure Setcdreportuser(const Value: integer);
    procedure Setdsassunto(const Value: string);
    procedure Setdsdestinatario(const Value: string);
    procedure Setdssql(const Value: string);
    procedure Setdstitulo(const Value: string);
    procedure Setemailcopia(const Value: string);
    procedure Setnmeventoemail(const Value: string);
    function AssuntoTrocadoPorCampo(texto:string; field: TField): string; overload;
    function ExisteCampoAssunto(texto, nmfield: string): Boolean;
    procedure Setcdtptemporizador(const Value: integer);
    procedure Setboservico(const Value: string);
    procedure Sethrevento(const Value: TTime);
  public
    [keyfield]
    property cdeventoemail : integer read Fcdeventoemail write Setcdeventoemail;
    [fk]
    property cdreportuser : integer read Fcdreportuser write Setcdreportuser;
    [fk]
    property cdreport : integer read Fcdreport write Setcdreport;
    [fk]
    property cdtptemporizador : integer read Fcdtptemporizador write Setcdtptemporizador;
    property nmeventoemail : string read Fnmeventoemail write Setnmeventoemail;
    property emailcopia : string read Femailcopia write Setemailcopia;
    property dstitulo : string read Fdstitulo write Setdstitulo;
    property dsassunto : string read Fdsassunto write Setdsassunto;
    property dsdestinatario : string read Fdsdestinatario write Setdsdestinatario;
    property dssql : string read Fdssql write Setdssql;
    property boenviarsilenciosamente : string read Fboenviarsilenciosamente write Setboenviarsilenciosamente;
    property boservico : string read Fboservico write Setboservico;
    property hrevento : TTime read Fhrevento write Sethrevento;
    function TratarAssunto(cds:TDataset):string;
    function TratarTitulo (cds:TDataset):string;
    function getemail(tabela, codigo:string):string;
    //procedure EnviarEmailEvento(codevento: Integer; tabela, cdempresa, codigo:string);
  end;
  TEventoEmailList = class(TObjectList)
  private
    function GetItem(Index: Integer): TEventoEmail;
    procedure SetItem(Index: Integer; const Value: TEventoEmail);
  public
    function New: TEventoEmail;
    property Items[Index: Integer]: TEventoEmail read GetItem write SetItem;
    function Ler(nmcdfield: string; codigo:Integer):Boolean;overload;
    function Ler(sqlwhere: string):Boolean;overload;
  end;

implementation

{procedure TEventoEmail.EnviarEmailEvento(codevento: Integer; tabela, cdempresa, codigo: string);
  function makesql:string;
  begin
    Result := LowerCase(dssql);
    Result := substituir(Result, ':'+_cdempresa, cdempresa);
    result := substituir(Result, ':'+_cd+tabela, codigo);
  end;
var
  q : TClasseQuery;
  enviaremail : tenviaremail;
begin
  cdeventoemail := codevento;
  Select;
  if dssql <> '' then
  begin
    q := TClasseQuery.create(makesql);
    try
      dsassunto := TratarAssunto(q.q);
      dstitulo  := TratarTitulo(q.q);
    finally
      freeandnil(q);
    end;
  end;
  if boenviarsilenciosamente = _s then
  begin
    enviaremail := tenviaremail.create;
    try
      enviaremail.botexto := false;
      enviaremail.boexcluir_arquivo := false;
      enviaremail.dsanexo := nil;
      enviaremail.boanexo := nil;
      enviaremail.dsdestinatario := dsdestinatario;
      enviaremail.dscc := emailcopia;
      enviaremail.dstitulo := dstitulo;
      enviaremail.dsmensagem := dsassunto;
      enviaremail.nmremetente := usuario.nmusuario;
      enviaremail.nmusuario := usuario.email_.SmtpUser;
      enviaremail.dssenha := usuario.email_.SmtpPass;
      enviaremail.tpenvio := empresa.emaile.envio;
      enviaremail.enviar_email
    finally
      freeandnil(enviaremail);
    end;
  end
  else
  begin
    Formatar_Email(false, dstitulo, dsassunto, '', dsdestinatario, emailcopia, usuario.email_.SmtpUser, usuario.email_.SmtpPass, empresa.emaile.envio);
  end;
end;}

function TEventoEmail.getemail(tabela, codigo: string): string;
begin
  result := NomedoCodigo(tabela, codigo, _email);
end;

procedure TEventoEmail.Setboenviarsilenciosamente(const Value: string);
begin
  Fboenviarsilenciosamente := Value;
end;

procedure TEventoEmail.Setboservico(const Value: string);
begin
  Fboservico := Value;
end;

procedure TEventoEmail.Setcdeventoemail(const Value: integer);
begin
  Fcdeventoemail := Value;
end;

procedure TEventoEmail.Setcdreport(const Value: integer);
begin
  Fcdreport := Value;
end;

procedure TEventoEmail.Setcdreportuser(const Value: integer);
begin
  Fcdreportuser := Value;
end;

procedure TEventoEmail.Setcdtptemporizador(const Value: integer);
begin
  Fcdtptemporizador := Value;
end;

procedure TEventoEmail.Setdsassunto(const Value: string);
begin
  Fdsassunto := Value;
end;

procedure TEventoEmail.Setdsdestinatario(const Value: string);
begin
  Fdsdestinatario := Value;
end;

procedure TEventoEmail.Setdssql(const Value: string);
begin
  Fdssql := Value;
end;

procedure TEventoEmail.Setdstitulo(const Value: string);
begin
  Fdstitulo := Value;
end;

procedure TEventoEmail.Setemailcopia(const Value: string);
begin
  Femailcopia := Value;
end;

procedure TEventoEmail.Sethrevento(const Value: TTime);
begin
  Fhrevento := Value;
end;

procedure TEventoEmail.Setnmeventoemail(const Value: string);
begin
  Fnmeventoemail := Value;
end;

function TEventoEmail.TratarAssunto(cds: TDataset): string;
begin
  result := TratarTexto(dsassunto, cds);
end;

function TEventoEmail.AssuntoTrocadoPorCampo(texto:string; field: TField):string;
var
  i : Integer;
begin
  result := texto;
  while Pos('<'+field.FieldName+'>', UpperCase(texto)) > 0 do
  begin
    i := Pos('<'+field.FieldName+'>', UpperCase(texto));
    if i = 0 then
    begin
      i := Pos('<'+field.FieldName+'>', UpperCase(texto));
    end;
    system.Delete(result, i, Length(field.FieldName)+2);
    if (field.DataType = ftBcd) or (field.DataType = ftCurrency) then
    begin
      system.Insert(getmoeda(field.AsCurrency), Result, i);
    end
    else
    begin
      system.Insert(field.asstring, Result, i);
    end;
    texto := result;
  end;
end;

function TEventoEmail.ExisteCampoAssunto(texto:string; nmfield:string):Boolean;
begin
  result := Pos('<'+nmfield+'>', UpperCase(texto)) > 0;
end;

function TEventoEmail.TratarTexto(texto:string; cds: TDataset): string;
var
  i : Integer;
begin
  for i := 0 to cds.FieldCount - 1 do
  begin
    if ExisteCampoAssunto(texto, cds.Fields[i].FieldName) then
    begin
      texto := AssuntoTrocadoPorCampo(texto, cds.Fields[i]);
    end;
  end;
  result := texto;
end;

function TEventoEmail.TratarTitulo(cds: TDataset): string;
begin
  result := TratarTexto(dstitulo, cds);
end;

{ TTpTemporizador }

procedure TTpTemporizador.Setcdtptemporizador(const Value: integer);
begin
  Fcdtptemporizador := Value;
end;

procedure TTpTemporizador.Setnmtptemporizador(const Value: string);
begin
  Fnmtptemporizador := Value;
end;

{ TEventoEmailList }

function TEventoEmailList.GetItem(Index: Integer): TEventoEmail;
begin
  Result := TEventoEmail(Inherited Items[Index]);
end;

function TEventoEmailList.Ler(sqlwhere: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_eventoemail, sqlwhere));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      New.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TEventoEmailList.Ler(nmcdfield: string; codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_Movto, codigo, nmcdfield));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      New.Select(q.q.fieldbyname(_cdMovto).AsInteger);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TEventoEmailList.New: TEventoEmail;
begin
  Result := TEventoEmail.Create;
  Add(Result);
end;

procedure TEventoEmailList.SetItem(Index: Integer; const Value: TEventoEmail);
begin
  Put(Index, Value);
end;

end.

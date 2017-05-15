unit classeColumnField;

interface

uses
  StdCtrls, SysUtils, DB,
  FireDAC.Comp.Client, FireDAC.Stan.Option,
  uDtmMain, uConstantes, uRegistro, ustrings,
  classeretornasql, classeregistro, classequery,
  cxCalc, cxBlobEdit, cxTextEdit, cxColorComboBox, cxButtonEdit, cxDBLookupComboBox,
  cxCheckBox, cxGridDBTableView;

procedure set_colunas(registro:TRegistro; tbl: string; qry: TFDQuery; grdDBTableView1: TcxGridDBTableView);

implementation

type
  TCampo = record
    bovisible: boolean;
    bofocus : Boolean;
    displayformat: string;
    listsource : string;
    listfieldnames : string;
    propriedade : string;
    caption : string;
    buttonedit : string;
    colindex : integer;
    width : Integer;
    bouppercase : boolean;
  end;
  TColumnField = Class(tobject)
  private
    registro : TRegistro;
    cdcampo, cdtabela, tbl: string;
    qry: TFDQuery;
    grdDBTableView1: TcxGridDBTableView;
    coluna : TcxGridDBColumn;
    function nome_interno(nmfield: string): Boolean;
    procedure set_restricao_operacao_registro;
    procedure set_propriedade_campo_tabela(i:Integer);
    procedure ConfigurarCampo(var Campo:TCampo);
    procedure limpar_campo(var campo: TCampo);
  public
    constructor create;
    procedure   Configurar;
    destructor  destroy; override;
  end;

procedure set_colunas(registro:TRegistro; tbl: string; qry: TFDQuery; grdDBTableView1: TcxGridDBTableView);
var
  columnField : TColumnField;
begin
  columnField := TColumnField.create;
  try
    columnField.tbl             := tbl;
    columnField.qry             := qry;
    columnField.grdDBTableView1 := grdDBTableView1;
    columnField.registro        := Registro;
    columnField.Configurar;
  finally
    columnField.destroy;
  end;
end;

procedure TColumnField.Configurar;
var
  i : Integer;
begin
  cdtabela := qregistro.codigodonome(_tabela, tbl);
  set_restricao_operacao_registro;
  for i := 0 to qry.FieldCount - 1 do
  begin
    if nome_interno(qry.Fields[i].FieldName) then
    begin
      continue;
    end;
    coluna                       := grdDBTableView1.CreateColumn;
    coluna.DataBinding.FieldName := qry.Fields[i].FieldName;
    cdcampo                      := qregistro.CodigodoNome(_campo, qry.Fields[i].FieldName);
    set_propriedade_campo_tabela(i);
    if coluna.Caption = uppercase(_cd+tbl)then
    begin
      coluna.Caption := maiuscula(__codigo);
    end;
    if coluna.Caption = uppercase(_nm+tbl)then
    begin
      coluna.Caption := maiuscula(_Nome);
    end;
    if coluna.Caption = '' then
    begin
      coluna.Caption := qry.Fields[i].FieldName;
    end;
  end;
end;

procedure TColumnField.ConfigurarCampo(var Campo: TCampo);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('select cdpropriedadecampo,vlpropriedadecampo from tabelacampopropriedade where cdtabela='+cdtabela+' and cdcampo='+cdcampo);
  try
    while not q.q.Eof do
    begin
           if (q.q.FieldByName(_cdpropriedadecampo).AsString = _1)  and (q.q.FieldByName(_vlpropriedadecampo).AsString = _false) then campo.bofocus        := False
      else if (q.q.FieldByName(_cdpropriedadecampo).AsString = _2)  and (q.q.FieldByName(_vlpropriedadecampo).AsString = _false) then campo.bovisible      := False
      else if (q.q.FieldByName(_cdpropriedadecampo).AsString = _3)  and (q.q.FieldByName(_vlpropriedadecampo).AsString <> '')    then campo.caption        := q.q.FieldByName(_vlpropriedadecampo).AsString
      else if (q.q.FieldByName(_cdpropriedadecampo).AsString = _4)  and (q.q.FieldByName(_vlpropriedadecampo).AsString <> '')    then campo.width          := q.q.FieldByName(_vlpropriedadecampo).AsInteger
      else if (q.q.FieldByName(_cdpropriedadecampo).AsString = _5)  and (q.q.FieldByName(_vlpropriedadecampo).AsString <> '')    then campo.propriedade    := q.q.FieldByName(_vlpropriedadecampo).AsString
      else if (q.q.FieldByName(_cdpropriedadecampo).AsString = _6)  and (q.q.FieldByName(_vlpropriedadecampo).AsString <> '')    then campo.listfieldnames := q.q.FieldByName(_vlpropriedadecampo).AsString
      else if (q.q.FieldByName(_cdpropriedadecampo).AsString = _7)  and (q.q.FieldByName(_vlpropriedadecampo).AsString <> '')    then campo.listsource     := q.q.FieldByName(_vlpropriedadecampo).AsString
      else if (q.q.FieldByName(_cdpropriedadecampo).AsString = _8)  and (q.q.FieldByName(_vlpropriedadecampo).AsString <> '')    then campo.displayformat  := q.q.FieldByName(_vlpropriedadecampo).AsString
      else if (q.q.FieldByName(_cdpropriedadecampo).AsString = _9)  and (q.q.FieldByName(_vlpropriedadecampo).AsString <> '')    then campo.colindex       := q.q.FieldByName(_vlpropriedadecampo).AsInteger
      else if (q.q.FieldByName(_cdpropriedadecampo).AsString = _10) and (q.q.FieldByName(_vlpropriedadecampo).AsString <> '')    then campo.buttonedit     := q.q.FieldByName(_vlpropriedadecampo).AsString
      else if (q.q.FieldByName(_cdpropriedadecampo).AsString = _11) and (q.q.FieldByName(_vlpropriedadecampo).AsString = _false) then campo.bouppercase    := false;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

constructor TColumnField.create;
begin
end;

destructor TColumnField.destroy;
begin

  inherited;
end;

function TColumnField.nome_interno(nmfield: string): Boolean;
begin
  nmfield := LowerCase(nmfield);
  result  := (nmfield = _cdusuarioi)    or (nmfield = _cdusuarioa)    or
             (nmfield = _cdcomputadori) or (nmfield = _cdcomputadora) or
             (nmfield = _tsinclusao)    or (nmfield = _tsalteracao)   or
             (nmfield = _cdempresa);
end;

procedure TColumnField.limpar_campo(var campo: TCampo);
begin
  campo.bovisible      := True;
  campo.bofocus        := True;
  campo.bouppercase    := True;
  campo.listsource     := '';
  campo.listfieldnames := '';
  campo.propriedade    := '';
  campo.caption        := '';
  campo.displayformat  := '';
  campo.width          := 0;
  campo.colindex       := 0;
  campo.buttonedit     := '';
end;

procedure TColumnField.set_propriedade_campo_tabela(i:Integer);
var
  campo : TCampo;
begin
  if (cdcampo = '') or (cdtabela = '') then
  begin
    Exit;
  end;
  limpar_campo(campo);
  ConfigurarCampo(campo);
  if (campo.propriedade = '') and ((coluna.DataBinding.FieldName = uppercase(_bonovo)) or
                                   (coluna.DataBinding.FieldName = uppercase(_boexcluir)) or
                                   (coluna.DataBinding.FieldName = uppercase(_boalterar)) or
                                   (coluna.DataBinding.FieldName = uppercase(_bogerarsaida)) or
                                   (coluna.DataBinding.FieldName = uppercase(_bogerarinfo))) then
  begin
    if coluna.DataBinding.FieldName = uppercase(_bonovo) then
    begin
      campo.caption := 'Novo'
    end
    else if coluna.DataBinding.FieldName = uppercase(_boexcluir) then
    begin
      campo.caption := 'Excluir'
    end
    else if coluna.DataBinding.FieldName = uppercase(_boalterar) then
    begin
      campo.caption := 'Alterar'
    end
    else if coluna.DataBinding.FieldName = uppercase(_bogerarsaida) then
    begin
      campo.caption := 'Gerar Nota Fiscal'
    end
    else if coluna.DataBinding.FieldName = uppercase(_bogerarinfo) then
    begin
      campo.caption := 'Gerar Informação';
    end;
    campo.width := 40;
    campo.propriedade := 'TcxCheckBoxProperties';
    if (coluna.DataBinding.FieldName = uppercase(_bogerarinfo)) or (coluna.DataBinding.FieldName = uppercase(_bogerarsaida)) then
    begin
      campo.width := 100;
    end;
  end;
  coluna.Options.Focusing    := campo.bofocus;
  coluna.Visible             := campo.bovisible;
  coluna.PropertiesClassName := campo.propriedade;
  if campo.caption <> '' then
  begin
    coluna.Caption := campo.caption;
  end;
  if campo.width > 0 then
  begin
    coluna.Width := campo.width;
  end;
  if campo.colindex > 0 then
  begin
    coluna.Index := campo.colindex;
  end;
  if (campo.caption = 'Cor') or (coluna.DataBinding.FieldName = uppercase(_nucor)) then
  begin
    coluna.Caption             := 'Cor';
    coluna.PropertiesClassName := 'TcxColorComboBoxProperties';
    TcxColorComboBoxProperties(coluna.Properties).NamingConvention := cxncX11;
    TcxColorComboBoxProperties(coluna.Properties).PrepareList      := cxplX11;
  end
  else if campo.propriedade = '' then
  begin
    if Copy(coluna.DataBinding.FieldName, 1, 2) = UpperCase(_bo) then
    begin
      coluna.PropertiesClassName := 'TcxCheckBoxProperties';
      coluna.caption             := Maiuscula(Copy(coluna.DataBinding.FieldName, 3, Length(coluna.DataBinding.FieldName)-2));
      coluna.width               := Length(coluna.Caption) * 10;
      TcxCheckBoxProperties(coluna.Properties).ValueChecked   := _S;
      TcxCheckBoxProperties(coluna.Properties).ValueUnchecked := _N;
    end
    else
    begin
      coluna.PropertiesClassName := 'TcxTextEditProperties';
      if campo.bouppercase then
      begin
        TcxTextEditProperties(coluna.Properties).CharCase := ecUpperCase;
      end;
    end;
  end
  else if (campo.propriedade = 'TcxTextEditProperties') or (campo.propriedade = '') then
  begin
    if campo.bouppercase then
    begin
      TcxTextEditProperties(coluna.Properties).CharCase := ecUpperCase;
    end;
  end
  else if campo.propriedade = 'TcxLookupComboBoxProperties' then
  begin
    if campo.listfieldnames = '' then
    begin
      campo.listfieldnames := _nm+copy(coluna.DataBinding.FieldName, 3, Length(coluna.DataBinding.FieldName)-2);
    end;
    if campo.listsource <> '' then
    begin
      TcxLookupComboBoxProperties(coluna.Properties).ListSource := abrir_tabela(NomedoCodigo(_tabela, campo.listsource));
    end;
    TcxLookupComboBoxProperties(coluna.Properties).ListFieldNames         := campo.listfieldnames;
    TcxLookupComboBoxProperties(coluna.Properties).ListOptions.ShowHeader := False;
    TcxLookupComboBoxProperties(coluna.Properties).KeyFieldNames          := qry.Fields[i].FieldName;
    //TcxLookupComboBoxProperties(coluna.Properties).KeyFieldNames          := 'cd'+NomedoCodigo(_tabela, campo.listsource);
  end
  else if campo.propriedade = 'TcxColorComboBoxProperties' then
  begin
    TcxColorComboBoxProperties(coluna.Properties).NamingConvention := cxncX11;
    TcxColorComboBoxProperties(coluna.Properties).PrepareList      := cxplX11;
  end
  else if campo.propriedade = 'TcxCalcEditProperties' then
  begin
    if campo.displayformat <> '' then
    begin
      TcxCalcEditProperties(coluna.Properties).DisplayFormat := campo.displayformat;
    end;
  end
  else if campo.propriedade = 'TcxCheckBoxProperties' then
  begin
    TcxCheckBoxProperties(coluna.Properties).ValueChecked   := _S;
    TcxCheckBoxProperties(coluna.Properties).ValueUnchecked := _N;
  end
  else if campo.propriedade = 'TcxBlobEditProperties' then
  begin
    TcxBlobEditProperties(coluna.Properties).BlobEditKind   := bekMemo;
    TcxBlobEditProperties(coluna.Properties).BlobPaintStyle := bpsText;
  end;
end;

procedure TColumnField.set_restricao_operacao_registro;
var
  q : TClasseQuery;
  boedit, boinsert, bodelete : Boolean;
begin
  if cdtabela = '' then
  begin
    Exit;
  end;
  boedit   := True;
  boinsert := True;
  bodelete := True;
  q        := TClasseQuery.Create(QRetornaSQL.get_select_from(_restricaooperacaoregistro, cdtabela));
  try
    while not q.q.Eof do
    begin
      if q.q.FieldByName(_cdtpoperacaoregistro).AsString = _1 then
      begin
        boinsert := false
      end
      else if q.q.FieldByName(_cdtpoperacaoregistro).AsString = _2 then
      begin
        bodelete := false
      end
      else if q.q.FieldByName(_cdtpoperacaoregistro).AsString = _3 then
      begin
        boedit   := false;
      end;
      q.q.Next;
    end;
    if boinsert and bodelete and boedit then
    begin
      qry.UpdateOptions.AssignedValues := [uvEInsert, uvEDelete, uvEUpdate]
    end
    else if boinsert and bodelete then
    begin
      qry.UpdateOptions.AssignedValues := [uvEInsert, uvEDelete]
    end
    else if boinsert then
    begin
      qry.UpdateOptions.AssignedValues := [uvEInsert]
    end
    else if bodelete and boedit then
    begin
      qry.UpdateOptions.AssignedValues := [uvEDelete, uvEUpdate]
    end
    else if bodelete then
    begin
      qry.UpdateOptions.AssignedValues := [uvEDelete]
    end
    else if boedit then
    begin
      qry.UpdateOptions.AssignedValues := [uvEUpdate];
    end;

    grdDBTableView1.OptionsData.Editing   := boedit;
    grdDBTableView1.OptionsData.Appending := boinsert;
    grdDBTableView1.OptionsData.Deleting  := bodelete;
    grdDBTableView1.OptionsData.Inserting := boinsert;
  finally
    FreeAndNil(q);
  end;
end;

end.

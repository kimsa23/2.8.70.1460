unit classearquivo;

interface

uses
  System.Actions, System.UITypes, Firedac.Stan.Param,
  windows, ComCtrls, Dialogs, sysutils,
  DB,
  cxListView,
  uRotinas,
  classegerar, uregistro, uconstantes, udatahora, classequery,
  classeaplicacao, classeregistrainformacao, classeempresa, classeretornasql;

function Adicionar_Arquivo_Banco(codigo, tbl, nmfield, cdtpinfintervencao, filename :string):boolean;
function Adicionar_Arquivo_Extrato(filename :string):boolean;
function AdicionarArquivoBanco  (codigo, tbl, nmfield:string):boolean;
function AdicionarArquivoCaminho(codigo, tbl, tblpai, nmfield:string):boolean;
function CarregarArquivoBanco   (tbl, cdordserv:string; lsv:TcxListView; nuimagem:integer):boolean;overload;
function CarregarArquivoBanco   (tbl, cdordserv:string; lsv:TListView;   nuimagem:integer):boolean;overload;
function Salvar_Arquivo_Banco   (tbl, cdfield, vlcdfield, nuit, nmfield, filename:string):boolean;overload;
function Exportar_Arquivo_Banco (tbl, cdfield:string):boolean;
function Ultimo_Numero_item     (tbl:string):integer;overload;

implementation

function Ultimo_Numero_item(tbl:string):integer;
begin
  Result := RetornaSQLInteger('select max(nu'+tbl+') from '+tbl+' where cdempresa='+empresa.cdempresa.tostring);
end;

function Adicionar_Arquivo_Banco(codigo, tbl, nmfield, cdtpinfintervencao, filename :string):boolean;
var
  c : TClasseQuery;
  b : TBlobField;
begin
  c := TClasseQuery.Create('', true);
  try
    c.q.sql.text   := QRetornaSQL.get_select_from(_it+_inf+_intervencao)+' WHERE cdempresa='+empresa.cdempresa.tostring+' and CDINTERVENCAO=:CDINTERVENCAO AND NUITINFINTERVENCAO=:nu'+tbl;
    c.q.Parambyname(_cd+_intervencao).AsString       := codigo;
    c.q.Parambyname(_nu+_it+_inf+_intervencao).Asinteger := 0;
    c.q.Open;
    c.q.Insert;
    b := TBlobField(c.q.Fieldbyname(_DS+_INF+_INTERVENCAO));
    b.loadfromfile(filename);
    c.q.fieldbyname(_CD+_INTERVENCAO).AsString       := codigo;
    c.q.fieldbyname(_NU+_IT+_INF+_INTERVENCAO).AsInteger := Ultimo_Numero_item(tbl) + 1;
    c.q.fieldbyname(_FILENAME).AsString            := filename;
    c.q.fieldbyname(_CD+_TP+_INF+_INTERVENCAO).AsString  := cdtpinfintervencao;
    registrainformacao_(c.q);
    aplicacao.aplyupdates(c.q);
    result := true;
  finally
    freeandnil(c);
  end;
end;

function Adicionar_Arquivo_Extrato(filename :string):boolean;
var
  c : TClasseQuery;
  b : TBlobField;
begin
  c := TClasseQuery.Create('', true);
  try
    c.q.sql.Text   := QRetornaSQL.get_select_from(_extrato+_file, _0);
    c.q.Open;
    c.q.Insert;
    c.q.Fieldbyname(_cd+_extrato+_file).AsString := GerarCodigo('extratofile');
    RegistraInclusao(c.q);
    b := TBlobField(c.q.Fieldbyname(_DS+_FILE));
    b.loadfromfile(filename);
    c.q.fieldbyname(_FILENAME).AsString := filename;
    aplicacao.aplyupdates(c.q);
    result := true;
  finally
    freeandnil(c);
  end;
end;

function AdicionarArquivoBanco(codigo, tbl, nmfield:string):boolean;
var
  opendialog : TOpenDialog;
  c : TClasseQuery;
  b : TBlobField;
  nmcodigo, nmdetail: string;
  cdetapa : integer;
  i : integer;
begin
  if (lowercase(tbl) = _itdesenho) or (lowercase(tbl) = _itfoto) then
  begin
    cdetapa := qregistro.InteirodoCodigo(_ordserv, codigo, _cdetapa)
  end
  else
  begin
    cdetapa := 1;
  end;
  if tbl = _ittransportadoraarquivo then
  begin
    nmcodigo := _transportadora;
    nmdetail := _ittransportadoraarquivo;
  end
  else
  begin
    nmcodigo := _ordserv;
    nmdetail := _itfoto;
  end;
  opendialog         := topendialog.Create(nil);
  OpenDialog.Options := [ofHideReadOnly,ofAllowMultiSelect,ofEnableSizing];
  c := TClasseQuery.Create('', true);
  try
    c.q.sql.Text   := QRetornaSQL.get_select_from(tbl)+' WHERE cdempresa='+empresa.cdempresa.tostring+' and CD'+nmcodigo+'='+codigo+' AND CD'+nmdetail+'=0';
    c.q.Open;
    if opendialog.Execute then
    begin
      for i := 0 to opendialog.Files.Count - 1 do
      begin
        c.q.Insert;
        c.q.Fieldbyname(_cd+nmcodigo).AsString  := codigo;
        c.q.fieldbyname(_cd+nmdetail).AsString  := GerarCodigo(nmdetail);
        b := TBlobField(c.q.FieldByName(nmfield));
        b.loadfromfile(opendialog.Files[i]);
        c.q.fieldbyname(_filename).AsString   := ExtractFileName(opendialog.Files[i]);
        RegistraInformacao_(c.q);
        if lowercase(tbl) = _itfoto then
        begin
          c.q.fieldbyname(_cdetapa).AsInteger := cdetapa
        end;
      end;
      aplicacao.aplyupdates(c.q);
      result := true;
    end;
    result := true;
  finally
    freeandnil(c);
    freeandnil(opendialog);
  end;
end;

function AdicionarArquivoCaminho(codigo, tbl, tblpai, nmfield:string):boolean;
var
  opendialog : TOpenDialog;
  c : TClasseQuery;
  Origem, Destino: string;
  //cdetapa : string;
  i : integer;
  procedure criar_objetos;
  begin
    opendialog := topendialog.Create(nil);
    c          := TClasseQuery.Create('', true);
  end;
  function makesql:string;
  begin
    result := QRetornaSQL.get_select_from(tbl)+' WHERE cdempresa='+empresa.cdempresa.tostring+' and CD'+tblpai+'='+codigo+' AND CD'+tbl+'=0';
  end;
  procedure destruir_objetos;
  begin
    freeandnil(c);
    freeandnil(opendialog);
  end;
  procedure set_dataset;
  begin
    c.q.sql.Text   := makesql;
  end;
  function get_filename(i:Integer):string;
  begin
    result := ExtractFileName(opendialog.Files[i]);
  end;
  function get_tamanho_extensao:Integer;
  begin
    result := 0;
    if Copy(c.q.fieldbyname(_filename).AsString, length(c.q.fieldbyname(_filename).AsString) - 3, 1) = '.' then
    begin
      result := 3
    end
    else if Copy(c.q.fieldbyname(_filename).AsString, length(c.q.fieldbyname(_filename).AsString) - 4, 1) = '.' then
    begin
      result := 4;
    end;
  end;
  function get_extensao(i:integer):string;
  begin
    result := copy(get_filename(i), Length(get_filename(i))-(get_tamanho_extensao-1), get_tamanho_extensao);
  end;
  function get_caminho:string;
  begin
    result := NomedoCodigo(_empresa, empresa.cdempresa.tostring, _dspath+copy(tbl, 1, Length(tbl)-7));
  end;
begin
  if get_caminho = '' then
  begin
    MessageDlg('Caminho não está definido no Cadastro=>Empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  criar_objetos;
  try
    OpenDialog.Options := [ofHideReadOnly,ofAllowMultiSelect,ofEnableSizing];
    if not opendialog.Execute then
    begin
      Result := False;
      Exit;
    end;
    set_dataset;
    c.q.Open;
    for i := 0 to opendialog.Files.Count - 1 do
    begin
      c.q.Insert;
      c.q.Fieldbyname(_cd+tblpai).AsString := codigo;
      c.q.fieldbyname(_cd+tbl).AsString    := GerarCodigo(tbl);
      c.q.fieldbyname(_filename).AsString  := get_filename(i);
      RegistraInformacao_(c.q);
      Origem  := opendialog.Files[i];
      Destino := get_caminho+'\'+c.q.fieldbyname(_cd+tbl).AsString+'.'+get_extensao(i);
      if not CopyFile(PChar(Origem), PChar(Destino), true) then
      begin
        ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
      end;
    end;
    aplicacao.aplyupdates(c.q);
    result := true;
  finally
    destruir_objetos;
  end;
end;

function Salvar_Arquivo_Banco(tbl, cdfield, vlcdfield, nuit, nmfield, filename:string):boolean;
var
  savedialog : TSaveDialog;
  c : TClasseQuery;
  b : TBlobField;
begin
  result     := false;
  savedialog := tsavedialog.Create(nil);
  c := TClasseQuery.Create;
  try
    savedialog.FileName := filename;
    if not savedialog.Execute then
    begin
      exit;
    end;
    c.q.sql.Text   := 'select '+nmfield+' from '+tbl+' where cdempresa='+empresa.cdempresa.tostring+' and '+cdfield+'='+vlcdfield+' and cd'+tbl+'='+nuit;
    c.q.Open;
    b := TBlobField(c.q.FieldByName(nmfield));
    b.SaveToFile(savedialog.FileName);
    result := true;
  finally
    freeandnil(c);
    freeandnil(savedialog);
  end;
end;

function Exportar_Arquivo_Banco(tbl, cdfield:string):boolean;
var
  diretorio, fileDestino, fileBanco, fileOrigem, dspath : string;
begin
  diretorio   := QRotinas.getdiretorio;
  if diretorio = '' then
  begin
    result := False;
    Exit;
  end;
  dspath      := NomedoCodigo(_empresa, empresa.cdempresa.tostring, _dspath+tbl);
  fileBanco   := NomedoCodigo(tbl+_arquivo, cdfield, _file+_name);
  fileOrigem  := dspath+'\'+cdfield+ExtractFileExt(fileBanco);
  filedestino := diretorio+'\'+filebanco;
  result      := True;
  if not CopyFile(PChar(FileOrigem), PChar(fILEDestino), true) then
  begin
    ShowMessage('Erro ao copiar ' + FileOrigem + ' para ' + FileDestino);
    result := False;
  end;
end;

function CarregarArquivoBanco(tbl, cdordserv:string; lsv:TListView; nuimagem:integer):boolean;
  function makesql:string;
  begin
    result := 'SELECT CD'+uppercase(tbl)+',FILENAME,DSOBSERVACAO FROM '+uppercase(tbl)+' WHERE cdempresa='+empresa.cdempresa.tostring+' and '+cdordserv;
    if lowercase(tbl) = 'itinfintervencao' then
    begin
      result := 'SELECT NMTPINFINTERVENCAO '+
                'FROM ITINFINTERVENCAO I '+
                'INNER JOIN TPINFINTERVENCAO T ON T.CDTPINFINTERVENCAO=I.CDTPINFINTERVENCAO and i.cdempresa=t.cdempresa '+
                'WHERE i.cdempresa='+empresa.cdempresa.tostring+' and CDINTERVENCAO='+cdordserv
    end;
  end;
var
  c : TClasseQuery;
  ListItem: TListItem;
begin
  result := false;
  if cdordserv = '' then
  begin
    exit;
  end;
  lsv.Clear;
  c := TClasseQuery.Create(makesql);
  try
    while not c.q.eof do
    begin
      // adiciona foto
      ListItem := lsv.items.Add;
      if lowercase(tbl) <> 'itinfintervencao' then
      begin
        ListItem.Caption := c.q.fieldbyname(_filename).AsString;
        listitem.SubItems.Add(c.q.fieldbyname(_cd+tbl).AsString);
        if (c.q.FieldCount > 1) and (not c.q.fieldbyname(_dsobservacao).isnull) then
        begin
          listitem.SubItems.Add(c.q.fieldbyname(_dsobservacao).asstring);
        end;
      end
      else
      begin
        ListItem.Caption := c.q.fieldbyname(_nm+_tp+_inf+_intervencao).AsString;
      end;
      listitem.ImageIndex := nuimagem;
      c.q.next;
    end;
    result := true;
  finally
    freeandnil(c);
  end;
end;

function CarregarArquivoBanco(tbl, cdordserv:string; lsv:TcxListView; nuimagem:integer):boolean;
  function makesql:string;
  begin
    result := 'SELECT CD'+uppercase(tbl)+',FILENAME,DSOBSERVACAO FROM '+uppercase(tbl)+' WHERE cdempresa='+empresa.cdempresa.tostring+' and '+cdordserv;
    if lowercase(tbl) = 'itinfintervencao' then
    begin
      result := 'SELECT NMTPINFINTERVENCAO '+
                'FROM ITINFINTERVENCAO I '+
                'INNER JOIN TPINFINTERVENCAO T ON T.CDTPINFINTERVENCAO=I.CDTPINFINTERVENCAO and i.cdempresa=t.cdempresa '+
                'WHERE i.cdempresa='+empresa.cdempresa.tostring+' and CDINTERVENCAO='+cdordserv
    end;
  end;
var
  c : TClasseQuery;
  ListItem: TListItem;
begin
  result := false;
  if cdordserv = '' then
  begin
    exit;
  end;
  lsv.Clear;
  c := TClasseQuery.Create(makesql);
  try
    while not c.q.eof do
    begin
      // adiciona foto
      ListItem := lsv.items.Add;
      if lowercase(tbl) <> 'itinfintervencao' then
      begin
        ListItem.Caption := c.q.fieldbyname(_filename).AsString;
        listitem.SubItems.Add(c.q.fieldbyname(_cd+tbl).AsString);
        if (c.q.FieldCount > 1) and (not c.q.fieldbyname(_dsobservacao).isnull) then
        begin
          listitem.SubItems.Add(c.q.fieldbyname(_dsobservacao).AsString);
        end;
      end
      else
      begin
        ListItem.Caption := c.q.fieldbyname(_nm+_tp+_inf+_intervencao).AsString;
      end;
      listitem.ImageIndex := nuimagem;
      c.q.next;
    end;
    result := true;
  finally
    freeandnil(c);
  end;
end;

end.

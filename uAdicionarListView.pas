unit uAdicionarListView;

interface

uses StdCtrls, sysutils, ComCtrls, classes,
  sqlexpr,
  cxListView,
  uinterbase,
  uconstantes,
  uregistro,
  ulocalizarcliente,
  ulocalizar,
  ulocalizartransportadora,
  ulocalizarproduto,
  ulocalizarfornecedor,
  classeempresa,
  classeretornasql;

procedure AdicionarListView      (lsv: TcxListView; tabela:string='');
procedure AdicionarCodigoListView(lsv:TcxListview; edtcd: TEdit; var key: Char; tabela:string='');
procedure AdicionarNomeListView  (lsv: TcxListview; var boonchange: boolean; edtnm: TEdit; var key: word; tabela:string='');
procedure ExcluirListView        (lsv: TcxListView; botodos:Boolean=false);
procedure ExcluirItemTreeview    (trv: TTreeView; texto:string);
procedure PreencherNomeListView  (edtnm: TEdit; boonchange: boolean; tabela:string='');

implementation

uses ulocalizarpaciente;


procedure ExcluirItemTreeview(trv: TTreeView; texto:string);
var
  x, i : integer;
begin
  x := trv.Items.Count - 1;
  for i := 0 to x do
  begin
    if trv.Items[i].Text = texto then
    begin
      trv.Items.Delete(trv.Items[i]);
      Dec(x);
    end;
    if x = i then
    begin
      break;
    end;
  end;
end;

procedure Adicionardireto(tbl, cd:string; lsv: TcxListview);
var
  ListItem: TListItem;
  x : integer;
  cdlista : TStrings;
  function codigo_ja_existe_no_listview:Boolean;
  var
    i : Integer;
  begin
    result := False;
    for i := 0 to lsv.Items.Count - 1 do // verificar se o código já existe no ListView
    begin
      if lsv.Items.Item[i].Caption = cdlista[x] then
      begin
        result := True;
        Break;
      end;
    end;
  end;
begin
  cdlista := TStringList.Create;
  try
    cdlista.Text := cd;
    if cdlista.Text = '' then
    begin
      exit;
    end;
    for x := 0 to cdlista.Count - 1 do
    begin
      if codigo_ja_existe_no_listview then
      begin
        Continue;
      end;
      ListItem := lsv.Items.Add; // adicionar codigo e nome no listview
      if (tbl = _grupo) or (tbl = _cntcusto) or (tbl = _plconta)  then
      begin
        ListItem.Caption := cdlista[x];
        ListItem.SubItems.Add(NomedoCampo(tbl, cd, _string, _nunivel));
      end
      else if tbl = _stdocumento then
      begin
        ListItem.Caption := cdlista[x];
        ListItem.SubItems.Add(NomedoCampo(tbl, cdlista[x], _string, _nustdocumento));
      end
      else if (tbl = _bairro) or (tbl = _cidade) or (tbl = _tag) or (tbl = _itcontcliente) then
      begin
        ListItem.Caption := cdlista[x];
        ListItem.SubItems.Add(cdlista[x]);
      end
      else
      begin
        ListItem.Caption := cdlista[x];
        ListItem.SubItems.Add(NomedoCodigo(tbl, cdlista[x]));
      end;
    end;
  finally
    freeandnil(cdlista);
  end;
end;

procedure PreencherNomeListView(edtnm: TEdit; boonchange: boolean; tabela:string='');
var
  nm, tbl, selecao : string;
  function makesql:string;
  begin
    result := 'select nm'+tbl+' from '+tbl+' where nm'+tbl+' like '''+edtnm.text+'%'' ';
    if ExisteCampoNaTabela(tbl, _cdempresa) then
    begin
      result := result + ' AND CDEMPRESA='+empresa.cdempresa.tostring+' ';
    end;
    result := result + 'order by nm'+tbl;
  end;
begin
  if tabela <> '' then
  begin
    tbl := tabela
  end
  else
  begin
    tbl := copy(edtnm.name, 6, length(edtnm.name) - 5);
  end;
  if (not boonchange) or (edtnm.Text = '') then
  begin
    exit;
  end;
  if (tbl = _atendente) or (tbl = _responsavel) then
  begin
    tbl := _funcionario;
  end;
  if (tbl = _remetente) or (tbl = _destinatario) then
  begin
    tbl := _cliente;
  end;
  selecao := edtnm.Text;
  nm      := RetornaSQLString(makesql);
  if nm = '' then
  begin
    exit;
  end;
  edtnm.Text      := nm;
  edtnm.SelStart  := length(selecao);
  edtnm.SelLength := length(nm) - length(selecao);
end;

procedure ExcluirListView(lsv: TcxListView; botodos:Boolean=false);
var
  i : integer;
begin
  if botodos then
  begin
    while lsv.Items.Count > 0 do
    begin
      lsv.Items[0].Delete;
    end;
    Exit;
  end;
  i := -1;
  repeat
    inc(i);
    if lsv.Items[i].Selected then
    begin
      lsv.Items[i].Delete;
      i := i - 1;
    end;
  until i = lsv.items.count - 1;
end;

procedure AdicionarCodigoListView(lsv:TcxListview; edtcd: TEdit; var key: Char; tabela:string='');
var
  tbl, cd : string;
begin
  if key <> #13 then
  begin
    Exit;
  end;
  cd  := edtcd.text;
  if tabela <> '' then
  begin
    tbl := tabela
  end
  else
  begin
    tbl := copy(lsv.Name, 4, length(lsv.name) - 3);
  end;
  if (tbl = _grupo) or (tbl = _plconta) or (tbl = _cntcusto)  then
  begin
    if not CodigoExiste(tbl, _nunivel, _string, cd) then
    begin
      exit;
    end;
  end
  else if tbl = _stdocumento then
  begin
    if not CodigoExiste(tbl, _nustdocumento, _string, cd) then
    begin
      Exit;
    end;
  end
  else if tbl = _produto then
  begin
    if not CodigoExiste(tbl, cd) then
    begin
      if (length(cd) = 12) or (length(cd) = 13) then
      begin
        cd := RetornaSQlString('select cdproduto '+
                               'from produto p '+
                               'inner join grupo g on g.cdgrupo=p.cdgrupo and p.cdempresa=g.cdempresa ' +
                               'where p.cdempresa='+empresa.cdempresa.tostring+' and g.nunivel='+quotedstr(copy(cd, 01, 8))+' and p.cditem='+copy(cd, 10, __tamcditem));
        if cd = '' then
        begin
          exit;
        end;
      end
      else
      begin
        exit;
      end;
    end;
  end
  else if (tbl = _atendente) or (tbl = _responsavel) then
  begin
    if not codigoexiste(_funcionario, cd) then
    begin
      exit;
    end;
    tbl := _funcionario;
  end
  else if not CodigoExiste(tbl, cd) then
  begin
    exit;
  end;
  edtcd.Clear;
  Adicionardireto( tbl, cd, lsv);
end;

procedure AdicionarNomeListView(lsv: TcxListview; var boonchange: boolean; edtnm: TEdit; var key: word; tabela:string='');
var
  tbl, cd : string;
begin
  if tabela <> '' then
  begin
    tbl := tabela
  end
  else
  begin
    tbl := copy(edtnm.name, 6, length(edtnm.name) - 5);
  end;
  if (tbl = _atendente) or (tbl = _responsavel) then
  begin
    tbl := _funcionario;
  end;
  if (tbl = _remetente) or (tbl = _destinatario) then
  begin
    tbl := _cliente;
  end;
  boonchange := true;
  if key = 8 then
  begin
    boonchange := false
  end
  else if key = 13 then
  begin
    if (tbl = _bairro) or (tbl = _cidade) or (tbl = _tag) or (tbl = _itcontcliente) then
    begin
      Adicionardireto( tbl, edtnm.Text, lsv)
    end
    else
    begin
      if (tbl = _grupo) or (tbl = _plconta) or (tbl = _cntcusto) then
      begin
        cd := qregistro.CampodoCampo( tbl, _nm+tbl, edtnm.Text, _nunivel, true)
      end
      else if tbl = _stdocumento then
      begin
        cd := qregistro.CampodoCampo( tbl, _nm+tbl, edtnm.Text, _nustdocumento, true)
      end
      else
      begin
        cd := qregistro.codigodonome( tbl, edtnm.Text);
      end;
      Adicionardireto( tbl, cd, lsv);
    end;
    edtnm.Clear;
  end;
end;

procedure AdicionarListView(lsv: TcxListView; tabela:string='');
var
  tbl: string;
  cd :string;
  codigo : integer;
begin
  if tabela <> '' then
  begin
    tbl := tabela
  end
  else
  begin
    tbl := lowercase(copy(lsv.Name, 4, length(lsv.name) - 3));
  end;
  if (tbl = _atendente) or (tbl = _responsavel) then
  begin
    tbl := _funcionario;
  end;
  if (tbl = _remetente) or (tbl = _destinatario) then
  begin
    tbl := _cliente;
  end;
  if tbl = _cliente then
  begin
    cd := LocalizarClienteMulti;
  end
  else if tbl = _transportadora then
  begin
    codigo := LocalizarTransportadora;
    if codigo <> 0 then
    begin
      cd := codigo.tostring;
    end;
  end
  else if tbl = _paciente then
  begin
    codigo := localizarpaciente;
    if codigo <> 0 then
    begin
      cd := codigo.tostring;
    end;
  end
  else if tbl = _produto then
  begin
    cd := LocalizarProdutoMultiSelect( '', False)
  end
  else if tbl = _fornecedor then
  begin
    cd := localizarfornecedorMulti;
  end
  else if tbl = _cntcusto then
  begin
    cd := Localizar( _cntcusto, _nunivel      , _nmcntcusto   , 'Centro Custo'      , 'o', _nunivel)
  end
  else if tbl = _grupo then
  begin
    cd := Localizar( _grupo   , _nunivel      , _nmgrupo      , _Grupo              , 'o', _nunivel)
  end
  else if tbl = _plconta then
  begin
    cd := Localizar( _plconta , _nunivel      , _nmplconta    , 'Plano Contas'      , 'o', _nunivel)
  end
  else if tbl = _stdocumento then
  begin
    cd := Localizar( tbl      , _nustdocumento, _nmstdocumento, 'Situação Documento', _A , _nustdocumento)
  end
  else
  begin
    codigo := Localizar( tbl);
    if codigo <> 0 then
    begin
      cd := codigo.tostring;
    end;
  end;
  adicionardireto( tbl, cd, lsv);
end;

end.

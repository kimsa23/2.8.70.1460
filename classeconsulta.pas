unit classeconsulta;

interface

uses sysutils, ComCtrls,
  sqlexpr,
  uConstantes, uregistro, ulocalizar, ulocalizarcliente, ulocalizarfornecedor,
  cxListView;

procedure AdicionarLista(lsv: TcxListView; tabela:string='');overload;
procedure AdicionarLista(lsv: TListView; tabela:string='');overload;

implementation

procedure AdicionarLista(lsv: TcxListView; tabela:string='');
var
  tbl: string;
  cod :integer;
  i : integer;
  ListItem: TListItem;
begin
  tbl := lowercase(lsv.Name);
  delete(tbl, 1, 3);
  if tabela <> '' then
  begin
    tbl := tabela;
  end;
  if tbl = _cliente then
  begin
    cod := LocalizarCliente
  end
  else if tbl = _fornecedor then
  begin
    cod := localizarFornecedor
  end
  else
  begin
    cod := Localizar(tbl);
  end;
  if cod = 0 then
  begin
    exit;
  end;
  for i := 0 to lsv.Items.Count - 1 do // verificar se o código já existe no ListView
  begin
    if lsv.Items.Item[i].Caption = cod.tostring then
    begin
      exit;
    end;
  end;
  ListItem         := lsv.Items.Add; // adicionar codigo e nome no listview
  ListItem.Caption := cod.tostring;
  ListItem.SubItems.Add(qregistro.NomedoCodigo(tbl, cod));
end;

procedure AdicionarLista(lsv: TListView; tabela:string='');
var
  tbl: string;
  cod :integer;
  i : integer;
  ListItem: TListItem;
begin
  tbl := lowercase(lsv.Name);
  delete(tbl, 1, 3);
  if tabela <> '' then
  begin
    tbl := tabela;
  end;
  if tbl = _cliente then
  begin
    cod := LocalizarCliente
  end
  else if tbl = _fornecedor then
  begin
    cod := localizarFornecedor
  end
  else
  begin
    cod := Localizar(tbl);
  end;
  if cod = 0 then
  begin
    exit;
  end;
  for i := 0 to lsv.Items.Count - 1 do // verificar se o código já existe no ListView
  begin
    if lsv.Items.Item[i].Caption = cod.tostring then
    begin
      exit;
    end;
  end;
  ListItem         := lsv.Items.Add; // adicionar codigo e nome no listview
  ListItem.Caption := cod.tostring;
  ListItem.SubItems.Add(qregistro.NomedoCodigo(tbl, cod));
end;

end.

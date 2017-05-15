unit uManageruser;

interface

uses
  System.Actions, System.UITypes,
  System.ImageList,
  Forms, Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
  ComCtrls, ActnList, ToolWin, ExtCtrls, Menus, ImgList,
  sqlexpr, Db,
  uConstantes, uprogressbar, uregistro, ustrings,
  classeusuario, classeform, classeretornasql, classeexecutasql, classequery,
  dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxSplitter, cxContainer, cxListView, cxTreeView,
  cxEdit;

type
  TfrmManagerUser = class(TForm)
    img: TImageList;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Propriedades1: TMenuItem;
    ActionList1: TActionList;
    actNovo: TAction;
    actExcluir: TAction;
    actImprimir: TAction;
    actPropriedades: TAction;
    Excluir1: TMenuItem;
    Imprimir1: TMenuItem;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    acticon: TAction;
    actSmallIcon: TAction;
    actlist: TAction;
    actreport: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    lsv: TcxListView;
    spl1: TcxSplitter;
    trv: TcxTreeView;
    procedure trvClick(Sender: TObject);
    procedure lsvKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure actNovoExecute(Sender: TObject);
    procedure actPropriedadesExecute(Sender: TObject);
    procedure lsvDblClick(Sender: TObject);
    procedure trvDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure trvDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lsvSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure actExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure acticonExecute(Sender: TObject);
    procedure actSmallIconExecute(Sender: TObject);
    procedure actlistExecute(Sender: TObject);
    procedure actreportExecute(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
  private    { Private declarations }
    procedure CarregarItensAplicacao;
    procedure CarregarItensGrupo;
    procedure NovoGrupo;
    procedure Novousuario;
    procedure NovaAplicacao;
    procedure NovoPapel(cdaplicacao:String);
    procedure NovaPermissao(cdaplicacao:string);
    procedure PropriedadeGrupo;
    procedure Propriedadeusuario;
    procedure PropriedadeAplicacao;
    procedure PropriedadePapel(cdaplicacao:string);
    procedure PropriedadePermissao(cdaplicacao:string);
    procedure Lista(status:boolean);
    procedure Carregaraplicacao;
    procedure CarregarGrupos(sql:string);
    procedure CarregarGruposAplicacao(cdaplicacao:string);
    procedure CarregarItensPapel;overload;
    procedure CarregarItensPapel(cdaplicacao, papel, item:string);overload;
    procedure Carregarpapel(sql:string);
    procedure CarregarPapelAplicacao(cdaplicacao:string);
    procedure Carregarpermissao(sql:string);
    procedure CarregarPermissaoAplicacao(cdaplicacao:string);
    procedure CarregarUsuarios(sql :string);
    procedure CarregarUsuariosAplicacao(cdaplicacao:string);
    procedure CarregarUsuariosGrupo(grupo:string);
    function  CodigoAplicacao(nome:string):string;
    function  CodigoPapel(cdaplicacao, papel:string):string;
    function  CodigoGrupo(nome:string):string;
    function  CodigoUsuario(login:string):string;
    function  CodigoPermissao(cdaplicacao, Permissao:string):string;
    function  ExcluirItem(item, nome:string):boolean;
    function  ExcluirItemAplicacao(aplicacao, item, nome:string):boolean;
    function  ExcluirItemPapel(cdpapel, item, nome:string):boolean;
    procedure ExcluirUsuariodoGrupo(usuario, grupo:string);
  public     { Public declarations }
    function  InserirItem(tabOrigem, itemOrigem, TabDestino, ItemDestino, aplicacao:string):boolean;
    function  InserirPapelPermissao(cdaplicacao, comcod:string):boolean;
    function  InserirPermissaoPapel(cdaplicacao, cdpapel:string):boolean;
  end;

var
  frmManagerUser: TfrmManagerUser;

implementation

uses uGrupos, uUsuario, uAplicacao, uDtmMain, uPapel, uPermissao,
  uMain;

{$R *.DFM}

procedure TFrmManagerUser.ExcluirUsuariodoGrupo(Usuario, Grupo:string);
begin
  ExecutaSQL('delete from grpusu where cdgrupos='+CodigoGrupo(grupo)+' and cdusuario='+CodigoUsuario(usuario));
end;

function TFrmManagerUser.InserirPermissaoPapel(cdaplicacao, cdpapel:string):boolean;
var
  q   : TClasseQuery;
  sql : tstrings;
begin
  sql            := tstringlist.create;
  q              := TClasseQuery.Create('select comcod from comreg where cdaplicacao='+cdaplicacao);
  frmprogressbar := TFrmProgressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := RetornaSQLInteger('select count(*) from comreg where cdaplicacao='+cdaplicacao);
    frmprogressbar.show;
    while not q.q.eof do
    begin
      frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
      Application.ProcessMessages;
      sql.Add('insert into comatrib(comcod,cdpapel,comenabled,comvisible)values('+q.q.fieldbyname(_comcod).Asstring+','+cdpapel+',''N'',''N'');');
      q.q.next;
    end;
    result := ExecutaScript(sql);
  finally
    freeandnil(sql);
    freeandnil(q);
    freeandnil(frmprogressbar);
  end;
end;

function TFrmManagerUser.InserirPapelPermissao(cdaplicacao, comcod:string):boolean;
var
  q : TClasseQuery;
  sql : tstrings;
begin
  q   := TClasseQuery.create('select cdpapel from papel where cdaplicacao=' + cdaplicacao);
  sql := tstringlist.create;
  try
    while not q.q.eof do
    begin
      sql.add('insert into comatrib(comcod,cdpapel,comenabled,comvisible)values('+comcod+','+q.q.fieldbyname(_cdpapel).Asstring+',''S'',''S'');');
      q.q.next;
    end;
    result := ExecutaScript(sql);
  finally
    freeandnil(sql);
    freeandnil(q);
  end;
end;

function TFrmManagerUser.Codigogrupo(nome:string):string;
begin
  result := RetornaSQLString('select cdgrupos from grupos where nmgrupos='+quotedstr(nome));
end;

function TFrmManagerUser.CodigoPermissao(cdaplicacao, Permissao:string):string;
begin
  result := RetornaSQLString('select comcod from comreg where cdaplicacao='+cdaplicacao+' and comdesc='+quotedstr(permissao));
end;

function TFrmManagerUser.Codigousuario(login:string):string;
begin
  result := RetornaSQLString('select cdusuario from usuario where usulogin='+quotedstr(login));
end;

function TFrmManagerUser.ExcluirItem(item, nome:string):boolean;
begin
       if item = 'Grupos'    then ExecutaSQL('delete from grupos where nmgrupos='+quotedstr(nome))
  else if item = 'Usuários'  then ExecutaSQL('delete from usuario where usulogin='+quotedstr(nome))
  else if item = 'Aplicação' then ExecutaSQL('delete from aplicacao where aplexe='+quotedstr(nome));
  result := true;
end;

function TFrmManagerUser.ExcluirItemPapel(cdpapel, item, nome:string):boolean;
begin
       if item = 'Grupos'   then ExecutaSQL('delete from grppapel where cdpapel='+cdpapel+' and cdgrupos='+CodigoGrupo(nome))
  else if item = 'Usuários' then ExecutaSQL('delete from usupapel where cdpapel='+cdpapel+' and cdusuario='+CodigoUsuario(nome));
  result := true;
end;

function TFrmManagerUser.CodigoAplicacao(nome:string):string;
begin
  result := RetornaSQLString('select cdaplicacao from aplicacao where aplexe='+quotedstr(nome));
end;

procedure TFrmManagerUser.CarregarUsuariosGrupo(grupo:string);
begin
  CarregarUsuarios(QRetornaSQL.get_select_from(_usuario)+' where cdusuario in (select cdusuario from grpusu where cdgrupos='+CodigoGrupo(grupo)+') order by usulogin');
end;

procedure TFrmManagerUser.CarregarUsuariosAplicacao(cdaplicacao:string);
begin
  CarregarUsuarios(QRetornaSQL.get_select_from(_usuario)+' where cdusuario in (select cdusuario from aplusu where cdaplicacao=' + cdaplicacao+ ') order by usulogin');
end;

procedure TFrmManagerUser.CarregarUsuarios(sql :string);
var
  s : TClasseQuery;
  ListItem: TListItem;
  NewColumn: TListColumn;
  status : string;
begin
  s := TClasseQuery.Create(sql);
  lsv.Items.Clear;
  lsv.Columns.Clear;
  with lsv do
  begin
    SmallImages := img;
    LargeImages := img;
    NewColumn   := Columns.Add; NewColumn.Caption := 'Login' ; NewColumn.width := 200;
    NewColumn   := Columns.Add; NewColumn.Caption := 'Nome'  ; NewColumn.Width := 250;
    NewColumn   := Columns.add; NewColumn.caption := 'Status'; NewColumn.Width := 200;
  end;
  try
    while not s.q.Eof do
    begin
      with lsv do
      begin
        ListItem         := Items.Add;
        ListItem.Caption := RemoverEspacosVazios(s.q.fieldbyname(_usulogin).AsString);
        ListItem.SubItems.Add(RemoverEspacosVazios(s.q.fieldbyname(_nmusuario).AsString));
             if s.q.fieldbyname(_usustatus).Asstring = _A  then status := 'Ativado'
        else if s.q.fieldbyname(_usustatus).Asstring = 'D' then status := 'Desativado'
        else if s.q.fieldbyname(_usustatus).Asstring = _E  then status := 'Excluído';
        listitem.subitems.add(status);
        listitem.ImageIndex := 2;
      end;
      s.q.Next;
    end;
  finally
    freeandnil(s);
  end;
end;

procedure TFrmManagerUser.CarregarPermissaoAplicacao(cdaplicacao:string);
begin
  CarregarPermissao(QRetornaSQL.get_select_from(_comreg, cdaplicacao, _cd+_aplicacao)+' order by comdesc');
end;

procedure TFrmManagerUser.Carregarpermissao(sql:string);
var
  s : TClasseQuery;
  ListItem     : TListItem;
  NewColumn    : TListColumn;
begin
  s := TClasseQuery.Create(sql);
  lsv.Items.Clear;
  lsv.Columns.Clear;
  with lsv do
  begin
    SmallImages := img;
    LargeImages := img;
    NewColumn   := Columns.Add; NewColumn.Caption := 'Permissão' ; NewColumn.width := 200;
    NewColumn   := Columns.Add; NewColumn.Caption := 'Formulário'; NewColumn.width := 200;
    NewColumn   := Columns.Add; NewColumn.Caption := 'Componente'; NewColumn.width := 200;
  end;
  try
    while not s.q.Eof do
    begin
      with lsv do
      begin
        ListItem         := Items.Add;
        ListItem.Caption := s.q.fieldbyname(_comdesc).Asstring;
        ListItem.SubItems.Add(RemoverEspacosVazios(s.q.fieldbyname(_comform).Asstring));
        ListItem.SubItems.Add(RemoverEspacosVazios(s.q.fieldbyname(_comNome).Asstring));
        listitem.ImageIndex := 5;
      end;
      s.q.Next;
    end;
  finally
    freeandnil(s);
  end;
end;

procedure TFrmManagerUser.CarregarPapelAplicacao(cdaplicacao:string);
begin
  CarregarPapel(QRetornaSQL.get_select_from(_papel, cdaplicacao, _cd+_aplicacao)+' order by nmpapel');
end;

procedure TFrmManagerUser.Carregarpapel(sql:string);
var
  s : TClasseQuery;
  ListItem  : TListItem;
  NewColumn : TListColumn;
begin
  s := TClasseQuery.Create(sql);
  lsv.Items.Clear;
  lsv.Columns.Clear;
  with lsv do
  begin
    SmallImages     := img;
    LargeImages     := img;
    NewColumn       := Columns.Add; NewColumn.Caption := 'Papel';
    NewColumn.width := 200;
  end;
  try
    while not s.q.Eof do
    begin
      with lsv do
      begin
        ListItem            := Items.Add;
        ListItem.Caption    := s.q.fieldbyname(_nmpapel).Asstring;
        listitem.ImageIndex := 4;
      end;
      s.q.Next;
    end;
  finally
    freeandnil(s);
  end;
end;

procedure Tfrmmanageruser.CarregarGruposAplicacao(cdaplicacao:string);
begin
  CarregarGrupos(QRetornaSQL.get_select_from(_grupo+_s)+' where cdgrupos in (select cdgrupos from aplgr where cdaplicacao='+ cdaplicacao+') order by nmgrupos');
end;

function TFrmManagerUser.ExcluirItemAplicacao(aplicacao, item, nome:string):boolean;
begin
       if item = 'Grupos'    then ExecutaSQL('delete from aplgr where cdaplicacao=' +CodigoAplicacao(aplicacao)+' and cdgrupos='+CodigoGrupo(nome))
  else if item = 'Usuários'  then ExecutaSQL('delete from aplusu where cdaplicacao='+CodigoAplicacao(aplicacao)+' and cdusuario='+CodigoUsuario(nome))
  else if item = 'Papel'     then ExecutaSQL('delete from papel where cdaplicacao=' +CodigoAplicacao(aplicacao)+' and cdpapel='+CodigoPapel(CodigoAplicacao(aplicacao), nome))
  else if item = 'Permissão' then ExecutaSQL('delete from comreg where cdaplicacao='+CodigoAplicacao(aplicacao)+' and comcod='+CodigoPermissao(CodigoAplicacao(aplicacao), nome));
  result := true;
end;

function TfrmManagerUser.InserirItem(tabOrigem, itemOrigem, TabDestino, ItemDestino, aplicacao:string):boolean;
var
  sql : string;
begin
  if aplicacao = '' then
  begin
         if taborigem = 'Grupos'    then sql := 'insert into aplgr(cdaplicacao,cdgrupos)values('+CodigoAplicacao(itemdestino)+','+CodigoGrupo(itemorigem )+')'
    else if taborigem = 'Aplicação' then sql := 'insert into aplgr(cdaplicacao,cdgrupos)values('+Codigoaplicacao(ItemOrigem )+','+CodigoGrupo(ItemDestino)+')'
    else if taborigem = 'Usuários'  then
    begin
           if tabdestino = 'Grupos'    then sql := 'insert into grpusu(cdusuario,cdgrupos)values('+CodigoUsuario(ItemOrigem)+','+CodigoGrupo(ItemDestino)+')'
      else if tabdestino = 'Aplicação' then sql := 'insert into aplusu(cdusuario,cdaplicacao)values('+CodigoUsuario(ItemOrigem)+','+Codigoaplicacao(ItemDestino)+')';
    end;
  end
  else
  begin
         if taborigem = 'Grupos'   then sql := 'Insert into grppapel(cdpapel,cdgrupos)values('+CodigoPapel(CodigoAplicacao(aplicacao), itemdestino)+','+CodigoGrupo  (itemorigem)+')'
    else if taborigem = 'Usuários' then sql := 'Insert into usupapel(cdpapel,cdusuario)values('+CodigoPapel(CodigoAplicacao(aplicacao), itemdestino)+','+CodigoUsuario(itemorigem)+')';
  end;
  ExecutaSQL(sql);
  result := true;
end;

function TFrmManagerUser.CodigoPapel(cdaplicacao, papel:string):string;
begin
  result := RetornaSQLString('select cdpapel from papel where cdaplicacao='+cdaplicacao+' and nmpapel='+quotedstr(papel));
end;

procedure TfrmManagerUser.CarregarItensPapel(cdaplicacao, papel, item:string);
begin
       if item = 'Grupos'   then CarregarGrupos  (QRetornaSQL.get_select_from(_grupo+_s)+' where cdgrupos in (select cdgrupos from grppapel where cdpapel='  +CodigoPapel(cdaplicacao, papel)+') order by nmgrupos')
  else if item = 'Usuários' then CarregarUsuarios(QRetornaSQL.get_select_from(_usuario)+' where cdusuario in (select cdusuario from usupapel where cdpapel='+CodigoPapel(cdaplicacao, papel)+') order by usulogin');
end;

procedure TfrmManagerUser.CarregarGrupos(sql:string);
var
  s : TClasseQuery;
  ListItem: TListItem;
  NewColumn: TListColumn;
begin
  s := TClasseQuery.Create(sql);
  lsv.Items.Clear;
  lsv.Columns.Clear;
  with lsv do
  begin
    SmallImages := img;
    LargeImages := img;
    NewColumn := Columns.Add; NewColumn.Caption := _Grupo;
    NewColumn.width := 200;
  end;
  try
    while not s.q.Eof do
    begin
      with lsv do
      begin
        ListItem         := Items.Add;
        ListItem.Caption := s.q.fieldbyname(_nmgrupos).Asstring;
        listitem.ImageIndex := 1;
      end;
      s.q.Next;
    end;
  finally
    freeandnil(s);
  end;
end;

procedure TfrmManagerUser.Carregaraplicacao;
var
  s : TClasseQuery;
  ListItem: TListItem;
  NewColumn: TListColumn;
begin
  s := TClasseQuery.Create(QRetornaSQL.get_select_from(_aplicacao));
  lsv.Items.Clear;
  lsv.Columns.Clear;
  with lsv do
  begin
    SmallImages       := img;
    LargeImages       := img;
    NewColumn         := Columns.Add;
    NewColumn.Caption := 'Executável';
    NewColumn.width   := 200;
  end;
  try
    while not s.q.Eof do
    begin
      with lsv do
      begin
        ListItem            := Items.Add;
        ListItem.Caption    := RemoverEspacosVazios  (s.q.fieldbyname(_aplexe).Asstring);
        listitem.ImageIndex := 3;
      end;
      s.q.Next;
    end;
  finally
    freeandnil(s);
  end;
end;

procedure TfrmManagerUser.Lista(status:boolean);
begin
  actSmallIcon.Enabled := status;
  actList.Enabled      := status;
  actIcon.Enabled      := status;
  actReport.Enabled    := status;
end;

procedure TfrmManagerUser.PropriedadeAplicacao;
begin
  dlgAplicacao(CodigoAplicacao(lsv.Selected.Caption));
end;

procedure TfrmManagerUser.Propriedadepapel(cdaplicacao:string);
begin
  frmpapel             := TFrmpapel.Create(self);
  frmPapel.status      := _exibir;
  frmPapel.cdaplicacao := cdaplicacao;
  frmPapel.cdpapel     := CodigoPapel(cdaplicacao, lsv.Selected.Caption);
  try
    frmpapel.ShowModal;
  finally
    frmpapel.free;
  end;
end;

procedure TfrmManagerUser.PropriedadePermissao(cdaplicacao:string);
begin
  frmPermissao             := TFrmPermissao.Create(self);
  frmPermissao.cdaplicacao := cdaplicacao;
  frmPermissao.comcod      := CodigoPermissao(cdaplicacao, lsv.selected.Caption);
  frmPermissao.status      := _exibir;
  try
    frmpermissao.ShowModal;
  finally
    frmpermissao.free;
  end;
end;

procedure TfrmManagerUser.PropriedadeGrupo;
begin
  dlgGrupos(CodigoGrupo(lsv.Selected.Caption));
end;

procedure TfrmManagerUser.Propriedadeusuario;
begin
  dlgusuario(CodigoUsuario(lsv.Selected.Caption), _exibir);
end;

procedure TfrmManagerUser.NovoGrupo;
begin
  if dlgGrupos('') then
  begin
    CarregarGrupos(QRetornaSQL.get_select_from(_grupo+_s)+' order by nmgrupos');
    CarregarItensGrupo;
  end;
end;

procedure TfrmManagerUser.Novousuario;
begin
  if dlgusuario('', _inserir) then
  begin
    CarregarUsuarios(QRetornaSQL.get_select_from(_usuario)+' order by usulogin');
  end;
end;

procedure TfrmManagerUser.NovaAplicacao;
begin
  if dlgAplicacao('') then
  begin
    Carregaraplicacao;
    CarregarItensaplicacao;
  end;
end;

procedure TfrmManagerUser.Novopapel(cdaplicacao:string);
var
  inseriu : boolean;
begin
  inseriu          := false;
  frmpapel         := Tfrmpapel.Create(self);
  frmPapel.status  := _inserir;
  frmPapel.cdaplicacao         := cdaplicacao;
  frmpapel.ckbInsercao.Visible := true;
  try
    repeat
      frmpapel.showmodal;
      if frmpapel.ModalResult = mrok then
      begin
        inseriu := true;
      end;
    until (frmpapel.modalresult = mrcancel) or (frmpapel.ckbinsercao.checked = false);
    if inseriu then
    begin
      CarregarPapelAplicacao(cdaplicacao);
      CarregarItenspapel;
    end;
  finally
    frmpapel.free;
  end;
end;

procedure TfrmManagerUser.Novapermissao(cdaplicacao:string);
var
  inseriu : boolean;
begin
  inseriu := false;
  frmpermissao        := Tfrmpermissao.Create(self);
  frmPermissao.status := _inserir;
  frmPermissao.cdaplicacao         := cdaplicacao;
  frmpermissao.ckbInsercao.Visible := true;
  try
    repeat
      frmPermissao.showmodal;
      if frmPermissao.ModalResult = mrok then
      begin
        inseriu := true;
      end;
    until (frmpermissao.modalresult = mrcancel) or (frmpermissao.ckbinsercao.checked = false);
    if inseriu then
    begin
      CarregarPermissaoAplicacao(cdaplicacao);
    end;
  finally
    frmPermissao.free;
  end;
end;

procedure TfrmManagerUser.CarregarItensAplicacao;
var
  i : integer;
begin
  trv.Selected.DeleteChildren;
  for i := 0 to lsv.Items.Count -1 do
  begin
    trv.Items.AddChild(trv.Selected, lsv.Items[i].Caption);
    trv.Selected.Item[i].ImageIndex    := 3;
    trv.Selected.Item[i].SelectedIndex := 3;
  end;
  trv.Selected.Expanded := true;
end;

procedure TfrmManagerUser.CarregarItensPapel;
var
  i : integer;
begin
  trv.Selected.DeleteChildren;
  for i := 0 to lsv.Items.Count -1 do
  begin
    trv.Items.AddChild(trv.Selected, lsv.Items[i].Caption);
    trv.Selected.Item[i].ImageIndex    := 4;
    trv.Selected.Item[i].SelectedIndex := 4;
  end;
  trv.Selected.Expanded := true;
end;

procedure TfrmManagerUser.CarregarItensGrupo;
var
  i : integer;
begin
  trv.Selected.DeleteChildren;
  for i := 0 to lsv.Items.Count -1 do
  begin
    trv.Items.AddChild(trv.Selected, lsv.Items[i].Caption);
    trv.Selected.Item[i].ImageIndex    := 1;
    trv.Selected.Item[i].SelectedIndex := 1;
  end;
  trv.Selected.Expanded := true;
end;

procedure TfrmManagerUser.trvClick(Sender: TObject);
begin
  actNovo.enabled := false;
  Lista(false);
  case trv.Selected.Level of
    1: begin
         if trv.selected.Text = 'Grupos' then
         begin
           carregarGrupos(QRetornaSQL.get_select_from(_grupo+_s)+' order by nmgrupos');
           CarregarItensGrupo;
         end
         else if trv.selected.text = 'Usuários' then
         begin
           CarregarUsuarios(QRetornaSQL.get_select_from(_usuario)+' order by usulogin')
         end
         else if trv.Selected.text = 'Aplicação' then
         begin
           CarregarAplicacao;
           CarregarItensAplicacao;
         end;
         Lista(true);
         actNovo.Enabled := true;
       end;
    2 : begin
          if trv.selected.parent.Text = 'Grupos' then
          begin
            CarregarusuariosGrupo(trv.Selected.text);
            Lista(true);
          end
          else if trv.selected.parent.text = 'Aplicação' then
          begin
            with trv do
            begin
              Selected.DeleteChildren;
              Items.AddChild(Selected,'Grupos');    Selected.Item[0].ImageIndex := 1; Selected.Item[0].SelectedIndex := 1;
              Items.AddChild(Selected,'Usuários');  Selected.Item[1].ImageIndex := 2; Selected.Item[1].SelectedIndex := 2;
              Items.AddChild(Selected,'Papel');     Selected.Item[2].ImageIndex := 4; Selected.Item[2].SelectedIndex := 4;
              Items.AddChild(Selected,'Permissão'); Selected.Item[3].ImageIndex := 5; Selected.Item[3].SelectedIndex := 5;
              Selected.Expanded := true;
            end;
          end;
        end;
    3 : begin
          with trv do
          begin
            if Selected.Parent.Parent.Text = 'Aplicação' then
            begin
              Lista(true);
                   if selected.text = 'Usuários' then CarregarUsuariosAplicacao(CodigoAplicacao(selected.Parent.Text))
              else if selected.text = 'Grupos'   then CarregarGruposAplicacao  (CodigoAplicacao(selected.Parent.Text))
              else if Selected.Text = 'Papel'    then
              begin
                CarregarPapelAplicacao(CodigoAplicacao(selected.Parent.Text));
                CarregarItensPapel;
                actNovo.Enabled := true;
              end
              else if Selected.Text = 'Permissão' then
              begin
                CarregarPermissaoAplicacao(CodigoAplicacao(selected.Parent.Text));
                actNovo.Enabled := true;
              end;
            end;
          end;
         end;
      4: begin
           with trv do
           begin
             if selected.parent.text = 'Papel' then
             begin
               Selected.DeleteChildren;
               Items.AddChild(Selected, 'Grupos');
               Selected.Item[0].ImageIndex    := 1;
               Selected.Item[0].SelectedIndex := 1;
               Items.AddChild(Selected, 'Usuários');
               Selected.Item[1].ImageIndex    := 2;
               Selected.Item[1].SelectedIndex := 2;
               selected.Expanded              := true;
             end;
           end;
         end;
      5: begin
           CarregarItensPapel(CodigoAplicacao(trv.Selected.parent.parent.parent.text), trv.selected.parent.text, trv.selected.text);
           lista(true);
         end;
  end;
end;

procedure TfrmManagerUser.lsvKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
  case key of
    46: actExcluirExecute(sender);
    13: actPropriedadesExecute(sender);
  end;
end;

procedure TfrmManagerUser.actNovoExecute(Sender: TObject);
var
  level : integer;
begin
  level       := trv.selected.level;
       if ((trv.Selected.Text = 'Grupos') and (level = 1)) or ((trv.Selected.Parent.Text = 'Grupos') and (level = 2)) then NovoGrupo
  else if ((trv.Selected.Text = 'Usuários')  and (level = 1)) or ((trv.Selected.Parent.Text = 'Usuários')  and (level = 2)) then NovoUsuario
  else if ((trv.Selected.Text = 'Aplicação') and (level = 1)) or ((trv.Selected.Parent.Text = 'Aplicação') and (level = 2)) then NovaAplicacao
  else if (trv.Selected.Text = 'Papel')     then NovoPapel(CodigoAplicacao(trv.Selected.Parent.Text))
  else if (trv.Selected.Text = 'Permissão') then NovaPermissao(CodigoAplicacao(trv.Selected.Parent.Text));
end;

procedure TfrmManagerUser.actPropriedadesExecute(Sender: TObject);
begin
       if  (trv.Selected.Text = 'Grupos') and ((trv.selected.level = 1) or (trv.selected.level = 3) or (trv.selected.level = 5)) then PropriedadeGrupo
  else if ((trv.Selected.Text = 'Usuários') and ((trv.selected.level = 1) or (trv.selected.level = 3) or (trv.selected.level = 5))) or ((trv.selected.parent.text = 'Grupos') and (trv.selected.level = 2)) then PropriedadeUsuario
  else if (trv.Selected.Text = 'Aplicação') and (trv.selected.level = 1) then PropriedadeAplicacao
  else if trv.Selected.Text = 'Papel'                                    then PropriedadePapel(CodigoAplicacao(trv.selected.parent.text))
  else if trv.Selected.Text = 'Permissão'                                then PropriedadePermissao(CodigoAplicacao(trv.selected.parent.text));
  trvClick(sender);
end;

procedure TfrmManagerUser.lsvDblClick(Sender: TObject);
begin
  if lsv.Selected <> nil then
  begin
    actPropriedadesExecute(sender);
  end;
end;

procedure TfrmManagerUser.trvDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
       if trv.getnodeat(x,y) = nil then accept := false
  else if not ({(source is TcxListView) and} ((trv.GetNodeAt(x,y).Level = 2) or (trv.GetNodeAt(x,y).level = 4))) then accept := false
  else if trv.GetNodeAt(x, y).Parent.index = trv.Selected.Index then accept := false
  else accept := true
end;

procedure TfrmManagerUser.trvDragDrop(Sender, Source: TObject; X,Y: Integer);
var
  i : integer;
  aplicacao:string;
begin
  if trv.getnodeat(x,y).level = 4 then aplicacao := trv.getnodeat(x,y).parent.parent.text
                                  else aplicacao := '';
  for i := 0 to lsv.Items.Count -1 do
  begin
    if lsv.Items[i].Selected then
    begin
      InserirItem(trv.Selected.Text, lsv.items[i].caption, trv.GetNodeAt(x, y).parent.text, trv.GetNodeAt(x, y).text, aplicacao)
    end;
  end;
end;

procedure TfrmManagerUser.lsvSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  actPropriedades.Enabled := selected;
  actExcluir.Enabled      := selected;
end;

procedure TfrmManagerUser.actExcluirExecute(Sender: TObject);
var
  mensagem : string;
  retorno, i : integer;
  HaSelecionado : boolean;
begin
  HaSelecionado := false;
  for i := 0 to lsv.Items.Count -1 do
  begin
    if lsv.Items[i].Selected then
    begin
      HaSelecionado := true;
      if trv.Selected.Level = 1 then
      begin
        mensagem := 'Tem certeza que deseja excluir ';
             if trv.selected.Text = 'Grupos'    then mensagem := mensagem + 'o grupo '
        else if trv.selected.Text = 'Usuários'  then mensagem := mensagem + 'o usuário '
        else if trv.selected.Text = 'Aplicação' then mensagem := mensagem + 'a aplicação ';
        mensagem := mensagem + lsv.items[i].Caption + '?';
        retorno  := messagedlg(mensagem,mtConfirmation, mbYesNoCancel, 0);
             if retorno = mryes    then ExcluirItem(trv.selected.Text, lsv.items[i].Caption)
        else if retorno = mrcancel then break;
      end
      else if trv.selected.level = 2 then
      begin
        if trv.selected.Parent.Text = 'Grupos' then
        begin
          mensagem := 'Tem certeza que deseja excluir o usuário ' + lsv.items[i].Caption + ' do grupo ' + trv.selected.text + '?';
          retorno  := messagedlg(mensagem, mtconfirmation, mbYesNoCancel, 0);
               if retorno = mryes    then ExcluirUsuariodoGrupo(lsv.items[i].Caption, trv.selected.text)
          else if retorno = mrcancel then break;
        end;
      end
      else if trv.selected.level = 3 then
      begin
        mensagem := 'Tem certeza que deseja excluir ';
             if trv.selected.Text = 'Usuários'  then mensagem := mensagem+'o usuário '  +lsv.items[i].Caption+' da aplicação '+trv.Selected.Parent.Text+'?'
        else if trv.selected.Text = 'Grupos'    then mensagem := mensagem+'o grupo '    +lsv.items[i].Caption+' da aplicação '+trv.Selected.Parent.Text+'?'
        else if trv.selected.Text = 'Papel'     then mensagem := mensagem+'o papel '    +lsv.items[i].Caption+' da aplicação '+trv.Selected.Parent.Text+'?'
        else if trv.selected.Text = 'Permissão' then mensagem := mensagem+'a permissão '+lsv.items[i].Caption+' da aplicação '+trv.Selected.Parent.Text+'?';
        retorno  := messagedlg(mensagem, mtconfirmation, mbYesNoCancel, 0);
        if retorno = mryes then
        begin
          ExcluirItemAplicacao(trv.Selected.Parent.Text, trv.selected.Text, lsv.items[i].Caption);
        end;
      end
      else if trv.selected.level = 5 then
      begin
        mensagem := 'Tem certeza que deseja excluir ';
             if trv.selected.Text = 'Usuários' then mensagem := mensagem + 'o usuário '+lsv.items[i].Caption+' do papel '+trv.Selected.Parent.Text+ '?'
        else if trv.selected.Text = 'Grupos'   then mensagem := mensagem + 'o grupo '  +lsv.items[i].Caption+' do papel '+trv.Selected.Parent.Text+ '?';
        retorno  := messagedlg(mensagem, mtconfirmation, mbYesNoCancel, 0);
        if retorno = mryes then
        begin
          ExcluirItemPapel(CodigoPapel(CodigoAplicacao(trv.selected.parent.parent.parent.text), trv.Selected.Parent.Text), trv.selected.Text, lsv.items[i].Caption);
        end;
      end;
    end;
  end;
  if HaSelecionado then
  begin
    trvClick(sender);
  end;
end;

procedure TfrmManagerUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmManagerUser.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmManagerUser.acticonExecute(Sender: TObject);
begin
  lsv.ViewStyle := vsIcon;
end;

procedure TfrmManagerUser.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmManagerUser.actSmallIconExecute(Sender: TObject);
begin
  lsv.ViewStyle := vsSmallIcon;
end;

procedure TfrmManagerUser.actlistExecute(Sender: TObject);
begin
  lsv.ViewStyle := vsList;
end;

procedure TfrmManagerUser.actreportExecute(Sender: TObject);
begin
  lsv.ViewStyle := vsReport;
end;

end.

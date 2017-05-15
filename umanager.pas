unit umanager;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, ActnList, ImgList, Controls, Classes, ComCtrls, ToolWin, graphics,
  windows, sysutils, types, dialogs, ExtCtrls,
  Data.DB,
  uexportarexcel, uconstantes, ustrings, uregistro,
  classeretornasql, classeform, classegerar, classeexecutasql, classeregistrainformacao, classeempresa, classeaplicacao, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBar, cxClasses,
  cxContainer, cxEdit, cxTreeView, cxPCdxBarPopupMenu, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxSplitter, cxDBLookupComboBox, cxCurrencyEdit, cxCalendar, cxBarEditItem,
  cxNavigator, dxBarBuiltInMenu;

type
  TfrmManager = class(TForm)
    act: TActionList;
    pnl: TPanel;
    actatualizar: TAction;
    pumtreeview: TPopupMenu;
    actnovo: TAction;
    Novo1: TMenuItem;
    actexcluir: TAction;
    Excluir1: TMenuItem;
    actfechar: TAction;
    actrenomear: TAction;
    Renomear2: TMenuItem;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnNovo: TdxBarLargeButton;
    dxbrlrgbtnexcluir: TdxBarLargeButton;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    trv: TcxTreeView;
    bmg1Bar1: TdxBar;
    actrecortar: TAction;
    actcolar: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    procedure trvDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure actatualizarExecute(Sender: TObject);
    procedure actnovoExecute(Sender: TObject);
    procedure actexcluirExecute(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pumtreeviewPopup(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actrenomearExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actrecortarExecute(Sender: TObject);
    procedure actcolarExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private    { Private declarations }
    posicao : array of integer;
    tamanho : array of integer;
    vCodigoRecortar : string;
    exibe : string;
    function  Atualizar:boolean;
    function  nivelregistro(no: ttreenode):string;
    function  NivelTabela(nunivel, nome:string; nivel:integer):string;
    function  InserirRegistro(nome:string; cdpai:string=''):string;
    function  ExcluirRegistro(codigo:string):boolean;
    function  GetNunivel(cdpai:string):string;
    function  codigo_do_mesmo_nivel(codigo_recortar, codigo_colar:string):boolean;
    procedure RecortarNivel(codigo_recortar, codigo_colar:string);
    procedure setacao;
    procedure AdicionarProximoNivel(no: TTreeNode; nivel: integer; cdgrupo: string);
    function adicionarproximonivel1(no2: ttreenode): string;
    function transferir_registro(codigo_origem, codigo_destino: string): boolean;
    procedure inserir_sub_nivel(codigopai, codigodestino: string);
    function updatenu(tabela: string): string;
    function nulo_codigo(tabela, codigo: string): string;
    function UpdateNuloTabelasRefenciadas(codigo: string): string;
  public     { Public declarations }
    tbl : string;
  end;

var
  frmManagerplconta: TfrmManager;
  frmManagercntcusto: TfrmManager;

implementation

uses uMain, uDtmMain, uProgressBar, Variants;

{$R *.DFM}

function TfrmManager.updatenu(tabela:string):string;
begin
  result := '';
  if (tabela = _autpagto) or (tabela = _duplicata) or (tabela = _itentrada) or (tabela = _itsaida) or (tabela = _saida) then
  begin
    result := result + ',nu'+tbl+'=null';
  end;
end;

function TfrmManager.nulo_codigo(tabela, codigo:string):string;
begin
  Result := 'update '+tabela+' set cd'+tbl+'=null'+updatenu(tabela)+' where cdempresa='+empresa.cdempresa.tostring+' '+'and cd'+tbl+'='+codigo+';';
end;

function TfrmManager.UpdateNuloTabelasRefenciadas(codigo:string):string;
var
  sql : TStrings;
begin
  sql := TStringList.Create;
  try
    sql.Add(nulo_codigo(_entrada    , codigo));
    sql.Add(nulo_codigo(_produto    , codigo));
    sql.Add(nulo_codigo(_movbancario, codigo));
    sql.Add(nulo_codigo(_itordcompra, codigo));
    sql.Add(nulo_codigo(_autpagto   , codigo));
    sql.Add(nulo_codigo(_duplicata  , codigo));
    sql.Add(nulo_codigo(_itentrada  , codigo));
    sql.Add(nulo_codigo(_itsaida    , codigo));
    sql.Add(nulo_codigo(_saida      , codigo));
    if tbl = _cntcusto then
    begin
      sql.Add(nulo_codigo(_funcionario     , codigo));
      sql.Add(nulo_codigo(_itmovto         , codigo));
      sql.Add(nulo_codigo(_rim             , codigo));
      sql.Add(nulo_codigo(_solicitacao     , codigo));
      sql.Add(nulo_codigo(_itpedidomaterial, codigo));
      sql.Add('update ordcompra set cd'+tbl+'entrega=null where cdempresa='+empresa.cdempresa.toString+' and cd'+tbl+'entrega='+codigo);
    end;
    result := sql.Text;
  finally
    FreeAndNil(sql);
  end;
end;

function TfrmManager.ExcluirRegistro(codigo:string):boolean;
var
  sql : TStrings;
  q : TClasseQuery;
begin
  sql := TStringList.Create;
  q := TClasseQuery.create;
  try
    q.q.SQL.Text := 'select cd'+tbl+' from '+tbl+' where cdempresa='+empresa.cdempresa.ToString+' and cd'+tbl+'pai='+codigo;
    q.q.Open;
    while not q.q.Eof do
    begin
      ExcluirRegistro(q.q.FieldByName(_cd+tbl).AsString);
      q.q.Next;
    end;
    sql.Text := sql.Text + UpdateNuloTabelasRefenciadas(codigo);
    sql.Add('delete from '+tbl+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+codigo);
    result := ExecutaScript(sql);
  finally
    FreeAndNil(sql);
  end;
end;

function TfrmManager.GetNunivel(cdpai:string):string;
  function get_nunivel:string;
    function makesql:string;
    begin
      result := 'select nunivel '+
                'from '+tbl+' '+
                'where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'pai ';
      if cdpai <> '' then
      begin
        Result := result + '=' + cdpai
      end
      else
      begin
        result := result + 'is null';
      end;
      result := result + ' order by nunivel';
    end;
  var
    s : TClasseQuery;
    i, num : Integer;
    texto, nunivelpai : string;
  begin
    s := TClasseQuery.Create(makesql);
    try
      num := 0;
      if cdpai <> '' then
      begin
        nunivelpai := NomedoCodigo(tbl, cdpai, _nunivel);
      end;
      while not s.q.Eof do
      begin
        inc(num);
        if cdpai <> '' then
        begin
          for i := 0 to high(posicao) do
          begin
            if length(nunivelpai) = posicao[i] + tamanho[i] - 1 then
            begin
              texto := copy(s.q.FieldByName(_nunivel).AsString, posicao[i+1], tamanho[i+1]);
              if strtoint(texto) > num then
              begin
                result := nunivelpai+'.'+FormatarTextoEsquerda(IntToStr(num), tamanho[i+1], _0);
                exit;
              end;
              break;
            end;
          end;
        end
        else
        begin
          if s.q.FieldByName(_nunivel).AsString > FormatarTextoEsquerda(IntToStr(num), tamanho[0], _0) then
          begin
            result := FormatarTextoEsquerda(IntToStr(num), tamanho[0], _0);
            exit;
          end;
        end;
        s.q.Next;
      end;
      Inc(num);
      if cdpai = '' then
      begin
        result := FormatarTextoEsquerda(IntToStr(num), tamanho[0], _0)
      end
      else
      begin
        for i := 0 to high(posicao) do
        begin
          if length(nunivelpai) = posicao[i] + tamanho[i] - 1 then
          begin
            if i + 1 > high(posicao) then
            begin
              result := 'Número máximo de níveis atingido!'
            end
            else
            begin
              result := nunivelpai+'.'+FormatarTextoEsquerda(IntToStr(num), tamanho[i+1], _0);
            end;
            break;
          end;
        end;
      end;
    finally
      freeandnil(s);
    end;
  end;
begin
  result := get_nunivel;
end;

function TfrmManager.InserirRegistro(nome:string; cdpai:string=''):string;
var
  codigo : string;
  x, i : integer;
  cd, co : TClasseQuery;
begin
  cd:= TClasseQuery.Create(QRetornaSQL.get_select_from(tbl, _0), true);
  co:= TClasseQuery.Create(QRetornaSQL.get_select_from(tbl, cdpai));
  try
    codigo        := GerarCodigo(tbl);
    cd.q.Insert;
    cd.q.fieldbyname(_cd+tbl).asstring := codigo;
    cd.q.FieldByName(_nm+tbl).AsString := nome;
    if cdpai <> '' then
    begin
      for i := 0 to cd.q.Fields.Count - 1 do
      begin
        if (cd.q.fields[i].FieldName = uppercase(_CD+tbl)) or (cd.q.fields[i].FieldName = uppercase(_NM+tbl)) or (cd.q.fields[i].FieldName = uppercase(_NUNIVEL)) then
        begin
          continue;
        end;
        for x := 0 to co.q.Fields.Count - 1 do
        begin
          if (cd.q.Fields[i].FieldName = co.q.Fields[x].FieldName) then
          begin
            if not co.q.Fields[x].IsNull then
            begin
              qregistro.set_field_type_assign(co.q, cd.q, x, i) // ; cd.Fields[i].AsVariant := co.Fields[x].AsVariant
            end
            else if Copy(co.q.Fields[x].FieldName, 1, 2) = UpperCase(_bo) then
            begin
              cd.q.Fields[i].AsString  := _N;
            end;
          end;
        end;
      end;
      cd.q.fieldbyname(_cd+tbl+_pai).AsString := cdpai;
    end;
    RegistraInformacao_(cd.q);
    cd.q.FieldByName(_nunivel).asstring := getnunivel(cdpai);
    aplicacao.aplyupdates(cd.q);
    result := codigo;
  finally
    FreeAndNil(cd);
    FreeAndNil(co);
  end;
end;

function TfrmManager.NivelTabela(nunivel, nome:string; nivel:integer):string;
begin
  result := copy(nunivel, posicao[nivel], tamanho[nivel]) + ' - '+nome;
end;

procedure TfrmManager.AdicionarProximoNivel(no:TTreeNode; nivel:integer; cdgrupo:string);
var
  q : TClasseQuery;
  no2 : TTreeNode;
  texto : string;
begin
  q := TClasseQuery.create(StringParametro('select cd'+tbl+',nm'+tbl+',nunivel,cd'+tbl+'pai from '+tbl+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'pai=:cd'+tbl+' order by nunivel', cdgrupo));
  try
    while not q.q.eof do
    begin
      texto := niveltabela(q.q.fields[2].asstring, q.q.fields[1].asstring, nivel);
      no2   := trv.Items.AddChild(no, texto);
      AdicionarProximoNivel(no2, nivel + 1, q.q.fieldbyname(_cd+tbl).asstring);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

function TfrmManager.Atualizar:boolean;
var
  q : TClasseQuery;
  no : TTreeNode;
  function nome_grupo_treeview:string;
  begin
    result := q.q.fields[2].asstring+' - '+q.q.fields[1].asstring;
  end;
begin
  trv.items.Clear;
  q  := TClasseQuery.create('select cd'+tbl+
                                  ',nm'+tbl+
                                  ',nunivel'+
                                  ',cd'+tbl+'pai '+
                            'from '+tbl+' '+
                            'where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'pai is null '+
                            'order by nunivel');
  try
    trv.Items.Add(nil, exibe);
    trv.Items[0];
    while not q.q.eof do
    begin
      no := trv.Items.AddChild(trv.Items[0], nome_grupo_treeview);
      adicionarproximonivel(no, 1, q.q.fieldbyname(_cd+tbl).AsString);
      q.q.next;
    end;
    result := true;
  finally
    freeandnil(q);
  end;
end;

function TfrmManager.adicionarproximonivel1(no2:ttreenode):string;
var
  nunivel:string;
  posicao : integer;
begin
  nunivel := no2.Text;
  posicao := pos('-', nunivel);
  nunivel := copy(nunivel, 1, posicao -2);
  if no2.Level <= 1 then
  begin
    result := nunivel
  end
  else
  begin
    result := adicionarproximonivel1(no2.Parent)+'.'+nunivel;
  end;
end;

function TfrmManager.nivelregistro(no:ttreenode):string;
begin
  result := CodigodoCampo(tbl, adicionarproximonivel1(no), _nunivel);
end;

procedure TfrmManager.trvDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := true;
end;

procedure TfrmManager.actatualizarExecute(Sender: TObject);
begin
  atualizar;
end;

procedure TfrmManager.actnovoExecute(Sender: TObject);
var
  texto, codigo, nome : string;
begin
  nome := Trim(RetiraAcentos(uppercase(inputbox('Nome do '+exibe, 'Digite o nome do '+exibe, ''))));
  if nome = '' then
  begin
    exit;
  end;
  if trv.Selected.Level = 0 then
  begin
    codigo := ''
  end
  else
  begin
    codigo := nivelregistro(trv.selected);
  end;
  codigo := InserirRegistro(nome, codigo);
  texto  := NivelTabela(nomedocodigo(tbl, codigo, _nunivel), nomedocodigo(tbl, codigo), trv.Selected.Level);
  trv.Items.AddChild(trv.Selected, texto);
  refresh;
end;

procedure TfrmManager.actexcluirExecute(Sender: TObject);
var
  nome, codigo : string;
begin
  codigo := nivelregistro(trv.selected);
  if codigo = '' then
  begin
    Exit;
  end;
  if not excluirRegistro(codigo) then
  begin
    nome := nomedocodigo(tbl, codigo);
    messagedlg('Não foi possível excluir o '+exibe+' '+codigo+' - '+nome, mtinformation, [mbok], 0);
    exit;
  end;
  trv.Items.Delete(trv.Selected);
end;

procedure TfrmManager.trvChange(Sender: TObject; Node: TTreeNode);
begin
  setacao;
end;

procedure TfrmManager.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmManager.pumtreeviewPopup(Sender: TObject);
begin
  setacao;
end;

procedure TfrmManager.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual('manager'+tbl, frmmain.tlbnew);
end;

procedure TfrmManager.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmManager.setacao;
begin
  actnovo.Visible     := not (trv.selected.level = high(posicao)+1);
  actexcluir.Visible  := not (trv.selected.level = 0);
  actrenomear.Visible := actexcluir.Visible;
end;

procedure TfrmManager.actrenomearExecute(Sender: TObject);
var
  nome, codigo : string;
begin
  codigo := nivelregistro(trv.selected);
  nome   := InputBox('Renomear', 'Digite o novo nome', nomedocodigo(tbl, codigo));
  if nome <> '' then
  begin
    nome := uppercase(RetiraAcentos(nome));
    ExecutaSQL('update '+tbl+' set nm'+tbl+'='+quotedstr(nome)+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+codigo);
    trv.Selected.Text := copy(trv.Selected.Text, 1, pos('-', trv.Selected.Text) - 2) + ' - '+nome;
  end;
end;

procedure TfrmManager.FormShow(Sender: TObject);
begin
  exibe       := NomedoCodigo(_tabela, qregistro.CodigodoNome(_tabela, UpperCase(tbl)), _nm+_exibe);
  pnl.Caption := exibe;
  setlength(posicao, empresa.get_ponto_maskara(tbl));
  setlength(tamanho, empresa.get_ponto_maskara(tbl));
  empresa.set_ponto_maskara(tbl, posicao, tamanho);
  actatualizarExecute(self);
end;

procedure TfrmManager.actrecortarExecute(Sender: TObject);
begin
  vCodigoRecortar := nivelregistro(trv.selected);
  actcolar.Enabled := True;
  actcolar.Visible := True;
end;

procedure TfrmManager.actcolarExecute(Sender: TObject);
var
  codigo_colar : string;
begin
  codigo_colar := nivelregistro(trv.selected);
  if not codigo_do_mesmo_nivel(vCodigoRecortar, codigo_colar) then
  begin
    MessageDlg('Selecione somente um nível acima do copiado para colar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  RecortarNivel(vCodigoRecortar, codigo_colar);
  actcolar.Enabled := False;
  actcolar.Visible := False;
  vCodigoRecortar := '';
end;

function TfrmManager.codigo_do_mesmo_nivel(codigo_recortar, codigo_colar:string): boolean;
var
  nivel1, nivel2 : string;
begin
  nivel1 := NomedoCodigo(tbl, codigo_recortar, _nunivel);
  nivel2 := NomedoCodigo(tbl, codigo_colar, _nunivel);
  result := Length(nivel1) > Length(nivel2);  
end;

function TfrmManager.transferir_registro(codigo_origem, codigo_destino:string):boolean;
  function nulo_codigo(tabela:string):string;
  begin
    Result := 'update '+tabela+' set cd'+tbl+'='+codigo_destino+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+codigo_origem+';';
  end;
var
  sql : TStrings;
begin
  sql := TStringList.Create;
  try
    sql.Add(nulo_codigo(_autpagto));
    sql.Add(nulo_codigo(_duplicata));
    sql.Add(nulo_codigo(_entrada));
    sql.Add(nulo_codigo(_saida));
    sql.Add(nulo_codigo(_produto));
    sql.Add('update itordcompra set cd'+tbl+'='+codigo_destino+',NU'+tbl+'='+quotedstr(NomedoCodigo(tbl, codigo_destino, _nunivel))+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+codigo_origem+';');
    sql.Add('update itentrada set cd'+tbl+'='+codigo_destino+',NU'+tbl+'='+quotedstr(NomedoCodigo(tbl, codigo_destino, _nunivel))+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+codigo_origem+';');
    sql.Add('update itsaida set cd'+tbl+'='+codigo_destino+',NU'+tbl+'='+quotedstr(NomedoCodigo(tbl, codigo_destino, _nunivel))+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+codigo_origem+';');
    if tbl = _cntcusto then
    begin
      sql.Add(nulo_codigo(_funcionario));
      sql.Add(nulo_codigo(_itmovto));
      sql.Add(nulo_codigo(_itordcompra));
      sql.Add(nulo_codigo(_itsaida));
      sql.Add(nulo_codigo(_ordcompra));
      sql.Add(nulo_codigo(_pedidomaterial));
      sql.Add(nulo_codigo(_rim));
      sql.Add(nulo_codigo(_solicitacao));
      sql.Add(nulo_codigo(_itpedidomaterial));
      sql.Add('update ordcompra set cd'+tbl+'entrega='+codigo_destino+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'entrega='+codigo_origem+';');
    end;
    sql.Add('delete from '+tbl+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+codigo_origem+';');
    result := ExecutaScript(sql);
  finally
    FreeAndNil(sql);
  end;
end;

procedure TfrmManager.inserir_sub_nivel(codigopai, codigodestino:string);
var
  s : TClasseQuery;
  codigo : string;
begin
  s := TClasseQuery.Create('select '+tbl+'.nm'+tbl+',cd'+tbl+',nunivel from '+tbl+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'pai='+codigopai+' order by nunivel');
  try
    while not s.q.Eof do
    begin
      codigo := InserirRegistro(s.q.fieldbyname(_nm+tbl).AsString, codigodestino);
      inserir_sub_nivel(s.q.fieldbyname(_cd+tbl).AsString, codigo);
      transferir_registro(s.q.fieldbyname(_cd+tbl).AsString, codigo);
      s.q.Next;
    end;
  finally
    freeandnil(s);
  end;
end;

procedure TfrmManager.RecortarNivel(codigo_recortar, codigo_colar: string);
var
  nome, codigo : string;
begin
  // criar novo nivel
  // obter o número do proximo nivel do nivel existente selecionado
  // verificar se excede capacidade
  nome   := NomedoCodigo(tbl, codigo_recortar);
  codigo := InserirRegistro(nome, codigo_colar);
  // criar sub niveis
  inserir_sub_nivel(codigo_recortar, codigo);
  transferir_registro(codigo_recortar, codigo);
  Atualizar;
  // mover cada nivel para novo nivel
  // excluir sub niveis em ordem descrecente
  // excluir nivel
end;

end.

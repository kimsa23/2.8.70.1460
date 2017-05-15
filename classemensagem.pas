unit classemensagem;

interface

uses
  forms, ComCtrls, sysutils, classes,
  uregistro, uconstantes, udatahora, unovamensagem,
  classeaplicacao, classeretornasql, classeempresa, classegerar,
  classeexecutasql, classeregistrainformacao, classeusuario, classequery;

type
  TMensagem = class(TObject)
  private
  public
    constructor create;
    procedure Abrir   (lsv:TListView; cdlink:TStrings; form: TForm);
    procedure Carregar(lsv:TListView; cdlink:TStrings);
    procedure Novo    (lsv:TListView; cdlink:TStrings; form: TForm);
  end;

implementation

procedure TMensagem.Abrir(lsv:TListView; cdlink:TStrings; form: TForm);
var
  rce : TRichEdit;
  s : TClasseQuery;
begin
  rce := TRichEdit.Create(nil);
  s   := TClasseQuery.create('select nmmensagem,dsmensagem '+
                       'from mensagem '+
                       'inner join link on link.cdmensagem=mensagem.cdmensagem '+
                       'where mensagem.cdempresa='+empresa.cdempresa.tostring+' and cdlink='+cdlink[lsv.ItemIndex]);
  try
    rce.Parent    := form;
    rce.Visible   := false;
    rce.PlainText := false;
    rce.Lines.Text := s.q.Fieldbyname(_dsmensagem).AsString;
    abrir_mensagem(s.q.fieldbyname(_nm+_mensagem).Asstring, rce);
    ExecutaSQL('update link set cdstlink=2 where cdempresa='+empresa.cdempresa.tostring+' and cdlink='+cdlink[lsv.itemindex]);
    Carregar(lsv, cdlink);
  finally
    freeandnil(s);
    freeandnil(rce);
  end;
end;

procedure TMensagem.Novo(lsv:TListView; cdlink:TStrings; form: TForm);
var
  rce : TRichEdit;
  cdfuncionario : TStrings;
  c : TClasseQuery;
  titulo, codigo, cdmensagem: string;
  i : integer;
begin
  rce           := TRichEdit.Create(nil);
  cdfuncionario := TStringList.create;
  c             := TClasseQuery.Create('', true);
  try
    rce.Parent    := form;
    rce.Visible   := false;
    rce.PlainText := false;
    if NovaMensagem(titulo, cdfuncionario, rce) then
    begin
      c.q.sql.Text    := QRetornaSQL.get_select_from(_mensagem, _0);
      c.q.Open;
      try
        c.q.insert;
        cdmensagem                               := GerarCodigo(_mensagem);
        c.q.Fieldbyname(_cd+_mensagem).AsString    := cdmensagem;
        codigo                                   := qregistro.CodigodoNome(_funcionario, usuario.nmusuario);
        c.q.fieldbyname(_cdfuncionario).Asstring   := codigo;
        c.q.fieldbyname(_nm+_mensagem).Asstring    := titulo;
        c.q.Fieldbyname(_dt+_envio).AsDateTime     := dtbanco;
        c.q.fieldbyname(_hr+_envio).AsDateTime     := HrBanco;
        c.q.fieldbyname(_ds+_mensagem).AsString    := rce.Lines.Text;
        registrainformacao_(c.q);
        aplicacao.aplyupdates(c.q);
      except
      end;
      c.q.close;
      c.q.sql.Text := QRetornaSQL.get_select_from(_link, _0);
      c.q.Open;
      for i := 0 to cdfuncionario.count - 1 do
      begin
        c.q.insert;
        c.q.fieldbyname(_cd+_link).Asstring      := GerarCodigo(_link);
        c.q.Fieldbyname(_cdmensagem).AsString    := cdmensagem;
        c.q.Fieldbyname(_cd+_st+_link).Asstring  := _1;
        c.q.fieldbyname(_cdfuncionario).Asstring := cdfuncionario[i];
        registrainformacao_(c.q);
        aplicacao.aplyupdates(c.q);
      end;
    end;
    Carregar(lsv, cdlink);
  finally
    freeandnil(c);
    freeandnil(cdfuncionario);
    freeandnil(rce);
  end;
end;

procedure TMensagem.Carregar(lsv:TListView; cdlink:TStrings);
var
  q : TClasseQuery;
  cdfuncionario : string;
  ListItem: TListItem;
begin
  cdlink.clear;
  lsv.Clear;
  cdfuncionario := qregistro.CodigodoNome(_funcionario, usuario.nmusuario);
  if cdfuncionario = '' then
  begin
    exit;
  end;
  q := TClasseQuery.create('select l.cdstlink'+
                             ',l.cdlink'+
                             ',nmmensagem'+
                             ',nmfuncionario '+
                       'from mensagem m '+
                       'inner join link l on l.cdmensagem=m.cdmensagem and m.cdempresa=l.cdempresa '+
                       'inner join funcionario f on f.cdfuncionario=m.cdfuncionario and m.cdempresa=f.cdempresa '+
                       'inner join stlink s on s.cdstlink=l.cdstlink and m.cdempresa=l.cdempresa '+
                       'where m.cdempresa='+empresa.cdempresa.tostring+' and s.inbox=''S'' and l.cdfuncionario='+cdfuncionario);
  try
    while not q.q.eof do
    begin
      cdlink.add(q.q.fieldbyname(_cd+_link).Asstring);
      listitem         := lsv.Items.Add;
      listitem.Caption := q.q.fieldbyname(_nm+_mensagem).Asstring;
      listitem.SubItems.Add(q.q.fieldbyname(_nmfuncionario).Asstring);
           if q.q.fieldbyname(_cd+_st+_link).Asinteger = 1 then listitem.ImageIndex := 60
      else if q.q.fieldbyname(_cd+_st+_link).Asinteger = 2 then listitem.ImageIndex := 58
      else                                                 listitem.imageindex := -1;
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

constructor TMensagem.create;
begin
end;

end.
 
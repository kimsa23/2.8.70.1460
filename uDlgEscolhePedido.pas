unit uDlgEscolhePedido;

interface

uses
  Menus, forms, Controls, ComCtrls, StdCtrls, Classes, ExtCtrls, sysutils,
  sqlexpr,
  uConstantes, uregistro, ustrings,
  classeaplicacao, classeempresa, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxButtons,
  cxContainer, cxListView, cxPC, cxEdit, cxPCdxBarPopupMenu;

type
  TfrmdlgEscolhePedido = class(TForm)
    btnok: TcxButton;
    btncancelar: TcxButton;
    lsv: TcxListView;
  private { Private declarations }
  public { Public declarations }
  end;

function dlgescolheadiantamento(cdadiantamento, valor:Tstrings):string;
function dlgescolhesetboleto   (cdconta:string=''):integer;

var
  frmdlgEscolhePedido: TfrmdlgEscolhePedido;

implementation

{$R *.dfm}

function dlgescolhesetboleto(cdconta:string=''):integer;
  function makesql:string;
  begin
    result := 'select nmsetboleto ' +
              'from setboleto where cdempresa='+empresa.cdempresa.ToString+' ';
    if cdconta <> '' then
    begin
      result := result + 'and cdconta='+cdconta+' ';
    end;
    result := result + 'order by cdsetboleto';
  end;
var
  q : TClasseQuery;
  listitem : TListItem;
begin
  q                   := TClasseQuery.create(makesql);
  frmdlgescolhepedido := TfrmdlgEscolhePedido.Create(application);
  try
    while not q.q.eof do
    begin
      ListItem         := frmdlgescolhepedido.lsv.Items.Add;
      ListItem.Caption := q.q.fields[0].asstring;
      q.q.next;
    end;
    frmdlgescolhepedido.ShowModal;
    result := 0;
    if frmdlgescolhepedido.ModalResult = mrok then
    begin
      result := qregistro.CodigodoNomeInteiro(_setboleto, frmdlgEscolhePedido.lsv.Selected.Caption);
    end;
  finally
    freeandnil(q);
    FreeAndNil(frmdlgEscolhePedido);
  end;
end;

function dlgescolheadiantamento(cdadiantamento, valor:Tstrings):string;
var
  listitem : TListItem;
  i : integer;
begin
  frmdlgescolhepedido := TfrmdlgEscolhePedido.Create(application);
  try
    with frmdlgescolhepedido do
    begin
      caption                := 'Escolha o Adiantamento';
      lsv.Columns[0].Caption := 'Adiantamento';
      lsv.Columns[0].Width   := 100;
      lsv.Columns.Add;
      lsv.Columns[1].Caption := maiuscula(_Valor);
      lsv.Columns[1].Width   := 100;
      for i := 0 to cdadiantamento.Count - 1 do
      begin
        ListItem := frmdlgescolhepedido.lsv.Items.Add;
        ListItem.Caption := cdadiantamento[i];
        listitem.SubItems.Add(valor[i]);
      end;
      ShowModal;
      if ModalResult = mrok then
      begin
        result := lsv.Selected.Caption
      end
      else
      begin
        result := '';
      end;
    end;
  finally
    FreeAndNil(frmdlgEscolhePedido);
  end;
end;

end.

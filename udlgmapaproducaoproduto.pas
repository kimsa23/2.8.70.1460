unit udlgmapaproducaoproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls,
  classeretornasql, classeempresa, classequery,
  uConstantes, uRegistro, ustrings, uprogressbar,
  DB, DBClient,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxButtons, ExtCtrls;

type
  Tfrmdlgmapaproducaoproduto = class(TForm)
    pnlbottom: TPanel;
    btnok: TcxButton;
    procedure FormCreate(Sender: TObject);
  private { Private declarations }
    cdproduto : string;
    qtpequipamento : TClasseQuery;
    met : TClientDataSet;
    dts: TDataSource;
    Grid: TcxGrid;
    Level: TcxGridLevel;
    View: TcxGridDBTableView;
    function makesql(tipo:string):string;
    procedure gerar_coluna_tpequipamento;
    procedure criar_grade;
    procedure set_columns_view;
    procedure selecionar_produto_acabado;
    procedure adicionar_registro_dataset(sql: string);
    procedure criar_fields;
  public { Public declarations }
  end;

var
  frmdlgmapaproducaoproduto: Tfrmdlgmapaproducaoproduto;

procedure exibir_mapa_producao_produto;

implementation

{$R *.dfm}

procedure exibir_mapa_producao_produto;
begin
  frmdlgmapaproducaoproduto := Tfrmdlgmapaproducaoproduto.Create(nil);
  try
    frmdlgmapaproducaoproduto.selecionar_produto_acabado;
    frmdlgmapaproducaoproduto.ShowModal;
  finally
    frmdlgmapaproducaoproduto.Free;
  end;
end;

procedure Tfrmdlgmapaproducaoproduto.adicionar_registro_dataset(sql: string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(sql);
  try
    while not q.q.Eof do
    begin
      if Existe_Campo(met, _qt+q.q.fieldbyname(_cdtpequipamento).AsString) then
      begin
        met.FieldByName(_qt+q.q.fieldbyname(_cdtpequipamento).AsString).AsFloat  := q.q.fieldbyname(_qtitem).AsFloat;
      end;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;


procedure Tfrmdlgmapaproducaoproduto.criar_grade;
begin
  Grid            := TcxGrid.Create(self);
  Grid.Parent     := self;
  grid.Align      := alClient;
  grid.BevelInner := bvNone;
  grid.BevelOuter := bvNone;
  grid.TabOrder   := 1;

  Level := Grid.Levels.Add;
  Level.Name := 'SomeLevelName';

  View := Grid.CreateView(TcxGridDBTableView) as TcxGridDBTableView;
  View.Name := 'SomeViewName';
  Level.GridView := View;

  View.DataController.DataSource := dts;
  View.DataController.CreateAllItems;

  view.OptionsView.GroupByBox := False;
  view.Navigator.Buttons.PriorPage.Enabled := false;
  view.Navigator.Buttons.PriorPage.Visible := false;
  view.Navigator.Buttons.NextPage.Enabled := false;
  view.Navigator.Buttons.NextPage.Visible := false;
  view.Navigator.Buttons.Insert.Enabled := false;
  view.Navigator.Buttons.Insert.Visible := false;
  view.Navigator.Buttons.Append.Enabled := false;
  view.Navigator.Buttons.Delete.Enabled := false;
  view.Navigator.Buttons.Delete.Visible := false;
  view.Navigator.Buttons.Edit.Enabled := false;
  view.Navigator.Buttons.Edit.Visible := false;
  view.Navigator.Buttons.Post.Enabled := false;
  view.Navigator.Buttons.Post.Visible := false;
  view.Navigator.Buttons.Cancel.Enabled := false;
  view.Navigator.Buttons.Cancel.Visible := false;
  view.Navigator.Buttons.Refresh.Enabled := false;
  view.Navigator.Buttons.Refresh.Visible := false;
  view.Navigator.Buttons.SaveBookmark.Enabled := false;
  view.Navigator.Buttons.SaveBookmark.Visible := false;
  view.Navigator.Buttons.GotoBookmark.Enabled := false;
  view.Navigator.Buttons.GotoBookmark.Visible := false;
  view.Navigator.Buttons.Filter.Enabled := false;
  view.Navigator.Buttons.Filter.Visible := false;
  view.Navigator.InfoPanel.DisplayMask := '[RecordIndex] de [RecordCount]';
  view.Navigator.InfoPanel.Visible := True;
  view.Navigator.Visible := True;
  view.OptionsView.Indicator := True;
  set_columns_view;
end;

function Tfrmdlgmapaproducaoproduto.makesql(tipo: string): string;
  function makesql_etapa: string;
  begin
    result := 'select count(*) qtitem'+
                    ',ordproducao.cdtpequipamento '+
              'from ordproducao '+
              'where ordproducao.cdtpequipamento is not null and ordproducao.cdempresa='+empresa.cdempresa.tostring+' and ordproducao.cdproduto='+cdproduto+' '+
              'group by ordproducao.cdtpequipamento';
  end;
  function makesql_orcamento: string;
  begin
    result := 'SELECT ITORCAMENTO.QTITEM-ITORCAMENTO.QTAPROVADO '+
              'from itorcamento '+
              'inner join orcamento on orcamento.cdempresa=itorcamento.cdempresa and orcamento.cdorcamento=orcamento.cdorcamento '+
              'inner join storcamento on storcamento.cdempresa=orcamento.cdempresa and storcamento.cdstorcamento=orcamento.cdstorcamento '+
              'where storcamento.bogerarinfo=''S'' and ITORCAMENTO.QTAPROVADO<ITORCAMENTO.QTitem and itorcamento.cdempresa='+empresa.cdempresa.tostring+' and itorcamento.cdproduto='+cdproduto;
  end;
  function makesql_pedido: string;
  begin
    result := 'SELECT ITPEDIDO.QTITEM-ITPEDIDO.QTATENDIDA '+
              'from itPEDIDO '+
              'inner join PEDIDO on PEDIDO.cdempresa=itPEDIDO.cdempresa and PEDIDO.cdPEDIDO=PEDIDO.cdPEDIDO '+
              'inner join stPEDIDO on stPEDIDO.cdempresa=PEDIDO.cdempresa and stPEDIDO.cdstPEDIDO=PEDIDO.cdstPEDIDO '+
              'where stPEDIDO.bogerarinfo=''S'' and ITPEDIDO.QTATENDIDA<ITPEDIDO.QTitem and itPEDIDO.cdempresa='+empresa.cdempresa.tostring+' and itPEDIDO.cdproduto='+cdproduto;
  end;
begin
       if tipo = _etapa     then result := makesql_etapa
  else if tipo = _orcamento then result := makesql_orcamento
  else if tipo = _pedido    then result := makesql_pedido;
end;

procedure Tfrmdlgmapaproducaoproduto.selecionar_produto_acabado;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select cdproduto,cdalternativo,qtestoque from produto where boativar=''S'' and cdtpitem=''04'' and cdalternativo<>'''' order by cdalternativo');
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    frmprogressbar.Show;
    while not q.q.eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      Application.ProcessMessages;
      cdproduto := q.q.fieldbyname(_cdproduto).AsString;
      met.append;
      met.FieldByName(_cdalternativo).AsString := q.q.fieldbyname(_cdalternativo).AsString;
      met.FieldByName(_qtestoque).AsFloat      := q.q.fieldbyname(_qtestoque).AsFloat;
      met.FieldByName(_qt+_orcamento).AsFloat  := RetornaSQLCurrency(makesql(_orcamento));
      met.FieldByName(_qtpedido).AsFloat       := RetornaSQLCurrency(makesql(_pedido));
      adicionar_registro_dataset(makesql(_etapa));
      met.post;
      q.q.Next;
    end;
    met.First;
  finally
    FreeAndNil(q);
    FreeAndNil(frmprogressbar);
  end;
end;

procedure Tfrmdlgmapaproducaoproduto.FormCreate(Sender: TObject);
begin
  qtpequipamento := TClasseQuery.create('select cdtpequipamento,nmtpequipamento from tpequipamento where cdempresa='+empresa.cdempresa.tostring+' and boapontamento=''S''');
  met  := TClientDataSet.Create(Self);
  dts  := TDataSource.Create(self);
  dts.DataSet := met;
  criar_fields;
  criar_grade;
end;

procedure tfrmdlgmapaproducaoproduto.criar_fields;
begin
  met.FieldDefs.Add(_cdalternativo, ftString, 20);
  met.FieldDefs.Add(_qtestoque, ftFloat);
  met.FieldDefs.Add(_qt+_orcamento, ftFloat);
  met.FieldDefs.Add(_qtpedido, ftFloat);
  gerar_coluna_tpequipamento;

  met.IndexDefs.Add(_pk, _cdalternativo, [ixPrimary]);
  met.IndexName := _pk;
  met.CreateDataSet;
end;

procedure Tfrmdlgmapaproducaoproduto.gerar_coluna_tpequipamento;
begin
  while not qtpequipamento.q.Eof do
  begin
    met.FieldDefs.Add(_qt+qtpequipamento.q.fieldbyname(_cdtpequipamento).asstring, ftFloat);
    qtpequipamento.q.Next;
  end;
end;

procedure Tfrmdlgmapaproducaoproduto.set_columns_view;
var
  i : Integer;
begin
  qtpequipamento.q.First;
  for i := 0 to view.ColumnCount - 1 do
  begin
    if i = 0 then
    begin
      view.Columns[0].Caption               := 'Produto';
      view.Columns[0].DataBinding.FieldName := _cdalternativo;
      view.Columns[0].Options.Focusing      := False;
      view.Columns[0].Width                 := 150;
    end;
    if i = 1 then
    begin
      view.Columns[i].Caption               := 'Estoque';
      view.Columns[i].DataBinding.FieldName := _qtestoque;
      view.Columns[i].Options.Focusing      := False;
      view.Columns[i].Width                 := 70;
    end;
    if i = 2 then
    begin
      view.Columns[i].Caption               := 'Pedido';
      view.Columns[i].DataBinding.FieldName := _qtpedido;
      view.Columns[i].Options.Focusing      := False;
      view.Columns[i].Width                 := 70;
    end;
    if i = 3 then
    begin
      view.Columns[i].Caption               := 'Orcamento';
      view.Columns[i].DataBinding.FieldName := _qt+_orcamento;
      view.Columns[i].Options.Focusing      := False;
      view.Columns[i].Width                 := 70;
    end;
    if i < 4 then
    begin
      Continue;
    end;
    view.Columns[i].Caption               := Maiuscula(qtpequipamento.q.fieldbyname(_nmtpequipamento).asstring);
    view.Columns[i].DataBinding.FieldName := _qt+qtpequipamento.q.fieldbyname(_cdtpequipamento).asstring;
    view.Columns[i].Options.Focusing      := False;
    view.Columns[i].Width                 := (Length(qtpequipamento.q.fieldbyname(_nmtpequipamento).asstring) * 10)-(Length(qtpequipamento.q.fieldbyname(_nmtpequipamento).asstring) * 1);
    qtpequipamento.q.Next;
  end;
end;

end.

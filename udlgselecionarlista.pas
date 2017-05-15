unit udlgselecionarlista;

interface

uses
  Windows, Menus, StdCtrls, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs,
  SqlExpr, DBClient, DB,
  uexportarexcel, uConstantes, uRegistro,
  classeaplicacao, classeempresa, classequery, classecest, classeproduto, 
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtons,
  ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxLabel, cxCheckBox, dxBar,
  cxNavigator;

type
  Tfrmdlgselecionarlista = class(TForm)
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    pnl1: TPanel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    cds: TClientDataSet;
    cdsboativar: TStringField;
    cdscodigo: TIntegerField;
    cdsnome: TStringField;
    dts: TDataSource;
    tbvboativar: TcxGridDBColumn;
    tbvcodigo: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    pnl: TcxLabel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cdsnucodigo: TStringField;
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private { Private declarations }
    procedure set_lista(lista: TStrings; tabela:string);overload;
    procedure set_lista(CestLista: TCestList);overload;
    procedure get_lista(lista: TStrings);
    procedure set_tela_cest;
  public { Public declarations }
  end;

var
  frmdlgselecionarlista: Tfrmdlgselecionarlista;

function dlgSelecionarLista(lista:TStrings; tabela:string):boolean;
function dlgSelecionarListaCest(CestLista: TCestList; produto: TProduto):string;

implementation

{$R *.dfm}

function dlgSelecionarLista(lista:TStrings; tabela:string):boolean;
begin
  result := False;
  frmdlgselecionarlista := Tfrmdlgselecionarlista.Create(nil);
  try
    frmdlgselecionarlista.set_lista(lista, tabela);
    if frmdlgselecionarlista.ShowModal = mrok then
    begin
      frmdlgselecionarlista.get_lista(lista);
      result := True;
    end;
  finally
    frmdlgselecionarlista.Free;
  end;
end;

function dlgSelecionarListaCest(CestLista: TCestList; produto: TProduto):string;
begin
  frmdlgselecionarlista := Tfrmdlgselecionarlista.Create(nil);
  try
    frmdlgselecionarlista.set_lista(CestLista);
    frmdlgselecionarlista.pnl.Caption := 'CEST - NCM: '+produto.nuclfiscal+' - Produto '+inttostr(produto.cdproduto)+' - '+produto.nmproduto;
    if frmdlgselecionarlista.ShowModal = mrok then
    begin
      result := frmdlgselecionarlista.cdsnucodigo.asstring;
    end;
  finally
    freeandnil(frmdlgselecionarlista);
  end;
end;

procedure Tfrmdlgselecionarlista.set_lista(lista: TStrings; tabela: string);
  function set_especifico:string;
  begin
    if tabela = _funcionario then
    begin
      result := 'and dtdemissao is null and cdstfuncionario in(1,2) and cdfuncao in (select cdfuncao from funcao where boapontamento=''S'') ';
    end;
  end;
var
  q : TClasseQuery;
  i : integer;
begin
  pnl.Caption := qregistro.CampodoCampo(_TABELA, _nmtabela, UpperCase(tabela), _nmexibe, true);
  q := TClasseQuery.Create('select cd'+tabela+',nm'+tabela+' from '+tabela+' where cdempresa='+empresa.cdempresa.tostring+' '+set_especifico+' order by cd'+tabela+' desc');
  try
    while not q.q.Eof do
    begin
      cds.Insert;
      cds.FieldByName(_codigo).AsString   := q.q.Fields[0].AsString;
      cds.FieldByName(_nome).AsString     := q.q.Fields[1].AsString;
      cds.FieldByName(_boativar).AsString := _N;
      for i := 0 to lista.Count - 1 do
      begin
        if lista[i] = cds.FieldByName(_codigo).AsString then
        begin
          cds.FieldByName(_boativar).AsString := _s;
        end;
      end;
      cds.Post;
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmdlgselecionarlista.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  s : string;
  Column : TcxGridDBColumn;
begin
  Column := tbvBOATIVAR;
  s      := upperCase(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if s = UpperCase(_VERDADEIRO) then
  begin
    ACanvas.Font.Color := clblue;
    ACanvas.Font.Style := [fsUnderline, fsBold]
  end;
end;

procedure Tfrmdlgselecionarlista.get_lista(lista: TStrings);
begin
  lista.Clear;
  cds.First;
  while not cds.Eof do
  begin
    if cds.FieldByName(_boativar).AsString = _S then
    begin
      lista.Add(cds.fieldbyname(_codigo).AsString);
    end;
    cds.next;
  end;
end;

procedure Tfrmdlgselecionarlista.dxBarButton1Click(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      cds.FieldByName(_boativar).AsString := _S;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure Tfrmdlgselecionarlista.dxBarButton3Click(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      cds.FieldByName(_boativar).AsString := _n;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure Tfrmdlgselecionarlista.dxBarButton2Click(Sender: TObject);
var
  recno : Integer;
begin
  if cds.State = dsedit then
  begin
    cds.Post;
  end;
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      if cds.FieldByName(_boativar).AsString = _n then
      begin
        cds.FieldByName(_boativar).AsString := _S
      end
      else
      begin
        cds.FieldByName(_boativar).AsString := _n;
      end;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure Tfrmdlgselecionarlista.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmdlgselecionarlista.set_lista(CestLista: TCestList);
var
  i : integer;
begin
  for i := 0 to cestlista.count - 1 do
  begin
    cds.Insert;
    cdsnucodigo.AsString := cestlista.Items[i].nucest;
    cdsnome.AsString     := cestlista.Items[i].nmcest;
    cds.post;
  end;
  set_tela_cest;
end;

procedure Tfrmdlgselecionarlista.set_tela_cest;
begin
  tbvcodigo.DataBinding.FieldName := 'NUCODIGO';
  tbvcodigo.Width                 := 70;
  tbvboativar.Visible             := false;
  tbv.FilterRow.Visible           := false;
  dxBarManager1Bar1.Visible       := false;
end;

end.
